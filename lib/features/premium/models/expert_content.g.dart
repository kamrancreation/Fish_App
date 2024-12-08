// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expert_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpertContentImpl _$$ExpertContentImplFromJson(Map<String, dynamic> json) =>
    _$ExpertContentImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: $enumDecode(_$ContentCategoryEnumMap, json['category']),
      format: $enumDecode(_$ContentFormatEnumMap, json['format']),
      level: $enumDecode(_$ExpertLevelEnumMap, json['level']),
      authorId: json['authorId'] as String,
      authorName: json['authorName'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      content: json['content'] as Map<String, dynamic>,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      viewCount: (json['viewCount'] as num?)?.toInt(),
      bookmarkCount: (json['bookmarkCount'] as num?)?.toInt(),
      relatedContentIds: (json['relatedContentIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ExpertContentImplToJson(_$ExpertContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': _$ContentCategoryEnumMap[instance.category]!,
      'format': _$ContentFormatEnumMap[instance.format]!,
      'level': _$ExpertLevelEnumMap[instance.level]!,
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'publishDate': instance.publishDate.toIso8601String(),
      'tags': instance.tags,
      'content': instance.content,
      'thumbnailUrl': instance.thumbnailUrl,
      'videoUrl': instance.videoUrl,
      'rating': instance.rating,
      'viewCount': instance.viewCount,
      'bookmarkCount': instance.bookmarkCount,
      'relatedContentIds': instance.relatedContentIds,
      'metadata': instance.metadata,
    };

const _$ContentCategoryEnumMap = {
  ContentCategory.tip: 'tip',
  ContentCategory.tutorial: 'tutorial',
  ContentCategory.technique: 'technique',
  ContentCategory.location: 'location',
  ContentCategory.gearReview: 'gearReview',
  ContentCategory.qa: 'qa',
  ContentCategory.workshop: 'workshop',
};

const _$ContentFormatEnumMap = {
  ContentFormat.text: 'text',
  ContentFormat.video: 'video',
  ContentFormat.interactive: 'interactive',
  ContentFormat.live: 'live',
};

const _$ExpertLevelEnumMap = {
  ExpertLevel.beginner: 'beginner',
  ExpertLevel.intermediate: 'intermediate',
  ExpertLevel.advanced: 'advanced',
  ExpertLevel.pro: 'pro',
};
