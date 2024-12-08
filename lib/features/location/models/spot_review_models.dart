import 'package:equatable/equatable.dart';

class SpotReview extends Equatable {
  final String id;
  final String spotId;
  final String userId;
  final String userName;
  final String? userAvatar;
  final double rating;
  final String comment;
  final DateTime createdAt;
  final List<String> images;
  final Map<String, bool> reactions;
  final List<String> tags;
  final bool isVerifiedVisit;
  final ReviewMetrics metrics;

  const SpotReview({
    required this.id,
    required this.spotId,
    required this.userId,
    required this.userName,
    this.userAvatar,
    required this.rating,
    required this.comment,
    required this.createdAt,
    this.images = const [],
    this.reactions = const {},
    this.tags = const [],
    this.isVerifiedVisit = false,
    required this.metrics,
  });

  @override
  List<Object?> get props => [
        id,
        spotId,
        userId,
        userName,
        userAvatar,
        rating,
        comment,
        createdAt,
        images,
        reactions,
        tags,
        isVerifiedVisit,
        metrics,
      ];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'spotId': spotId,
      'userId': userId,
      'userName': userName,
      'userAvatar': userAvatar,
      'rating': rating,
      'comment': comment,
      'createdAt': createdAt.toIso8601String(),
      'images': images,
      'reactions': reactions,
      'tags': tags,
      'isVerifiedVisit': isVerifiedVisit,
      'metrics': metrics.toJson(),
    };
  }

  factory SpotReview.fromJson(Map<String, dynamic> json) {
    return SpotReview(
      id: json['id'] as String,
      spotId: json['spotId'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      userAvatar: json['userAvatar'] as String?,
      rating: json['rating'] as double,
      comment: json['comment'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      images: List<String>.from(json['images'] as List),
      reactions: Map<String, bool>.from(json['reactions'] as Map),
      tags: List<String>.from(json['tags'] as List),
      isVerifiedVisit: json['isVerifiedVisit'] as bool,
      metrics: ReviewMetrics.fromJson(json['metrics'] as Map<String, dynamic>),
    );
  }
}

class ReviewMetrics extends Equatable {
  final int helpfulCount;
  final int notHelpfulCount;
  final int reportCount;
  final List<String> reportReasons;
  final bool isEdited;
  final DateTime? lastEditedAt;

  const ReviewMetrics({
    this.helpfulCount = 0,
    this.notHelpfulCount = 0,
    this.reportCount = 0,
    this.reportReasons = const [],
    this.isEdited = false,
    this.lastEditedAt,
  });

  @override
  List<Object?> get props => [
        helpfulCount,
        notHelpfulCount,
        reportCount,
        reportReasons,
        isEdited,
        lastEditedAt,
      ];

  Map<String, dynamic> toJson() {
    return {
      'helpfulCount': helpfulCount,
      'notHelpfulCount': notHelpfulCount,
      'reportCount': reportCount,
      'reportReasons': reportReasons,
      'isEdited': isEdited,
      'lastEditedAt': lastEditedAt?.toIso8601String(),
    };
  }

  factory ReviewMetrics.fromJson(Map<String, dynamic> json) {
    return ReviewMetrics(
      helpfulCount: json['helpfulCount'] as int,
      notHelpfulCount: json['notHelpfulCount'] as int,
      reportCount: json['reportCount'] as int,
      reportReasons: List<String>.from(json['reportReasons'] as List),
      isEdited: json['isEdited'] as bool,
      lastEditedAt: json['lastEditedAt'] != null
          ? DateTime.parse(json['lastEditedAt'] as String)
          : null,
    );
  }
}

class SpotRatingMetrics extends Equatable {
  final double averageRating;
  final int totalReviews;
  final Map<int, int> ratingDistribution;
  final List<String> topTags;
  final Map<String, int> tagCounts;

  const SpotRatingMetrics({
    required this.averageRating,
    required this.totalReviews,
    required this.ratingDistribution,
    required this.topTags,
    required this.tagCounts,
  });

  @override
  List<Object?> get props => [
        averageRating,
        totalReviews,
        ratingDistribution,
        topTags,
        tagCounts,
      ];

  Map<String, dynamic> toJson() {
    return {
      'averageRating': averageRating,
      'totalReviews': totalReviews,
      'ratingDistribution': ratingDistribution,
      'topTags': topTags,
      'tagCounts': tagCounts,
    };
  }

  factory SpotRatingMetrics.fromJson(Map<String, dynamic> json) {
    return SpotRatingMetrics(
      averageRating: json['averageRating'] as double,
      totalReviews: json['totalReviews'] as int,
      ratingDistribution: Map<int, int>.from(json['ratingDistribution'] as Map),
      topTags: List<String>.from(json['topTags'] as List),
      tagCounts: Map<String, int>.from(json['tagCounts'] as Map),
    );
  }
}
