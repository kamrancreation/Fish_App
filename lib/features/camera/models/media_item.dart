import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_item.freezed.dart';
part 'media_item.g.dart';

@freezed
class MediaItem with _$MediaItem {
  const factory MediaItem({
    required String id,
    required MediaType type,
    required String path,
    required String catchId,
    required Map<String, dynamic> metadata,
    required DateTime timestamp,
    String? thumbnailPath,
    List<String>? tags,
    List<String>? species,
    MediaEnhancements? enhancements,
    MediaStats? stats,
  }) = _MediaItem;

  factory MediaItem.fromJson(Map<String, dynamic> json) =>
      _$MediaItemFromJson(json);
}

enum MediaType {
  photo,
  video,
  burst,
  panorama,
  ar;

  bool get isPhoto => this == MediaType.photo;
  bool get isVideo => this == MediaType.video;
  bool get isBurst => this == MediaType.burst;
  bool get isPanorama => this == MediaType.panorama;
  bool get isAR => this == MediaType.ar;
}

@freezed
class MediaEnhancements with _$MediaEnhancements {
  const factory MediaEnhancements({
    @Default(1.0) double brightness,
    @Default(1.0) double contrast,
    @Default(1.0) double saturation,
    @Default(0.0) double sharpness,
    @Default(false) bool autoWhiteBalance,
    @Default(false) bool denoise,
    @Default(false) bool hdr,
    Map<String, dynamic>? filters,
  }) = _MediaEnhancements;

  factory MediaEnhancements.fromJson(Map<String, dynamic> json) =>
      _$MediaEnhancementsFromJson(json);
}

@freezed
class MediaStats with _$MediaStats {
  const factory MediaStats({
    required int views,
    required int downloads,
    required int shares,
    required DateTime lastViewed,
    required double rating,
    Map<String, int>? reactions,
    List<String>? usedInCollections,
  }) = _MediaStats;

  factory MediaStats.fromJson(Map<String, dynamic> json) =>
      _$MediaStatsFromJson(json);
}

@freezed
class MediaFilter with _$MediaFilter {
  const factory MediaFilter({
    String? searchQuery,
    List<String>? tags,
    List<MediaType>? types,
    List<String>? species,
    DateTime? startDate,
    DateTime? endDate,
    double? minRating,
    bool? enhanced,
    String? location,
  }) = _MediaFilter;

  factory MediaFilter.fromJson(Map<String, dynamic> json) =>
      _$MediaFilterFromJson(json);
}

@freezed
class MediaCollection with _$MediaCollection {
  const factory MediaCollection({
    required String id,
    required String name,
    required List<String> mediaIds,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? description,
    String? coverImageId,
    bool? isPrivate,
    Map<String, dynamic>? metadata,
  }) = _MediaCollection;

  factory MediaCollection.fromJson(Map<String, dynamic> json) =>
      _$MediaCollectionFromJson(json);
}

@freezed
class ARMeasurement with _$ARMeasurement {
  const factory ARMeasurement({
    required String id,
    required String mediaId,
    required double length,
    required double width,
    required double height,
    required DateTime timestamp,
    String? species,
    Map<String, dynamic>? metadata,
  }) = _ARMeasurement;

  factory ARMeasurement.fromJson(Map<String, dynamic> json) =>
      _$ARMeasurementFromJson(json);
}
