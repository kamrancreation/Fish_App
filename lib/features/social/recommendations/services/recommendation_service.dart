import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/recommendation_models.dart';
import '../../feed/models/feed_models.dart';
import '../../../auth/models/user_model.dart';
import '../../../core/error/error_handler.dart';

class RecommendationService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final ErrorHandler _errorHandler;

  RecommendationService({ErrorHandler? errorHandler})
      : _errorHandler = errorHandler ?? ErrorHandler();

  Future<List<UserRecommendation>> getRecommendedUsers(String userId) async {
    try {
      // Get user's interests and activity
      final userDoc = await _firestore.collection('users').doc(userId).get();
      final userData = UserModel.fromJson(userDoc.data()!);

      // Get user's fishing locations
      final locations = await _firestore
          .collection('user_locations')
          .where('userId', isEqualTo: userId)
          .get();

      // Get user's catch history
      final catches = await _firestore
          .collection('catches')
          .where('userId', isEqualTo: userId)
          .get();

      // Build recommendation criteria
      final criteria = RecommendationCriteria(
        fishingStyles: userData.preferences.fishingStyles,
        locations: locations.docs
            .map((doc) => doc.data()['location'] as GeoPoint)
            .toList(),
        targetSpecies: catches.docs
            .map((doc) => doc.data()['species'] as String)
            .toSet()
            .toList(),
        experienceLevel: userData.preferences.experienceLevel,
      );

      // Find similar users
      final recommendations = await _findSimilarUsers(userId, criteria);
      return recommendations;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'User recommendations',
      );
    }
  }

  Future<List<ContentRecommendation>> getRecommendedContent(
      String userId) async {
    try {
      // Get user's recent interactions
      final interactions = await _firestore
          .collection('user_interactions')
          .where('userId', isEqualTo: userId)
          .orderBy('timestamp', descending: true)
          .limit(50)
          .get();

      // Get user's preferences
      final userDoc = await _firestore.collection('users').doc(userId).get();
      final userData = UserModel.fromJson(userDoc.data()!);

      // Build content profile
      final contentProfile = await _buildContentProfile(interactions, userData);

      // Get recommended content
      final recommendations = await _findRelevantContent(contentProfile);
      return recommendations;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Content recommendations',
      );
    }
  }

  Future<List<GroupRecommendation>> getRecommendedGroups(String userId) async {
    try {
      // Get user's interests and activity
      final userDoc = await _firestore.collection('users').doc(userId).get();
      final userData = UserModel.fromJson(userDoc.data()!);

      // Get user's current groups
      final userGroups = await _firestore
          .collection('group_members')
          .where('userId', isEqualTo: userId)
          .get();

      // Find relevant groups
      final recommendations = await _findRelevantGroups(
        userId,
        userData,
        userGroups.docs.map((doc) => doc.data()['groupId'] as String).toList(),
      );
      return recommendations;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Group recommendations',
      );
    }
  }

  Future<List<EventRecommendation>> getRecommendedEvents(String userId) async {
    try {
      final userDoc = await _firestore.collection('users').doc(userId).get();
      final userData = UserModel.fromJson(userDoc.data()!);

      // Get user's location
      final location = await _getUserLocation(userId);

      // Find nearby events matching user interests
      final recommendations = await _findRelevantEvents(userData, location);
      return recommendations;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Event recommendations',
      );
    }
  }

  Future<List<UserRecommendation>> _findSimilarUsers(
    String userId,
    RecommendationCriteria criteria,
  ) async {
    final similarUsers = await _firestore
        .collection('users')
        .where('preferences.fishingStyles',
            arrayContainsAny: criteria.fishingStyles)
        .limit(20)
        .get();

    final recommendations = <UserRecommendation>[];
    for (var doc in similarUsers.docs) {
      if (doc.id != userId) {
        final userData = UserModel.fromJson(doc.data());
        final similarity = await _calculateUserSimilarity(criteria, userData);
        if (similarity > 0.5) {
          recommendations.add(UserRecommendation(
            user: userData,
            similarity: similarity,
            commonInterests: await _findCommonInterests(criteria, userData),
          ));
        }
      }
    }

    recommendations.sort((a, b) => b.similarity.compareTo(a.similarity));
    return recommendations.take(10).toList();
  }

  Future<List<ContentRecommendation>> _findRelevantContent(
    UserContentProfile profile,
  ) async {
    final recentContent = await _firestore
        .collection('posts')
        .orderBy('timestamp', descending: true)
        .limit(100)
        .get();

    final recommendations = <ContentRecommendation>[];
    for (var doc in recentContent.docs) {
      final post = FeedPost.fromJson(doc.data());
      final relevance = _calculateContentRelevance(profile, post);
      if (relevance > 0.3) {
        recommendations.add(ContentRecommendation(
          content: post,
          relevance: relevance,
          reason: _generateRecommendationReason(profile, post),
        ));
      }
    }

    recommendations.sort((a, b) => b.relevance.compareTo(a.relevance));
    return recommendations.take(20).toList();
  }

  Future<List<GroupRecommendation>> _findRelevantGroups(
    String userId,
    UserModel user,
    List<String> currentGroupIds,
  ) async {
    final groups = await _firestore
        .collection('groups')
        .where('isPublic', isEqualTo: true)
        .limit(50)
        .get();

    final recommendations = <GroupRecommendation>[];
    for (var doc in groups.docs) {
      if (!currentGroupIds.contains(doc.id)) {
        final groupData = doc.data();
        final relevance = await _calculateGroupRelevance(user, groupData);
        if (relevance > 0.4) {
          recommendations.add(GroupRecommendation(
            groupId: doc.id,
            name: groupData['name'] as String,
            description: groupData['description'] as String,
            memberCount: groupData['memberCount'] as int,
            relevance: relevance,
            matchingInterests: _getMatchingInterests(
              user.preferences.interests,
              List<String>.from(groupData['tags'] as List),
            ),
          ));
        }
      }
    }

    recommendations.sort((a, b) => b.relevance.compareTo(a.relevance));
    return recommendations.take(5).toList();
  }

  Future<double> _calculateUserSimilarity(
    RecommendationCriteria criteria,
    UserModel otherUser,
  ) async {
    // Implement similarity calculation based on:
    // - Common fishing styles
    // - Location proximity
    // - Experience level
    // - Common catch history
    // Return similarity score between 0 and 1
    return 0.0;
  }

  Future<UserContentProfile> _buildContentProfile(
    QuerySnapshot interactions,
    UserModel userData,
  ) async {
    // Build content profile based on:
    // - Recent interactions
    // - User preferences
    // - Fishing history
    return const UserContentProfile();
  }

  double _calculateContentRelevance(
    UserContentProfile profile,
    FeedPost content,
  ) {
    // Calculate content relevance based on:
    // - Content topic matching
    // - User engagement patterns
    // - Content freshness
    // Return relevance score between 0 and 1
    return 0.0;
  }

  Future<double> _calculateGroupRelevance(
    UserModel user,
    Map<String, dynamic> groupData,
  ) async {
    // Calculate group relevance based on:
    // - Matching interests
    // - Activity level
    // - Member compatibility
    // Return relevance score between 0 and 1
    return 0.0;
  }

  List<String> _getMatchingInterests(
    List<String> userInterests,
    List<String> groupTags,
  ) {
    return userInterests
        .where((interest) => groupTags.contains(interest))
        .toList();
  }

  Future<GeoPoint> _getUserLocation(String userId) async {
    final locationDoc = await _firestore
        .collection('user_locations')
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true)
        .limit(1)
        .get();

    if (locationDoc.docs.isNotEmpty) {
      return locationDoc.docs.first.data()['location'] as GeoPoint;
    }
    throw Exception('User location not found');
  }

  String _generateRecommendationReason(
    UserContentProfile profile,
    FeedPost post,
  ) {
    // Generate personalized reason for recommendation
    return 'Based on your interests in ${post.hashtags.join(", ")}';
  }

  Future<List<String>> _findCommonInterests(
    RecommendationCriteria criteria,
    UserModel otherUser,
  ) async {
    // Find overlapping interests between users
    return [];
  }
}
