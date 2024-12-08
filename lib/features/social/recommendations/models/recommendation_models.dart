import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import '../../../auth/models/user_model.dart';
import '../../feed/models/feed_models.dart';

class RecommendationCriteria extends Equatable {
  final List<String> fishingStyles;
  final List<GeoPoint> locations;
  final List<String> targetSpecies;
  final String experienceLevel;

  const RecommendationCriteria({
    required this.fishingStyles,
    required this.locations,
    required this.targetSpecies,
    required this.experienceLevel,
  });

  @override
  List<Object?> get props => [
        fishingStyles,
        locations,
        targetSpecies,
        experienceLevel,
      ];

  Map<String, dynamic> toJson() {
    return {
      'fishingStyles': fishingStyles,
      'locations': locations.map((loc) => {
            'latitude': loc.latitude,
            'longitude': loc.longitude,
          }).toList(),
      'targetSpecies': targetSpecies,
      'experienceLevel': experienceLevel,
    };
  }

  factory RecommendationCriteria.fromJson(Map<String, dynamic> json) {
    final locations = (json['locations'] as List).map((loc) {
      return GeoPoint(
        loc['latitude'] as double,
        loc['longitude'] as double,
      );
    }).toList();

    return RecommendationCriteria(
      fishingStyles: List<String>.from(json['fishingStyles'] as List),
      locations: locations,
      targetSpecies: List<String>.from(json['targetSpecies'] as List),
      experienceLevel: json['experienceLevel'] as String,
    );
  }
}

class UserRecommendation extends Equatable {
  final UserModel user;
  final double similarity;
  final List<String> commonInterests;

  const UserRecommendation({
    required this.user,
    required this.similarity,
    required this.commonInterests,
  });

  @override
  List<Object?> get props => [user, similarity, commonInterests];

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'similarity': similarity,
      'commonInterests': commonInterests,
    };
  }

  factory UserRecommendation.fromJson(Map<String, dynamic> json) {
    return UserRecommendation(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      similarity: json['similarity'] as double,
      commonInterests: List<String>.from(json['commonInterests'] as List),
    );
  }
}

class ContentRecommendation extends Equatable {
  final FeedPost content;
  final double relevance;
  final String reason;

  const ContentRecommendation({
    required this.content,
    required this.relevance,
    required this.reason,
  });

  @override
  List<Object?> get props => [content, relevance, reason];

  Map<String, dynamic> toJson() {
    return {
      'content': content.toJson(),
      'relevance': relevance,
      'reason': reason,
    };
  }

  factory ContentRecommendation.fromJson(Map<String, dynamic> json) {
    return ContentRecommendation(
      content: FeedPost.fromJson(json['content'] as Map<String, dynamic>),
      relevance: json['relevance'] as double,
      reason: json['reason'] as String,
    );
  }
}

class GroupRecommendation extends Equatable {
  final String groupId;
  final String name;
  final String description;
  final int memberCount;
  final double relevance;
  final List<String> matchingInterests;

  const GroupRecommendation({
    required this.groupId,
    required this.name,
    required this.description,
    required this.memberCount,
    required this.relevance,
    required this.matchingInterests,
  });

  @override
  List<Object?> get props => [
        groupId,
        name,
        description,
        memberCount,
        relevance,
        matchingInterests,
      ];

  Map<String, dynamic> toJson() {
    return {
      'groupId': groupId,
      'name': name,
      'description': description,
      'memberCount': memberCount,
      'relevance': relevance,
      'matchingInterests': matchingInterests,
    };
  }

  factory GroupRecommendation.fromJson(Map<String, dynamic> json) {
    return GroupRecommendation(
      groupId: json['groupId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      memberCount: json['memberCount'] as int,
      relevance: json['relevance'] as double,
      matchingInterests: List<String>.from(json['matchingInterests'] as List),
    );
  }
}

class EventRecommendation extends Equatable {
  final String eventId;
  final String title;
  final String description;
  final DateTime date;
  final GeoPoint location;
  final double relevance;
  final List<String> tags;

  const EventRecommendation({
    required this.eventId,
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    required this.relevance,
    required this.tags,
  });

  @override
  List<Object?> get props => [
        eventId,
        title,
        description,
        date,
        location,
        relevance,
        tags,
      ];

  Map<String, dynamic> toJson() {
    return {
      'eventId': eventId,
      'title': title,
      'description': description,
      'date': date.toIso8601String(),
      'location': {
        'latitude': location.latitude,
        'longitude': location.longitude,
      },
      'relevance': relevance,
      'tags': tags,
    };
  }

  factory EventRecommendation.fromJson(Map<String, dynamic> json) {
    return EventRecommendation(
      eventId: json['eventId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      location: GeoPoint(
        json['location']['latitude'] as double,
        json['location']['longitude'] as double,
      ),
      relevance: json['relevance'] as double,
      tags: List<String>.from(json['tags'] as List),
    );
  }
}

class UserContentProfile extends Equatable {
  final List<String> interests;
  final List<String> preferredSpecies;
  final List<String> preferredLocations;
  final Map<String, double> topicWeights;
  final Map<String, int> interactionCounts;

  const UserContentProfile({
    this.interests = const [],
    this.preferredSpecies = const [],
    this.preferredLocations = const [],
    this.topicWeights = const {},
    this.interactionCounts = const {},
  });

  @override
  List<Object?> get props => [
        interests,
        preferredSpecies,
        preferredLocations,
        topicWeights,
        interactionCounts,
      ];

  Map<String, dynamic> toJson() {
    return {
      'interests': interests,
      'preferredSpecies': preferredSpecies,
      'preferredLocations': preferredLocations,
      'topicWeights': topicWeights,
      'interactionCounts': interactionCounts,
    };
  }

  factory UserContentProfile.fromJson(Map<String, dynamic> json) {
    return UserContentProfile(
      interests: List<String>.from(json['interests'] as List),
      preferredSpecies: List<String>.from(json['preferredSpecies'] as List),
      preferredLocations: List<String>.from(json['preferredLocations'] as List),
      topicWeights: Map<String, double>.from(json['topicWeights'] as Map),
      interactionCounts: Map<String, int>.from(json['interactionCounts'] as Map),
    );
  }
}
