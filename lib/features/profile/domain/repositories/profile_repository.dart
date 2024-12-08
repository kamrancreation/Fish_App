import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/services/firebase_service.dart';
import '../models/profile.dart';
import '../models/achievement.dart';

class ProfileRepository {
  final FirebaseService _firebase;

  ProfileRepository({
    FirebaseService? firebase,
  }) : _firebase = firebase ?? FirebaseService();

  Stream<UserProfile> getUserProfile() {
    return _firebase.firestore
        .collection('users')
        .doc(_firebase.currentUserId)
        .snapshots()
        .map(_profileFromFirestore);
  }

  Future<void> updateProfile({
    String? displayName,
    String? bio,
    String? location,
    String? photoPath,
  }) async {
    try {
      final updates = <String, dynamic>{
        if (displayName != null) 'displayName': displayName,
        if (bio != null) 'bio': bio,
        if (location != null) 'location': location,
      };

      if (photoPath != null) {
        final photoUrl = await _uploadProfilePhoto(photoPath);
        updates['photoUrl'] = photoUrl;
      }

      await _firebase.firestore
          .collection('users')
          .doc(_firebase.currentUserId)
          .update(updates);

      if (displayName != null) {
        await _firebase.auth.currentUser?.updateDisplayName(displayName);
      }
      if (updates['photoUrl'] != null) {
        await _firebase.auth.currentUser?.updatePhotoURL(updates['photoUrl']);
      }
    } catch (e) {
      throw Exception('Failed to update profile: $e');
    }
  }

  Future<String> _uploadProfilePhoto(String localPath) async {
    final file = File(localPath);
    final ref = _firebase.storage
        .ref()
        .child('profiles/${_firebase.currentUserId}/profile.jpg');

    await ref.putFile(file);
    return await ref.getDownloadURL();
  }

  Stream<List<Achievement>> getUserAchievements() {
    return _firebase.firestore
        .collection('users')
        .doc(_firebase.currentUserId)
        .collection('achievements')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map(_achievementFromFirestore).toList();
    });
  }

  Future<void> checkAndUpdateAchievements() async {
    try {
      // Get user stats
      final userDoc = await _firebase.firestore
          .collection('users')
          .doc(_firebase.currentUserId)
          .get();
      final stats = userDoc.data()?['stats'] ?? {};

      // Get current achievements
      final achievementsSnapshot = await _firebase.firestore
          .collection('users')
          .doc(_firebase.currentUserId)
          .collection('achievements')
          .get();
      final currentAchievements =
          achievementsSnapshot.docs.map((doc) => doc.id).toSet();

      // Check for new achievements
      final newAchievements = await _checkForNewAchievements(
        stats,
        currentAchievements,
      );

      // Add new achievements
      for (final achievement in newAchievements) {
        await _firebase.firestore
            .collection('users')
            .doc(_firebase.currentUserId)
            .collection('achievements')
            .doc(achievement.id)
            .set({
          'name': achievement.name,
          'description': achievement.description,
          'icon': achievement.icon,
          'unlockedAt': DateTime.now().toIso8601String(),
        });
      }
    } catch (e) {
      throw Exception('Failed to check achievements: $e');
    }
  }

  Future<List<Achievement>> _checkForNewAchievements(
    Map<String, dynamic> stats,
    Set<String> currentAchievements,
  ) async {
    final newAchievements = <Achievement>[];
    final totalCatches = stats['totalCatches'] ?? 0;
    final totalWeight = stats['totalWeight'] ?? 0.0;
    final speciesCaught = stats['speciesCaught'] ?? 0;
    final biggestCatch = stats['biggestCatch'] ?? 0.0;

    // First Catch
    if (!currentAchievements.contains('first_catch') && totalCatches >= 1) {
      newAchievements.add(Achievement(
        id: 'first_catch',
        name: 'First Catch',
        description: 'Caught your first fish',
        icon: '🎣',
        unlockedAt: DateTime.now(),
      ));
    }

    // Species Hunter
    if (!currentAchievements.contains('species_hunter') && speciesCaught >= 5) {
      newAchievements.add(Achievement(
        id: 'species_hunter',
        name: 'Species Hunter',
        description: 'Caught 5 different species',
        icon: '🐟',
        unlockedAt: DateTime.now(),
      ));
    }

    // Big Catch
    if (!currentAchievements.contains('big_catch') && biggestCatch >= 10.0) {
      newAchievements.add(Achievement(
        id: 'big_catch',
        name: 'Big Catch',
        description: 'Caught a fish weighing 10kg or more',
        icon: '🐋',
        unlockedAt: DateTime.now(),
      ));
    }

    // Experienced Angler
    if (!currentAchievements.contains('experienced_angler') &&
        totalCatches >= 50) {
      newAchievements.add(Achievement(
        id: 'experienced_angler',
        name: 'Experienced Angler',
        description: 'Logged 50 catches',
        icon: '👑',
        unlockedAt: DateTime.now(),
      ));
    }

    return newAchievements;
  }

  UserProfile _profileFromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserProfile(
      id: doc.id,
      email: data['email'],
      displayName: data['displayName'],
      photoUrl: data['photoUrl'],
      bio: data['bio'],
      location: data['location'],
      stats: UserStats(
        totalCatches: data['stats']['totalCatches'] ?? 0,
        totalWeight: data['stats']['totalWeight']?.toDouble() ?? 0.0,
        speciesCaught: data['stats']['speciesCaught'] ?? 0,
        biggestCatch: data['stats']['biggestCatch']?.toDouble() ?? 0.0,
      ),
      createdAt: DateTime.parse(data['createdAt']),
    );
  }

  Achievement _achievementFromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Achievement(
      id: doc.id,
      name: data['name'],
      description: data['description'],
      icon: data['icon'],
      unlockedAt: DateTime.parse(data['unlockedAt']),
    );
  }
}
