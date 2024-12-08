import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../models/feed_models.dart';
import '../../../core/services/cache_service.dart';

class FeedRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final CacheService _cacheService;

  // Collection references
  late final CollectionReference _postsCollection;
  late final CollectionReference _commentsCollection;
  late final CollectionReference _likesCollection;
  late final CollectionReference _sharesCollection;
  late final CollectionReference _analyticsCollection;
  late final CollectionReference _engagementCollection;

  FeedRepository({
    FirebaseFirestore? firestore,
    FirebaseStorage? storage,
    CacheService? cacheService,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _storage = storage ?? FirebaseStorage.instance,
        _cacheService = cacheService ?? CacheService() {
    _initializeCollections();
  }

  void _initializeCollections() {
    _postsCollection = _firestore.collection('posts');
    _commentsCollection = _firestore.collection('comments');
    _likesCollection = _firestore.collection('likes');
    _sharesCollection = _firestore.collection('shares');
    _analyticsCollection = _firestore.collection('feed_analytics');
    _engagementCollection = _firestore.collection('feed_engagement');
  }

  // Create post
  Future<void> createPost(FeedPost post) async {
    try {
      // Store in Firestore
      await _postsCollection.doc(post.id).set(post.toJson());

      // Cache the post
      await _cacheService.setItem(
        'post_${post.id}',
        post.toJson(),
        expirationMinutes: 60,
      );

      // Initialize analytics
      await _analyticsCollection.doc(post.id).set(
            FeedAnalytics(
              postId: post.id,
              impressions: 0,
              reaches: 0,
              engagements: 0,
              interactionCounts: {},
              demographics: {},
            ).toJson(),
          );
    } catch (e) {
      throw Exception('Failed to create post: $e');
    }
  }

  // Stream feed
  Stream<List<FeedPost>> streamFeed(String userId, {FeedFilter? filter}) {
    try {
      // Build query based on filter
      Query query = _postsCollection.orderBy('timestamp', descending: true);

      if (filter != null) {
        if (filter.followingOnly) {
          // Add following filter logic
        }
        if (filter.species != null) {
          query = query.where('catchReport.species', whereIn: filter.species);
        }
        if (filter.startDate != null) {
          query = query.where('timestamp', isGreaterThanOrEqualTo: filter.startDate);
        }
        if (filter.endDate != null) {
          query = query.where('timestamp', isLessThanOrEqualTo: filter.endDate);
        }
        // Add more filter conditions as needed
      }

      return query.snapshots().map((snapshot) {
        return snapshot.docs
            .map((doc) => FeedPost.fromJson(doc.data() as Map<String, dynamic>))
            .toList();
      });
    } catch (e) {
      throw Exception('Failed to stream feed: $e');
    }
  }

  // Get single post
  Future<FeedPost?> getPost(String postId) async {
    try {
      // Check cache first
      final cachedPost = await _cacheService.getItem('post_$postId');
      if (cachedPost != null) {
        return FeedPost.fromJson(cachedPost as Map<String, dynamic>);
      }

      // Fetch from Firestore
      final doc = await _postsCollection.doc(postId).get();
      if (doc.exists) {
        final post = FeedPost.fromJson(doc.data() as Map<String, dynamic>);
        
        // Cache the result
        await _cacheService.setItem(
          'post_$postId',
          post.toJson(),
          expirationMinutes: 60,
        );
        
        return post;
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get post: $e');
    }
  }

  // Add comment
  Future<void> addComment(Comment comment) async {
    try {
      await _commentsCollection.doc(comment.id).set(comment.toJson());
    } catch (e) {
      throw Exception('Failed to add comment: $e');
    }
  }

  // Stream comments
  Stream<List<Comment>> streamComments(String postId) {
    try {
      return _commentsCollection
          .where('postId', isEqualTo: postId)
          .orderBy('timestamp', descending: true)
          .snapshots()
          .map((snapshot) {
        return snapshot.docs
            .map((doc) => Comment.fromJson(doc.data() as Map<String, dynamic>))
            .toList();
      });
    } catch (e) {
      throw Exception('Failed to stream comments: $e');
    }
  }

  // Add like
  Future<void> addLike(Like like) async {
    try {
      await _likesCollection.doc('${like.targetId}_${like.userId}').set(like.toJson());
    } catch (e) {
      throw Exception('Failed to add like: $e');
    }
  }

  // Remove like
  Future<void> removeLike(String targetId, String userId) async {
    try {
      await _likesCollection.doc('${targetId}_$userId').delete();
    } catch (e) {
      throw Exception('Failed to remove like: $e');
    }
  }

  // Increment/Decrement counters
  Future<void> incrementLikeCount(String postId) async {
    try {
      await _postsCollection.doc(postId).update({'likeCount': FieldValue.increment(1)});
    } catch (e) {
      throw Exception('Failed to increment like count: $e');
    }
  }

  Future<void> decrementLikeCount(String postId) async {
    try {
      await _postsCollection.doc(postId).update({'likeCount': FieldValue.increment(-1)});
    } catch (e) {
      throw Exception('Failed to decrement like count: $e');
    }
  }

  Future<void> incrementCommentCount(String postId) async {
    try {
      await _postsCollection.doc(postId).update({'commentCount': FieldValue.increment(1)});
    } catch (e) {
      throw Exception('Failed to increment comment count: $e');
    }
  }

  Future<void> decrementCommentCount(String postId) async {
    try {
      await _postsCollection.doc(postId).update({'commentCount': FieldValue.increment(-1)});
    } catch (e) {
      throw Exception('Failed to decrement comment count: $e');
    }
  }

  Future<void> incrementShareCount(String postId) async {
    try {
      await _postsCollection.doc(postId).update({'shareCount': FieldValue.increment(1)});
    } catch (e) {
      throw Exception('Failed to increment share count: $e');
    }
  }

  // Delete operations
  Future<void> deletePost(String postId) async {
    try {
      await _postsCollection.doc(postId).delete();
      await _cacheService.removeItem('post_$postId');
    } catch (e) {
      throw Exception('Failed to delete post: $e');
    }
  }

  Future<void> deleteComment(String commentId) async {
    try {
      await _commentsCollection.doc(commentId).delete();
    } catch (e) {
      throw Exception('Failed to delete comment: $e');
    }
  }

  // Analytics
  Future<FeedAnalytics> getFeedAnalytics(String postId) async {
    try {
      final doc = await _analyticsCollection.doc(postId).get();
      if (doc.exists) {
        return FeedAnalytics.fromJson(doc.data() as Map<String, dynamic>);
      }
      throw Exception('Analytics not found for post: $postId');
    } catch (e) {
      throw Exception('Failed to get feed analytics: $e');
    }
  }

  // Engagement
  Future<void> updateFeedEngagement({
    required String userId,
    required String action,
    required String targetId,
  }) async {
    try {
      final engagementRef = _engagementCollection.doc(userId);
      
      await _firestore.runTransaction((transaction) async {
        final engagementDoc = await transaction.get(engagementRef);
        
        if (!engagementDoc.exists) {
          transaction.set(engagementRef, {
            action: {targetId: DateTime.now().toIso8601String()},
          });
        } else {
          final data = engagementDoc.data() as Map<String, dynamic>;
          if (!data.containsKey(action)) {
            data[action] = {};
          }
          (data[action] as Map<String, dynamic>)[targetId] =
              DateTime.now().toIso8601String();
          transaction.update(engagementRef, data);
        }
      });
    } catch (e) {
      throw Exception('Failed to update feed engagement: $e');
    }
  }

  // Media upload
  Future<String> uploadMedia(String path, List<int> bytes) async {
    try {
      final ref = _storage.ref().child('feed_media').child(path);
      await ref.putData(bytes);
      return await ref.getDownloadURL();
    } catch (e) {
      throw Exception('Failed to upload media: $e');
    }
  }

  Future<void> deleteMedia(String path) async {
    try {
      await _storage.ref().child('feed_media').child(path).delete();
    } catch (e) {
      throw Exception('Failed to delete media: $e');
    }
  }
}
