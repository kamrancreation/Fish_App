// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaItem _$MediaItemFromJson(Map<String, dynamic> json) {
  return _MediaItem.fromJson(json);
}

/// @nodoc
mixin _$MediaItem {
  String get id => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get catchId => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get thumbnailPath => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String>? get species => throw _privateConstructorUsedError;
  MediaEnhancements? get enhancements => throw _privateConstructorUsedError;
  MediaStats? get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaItemCopyWith<MediaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaItemCopyWith<$Res> {
  factory $MediaItemCopyWith(MediaItem value, $Res Function(MediaItem) then) =
      _$MediaItemCopyWithImpl<$Res, MediaItem>;
  @useResult
  $Res call(
      {String id,
      MediaType type,
      String path,
      String catchId,
      Map<String, dynamic> metadata,
      DateTime timestamp,
      String? thumbnailPath,
      List<String>? tags,
      List<String>? species,
      MediaEnhancements? enhancements,
      MediaStats? stats});

  $MediaEnhancementsCopyWith<$Res>? get enhancements;
  $MediaStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$MediaItemCopyWithImpl<$Res, $Val extends MediaItem>
    implements $MediaItemCopyWith<$Res> {
  _$MediaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? path = null,
    Object? catchId = null,
    Object? metadata = null,
    Object? timestamp = null,
    Object? thumbnailPath = freezed,
    Object? tags = freezed,
    Object? species = freezed,
    Object? enhancements = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      catchId: null == catchId
          ? _value.catchId
          : catchId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnailPath: freezed == thumbnailPath
          ? _value.thumbnailPath
          : thumbnailPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      enhancements: freezed == enhancements
          ? _value.enhancements
          : enhancements // ignore: cast_nullable_to_non_nullable
              as MediaEnhancements?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as MediaStats?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaEnhancementsCopyWith<$Res>? get enhancements {
    if (_value.enhancements == null) {
      return null;
    }

    return $MediaEnhancementsCopyWith<$Res>(_value.enhancements!, (value) {
      return _then(_value.copyWith(enhancements: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaStatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $MediaStatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaItemImplCopyWith<$Res>
    implements $MediaItemCopyWith<$Res> {
  factory _$$MediaItemImplCopyWith(
          _$MediaItemImpl value, $Res Function(_$MediaItemImpl) then) =
      __$$MediaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      MediaType type,
      String path,
      String catchId,
      Map<String, dynamic> metadata,
      DateTime timestamp,
      String? thumbnailPath,
      List<String>? tags,
      List<String>? species,
      MediaEnhancements? enhancements,
      MediaStats? stats});

  @override
  $MediaEnhancementsCopyWith<$Res>? get enhancements;
  @override
  $MediaStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$$MediaItemImplCopyWithImpl<$Res>
    extends _$MediaItemCopyWithImpl<$Res, _$MediaItemImpl>
    implements _$$MediaItemImplCopyWith<$Res> {
  __$$MediaItemImplCopyWithImpl(
      _$MediaItemImpl _value, $Res Function(_$MediaItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? path = null,
    Object? catchId = null,
    Object? metadata = null,
    Object? timestamp = null,
    Object? thumbnailPath = freezed,
    Object? tags = freezed,
    Object? species = freezed,
    Object? enhancements = freezed,
    Object? stats = freezed,
  }) {
    return _then(_$MediaItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      catchId: null == catchId
          ? _value.catchId
          : catchId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnailPath: freezed == thumbnailPath
          ? _value.thumbnailPath
          : thumbnailPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      species: freezed == species
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      enhancements: freezed == enhancements
          ? _value.enhancements
          : enhancements // ignore: cast_nullable_to_non_nullable
              as MediaEnhancements?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as MediaStats?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaItemImpl implements _MediaItem {
  const _$MediaItemImpl(
      {required this.id,
      required this.type,
      required this.path,
      required this.catchId,
      required final Map<String, dynamic> metadata,
      required this.timestamp,
      this.thumbnailPath,
      final List<String>? tags,
      final List<String>? species,
      this.enhancements,
      this.stats})
      : _metadata = metadata,
        _tags = tags,
        _species = species;

  factory _$MediaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaItemImplFromJson(json);

  @override
  final String id;
  @override
  final MediaType type;
  @override
  final String path;
  @override
  final String catchId;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final DateTime timestamp;
  @override
  final String? thumbnailPath;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _species;
  @override
  List<String>? get species {
    final value = _species;
    if (value == null) return null;
    if (_species is EqualUnmodifiableListView) return _species;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MediaEnhancements? enhancements;
  @override
  final MediaStats? stats;

  @override
  String toString() {
    return 'MediaItem(id: $id, type: $type, path: $path, catchId: $catchId, metadata: $metadata, timestamp: $timestamp, thumbnailPath: $thumbnailPath, tags: $tags, species: $species, enhancements: $enhancements, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.catchId, catchId) || other.catchId == catchId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.thumbnailPath, thumbnailPath) ||
                other.thumbnailPath == thumbnailPath) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._species, _species) &&
            (identical(other.enhancements, enhancements) ||
                other.enhancements == enhancements) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      path,
      catchId,
      const DeepCollectionEquality().hash(_metadata),
      timestamp,
      thumbnailPath,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_species),
      enhancements,
      stats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaItemImplCopyWith<_$MediaItemImpl> get copyWith =>
      __$$MediaItemImplCopyWithImpl<_$MediaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaItemImplToJson(
      this,
    );
  }
}

abstract class _MediaItem implements MediaItem {
  const factory _MediaItem(
      {required final String id,
      required final MediaType type,
      required final String path,
      required final String catchId,
      required final Map<String, dynamic> metadata,
      required final DateTime timestamp,
      final String? thumbnailPath,
      final List<String>? tags,
      final List<String>? species,
      final MediaEnhancements? enhancements,
      final MediaStats? stats}) = _$MediaItemImpl;

  factory _MediaItem.fromJson(Map<String, dynamic> json) =
      _$MediaItemImpl.fromJson;

  @override
  String get id;
  @override
  MediaType get type;
  @override
  String get path;
  @override
  String get catchId;
  @override
  Map<String, dynamic> get metadata;
  @override
  DateTime get timestamp;
  @override
  String? get thumbnailPath;
  @override
  List<String>? get tags;
  @override
  List<String>? get species;
  @override
  MediaEnhancements? get enhancements;
  @override
  MediaStats? get stats;
  @override
  @JsonKey(ignore: true)
  _$$MediaItemImplCopyWith<_$MediaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaEnhancements _$MediaEnhancementsFromJson(Map<String, dynamic> json) {
  return _MediaEnhancements.fromJson(json);
}

/// @nodoc
mixin _$MediaEnhancements {
  double get brightness => throw _privateConstructorUsedError;
  double get contrast => throw _privateConstructorUsedError;
  double get saturation => throw _privateConstructorUsedError;
  double get sharpness => throw _privateConstructorUsedError;
  bool get autoWhiteBalance => throw _privateConstructorUsedError;
  bool get denoise => throw _privateConstructorUsedError;
  bool get hdr => throw _privateConstructorUsedError;
  Map<String, dynamic>? get filters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaEnhancementsCopyWith<MediaEnhancements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaEnhancementsCopyWith<$Res> {
  factory $MediaEnhancementsCopyWith(
          MediaEnhancements value, $Res Function(MediaEnhancements) then) =
      _$MediaEnhancementsCopyWithImpl<$Res, MediaEnhancements>;
  @useResult
  $Res call(
      {double brightness,
      double contrast,
      double saturation,
      double sharpness,
      bool autoWhiteBalance,
      bool denoise,
      bool hdr,
      Map<String, dynamic>? filters});
}

/// @nodoc
class _$MediaEnhancementsCopyWithImpl<$Res, $Val extends MediaEnhancements>
    implements $MediaEnhancementsCopyWith<$Res> {
  _$MediaEnhancementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
    Object? contrast = null,
    Object? saturation = null,
    Object? sharpness = null,
    Object? autoWhiteBalance = null,
    Object? denoise = null,
    Object? hdr = null,
    Object? filters = freezed,
  }) {
    return _then(_value.copyWith(
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double,
      contrast: null == contrast
          ? _value.contrast
          : contrast // ignore: cast_nullable_to_non_nullable
              as double,
      saturation: null == saturation
          ? _value.saturation
          : saturation // ignore: cast_nullable_to_non_nullable
              as double,
      sharpness: null == sharpness
          ? _value.sharpness
          : sharpness // ignore: cast_nullable_to_non_nullable
              as double,
      autoWhiteBalance: null == autoWhiteBalance
          ? _value.autoWhiteBalance
          : autoWhiteBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      denoise: null == denoise
          ? _value.denoise
          : denoise // ignore: cast_nullable_to_non_nullable
              as bool,
      hdr: null == hdr
          ? _value.hdr
          : hdr // ignore: cast_nullable_to_non_nullable
              as bool,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaEnhancementsImplCopyWith<$Res>
    implements $MediaEnhancementsCopyWith<$Res> {
  factory _$$MediaEnhancementsImplCopyWith(_$MediaEnhancementsImpl value,
          $Res Function(_$MediaEnhancementsImpl) then) =
      __$$MediaEnhancementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double brightness,
      double contrast,
      double saturation,
      double sharpness,
      bool autoWhiteBalance,
      bool denoise,
      bool hdr,
      Map<String, dynamic>? filters});
}

/// @nodoc
class __$$MediaEnhancementsImplCopyWithImpl<$Res>
    extends _$MediaEnhancementsCopyWithImpl<$Res, _$MediaEnhancementsImpl>
    implements _$$MediaEnhancementsImplCopyWith<$Res> {
  __$$MediaEnhancementsImplCopyWithImpl(_$MediaEnhancementsImpl _value,
      $Res Function(_$MediaEnhancementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
    Object? contrast = null,
    Object? saturation = null,
    Object? sharpness = null,
    Object? autoWhiteBalance = null,
    Object? denoise = null,
    Object? hdr = null,
    Object? filters = freezed,
  }) {
    return _then(_$MediaEnhancementsImpl(
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as double,
      contrast: null == contrast
          ? _value.contrast
          : contrast // ignore: cast_nullable_to_non_nullable
              as double,
      saturation: null == saturation
          ? _value.saturation
          : saturation // ignore: cast_nullable_to_non_nullable
              as double,
      sharpness: null == sharpness
          ? _value.sharpness
          : sharpness // ignore: cast_nullable_to_non_nullable
              as double,
      autoWhiteBalance: null == autoWhiteBalance
          ? _value.autoWhiteBalance
          : autoWhiteBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      denoise: null == denoise
          ? _value.denoise
          : denoise // ignore: cast_nullable_to_non_nullable
              as bool,
      hdr: null == hdr
          ? _value.hdr
          : hdr // ignore: cast_nullable_to_non_nullable
              as bool,
      filters: freezed == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaEnhancementsImpl implements _MediaEnhancements {
  const _$MediaEnhancementsImpl(
      {this.brightness = 1.0,
      this.contrast = 1.0,
      this.saturation = 1.0,
      this.sharpness = 0.0,
      this.autoWhiteBalance = false,
      this.denoise = false,
      this.hdr = false,
      final Map<String, dynamic>? filters})
      : _filters = filters;

  factory _$MediaEnhancementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaEnhancementsImplFromJson(json);

  @override
  @JsonKey()
  final double brightness;
  @override
  @JsonKey()
  final double contrast;
  @override
  @JsonKey()
  final double saturation;
  @override
  @JsonKey()
  final double sharpness;
  @override
  @JsonKey()
  final bool autoWhiteBalance;
  @override
  @JsonKey()
  final bool denoise;
  @override
  @JsonKey()
  final bool hdr;
  final Map<String, dynamic>? _filters;
  @override
  Map<String, dynamic>? get filters {
    final value = _filters;
    if (value == null) return null;
    if (_filters is EqualUnmodifiableMapView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MediaEnhancements(brightness: $brightness, contrast: $contrast, saturation: $saturation, sharpness: $sharpness, autoWhiteBalance: $autoWhiteBalance, denoise: $denoise, hdr: $hdr, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaEnhancementsImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness) &&
            (identical(other.contrast, contrast) ||
                other.contrast == contrast) &&
            (identical(other.saturation, saturation) ||
                other.saturation == saturation) &&
            (identical(other.sharpness, sharpness) ||
                other.sharpness == sharpness) &&
            (identical(other.autoWhiteBalance, autoWhiteBalance) ||
                other.autoWhiteBalance == autoWhiteBalance) &&
            (identical(other.denoise, denoise) || other.denoise == denoise) &&
            (identical(other.hdr, hdr) || other.hdr == hdr) &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brightness,
      contrast,
      saturation,
      sharpness,
      autoWhiteBalance,
      denoise,
      hdr,
      const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaEnhancementsImplCopyWith<_$MediaEnhancementsImpl> get copyWith =>
      __$$MediaEnhancementsImplCopyWithImpl<_$MediaEnhancementsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaEnhancementsImplToJson(
      this,
    );
  }
}

abstract class _MediaEnhancements implements MediaEnhancements {
  const factory _MediaEnhancements(
      {final double brightness,
      final double contrast,
      final double saturation,
      final double sharpness,
      final bool autoWhiteBalance,
      final bool denoise,
      final bool hdr,
      final Map<String, dynamic>? filters}) = _$MediaEnhancementsImpl;

  factory _MediaEnhancements.fromJson(Map<String, dynamic> json) =
      _$MediaEnhancementsImpl.fromJson;

  @override
  double get brightness;
  @override
  double get contrast;
  @override
  double get saturation;
  @override
  double get sharpness;
  @override
  bool get autoWhiteBalance;
  @override
  bool get denoise;
  @override
  bool get hdr;
  @override
  Map<String, dynamic>? get filters;
  @override
  @JsonKey(ignore: true)
  _$$MediaEnhancementsImplCopyWith<_$MediaEnhancementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaStats _$MediaStatsFromJson(Map<String, dynamic> json) {
  return _MediaStats.fromJson(json);
}

/// @nodoc
mixin _$MediaStats {
  int get views => throw _privateConstructorUsedError;
  int get downloads => throw _privateConstructorUsedError;
  int get shares => throw _privateConstructorUsedError;
  DateTime get lastViewed => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  Map<String, int>? get reactions => throw _privateConstructorUsedError;
  List<String>? get usedInCollections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaStatsCopyWith<MediaStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaStatsCopyWith<$Res> {
  factory $MediaStatsCopyWith(
          MediaStats value, $Res Function(MediaStats) then) =
      _$MediaStatsCopyWithImpl<$Res, MediaStats>;
  @useResult
  $Res call(
      {int views,
      int downloads,
      int shares,
      DateTime lastViewed,
      double rating,
      Map<String, int>? reactions,
      List<String>? usedInCollections});
}

/// @nodoc
class _$MediaStatsCopyWithImpl<$Res, $Val extends MediaStats>
    implements $MediaStatsCopyWith<$Res> {
  _$MediaStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? views = null,
    Object? downloads = null,
    Object? shares = null,
    Object? lastViewed = null,
    Object? rating = null,
    Object? reactions = freezed,
    Object? usedInCollections = freezed,
  }) {
    return _then(_value.copyWith(
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int,
      lastViewed: null == lastViewed
          ? _value.lastViewed
          : lastViewed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reactions: freezed == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      usedInCollections: freezed == usedInCollections
          ? _value.usedInCollections
          : usedInCollections // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaStatsImplCopyWith<$Res>
    implements $MediaStatsCopyWith<$Res> {
  factory _$$MediaStatsImplCopyWith(
          _$MediaStatsImpl value, $Res Function(_$MediaStatsImpl) then) =
      __$$MediaStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int views,
      int downloads,
      int shares,
      DateTime lastViewed,
      double rating,
      Map<String, int>? reactions,
      List<String>? usedInCollections});
}

/// @nodoc
class __$$MediaStatsImplCopyWithImpl<$Res>
    extends _$MediaStatsCopyWithImpl<$Res, _$MediaStatsImpl>
    implements _$$MediaStatsImplCopyWith<$Res> {
  __$$MediaStatsImplCopyWithImpl(
      _$MediaStatsImpl _value, $Res Function(_$MediaStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? views = null,
    Object? downloads = null,
    Object? shares = null,
    Object? lastViewed = null,
    Object? rating = null,
    Object? reactions = freezed,
    Object? usedInCollections = freezed,
  }) {
    return _then(_$MediaStatsImpl(
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as int,
      lastViewed: null == lastViewed
          ? _value.lastViewed
          : lastViewed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      reactions: freezed == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      usedInCollections: freezed == usedInCollections
          ? _value._usedInCollections
          : usedInCollections // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaStatsImpl implements _MediaStats {
  const _$MediaStatsImpl(
      {required this.views,
      required this.downloads,
      required this.shares,
      required this.lastViewed,
      required this.rating,
      final Map<String, int>? reactions,
      final List<String>? usedInCollections})
      : _reactions = reactions,
        _usedInCollections = usedInCollections;

  factory _$MediaStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaStatsImplFromJson(json);

  @override
  final int views;
  @override
  final int downloads;
  @override
  final int shares;
  @override
  final DateTime lastViewed;
  @override
  final double rating;
  final Map<String, int>? _reactions;
  @override
  Map<String, int>? get reactions {
    final value = _reactions;
    if (value == null) return null;
    if (_reactions is EqualUnmodifiableMapView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _usedInCollections;
  @override
  List<String>? get usedInCollections {
    final value = _usedInCollections;
    if (value == null) return null;
    if (_usedInCollections is EqualUnmodifiableListView)
      return _usedInCollections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MediaStats(views: $views, downloads: $downloads, shares: $shares, lastViewed: $lastViewed, rating: $rating, reactions: $reactions, usedInCollections: $usedInCollections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaStatsImpl &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.lastViewed, lastViewed) ||
                other.lastViewed == lastViewed) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            const DeepCollectionEquality()
                .equals(other._usedInCollections, _usedInCollections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      views,
      downloads,
      shares,
      lastViewed,
      rating,
      const DeepCollectionEquality().hash(_reactions),
      const DeepCollectionEquality().hash(_usedInCollections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaStatsImplCopyWith<_$MediaStatsImpl> get copyWith =>
      __$$MediaStatsImplCopyWithImpl<_$MediaStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaStatsImplToJson(
      this,
    );
  }
}

abstract class _MediaStats implements MediaStats {
  const factory _MediaStats(
      {required final int views,
      required final int downloads,
      required final int shares,
      required final DateTime lastViewed,
      required final double rating,
      final Map<String, int>? reactions,
      final List<String>? usedInCollections}) = _$MediaStatsImpl;

  factory _MediaStats.fromJson(Map<String, dynamic> json) =
      _$MediaStatsImpl.fromJson;

  @override
  int get views;
  @override
  int get downloads;
  @override
  int get shares;
  @override
  DateTime get lastViewed;
  @override
  double get rating;
  @override
  Map<String, int>? get reactions;
  @override
  List<String>? get usedInCollections;
  @override
  @JsonKey(ignore: true)
  _$$MediaStatsImplCopyWith<_$MediaStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaFilter _$MediaFilterFromJson(Map<String, dynamic> json) {
  return _MediaFilter.fromJson(json);
}

/// @nodoc
mixin _$MediaFilter {
  String? get searchQuery => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<MediaType>? get types => throw _privateConstructorUsedError;
  List<String>? get species => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  double? get minRating => throw _privateConstructorUsedError;
  bool? get enhanced => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaFilterCopyWith<MediaFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaFilterCopyWith<$Res> {
  factory $MediaFilterCopyWith(
          MediaFilter value, $Res Function(MediaFilter) then) =
      _$MediaFilterCopyWithImpl<$Res, MediaFilter>;
  @useResult
  $Res call(
      {String? searchQuery,
      List<String>? tags,
      List<MediaType>? types,
      List<String>? species,
      DateTime? startDate,
      DateTime? endDate,
      double? minRating,
      bool? enhanced,
      String? location});
}

/// @nodoc
class _$MediaFilterCopyWithImpl<$Res, $Val extends MediaFilter>
    implements $MediaFilterCopyWith<$Res> {
  _$MediaFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? tags = freezed,
    Object? types = freezed,
    Object? species = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? minRating = freezed,
    Object? enhanced = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<MediaType>?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      enhanced: freezed == enhanced
          ? _value.enhanced
          : enhanced // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaFilterImplCopyWith<$Res>
    implements $MediaFilterCopyWith<$Res> {
  factory _$$MediaFilterImplCopyWith(
          _$MediaFilterImpl value, $Res Function(_$MediaFilterImpl) then) =
      __$$MediaFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? searchQuery,
      List<String>? tags,
      List<MediaType>? types,
      List<String>? species,
      DateTime? startDate,
      DateTime? endDate,
      double? minRating,
      bool? enhanced,
      String? location});
}

/// @nodoc
class __$$MediaFilterImplCopyWithImpl<$Res>
    extends _$MediaFilterCopyWithImpl<$Res, _$MediaFilterImpl>
    implements _$$MediaFilterImplCopyWith<$Res> {
  __$$MediaFilterImplCopyWithImpl(
      _$MediaFilterImpl _value, $Res Function(_$MediaFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? tags = freezed,
    Object? types = freezed,
    Object? species = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? minRating = freezed,
    Object? enhanced = freezed,
    Object? location = freezed,
  }) {
    return _then(_$MediaFilterImpl(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<MediaType>?,
      species: freezed == species
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      enhanced: freezed == enhanced
          ? _value.enhanced
          : enhanced // ignore: cast_nullable_to_non_nullable
              as bool?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaFilterImpl implements _MediaFilter {
  const _$MediaFilterImpl(
      {this.searchQuery,
      final List<String>? tags,
      final List<MediaType>? types,
      final List<String>? species,
      this.startDate,
      this.endDate,
      this.minRating,
      this.enhanced,
      this.location})
      : _tags = tags,
        _types = types,
        _species = species;

  factory _$MediaFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaFilterImplFromJson(json);

  @override
  final String? searchQuery;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MediaType>? _types;
  @override
  List<MediaType>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _species;
  @override
  List<String>? get species {
    final value = _species;
    if (value == null) return null;
    if (_species is EqualUnmodifiableListView) return _species;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double? minRating;
  @override
  final bool? enhanced;
  @override
  final String? location;

  @override
  String toString() {
    return 'MediaFilter(searchQuery: $searchQuery, tags: $tags, types: $types, species: $species, startDate: $startDate, endDate: $endDate, minRating: $minRating, enhanced: $enhanced, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaFilterImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._species, _species) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.enhanced, enhanced) ||
                other.enhanced == enhanced) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchQuery,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_species),
      startDate,
      endDate,
      minRating,
      enhanced,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaFilterImplCopyWith<_$MediaFilterImpl> get copyWith =>
      __$$MediaFilterImplCopyWithImpl<_$MediaFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaFilterImplToJson(
      this,
    );
  }
}

abstract class _MediaFilter implements MediaFilter {
  const factory _MediaFilter(
      {final String? searchQuery,
      final List<String>? tags,
      final List<MediaType>? types,
      final List<String>? species,
      final DateTime? startDate,
      final DateTime? endDate,
      final double? minRating,
      final bool? enhanced,
      final String? location}) = _$MediaFilterImpl;

  factory _MediaFilter.fromJson(Map<String, dynamic> json) =
      _$MediaFilterImpl.fromJson;

  @override
  String? get searchQuery;
  @override
  List<String>? get tags;
  @override
  List<MediaType>? get types;
  @override
  List<String>? get species;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  double? get minRating;
  @override
  bool? get enhanced;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$$MediaFilterImplCopyWith<_$MediaFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaCollection _$MediaCollectionFromJson(Map<String, dynamic> json) {
  return _MediaCollection.fromJson(json);
}

/// @nodoc
mixin _$MediaCollection {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get mediaIds => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get coverImageId => throw _privateConstructorUsedError;
  bool? get isPrivate => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCollectionCopyWith<MediaCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCollectionCopyWith<$Res> {
  factory $MediaCollectionCopyWith(
          MediaCollection value, $Res Function(MediaCollection) then) =
      _$MediaCollectionCopyWithImpl<$Res, MediaCollection>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> mediaIds,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      String? coverImageId,
      bool? isPrivate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$MediaCollectionCopyWithImpl<$Res, $Val extends MediaCollection>
    implements $MediaCollectionCopyWith<$Res> {
  _$MediaCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mediaIds = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? coverImageId = freezed,
    Object? isPrivate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mediaIds: null == mediaIds
          ? _value.mediaIds
          : mediaIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImageId: freezed == coverImageId
          ? _value.coverImageId
          : coverImageId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaCollectionImplCopyWith<$Res>
    implements $MediaCollectionCopyWith<$Res> {
  factory _$$MediaCollectionImplCopyWith(_$MediaCollectionImpl value,
          $Res Function(_$MediaCollectionImpl) then) =
      __$$MediaCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> mediaIds,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      String? coverImageId,
      bool? isPrivate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$MediaCollectionImplCopyWithImpl<$Res>
    extends _$MediaCollectionCopyWithImpl<$Res, _$MediaCollectionImpl>
    implements _$$MediaCollectionImplCopyWith<$Res> {
  __$$MediaCollectionImplCopyWithImpl(
      _$MediaCollectionImpl _value, $Res Function(_$MediaCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mediaIds = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? coverImageId = freezed,
    Object? isPrivate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$MediaCollectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mediaIds: null == mediaIds
          ? _value._mediaIds
          : mediaIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImageId: freezed == coverImageId
          ? _value.coverImageId
          : coverImageId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: freezed == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaCollectionImpl implements _MediaCollection {
  const _$MediaCollectionImpl(
      {required this.id,
      required this.name,
      required final List<String> mediaIds,
      required this.createdAt,
      required this.updatedAt,
      this.description,
      this.coverImageId,
      this.isPrivate,
      final Map<String, dynamic>? metadata})
      : _mediaIds = mediaIds,
        _metadata = metadata;

  factory _$MediaCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaCollectionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _mediaIds;
  @override
  List<String> get mediaIds {
    if (_mediaIds is EqualUnmodifiableListView) return _mediaIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaIds);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? description;
  @override
  final String? coverImageId;
  @override
  final bool? isPrivate;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MediaCollection(id: $id, name: $name, mediaIds: $mediaIds, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, coverImageId: $coverImageId, isPrivate: $isPrivate, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaCollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._mediaIds, _mediaIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverImageId, coverImageId) ||
                other.coverImageId == coverImageId) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_mediaIds),
      createdAt,
      updatedAt,
      description,
      coverImageId,
      isPrivate,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaCollectionImplCopyWith<_$MediaCollectionImpl> get copyWith =>
      __$$MediaCollectionImplCopyWithImpl<_$MediaCollectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaCollectionImplToJson(
      this,
    );
  }
}

abstract class _MediaCollection implements MediaCollection {
  const factory _MediaCollection(
      {required final String id,
      required final String name,
      required final List<String> mediaIds,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? description,
      final String? coverImageId,
      final bool? isPrivate,
      final Map<String, dynamic>? metadata}) = _$MediaCollectionImpl;

  factory _MediaCollection.fromJson(Map<String, dynamic> json) =
      _$MediaCollectionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get mediaIds;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get description;
  @override
  String? get coverImageId;
  @override
  bool? get isPrivate;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$MediaCollectionImplCopyWith<_$MediaCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ARMeasurement _$ARMeasurementFromJson(Map<String, dynamic> json) {
  return _ARMeasurement.fromJson(json);
}

/// @nodoc
mixin _$ARMeasurement {
  String get id => throw _privateConstructorUsedError;
  String get mediaId => throw _privateConstructorUsedError;
  double get length => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ARMeasurementCopyWith<ARMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ARMeasurementCopyWith<$Res> {
  factory $ARMeasurementCopyWith(
          ARMeasurement value, $Res Function(ARMeasurement) then) =
      _$ARMeasurementCopyWithImpl<$Res, ARMeasurement>;
  @useResult
  $Res call(
      {String id,
      String mediaId,
      double length,
      double width,
      double height,
      DateTime timestamp,
      String? species,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ARMeasurementCopyWithImpl<$Res, $Val extends ARMeasurement>
    implements $ARMeasurementCopyWith<$Res> {
  _$ARMeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mediaId = null,
    Object? length = null,
    Object? width = null,
    Object? height = null,
    Object? timestamp = null,
    Object? species = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ARMeasurementImplCopyWith<$Res>
    implements $ARMeasurementCopyWith<$Res> {
  factory _$$ARMeasurementImplCopyWith(
          _$ARMeasurementImpl value, $Res Function(_$ARMeasurementImpl) then) =
      __$$ARMeasurementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String mediaId,
      double length,
      double width,
      double height,
      DateTime timestamp,
      String? species,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ARMeasurementImplCopyWithImpl<$Res>
    extends _$ARMeasurementCopyWithImpl<$Res, _$ARMeasurementImpl>
    implements _$$ARMeasurementImplCopyWith<$Res> {
  __$$ARMeasurementImplCopyWithImpl(
      _$ARMeasurementImpl _value, $Res Function(_$ARMeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mediaId = null,
    Object? length = null,
    Object? width = null,
    Object? height = null,
    Object? timestamp = null,
    Object? species = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ARMeasurementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ARMeasurementImpl implements _ARMeasurement {
  const _$ARMeasurementImpl(
      {required this.id,
      required this.mediaId,
      required this.length,
      required this.width,
      required this.height,
      required this.timestamp,
      this.species,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ARMeasurementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ARMeasurementImplFromJson(json);

  @override
  final String id;
  @override
  final String mediaId;
  @override
  final double length;
  @override
  final double width;
  @override
  final double height;
  @override
  final DateTime timestamp;
  @override
  final String? species;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ARMeasurement(id: $id, mediaId: $mediaId, length: $length, width: $width, height: $height, timestamp: $timestamp, species: $species, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ARMeasurementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.species, species) || other.species == species) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mediaId,
      length,
      width,
      height,
      timestamp,
      species,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ARMeasurementImplCopyWith<_$ARMeasurementImpl> get copyWith =>
      __$$ARMeasurementImplCopyWithImpl<_$ARMeasurementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ARMeasurementImplToJson(
      this,
    );
  }
}

abstract class _ARMeasurement implements ARMeasurement {
  const factory _ARMeasurement(
      {required final String id,
      required final String mediaId,
      required final double length,
      required final double width,
      required final double height,
      required final DateTime timestamp,
      final String? species,
      final Map<String, dynamic>? metadata}) = _$ARMeasurementImpl;

  factory _ARMeasurement.fromJson(Map<String, dynamic> json) =
      _$ARMeasurementImpl.fromJson;

  @override
  String get id;
  @override
  String get mediaId;
  @override
  double get length;
  @override
  double get width;
  @override
  double get height;
  @override
  DateTime get timestamp;
  @override
  String? get species;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ARMeasurementImplCopyWith<_$ARMeasurementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
