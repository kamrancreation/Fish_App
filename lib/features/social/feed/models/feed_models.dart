import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'feed_models.freezed.dart';
part 'feed_models.g.dart';

@freezed
class FeedPost with _$FeedPost {
  const factory FeedPost({
    required String id,
    required String userId,
    required String content,
    required DateTime timestamp,
    required String type, // text, image, video, catch_report, etc.
    @Default([]) List<String> media,
    @Default([]) List<String> hashtags,
    @Default([]) List<String> mentions,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    @Default(0) int shareCount,
    Map<String, dynamic>? metadata,
    Location? location,
    CatchReport? catchReport,
    WeatherInfo? weatherInfo,
  }) = _FeedPost;

  factory FeedPost.fromJson(Map<String, dynamic> json) => _$FeedPostFromJson(json);
}

@freezed
class CatchReport with _$CatchReport {
  const factory CatchReport({
    required String id,
    required String species,
    required double weight,
    required double length,
    required DateTime catchTime,
    String? lure,
    String? technique,
    String? waterConditions,
    Map<String, dynamic>? details,
  }) = _CatchReport;

  factory CatchReport.fromJson(Map<String, dynamic> json) =>
      _$CatchReportFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required double latitude,
    required double longitude,
    String? name,
    String? address,
    Map<String, dynamic>? metadata,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

@freezed
class WeatherInfo with _$WeatherInfo {
  const factory WeatherInfo({
    required double temperature,
    required double humidity,
    required double windSpeed,
    required String conditions,
    double? pressure,
    double? visibility,
    Map<String, dynamic>? details,
  }) = _WeatherInfo;

  factory WeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required String id,
    required String postId,
    required String userId,
    required String content,
    required DateTime timestamp,
    String? parentId,
    @Default([]) List<String> mentions,
    @Default(0) int likeCount,
    @Default([]) List<String> media,
    Map<String, dynamic>? metadata,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}

@freezed
class Like with _$Like {
  const factory Like({
    required String id,
    required String targetId,
    required String targetType,
    required String userId,
    required DateTime timestamp,
  }) = _Like;

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);
}

@freezed
class Share with _$Share {
  const factory Share({
    required String id,
    required String postId,
    required String userId,
    required DateTime timestamp,
    String? caption,
    Map<String, dynamic>? metadata,
  }) = _Share;

  factory Share.fromJson(Map<String, dynamic> json) => _$ShareFromJson(json);
}

@freezed
class FeedFilter with _$FeedFilter {
  const factory FeedFilter({
    List<String>? species,
    List<String>? techniques,
    DateTime? startDate,
    DateTime? endDate,
    double? minWeight,
    double? maxWeight,
    Location? location,
    double? radius,
    @Default(false) bool followingOnly,
    String? sortBy,
    Map<String, dynamic>? customFilters,
  }) = _FeedFilter;

  factory FeedFilter.fromJson(Map<String, dynamic> json) =>
      _$FeedFilterFromJson(json);
}

@freezed
class FeedEngagement with _$FeedEngagement {
  const factory FeedEngagement({
    required String userId,
    required Map<String, DateTime> likes,
    required Map<String, DateTime> comments,
    required Map<String, DateTime> shares,
    required List<String> savedPosts,
    Map<String, dynamic>? preferences,
  }) = _FeedEngagement;

  factory FeedEngagement.fromJson(Map<String, dynamic> json) =>
      _$FeedEngagementFromJson(json);
}

@freezed
class FeedAnalytics with _$FeedAnalytics {
  const factory FeedAnalytics({
    required String postId,
    required int impressions,
    required int reaches,
    required int engagements,
    required Map<String, int> interactionCounts,
    required Map<String, double> demographics,
    DateTime? peakEngagementTime,
    Map<String, dynamic>? metrics,
  }) = _FeedAnalytics;

  factory FeedAnalytics.fromJson(Map<String, dynamic> json) =>
      _$FeedAnalyticsFromJson(json);
}
