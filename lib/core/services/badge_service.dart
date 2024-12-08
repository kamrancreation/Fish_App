import 'package:flutter/material.dart' show Color;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/badge_model.dart';
import '../models/profile_model.dart';

class BadgeService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Predefined badges
  static final List<FishingBadge> _availableBadges = [
    const FishingBadge(
      id: 'first_catch',
      name: 'First Catch',
      description: 'Caught your first fish',
      iconPath: 'assets/badges/first_catch.png',
      category: BadgeCategory.catches,
      requirements: {'catches': 1},
      color: Color(0xFF4CAF50),
    ),
    const FishingBadge(
      id: 'master_angler',
      name: 'Master Angler',
      description: 'Caught 100 fish',
      iconPath: 'assets/badges/master_angler.png',
      category: BadgeCategory.catches,
      requirements: {'catches': 100},
      color: Color(0xFFFF9800),
    ),
    const FishingBadge(
      id: 'social_butterfly',
      name: 'Social Butterfly',
      description: 'Joined 5 fishing clubs',
      iconPath: 'assets/badges/social_butterfly.png',
      category: BadgeCategory.social,
      requirements: {'clubs': 5},
      color: Color(0xFF2196F3),
    ),
    const FishingBadge(
      id: 'event_organizer',
      name: 'Event Organizer',
      description: 'Created 3 fishing events',
      iconPath: 'assets/badges/event_organizer.png',
      category: BadgeCategory.events,
      requirements: {'events_created': 3},
      color: Color(0xFF9C27B0),
    ),
    // Add more badges as needed
  ];

  // Get all available badges
  List<FishingBadge> getAvailableBadges() => _availableBadges;

  // Get user's earned badges
  Future<List<FishingBadge>> getUserBadges(String userId) async {
    final doc = await _firestore.collection('user_badges').doc(userId).get();
    if (!doc.exists) return [];

    final data = doc.data() as Map<String, dynamic>;
    return data.entries.map((entry) {
      final badge = _availableBadges.firstWhere((b) => b.id == entry['badgeId']);
      return badge.copyWith(earnedAt: (entry['earnedAt'] as Timestamp).toDate());
    }).toList();
  }

  // Check and award badges based on user stats
  Future<List<FishingBadge>> checkAndAwardBadges(UserProfile profile) async {
    final List<FishingBadge> newBadges = [];
    final earnedBadges = await getUserBadges(profile.id);
    final earnedBadgeIds = earnedBadges.map((b) => b.id).toSet();

    for (final badge in _availableBadges) {
      if (earnedBadgeIds.contains(badge.id)) continue;

      bool earned = false;
      switch (badge.id) {
        case 'first_catch':
          earned = profile.totalCatches >= 1;
          break;
        case 'master_angler':
          earned = profile.totalCatches >= 100;
          break;
        case 'social_butterfly':
          earned = profile.totalClubs >= 5;
          break;
        case 'event_organizer':
          earned = profile.stats['events_created'] ?? 0 >= 3;
          break;
        // Add more badge checks as needed
      }

      if (earned) {
        final awardedBadge = badge.copyWith(earnedAt: DateTime.now());
        await _awardBadge(profile.id, awardedBadge);
        newBadges.add(awardedBadge);
      }
    }

    return newBadges;
  }

  // Award a badge to a user
  Future<void> _awardBadge(String userId, FishingBadge badge) async {
    await _firestore.collection('user_badges').doc(userId).set({
      badge.id: {
        'badgeId': badge.id,
        'earnedAt': Timestamp.fromDate(badge.earnedAt!),
      }
    }, SetOptions(merge: true));

    // Update user's badge list in profile
    await _firestore.collection('profiles').doc(userId).update({
      'badges': FieldValue.arrayUnion([badge.id])
    });
  }

  // Get badge progress for a user
  Future<Map<String, double>> getBadgeProgress(UserProfile profile) async {
    final Map<String, double> progress = {};
    final earnedBadges = await getUserBadges(profile.id);
    final earnedBadgeIds = earnedBadges.map((b) => b.id).toSet();

    for (final badge in _availableBadges) {
      if (earnedBadgeIds.contains(badge.id)) {
        progress[badge.id] = 1.0;
        continue;
      }

      double currentProgress = 0.0;
      switch (badge.id) {
        case 'first_catch':
          currentProgress = profile.totalCatches > 0 ? 1.0 : 0.0;
          break;
        case 'master_angler':
          currentProgress = profile.totalCatches / 100;
          break;
        case 'social_butterfly':
          currentProgress = profile.totalClubs / 5;
          break;
        case 'event_organizer':
          currentProgress = (profile.stats['events_created'] ?? 0) / 3;
          break;
        // Add more progress calculations as needed
      }
      progress[badge.id] = currentProgress.clamp(0.0, 1.0);
    }

    return progress;
  }
}
