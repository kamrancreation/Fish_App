// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedPostImpl _$$FeedPostImplFromJson(Map<String, dynamic> json) =>
    _$FeedPostImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      content: json['content'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      type: json['type'] as String,
      media:
          (json['media'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      hashtags: (json['hashtags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      mentions: (json['mentions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      commentCount: (json['commentCount'] as num?)?.toInt() ?? 0,
      shareCount: (json['shareCount'] as num?)?.toInt() ?? 0,
      metadata: json['metadata'] as Map<String, dynamic>?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      catchReport: json['catchReport'] == null
          ? null
          : CatchReport.fromJson(json['catchReport'] as Map<String, dynamic>),
      weatherInfo: json['weatherInfo'] == null
          ? null
          : WeatherInfo.fromJson(json['weatherInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedPostImplToJson(_$FeedPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'content': instance.content,
      'timestamp': instance.timestamp.toIso8601String(),
      'type': instance.type,
      'media': instance.media,
      'hashtags': instance.hashtags,
      'mentions': instance.mentions,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'shareCount': instance.shareCount,
      'metadata': instance.metadata,
      'location': instance.location,
      'catchReport': instance.catchReport,
      'weatherInfo': instance.weatherInfo,
    };

_$CatchReportImpl _$$CatchReportImplFromJson(Map<String, dynamic> json) =>
    _$CatchReportImpl(
      id: json['id'] as String,
      species: json['species'] as String,
      weight: (json['weight'] as num).toDouble(),
      length: (json['length'] as num).toDouble(),
      catchTime: DateTime.parse(json['catchTime'] as String),
      lure: json['lure'] as String?,
      technique: json['technique'] as String?,
      waterConditions: json['waterConditions'] as String?,
      details: json['details'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CatchReportImplToJson(_$CatchReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'species': instance.species,
      'weight': instance.weight,
      'length': instance.length,
      'catchTime': instance.catchTime.toIso8601String(),
      'lure': instance.lure,
      'technique': instance.technique,
      'waterConditions': instance.waterConditions,
      'details': instance.details,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      name: json['name'] as String?,
      address: json['address'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'name': instance.name,
      'address': instance.address,
      'metadata': instance.metadata,
    };

_$WeatherInfoImpl _$$WeatherInfoImplFromJson(Map<String, dynamic> json) =>
    _$WeatherInfoImpl(
      temperature: (json['temperature'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
      conditions: json['conditions'] as String,
      pressure: (json['pressure'] as num?)?.toDouble(),
      visibility: (json['visibility'] as num?)?.toDouble(),
      details: json['details'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WeatherInfoImplToJson(_$WeatherInfoImpl instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
      'conditions': instance.conditions,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'details': instance.details,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: json['id'] as String,
      postId: json['postId'] as String,
      userId: json['userId'] as String,
      content: json['content'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      parentId: json['parentId'] as String?,
      mentions: (json['mentions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      media:
          (json['media'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
      'content': instance.content,
      'timestamp': instance.timestamp.toIso8601String(),
      'parentId': instance.parentId,
      'mentions': instance.mentions,
      'likeCount': instance.likeCount,
      'media': instance.media,
      'metadata': instance.metadata,
    };

_$LikeImpl _$$LikeImplFromJson(Map<String, dynamic> json) => _$LikeImpl(
      id: json['id'] as String,
      targetId: json['targetId'] as String,
      targetType: json['targetType'] as String,
      userId: json['userId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$LikeImplToJson(_$LikeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'targetId': instance.targetId,
      'targetType': instance.targetType,
      'userId': instance.userId,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$ShareImpl _$$ShareImplFromJson(Map<String, dynamic> json) => _$ShareImpl(
      id: json['id'] as String,
      postId: json['postId'] as String,
      userId: json['userId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      caption: json['caption'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ShareImplToJson(_$ShareImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
      'timestamp': instance.timestamp.toIso8601String(),
      'caption': instance.caption,
      'metadata': instance.metadata,
    };

_$FeedFilterImpl _$$FeedFilterImplFromJson(Map<String, dynamic> json) =>
    _$FeedFilterImpl(
      species:
          (json['species'] as List<dynamic>?)?.map((e) => e as String).toList(),
      techniques: (json['techniques'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      minWeight: (json['minWeight'] as num?)?.toDouble(),
      maxWeight: (json['maxWeight'] as num?)?.toDouble(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      radius: (json['radius'] as num?)?.toDouble(),
      followingOnly: json['followingOnly'] as bool? ?? false,
      sortBy: json['sortBy'] as String?,
      customFilters: json['customFilters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$FeedFilterImplToJson(_$FeedFilterImpl instance) =>
    <String, dynamic>{
      'species': instance.species,
      'techniques': instance.techniques,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'minWeight': instance.minWeight,
      'maxWeight': instance.maxWeight,
      'location': instance.location,
      'radius': instance.radius,
      'followingOnly': instance.followingOnly,
      'sortBy': instance.sortBy,
      'customFilters': instance.customFilters,
    };

_$FeedEngagementImpl _$$FeedEngagementImplFromJson(Map<String, dynamic> json) =>
    _$FeedEngagementImpl(
      userId: json['userId'] as String,
      likes: (json['likes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
      comments: (json['comments'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
      shares: (json['shares'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
      savedPosts: (json['savedPosts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      preferences: json['preferences'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$FeedEngagementImplToJson(
        _$FeedEngagementImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'likes': instance.likes.map((k, e) => MapEntry(k, e.toIso8601String())),
      'comments':
          instance.comments.map((k, e) => MapEntry(k, e.toIso8601String())),
      'shares': instance.shares.map((k, e) => MapEntry(k, e.toIso8601String())),
      'savedPosts': instance.savedPosts,
      'preferences': instance.preferences,
    };

_$FeedAnalyticsImpl _$$FeedAnalyticsImplFromJson(Map<String, dynamic> json) =>
    _$FeedAnalyticsImpl(
      postId: json['postId'] as String,
      impressions: (json['impressions'] as num).toInt(),
      reaches: (json['reaches'] as num).toInt(),
      engagements: (json['engagements'] as num).toInt(),
      interactionCounts:
          Map<String, int>.from(json['interactionCounts'] as Map),
      demographics: (json['demographics'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      peakEngagementTime: json['peakEngagementTime'] == null
          ? null
          : DateTime.parse(json['peakEngagementTime'] as String),
      metrics: json['metrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$FeedAnalyticsImplToJson(_$FeedAnalyticsImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'impressions': instance.impressions,
      'reaches': instance.reaches,
      'engagements': instance.engagements,
      'interactionCounts': instance.interactionCounts,
      'demographics': instance.demographics,
      'peakEngagementTime': instance.peakEngagementTime?.toIso8601String(),
      'metrics': instance.metrics,
    };
