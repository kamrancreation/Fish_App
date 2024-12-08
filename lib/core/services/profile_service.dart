import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/profile_model.dart';
import '../models/social_model.dart';

class ProfileService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Profile Operations
  Future<UserProfile> getUserProfile(String userId) async {
    final doc = await _firestore.collection('profiles').doc(userId).get();
    if (!doc.exists) {
      throw Exception('Profile not found');
    }
    return UserProfile.fromFirestore(doc);
  }

  Future<void> createUserProfile(UserProfile profile) async {
    await _firestore
        .collection('profiles')
        .doc(profile.id)
        .set(profile.toMap());
  }

  Future<void> updateUserProfile(UserProfile profile) async {
    await _firestore
        .collection('profiles')
        .doc(profile.id)
        .update(profile.toMap());
  }

  Future<void> updateLastActive(String userId) async {
    await _firestore.collection('profiles').doc(userId).update({
      'lastActive': Timestamp.now(),
    });
  }

  // Follow Operations
  Future<void> followUser(String followerId, String targetUserId) async {
    await _firestore.runTransaction((transaction) async {
      final followerDoc = await transaction.get(
        _firestore.collection('profiles').doc(followerId),
      );
      final targetDoc = await transaction.get(
        _firestore.collection('profiles').doc(targetUserId),
      );

      if (!followerDoc.exists || !targetDoc.exists) {
        throw Exception('One or both profiles not found');
      }

      final followerProfile = UserProfile.fromFirestore(followerDoc);
      final targetProfile = UserProfile.fromFirestore(targetDoc);

      if (!followerProfile.following.contains(targetUserId)) {
        transaction.update(
          _firestore.collection('profiles').doc(followerId),
          {
            'following': FieldValue.arrayUnion([targetUserId]),
          },
        );
      }

      if (!targetProfile.followers.contains(followerId)) {
        transaction.update(
          _firestore.collection('profiles').doc(targetUserId),
          {
            'followers': FieldValue.arrayUnion([followerId]),
          },
        );
      }
    });
  }

  Future<void> unfollowUser(String followerId, String targetUserId) async {
    await _firestore.runTransaction((transaction) async {
      final followerDoc = await transaction.get(
        _firestore.collection('profiles').doc(followerId),
      );
      final targetDoc = await transaction.get(
        _firestore.collection('profiles').doc(targetUserId),
      );

      if (!followerDoc.exists || !targetDoc.exists) {
        throw Exception('One or both profiles not found');
      }

      transaction.update(
        _firestore.collection('profiles').doc(followerId),
        {
          'following': FieldValue.arrayRemove([targetUserId]),
        },
      );

      transaction.update(
        _firestore.collection('profiles').doc(targetUserId),
        {
          'followers': FieldValue.arrayRemove([followerId]),
        },
      );
    });
  }

  // Profile Content Operations
  Future<List<SocialPost>> getUserPosts(String userId) async {
    final querySnapshot = await _firestore
        .collection('posts')
        .where('userId', isEqualTo: userId)
        .orderBy('createdAt', descending: true)
        .get();

    return querySnapshot.docs
        .map((doc) => SocialPost.fromFirestore(doc))
        .toList();
  }

  Future<List<FishingClub>> getUserClubs(String userId) async {
    final querySnapshot = await _firestore
        .collection('clubs')
        .where('memberIds', arrayContains: userId)
        .get();

    return querySnapshot.docs
        .map((doc) => FishingClub.fromFirestore(doc))
        .toList();
  }

  Future<List<FishingEvent>> getUserEvents(String userId) async {
    final querySnapshot = await _firestore
        .collection('events')
        .where('participantIds', arrayContains: userId)
        .where('endDate', isGreaterThan: Timestamp.now())
        .orderBy('endDate')
        .get();

    return querySnapshot.docs
        .map((doc) => FishingEvent.fromFirestore(doc))
        .toList();
  }

  // Statistics Operations
  Future<void> updateProfileStats(
      String userId, Map<String, dynamic> stats) async {
    await _firestore.collection('profiles').doc(userId).update({
      'stats': stats,
    });
  }

  Future<void> incrementProfileStat(String userId, String statKey) async {
    await _firestore.collection('profiles').doc(userId).update({
      'stats.$statKey': FieldValue.increment(1),
    });
  }

  // Badge Operations
  Future<void> addBadge(String userId, String badge) async {
    await _firestore.collection('profiles').doc(userId).update({
      'badges': FieldValue.arrayUnion([badge]),
    });
  }

  Future<void> removeBadge(String userId, String badge) async {
    await _firestore.collection('profiles').doc(userId).update({
      'badges': FieldValue.arrayRemove([badge]),
    });
  }

  // Settings Operations
  Future<void> updateProfileSettings(
    String userId,
    Map<String, dynamic> settings,
  ) async {
    await _firestore.collection('profiles').doc(userId).update({
      'settings': settings,
    });
  }

  Future<void> updateProfilePreferences(
    String userId,
    Map<String, dynamic> preferences,
  ) async {
    await _firestore.collection('profiles').doc(userId).update({
      'preferences': preferences,
    });
  }

  // Search Operations
  Future<List<UserProfile>> searchUsers(String query) async {
    final querySnapshot = await _firestore
        .collection('profiles')
        .where('displayName', isGreaterThanOrEqualTo: query)
        .where('displayName', isLessThanOrEqualTo: '$query\uf8ff')
        .get();

    return querySnapshot.docs
        .map((doc) => UserProfile.fromFirestore(doc))
        .toList();
  }

  // Follower Operations
  Future<List<UserProfile>> getFollowers(String userId) async {
    final profile = await getUserProfile(userId);
    final followers = await Future.wait(
      profile.followers.map((id) => getUserProfile(id)),
    );
    return followers;
  }

  Future<List<UserProfile>> getFollowing(String userId) async {
    final profile = await getUserProfile(userId);
    final following = await Future.wait(
      profile.following.map((id) => getUserProfile(id)),
    );
    return following;
  }

  // Recommendations
  Future<List<UserProfile>> getRecommendedUsers(String userId) async {
    final profile = await getUserProfile(userId);

    // Get users with similar interests based on preferences
    final querySnapshot = await _firestore
        .collection('profiles')
        .where('preferences.favoriteSpecies',
            arrayContainsAny: profile.favoriteSpecies)
        .limit(10)
        .get();

    final recommendations = querySnapshot.docs
        .map((doc) => UserProfile.fromFirestore(doc))
        .where((p) => p.id != userId && !profile.following.contains(p.id))
        .toList();

    // Sort by number of matching interests
    recommendations.sort((a, b) {
      final aMatches = a.favoriteSpecies
          .where((species) => profile.favoriteSpecies.contains(species))
          .length;
      final bMatches = b.favoriteSpecies
          .where((species) => profile.favoriteSpecies.contains(species))
          .length;
      return bMatches.compareTo(aMatches);
    });

    return recommendations;
  }
}
