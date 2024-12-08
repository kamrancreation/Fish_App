import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/profile_model.dart';
import '../models/social_model.dart';

class RecommendationService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Get recommended users based on common interests and activity
  Future<List<UserProfile>> getRecommendedUsers(String userId) async {
    final userDoc = await _firestore.collection('profiles').doc(userId).get();
    if (!userDoc.exists) return [];

    final currentUser = UserProfile.fromFirestore(userDoc);
    final following = Set<String>.from(currentUser.following);

    // Query users with similar interests
    final querySnapshot = await _firestore
        .collection('profiles')
        .where('preferences.favoriteSpecies',
            arrayContainsAny: currentUser.favoriteSpecies)
        .limit(50)
        .get();

    final recommendations = querySnapshot.docs
        .map((doc) => UserProfile.fromFirestore(doc))
        .where((profile) => 
            profile.id != userId && 
            !following.contains(profile.id))
        .toList();

    // Score each recommendation
    final scoredRecommendations = await Future.wait(
      recommendations.map((profile) => _scoreProfile(currentUser, profile)),
    );

    // Sort by score and return top recommendations
    scoredRecommendations.sort((a, b) => b.score.compareTo(a.score));
    return scoredRecommendations.take(10).map((r) => r.profile).toList();
  }

  // Get recommended fishing spots
  Future<List<Map<String, dynamic>>> getRecommendedSpots(String userId) async {
    final catches = await _firestore
        .collection('catches')
        .where('userId', isEqualTo: userId)
        .get();

    final userLocations = catches.docs
        .map((doc) => doc.data()['location'] as String?)
        .whereType<String>()
        .toSet();

    // Find locations with good catch rates
    final spotStats = <String, Map<String, dynamic>>{};
    final allCatches = await _firestore
        .collection('catches')
        .where('location', whereIn: userLocations.toList())
        .get();

    for (final doc in allCatches.docs) {
      final data = doc.data();
      final location = data['location'] as String;
      final weight = data['weight'] as num?;
      final timestamp = (data['timestamp'] as Timestamp).toDate();

      if (!spotStats.containsKey(location)) {
        spotStats[location] = {
          'totalCatches': 0,
          'averageWeight': 0.0,
          'recentActivity': 0,
          'species': <String>{},
        };
      }

      final stats = spotStats[location]!;
      stats['totalCatches'] = (stats['totalCatches'] as int) + 1;
      
      if (weight != null) {
        final currentAvg = stats['averageWeight'] as double;
        final currentTotal = stats['totalCatches'] as int;
        stats['averageWeight'] = 
            (currentAvg * (currentTotal - 1) + weight) / currentTotal;
      }

      // Count recent activity (last 30 days)
      if (timestamp.isAfter(DateTime.now().subtract(const Duration(days: 30)))) {
        stats['recentActivity'] = (stats['recentActivity'] as int) + 1;
      }

      final species = data['species'] as String?;
      if (species != null) {
        (stats['species'] as Set<String>).add(species);
      }
    }

    // Score and sort locations
    final scoredSpots = spotStats.entries.map((entry) {
      final location = entry.key;
      final stats = entry.value;
      
      // Calculate score based on multiple factors
      final score = (stats['totalCatches'] as int) * 0.4 +
          (stats['averageWeight'] as double) * 0.3 +
          (stats['recentActivity'] as int) * 0.2 +
          (stats['species'] as Set<String>).length * 0.1;

      return {
        'location': location,
        'score': score,
        'stats': stats,
      };
    }).toList();

    scoredSpots.sort((a, b) => b['score'].compareTo(a['score']));
    return scoredSpots.take(5).toList();
  }

  // Get recommended events
  Future<List<FishingEvent>> getRecommendedEvents(String userId) async {
    final userDoc = await _firestore.collection('profiles').doc(userId).get();
    if (!userDoc.exists) return [];

    final currentUser = UserProfile.fromFirestore(userDoc);
    final now = DateTime.now();

    // Query upcoming events
    final querySnapshot = await _firestore
        .collection('events')
        .where('startDate', isGreaterThan: Timestamp.fromDate(now))
        .where('species', whereIn: currentUser.favoriteSpecies)
        .limit(20)
        .get();

    final events = querySnapshot.docs
        .map((doc) => FishingEvent.fromFirestore(doc))
        .where((event) => !event.participantIds.contains(userId))
        .toList();

    // Score events based on user preferences and social factors
    final scoredEvents = await Future.wait(
      events.map((event) => _scoreEvent(currentUser, event)),
    );

    scoredEvents.sort((a, b) => b.score.compareTo(a.score));
    return scoredEvents.take(5).map((e) => e.event).toList();
  }

  // Helper function to score a profile for recommendations
  Future<_ScoredProfile> _scoreProfile(
    UserProfile currentUser,
    UserProfile candidate,
  ) async {
    double score = 0;

    // Score based on common species interests
    final commonSpecies = currentUser.favoriteSpecies
        .toSet()
        .intersection(candidate.favoriteSpecies.toSet());
    score += commonSpecies.length * 2;

    // Score based on common locations
    final commonLocations = currentUser.preferredLocations
        .toSet()
        .intersection(candidate.preferredLocations.toSet());
    score += commonLocations.length;

    // Score based on activity level
    score += candidate.totalPosts * 0.5;
    score += candidate.totalEvents * 0.3;
    score += candidate.totalClubs * 0.2;

    // Score based on mutual connections
    final mutualFollowers = currentUser.followers
        .toSet()
        .intersection(candidate.followers.toSet());
    score += mutualFollowers.length * 1.5;

    return _ScoredProfile(candidate, score);
  }

  // Helper function to score an event for recommendations
  Future<_ScoredEvent> _scoreEvent(
    UserProfile user,
    FishingEvent event,
  ) async {
    double score = 0;

    // Score based on species match
    if (user.favoriteSpecies.contains(event.species)) {
      score += 5;
    }

    // Score based on location preference
    if (user.preferredLocations.contains(event.location)) {
      score += 3;
    }

    // Score based on participating friends
    final mutualParticipants = user.following
        .toSet()
        .intersection(event.participantIds.toSet());
    score += mutualParticipants.length * 2;

    // Score based on event size and popularity
    score += event.participantIds.length * 0.5;

    // Adjust score based on date (prefer sooner events)
    final daysUntilEvent = event.startDate.difference(DateTime.now()).inDays;
    score -= daysUntilEvent * 0.1;

    return _ScoredEvent(event, score);
  }
}

class _ScoredProfile {
  final UserProfile profile;
  final double score;

  _ScoredProfile(this.profile, this.score);
}

class _ScoredEvent {
  final FishingEvent event;
  final double score;

  _ScoredEvent(this.event, this.score);
}
