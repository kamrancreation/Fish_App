// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaItemImpl _$$MediaItemImplFromJson(Map<String, dynamic> json) =>
    _$MediaItemImpl(
      id: json['id'] as String,
      type: $enumDecode(_$MediaTypeEnumMap, json['type']),
      path: json['path'] as String,
      catchId: json['catchId'] as String,
      metadata: json['metadata'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      thumbnailPath: json['thumbnailPath'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      species:
          (json['species'] as List<dynamic>?)?.map((e) => e as String).toList(),
      enhancements: json['enhancements'] == null
          ? null
          : MediaEnhancements.fromJson(
              json['enhancements'] as Map<String, dynamic>),
      stats: json['stats'] == null
          ? null
          : MediaStats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MediaItemImplToJson(_$MediaItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$MediaTypeEnumMap[instance.type]!,
      'path': instance.path,
      'catchId': instance.catchId,
      'metadata': instance.metadata,
      'timestamp': instance.timestamp.toIso8601String(),
      'thumbnailPath': instance.thumbnailPath,
      'tags': instance.tags,
      'species': instance.species,
      'enhancements': instance.enhancements,
      'stats': instance.stats,
    };

const _$MediaTypeEnumMap = {
  MediaType.photo: 'photo',
  MediaType.video: 'video',
  MediaType.burst: 'burst',
  MediaType.panorama: 'panorama',
  MediaType.ar: 'ar',
};

_$MediaEnhancementsImpl _$$MediaEnhancementsImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaEnhancementsImpl(
      brightness: (json['brightness'] as num?)?.toDouble() ?? 1.0,
      contrast: (json['contrast'] as num?)?.toDouble() ?? 1.0,
      saturation: (json['saturation'] as num?)?.toDouble() ?? 1.0,
      sharpness: (json['sharpness'] as num?)?.toDouble() ?? 0.0,
      autoWhiteBalance: json['autoWhiteBalance'] as bool? ?? false,
      denoise: json['denoise'] as bool? ?? false,
      hdr: json['hdr'] as bool? ?? false,
      filters: json['filters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MediaEnhancementsImplToJson(
        _$MediaEnhancementsImpl instance) =>
    <String, dynamic>{
      'brightness': instance.brightness,
      'contrast': instance.contrast,
      'saturation': instance.saturation,
      'sharpness': instance.sharpness,
      'autoWhiteBalance': instance.autoWhiteBalance,
      'denoise': instance.denoise,
      'hdr': instance.hdr,
      'filters': instance.filters,
    };

_$MediaStatsImpl _$$MediaStatsImplFromJson(Map<String, dynamic> json) =>
    _$MediaStatsImpl(
      views: (json['views'] as num).toInt(),
      downloads: (json['downloads'] as num).toInt(),
      shares: (json['shares'] as num).toInt(),
      lastViewed: DateTime.parse(json['lastViewed'] as String),
      rating: (json['rating'] as num).toDouble(),
      reactions: (json['reactions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      usedInCollections: (json['usedInCollections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MediaStatsImplToJson(_$MediaStatsImpl instance) =>
    <String, dynamic>{
      'views': instance.views,
      'downloads': instance.downloads,
      'shares': instance.shares,
      'lastViewed': instance.lastViewed.toIso8601String(),
      'rating': instance.rating,
      'reactions': instance.reactions,
      'usedInCollections': instance.usedInCollections,
    };

_$MediaFilterImpl _$$MediaFilterImplFromJson(Map<String, dynamic> json) =>
    _$MediaFilterImpl(
      searchQuery: json['searchQuery'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MediaTypeEnumMap, e))
          .toList(),
      species:
          (json['species'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      minRating: (json['minRating'] as num?)?.toDouble(),
      enhanced: json['enhanced'] as bool?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$MediaFilterImplToJson(_$MediaFilterImpl instance) =>
    <String, dynamic>{
      'searchQuery': instance.searchQuery,
      'tags': instance.tags,
      'types': instance.types?.map((e) => _$MediaTypeEnumMap[e]!).toList(),
      'species': instance.species,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'minRating': instance.minRating,
      'enhanced': instance.enhanced,
      'location': instance.location,
    };

_$MediaCollectionImpl _$$MediaCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaCollectionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      mediaIds:
          (json['mediaIds'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      description: json['description'] as String?,
      coverImageId: json['coverImageId'] as String?,
      isPrivate: json['isPrivate'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MediaCollectionImplToJson(
        _$MediaCollectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mediaIds': instance.mediaIds,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'description': instance.description,
      'coverImageId': instance.coverImageId,
      'isPrivate': instance.isPrivate,
      'metadata': instance.metadata,
    };

_$ARMeasurementImpl _$$ARMeasurementImplFromJson(Map<String, dynamic> json) =>
    _$ARMeasurementImpl(
      id: json['id'] as String,
      mediaId: json['mediaId'] as String,
      length: (json['length'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      species: json['species'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ARMeasurementImplToJson(_$ARMeasurementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mediaId': instance.mediaId,
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
      'timestamp': instance.timestamp.toIso8601String(),
      'species': instance.species,
      'metadata': instance.metadata,
    };
