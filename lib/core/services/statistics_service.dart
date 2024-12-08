import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';

class StatisticsService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Get detailed catch statistics
  Future<Map<String, dynamic>> getCatchStatistics(String userId) async {
    final catchesQuery = await _firestore
        .collection('catches')
        .where('userId', isEqualTo: userId)
        .get();

    final catches = catchesQuery.docs;
    if (catches.isEmpty) {
      return _getEmptyStats();
    }

    // Species distribution
    final Map<String, int> speciesCount = {};
    // Location distribution
    final Map<String, int> locationCount = {};
    // Time distribution
    final Map<int, int> hourlyDistribution = {};
    // Weight distribution
    final List<double> weights = [];
    // Length distribution
    final List<double> lengths = [];
    // Monthly trends
    final Map<String, int> monthlyTrends = {};

    for (final doc in catches) {
      final data = doc.data();
      final DateTime timestamp = (data['timestamp'] as Timestamp).toDate();
      final String species = data['species'] ?? 'Unknown';
      final String location = data['location'] ?? 'Unknown';
      final double? weight = data['weight']?.toDouble();
      final double? length = data['length']?.toDouble();

      // Update species count
      speciesCount[species] = (speciesCount[species] ?? 0) + 1;

      // Update location count
      locationCount[location] = (locationCount[location] ?? 0) + 1;

      // Update hourly distribution
      final hour = timestamp.hour;
      hourlyDistribution[hour] = (hourlyDistribution[hour] ?? 0) + 1;

      // Update weight and length statistics
      if (weight != null) weights.add(weight);
      if (length != null) lengths.add(length);

      // Update monthly trends
      final monthKey =
          '${timestamp.year}-${timestamp.month.toString().padLeft(2, '0')}';
      monthlyTrends[monthKey] = (monthlyTrends[monthKey] ?? 0) + 1;
    }

    // Calculate weight statistics
    final weightStats = calculateStatistics(weights);
    final lengthStats = calculateStatistics(lengths);

    // Best times calculation
    final bestHours = hourlyDistribution.entries
        .toList()
        ..sort((a, b) => b.value.compareTo(a.value))
        .take(3)
        .map((e) => e.key)
        .toList();

    // Best locations
    final bestLocations = locationCount.entries
        .toList()
        ..sort((a, b) => b.value.compareTo(a.value))
        .take(3)
        .map((e) => e.key)
        .toList();

    return {
      'totalCatches': catches.length,
      'speciesDistribution': speciesCount,
      'locationDistribution': locationCount,
      'hourlyDistribution': hourlyDistribution,
      'weightStats': weightStats,
      'lengthStats': lengthStats,
      'monthlyTrends': monthlyTrends,
      'bestHours': bestHours,
      'bestLocations': bestLocations,
      'mostCaughtSpecies': speciesCount.entries
          .toList()
          ..sort((a, b) => b.value.compareTo(a.value))
          .first
          .key,
      'uniqueSpecies': speciesCount.length,
      'uniqueLocations': locationCount.length,
    };
  }

  // Get social statistics
  Future<Map<String, dynamic>> getSocialStatistics(String userId) async {
    final profile = await _firestore.collection('profiles').doc(userId).get();
    final posts = await _firestore
        .collection('posts')
        .where('userId', isEqualTo: userId)
        .get();
    final events = await _firestore
        .collection('events')
        .where('creatorId', isEqualTo: userId)
        .get();
    final clubs = await _firestore
        .collection('clubs')
        .where('creatorId', isEqualTo: userId)
        .get();

    // Calculate engagement rate
    double engagementRate = 0;
    int totalLikes = 0;
    int totalComments = 0;

    for (final post in posts.docs) {
      final data = post.data();
      totalLikes += (data['likes'] ?? []).length;
      totalComments += (data['comments'] ?? []).length;
    }

    if (posts.docs.isNotEmpty) {
      final followers = (profile.data()?['followers'] ?? []).length;
      if (followers > 0) {
        engagementRate =
            (totalLikes + totalComments) / (posts.docs.length * followers);
      }
    }

    return {
      'postsCount': posts.docs.length,
      'eventsCreated': events.docs.length,
      'clubsCreated': clubs.docs.length,
      'totalLikes': totalLikes,
      'totalComments': totalComments,
      'engagementRate': engagementRate,
      'followersCount': (profile.data()?['followers'] ?? []).length,
      'followingCount': (profile.data()?['following'] ?? []).length,
    };
  }

  // Get achievement statistics
  Future<Map<String, dynamic>> getAchievementStatistics(String userId) async {
    final badges = await _firestore.collection('user_badges').doc(userId).get();
    final catches = await _firestore
        .collection('catches')
        .where('userId', isEqualTo: userId)
        .get();

    // Calculate personal records
    double? largestCatch;
    String? largestSpecies;
    DateTime? firstCatch;

    for (final doc in catches.docs) {
      final data = doc.data();
      final double? weight = data['weight']?.toDouble();
      final DateTime timestamp = (data['timestamp'] as Timestamp).toDate();

      if (weight != null && (largestCatch == null || weight > largestCatch)) {
        largestCatch = weight;
        largestSpecies = data['species'];
      }

      if (firstCatch == null || timestamp.isBefore(firstCatch)) {
        firstCatch = timestamp;
      }
    }

    return {
      'totalBadges': (badges.data()?['badges'] ?? []).length,
      'largestCatch': largestCatch,
      'largestSpecies': largestSpecies,
      'firstCatch': firstCatch,
      'daysActive':
          firstCatch != null ? DateTime.now().difference(firstCatch).inDays : 0,
    };
  }

  List<FishingEvent> getMostProductiveLocations(List<FishingEvent> events) {
    if (events.isEmpty) return [];
    
    final locations = events.toList()
      ..sort((a, b) => (b.catches?.length ?? 0).compareTo(a.catches?.length ?? 0));
    
    return locations.take(5).toList();
  }

  Map<String, dynamic> calculateStatistics(List<double> values) {
    if (values.isEmpty) {
      return {
        'min': 0.0,
        'max': 0.0,
        'average': 0.0,
        'median': 0.0,
      };
    }

    values.sort();
    final avg = values.average;
    final median = values.length.isOdd
        ? values[values.length ~/ 2]
        : (values[(values.length - 1) ~/ 2] + values[values.length ~/ 2]) / 2;

    return {
      'min': values.first,
      'max': values.last,
      'average': avg,
      'median': median,
    };
  }

  Map<String, int> calculateCatchStatistics(List<FishingEvent> events) {
    if (events.isEmpty) {
      return {
        'totalCatches': 0,
        'averagePerTrip': 0,
      };
    }

    final totalCatches = events.fold<int>(0, (sum, event) => sum + (event.catches?.length ?? 0));
    final averagePerTrip = (totalCatches / events.length).round();

    return {
      'totalCatches': totalCatches,
      'averagePerTrip': averagePerTrip,
    };
  }

  Map<String, dynamic> _getEmptyStats() {
    return {
      'totalCatches': 0,
      'speciesDistribution': {},
      'locationDistribution': {},
      'hourlyDistribution': {},
      'weightStats': calculateStatistics([]),
      'lengthStats': calculateStatistics([]),
      'monthlyTrends': {},
      'bestHours': [],
      'bestLocations': [],
      'mostCaughtSpecies': null,
      'uniqueSpecies': 0,
      'uniqueLocations': 0,
    };
  }
}
