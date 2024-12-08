import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/social_post.dart';
import '../../profile/models/user_profile.dart';

class SocialFeedService {
  final FirebaseFirestore _firestore;
  final String _postsCollection = 'posts';
  final String _commentsCollection = 'comments';
  final String _likesCollection = 'likes';

  SocialFeedService(this._firestore);

  // Post Management
  Future<SocialPost> createPost(SocialPost post) async {
    final docRef = await _firestore.collection(_postsCollection).add(
          post.toFirestore(),
        );
    return post.copyWith(id: docRef.id);
  }

  Future<void> updatePost(SocialPost post) async {
    await _firestore
        .collection(_postsCollection)
        .doc(post.id)
        .update(post.toFirestore());
  }

  Future<void> deletePost(String postId) async {
    // Delete comments
    final comments = await _firestore
        .collection(_commentsCollection)
        .where('postId', isEqualTo: postId)
        .get();

    final batch = _firestore.batch();
    for (var doc in comments.docs) {
      batch.delete(doc.reference);
    }

    // Delete likes
    final likes = await _firestore
        .collection(_likesCollection)
        .where('postId', isEqualTo: postId)
        .get();

    for (var doc in likes.docs) {
      batch.delete(doc.reference);
    }

    // Delete post
    batch.delete(_firestore.collection(_postsCollection).doc(postId));
    await batch.commit();
  }

  // Feed Queries
  Stream<List<SocialPost>> getMainFeed(
    String userId, {
    int limit = 20,
    DocumentSnapshot? startAfter,
  }) {
    Query query = _firestore
        .collection(_postsCollection)
        .where('privacy',
            isEqualTo: PostPrivacy.public.toString().split('.').last)
        .orderBy('createdAt', descending: true)
        .limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    return query.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => SocialPost.fromFirestore(doc)).toList());
  }

  Stream<List<SocialPost>> getUserFeed(
    String userId,
    List<String> followingIds, {
    int limit = 20,
    DocumentSnapshot? startAfter,
  }) {
    Query query = _firestore
        .collection(_postsCollection)
        .where('userId', whereIn: [...followingIds, userId])
        .orderBy('createdAt', descending: true)
        .limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    return query.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => SocialPost.fromFirestore(doc)).toList());
  }

  Stream<List<SocialPost>> getClubFeed(
    String clubId, {
    int limit = 20,
    DocumentSnapshot? startAfter,
  }) {
    Query query = _firestore
        .collection(_postsCollection)
        .where('clubId', isEqualTo: clubId)
        .orderBy('createdAt', descending: true)
        .limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    return query.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => SocialPost.fromFirestore(doc)).toList());
  }

  // Comment Management
  Future<PostComment> addComment(PostComment comment) async {
    final batch = _firestore.batch();

    // Create comment
    final commentRef = _firestore.collection(_commentsCollection).doc();
    batch.set(commentRef, comment.toFirestore());

    // Update post stats
    final postRef = _firestore.collection(_postsCollection).doc(comment.postId);
    batch.update(postRef, {
      'stats.comments': FieldValue.increment(1),
    });

    await batch.commit();
    return comment.copyWith(id: commentRef.id);
  }

  Future<void> deleteComment(String postId, String commentId) async {
    final batch = _firestore.batch();

    // Delete comment
    batch.delete(_firestore.collection(_commentsCollection).doc(commentId));

    // Update post stats
    batch.update(_firestore.collection(_postsCollection).doc(postId), {
      'stats.comments': FieldValue.increment(-1),
    });

    await batch.commit();
  }

  Stream<List<PostComment>> getComments(
    String postId, {
    int limit = 20,
    DocumentSnapshot? startAfter,
  }) {
    Query query = _firestore
        .collection(_commentsCollection)
        .where('postId', isEqualTo: postId)
        .orderBy('createdAt', descending: true)
        .limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    return query.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => PostComment.fromFirestore(doc)).toList());
  }

  // Engagement Management
  Future<void> toggleLike(String postId, String userId) async {
    final likeRef =
        _firestore.collection(_likesCollection).doc('${postId}_$userId');

    final likeDoc = await likeRef.get();
    final batch = _firestore.batch();

    if (likeDoc.exists) {
      // Unlike
      batch.delete(likeRef);
      batch.update(_firestore.collection(_postsCollection).doc(postId), {
        'stats.likes': FieldValue.increment(-1),
      });
    } else {
      // Like
      batch.set(likeRef, {
        'postId': postId,
        'userId': userId,
        'timestamp': FieldValue.serverTimestamp(),
      });
      batch.update(_firestore.collection(_postsCollection).doc(postId), {
        'stats.likes': FieldValue.increment(1),
      });
    }

    await batch.commit();
  }

  Future<void> savePost(String postId, String userId) async {
    final saveRef =
        _firestore.collection('saved_posts').doc('${postId}_$userId');

    final saveDoc = await saveRef.get();
    final batch = _firestore.batch();

    if (saveDoc.exists) {
      // Unsave
      batch.delete(saveRef);
      batch.update(_firestore.collection(_postsCollection).doc(postId), {
        'stats.saves': FieldValue.increment(-1),
      });
    } else {
      // Save
      batch.set(saveRef, {
        'postId': postId,
        'userId': userId,
        'timestamp': FieldValue.serverTimestamp(),
      });
      batch.update(_firestore.collection(_postsCollection).doc(postId), {
        'stats.saves': FieldValue.increment(1),
      });
    }

    await batch.commit();
  }

  Future<void> sharePost(String postId, String userId) async {
    await _firestore.collection(_postsCollection).doc(postId).update({
      'stats.shares': FieldValue.increment(1),
    });
  }

  // Analytics
  Future<Map<String, dynamic>> getPostAnalytics(String postId) async {
    final post =
        await _firestore.collection(_postsCollection).doc(postId).get();
    final postData = post.data() as Map<String, dynamic>;

    final likes = await _firestore
        .collection(_likesCollection)
        .where('postId', isEqualTo: postId)
        .get();

    final comments = await _firestore
        .collection(_commentsCollection)
        .where('postId', isEqualTo: postId)
        .get();

    return {
      'engagement': {
        'likes': likes.size,
        'comments': comments.size,
        'shares': postData['stats']['shares'] ?? 0,
        'saves': postData['stats']['saves'] ?? 0,
      },
      'reach': postData['stats']['views'] ?? 0,
      'interactions': {
        'clickThrough': postData['stats']['clicks'] ?? 0,
        'profileVisits': postData['stats']['profileVisits'] ?? 0,
      },
      'timing': {
        'peakEngagementTime': postData['stats']['peakEngagementTime'],
        'engagementByHour': postData['stats']['engagementByHour'] ?? {},
      },
    };
  }
}
