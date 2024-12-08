import 'package:cloud_firestore/cloud_firestore.dart';
import '../../features/social/models/social_models.dart';

class SocialService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Club Operations
  Future<List<FishingClub>> getUserClubs(String userId) async {
    final querySnapshot = await _firestore
        .collection('clubs')
        .where('memberIds', arrayContains: userId)
        .get();

    return querySnapshot.docs
        .map((doc) => FishingClub.fromFirestore(doc))
        .toList();
  }

  Future<FishingClub> createClub(FishingClub club) async {
    final docRef = await _firestore.collection('clubs').add(club.toMap());
    return club.copyWith(id: docRef.id);
  }

  Future<void> updateClub(FishingClub club) async {
    await _firestore.collection('clubs').doc(club.id).update(club.toMap());
  }

  Future<void> deleteClub(String clubId) async {
    await _firestore.collection('clubs').doc(clubId).delete();
  }

  // Event Operations
  Future<List<FishingEvent>> getClubEvents(String clubId) async {
    final querySnapshot = await _firestore
        .collection('events')
        .where('clubId', isEqualTo: clubId)
        .orderBy('startDate')
        .get();

    return querySnapshot.docs
        .map((doc) => FishingEvent.fromFirestore(doc))
        .toList();
  }

  Future<FishingEvent> createEvent(FishingEvent event) async {
    final docRef = await _firestore.collection('events').add(event.toMap());
    return event.copyWith(id: docRef.id);
  }

  Future<void> updateEvent(FishingEvent event) async {
    await _firestore.collection('events').doc(event.id).update(event.toMap());
  }

  Future<void> deleteEvent(String eventId) async {
    await _firestore.collection('events').doc(eventId).delete();
  }

  // Post Operations
  Future<List<SocialPost>> getFeedPosts(String userId, {int limit = 20}) async {
    // Get user's clubs
    final userClubs = await getUserClubs(userId);
    final clubIds = userClubs.map((club) => club.id).toList();

    // Get posts from user's clubs and public posts
    final querySnapshot = await _firestore
        .collection('posts')
        .where('isPrivate', isEqualTo: false)
        .orderBy('createdAt', descending: true)
        .limit(limit)
        .get();

    final clubPosts = await _firestore
        .collection('posts')
        .where('clubId', whereIn: clubIds)
        .orderBy('createdAt', descending: true)
        .limit(limit)
        .get();

    final allPosts = [...querySnapshot.docs, ...clubPosts.docs];
    allPosts.sort((a, b) {
      final aDate = (a.data()['createdAt'] as Timestamp).toDate();
      final bDate = (b.data()['createdAt'] as Timestamp).toDate();
      return bDate.compareTo(aDate);
    });

    return allPosts
        .take(limit)
        .map((doc) => SocialPost.fromFirestore(doc))
        .toList();
  }

  Stream<List<SocialPost>> getFeedStream(String userId) {
    return _firestore
        .collection('posts')
        .where('privacy', isEqualTo: 'public')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => SocialPost.fromMap(doc.data()))
          .toList();
    });
  }

  Future<SocialPost> createPost(SocialPost post) async {
    final docRef = await _firestore.collection('posts').add(post.toMap());
    return post.copyWith(id: docRef.id);
  }

  Future<void> updatePost(SocialPost post) async {
    await _firestore.collection('posts').doc(post.id).update(post.toMap());
  }

  Future<void> deletePost(String postId) async {
    await _firestore.collection('posts').doc(postId).delete();
  }

  // Comment Operations
  Future<void> addComment(String postId, Comment comment) async {
    await _firestore.collection('posts').doc(postId).update({
      'comments': FieldValue.arrayUnion([comment.toMap()]),
    });
  }

  Stream<List<Comment>> getCommentsStream(String postId) {
    return _firestore
        .collection('posts')
        .doc(postId)
        .collection('comments')
        .orderBy('createdAt', descending: false)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Comment.fromMap(doc.data())).toList();
    });
  }

  Future<void> addReply(String postId, String commentId, Comment reply) async {
    final commentRef = _firestore
        .collection('posts')
        .doc(postId)
        .collection('comments')
        .doc(commentId);

    final commentDoc = await commentRef.get();
    if (!commentDoc.exists) return;

    final comment = Comment.fromMap(commentDoc.data()!);
    final replies = [...(comment.replies ?? []), reply];

    await commentRef
        .update({'replies': replies.map((r) => r.toMap()).toList()});
  }

  Future<void> deleteComment(String postId, String commentId) async {
    await _firestore
        .collection('posts')
        .doc(postId)
        .collection('comments')
        .doc(commentId)
        .delete();
  }

  // Like Operations
  Future<void> toggleLike(String postId, String userId) async {
    final post = await _firestore.collection('posts').doc(postId).get();
    final likes = List<String>.from(post.data()?['likeIds'] ?? []);

    if (likes.contains(userId)) {
      likes.remove(userId);
    } else {
      likes.add(userId);
    }

    await _firestore.collection('posts').doc(postId).update({
      'likeIds': likes,
    });
  }

  // Club Membership Operations
  Future<void> joinClub(String clubId, String userId) async {
    await _firestore.collection('clubs').doc(clubId).update({
      'memberIds': FieldValue.arrayUnion([userId]),
    });
  }

  Future<void> leaveClub(String clubId, String userId) async {
    await _firestore.collection('clubs').doc(clubId).update({
      'memberIds': FieldValue.arrayRemove([userId]),
    });
  }

  // Event Participation Operations
  Future<void> joinEvent(String eventId, String userId) async {
    await _firestore.collection('events').doc(eventId).update({
      'participantIds': FieldValue.arrayUnion([userId]),
    });
  }

  Future<void> leaveEvent(String eventId, String userId) async {
    await _firestore.collection('events').doc(eventId).update({
      'participantIds': FieldValue.arrayRemove([userId]),
    });
  }

  // Statistics Operations
  Future<Map<String, dynamic>> getClubStats(String clubId) async {
    final club = await _firestore.collection('clubs').doc(clubId).get();
    return Map<String, dynamic>.from(club.data()?['stats'] ?? {});
  }

  Future<Map<String, dynamic>> getEventStats(String eventId) async {
    final event = await _firestore.collection('events').doc(eventId).get();
    return Map<String, dynamic>.from(event.data()?['stats'] ?? {});
  }

  Future<void> updateClubStats(
      String clubId, Map<String, dynamic> stats) async {
    await _firestore.collection('clubs').doc(clubId).update({
      'stats': stats,
    });
  }

  Future<void> updateEventStats(
      String eventId, Map<String, dynamic> stats) async {
    await _firestore.collection('events').doc(eventId).update({
      'stats': stats,
    });
  }
}
