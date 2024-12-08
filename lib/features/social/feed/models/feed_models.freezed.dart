// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedPost _$FeedPostFromJson(Map<String, dynamic> json) {
  return _FeedPost.fromJson(json);
}

/// @nodoc
mixin _$FeedPost {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // text, image, video, catch_report, etc.
  List<String> get media => throw _privateConstructorUsedError;
  List<String> get hashtags => throw _privateConstructorUsedError;
  List<String> get mentions => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  int get shareCount => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  CatchReport? get catchReport => throw _privateConstructorUsedError;
  WeatherInfo? get weatherInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedPostCopyWith<FeedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPostCopyWith<$Res> {
  factory $FeedPostCopyWith(FeedPost value, $Res Function(FeedPost) then) =
      _$FeedPostCopyWithImpl<$Res, FeedPost>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String content,
      DateTime timestamp,
      String type,
      List<String> media,
      List<String> hashtags,
      List<String> mentions,
      int likeCount,
      int commentCount,
      int shareCount,
      Map<String, dynamic>? metadata,
      Location? location,
      CatchReport? catchReport,
      WeatherInfo? weatherInfo});

  $LocationCopyWith<$Res>? get location;
  $CatchReportCopyWith<$Res>? get catchReport;
  $WeatherInfoCopyWith<$Res>? get weatherInfo;
}

/// @nodoc
class _$FeedPostCopyWithImpl<$Res, $Val extends FeedPost>
    implements $FeedPostCopyWith<$Res> {
  _$FeedPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? timestamp = null,
    Object? type = null,
    Object? media = null,
    Object? hashtags = null,
    Object? mentions = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? shareCount = null,
    Object? metadata = freezed,
    Object? location = freezed,
    Object? catchReport = freezed,
    Object? weatherInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hashtags: null == hashtags
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCount: null == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      catchReport: freezed == catchReport
          ? _value.catchReport
          : catchReport // ignore: cast_nullable_to_non_nullable
              as CatchReport?,
      weatherInfo: freezed == weatherInfo
          ? _value.weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as WeatherInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CatchReportCopyWith<$Res>? get catchReport {
    if (_value.catchReport == null) {
      return null;
    }

    return $CatchReportCopyWith<$Res>(_value.catchReport!, (value) {
      return _then(_value.copyWith(catchReport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherInfoCopyWith<$Res>? get weatherInfo {
    if (_value.weatherInfo == null) {
      return null;
    }

    return $WeatherInfoCopyWith<$Res>(_value.weatherInfo!, (value) {
      return _then(_value.copyWith(weatherInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedPostImplCopyWith<$Res>
    implements $FeedPostCopyWith<$Res> {
  factory _$$FeedPostImplCopyWith(
          _$FeedPostImpl value, $Res Function(_$FeedPostImpl) then) =
      __$$FeedPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String content,
      DateTime timestamp,
      String type,
      List<String> media,
      List<String> hashtags,
      List<String> mentions,
      int likeCount,
      int commentCount,
      int shareCount,
      Map<String, dynamic>? metadata,
      Location? location,
      CatchReport? catchReport,
      WeatherInfo? weatherInfo});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $CatchReportCopyWith<$Res>? get catchReport;
  @override
  $WeatherInfoCopyWith<$Res>? get weatherInfo;
}

/// @nodoc
class __$$FeedPostImplCopyWithImpl<$Res>
    extends _$FeedPostCopyWithImpl<$Res, _$FeedPostImpl>
    implements _$$FeedPostImplCopyWith<$Res> {
  __$$FeedPostImplCopyWithImpl(
      _$FeedPostImpl _value, $Res Function(_$FeedPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? content = null,
    Object? timestamp = null,
    Object? type = null,
    Object? media = null,
    Object? hashtags = null,
    Object? mentions = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? shareCount = null,
    Object? metadata = freezed,
    Object? location = freezed,
    Object? catchReport = freezed,
    Object? weatherInfo = freezed,
  }) {
    return _then(_$FeedPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hashtags: null == hashtags
          ? _value._hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mentions: null == mentions
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCount: null == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      catchReport: freezed == catchReport
          ? _value.catchReport
          : catchReport // ignore: cast_nullable_to_non_nullable
              as CatchReport?,
      weatherInfo: freezed == weatherInfo
          ? _value.weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as WeatherInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedPostImpl with DiagnosticableTreeMixin implements _FeedPost {
  const _$FeedPostImpl(
      {required this.id,
      required this.userId,
      required this.content,
      required this.timestamp,
      required this.type,
      final List<String> media = const [],
      final List<String> hashtags = const [],
      final List<String> mentions = const [],
      this.likeCount = 0,
      this.commentCount = 0,
      this.shareCount = 0,
      final Map<String, dynamic>? metadata,
      this.location,
      this.catchReport,
      this.weatherInfo})
      : _media = media,
        _hashtags = hashtags,
        _mentions = mentions,
        _metadata = metadata;

  factory _$FeedPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedPostImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String content;
  @override
  final DateTime timestamp;
  @override
  final String type;
// text, image, video, catch_report, etc.
  final List<String> _media;
// text, image, video, catch_report, etc.
  @override
  @JsonKey()
  List<String> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  final List<String> _hashtags;
  @override
  @JsonKey()
  List<String> get hashtags {
    if (_hashtags is EqualUnmodifiableListView) return _hashtags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hashtags);
  }

  final List<String> _mentions;
  @override
  @JsonKey()
  List<String> get mentions {
    if (_mentions is EqualUnmodifiableListView) return _mentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentions);
  }

  @override
  @JsonKey()
  final int likeCount;
  @override
  @JsonKey()
  final int commentCount;
  @override
  @JsonKey()
  final int shareCount;
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
  final Location? location;
  @override
  final CatchReport? catchReport;
  @override
  final WeatherInfo? weatherInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedPost(id: $id, userId: $userId, content: $content, timestamp: $timestamp, type: $type, media: $media, hashtags: $hashtags, mentions: $mentions, likeCount: $likeCount, commentCount: $commentCount, shareCount: $shareCount, metadata: $metadata, location: $location, catchReport: $catchReport, weatherInfo: $weatherInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedPost'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('media', media))
      ..add(DiagnosticsProperty('hashtags', hashtags))
      ..add(DiagnosticsProperty('mentions', mentions))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('commentCount', commentCount))
      ..add(DiagnosticsProperty('shareCount', shareCount))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('catchReport', catchReport))
      ..add(DiagnosticsProperty('weatherInfo', weatherInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other._hashtags, _hashtags) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.shareCount, shareCount) ||
                other.shareCount == shareCount) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.catchReport, catchReport) ||
                other.catchReport == catchReport) &&
            (identical(other.weatherInfo, weatherInfo) ||
                other.weatherInfo == weatherInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      content,
      timestamp,
      type,
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_hashtags),
      const DeepCollectionEquality().hash(_mentions),
      likeCount,
      commentCount,
      shareCount,
      const DeepCollectionEquality().hash(_metadata),
      location,
      catchReport,
      weatherInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedPostImplCopyWith<_$FeedPostImpl> get copyWith =>
      __$$FeedPostImplCopyWithImpl<_$FeedPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedPostImplToJson(
      this,
    );
  }
}

abstract class _FeedPost implements FeedPost {
  const factory _FeedPost(
      {required final String id,
      required final String userId,
      required final String content,
      required final DateTime timestamp,
      required final String type,
      final List<String> media,
      final List<String> hashtags,
      final List<String> mentions,
      final int likeCount,
      final int commentCount,
      final int shareCount,
      final Map<String, dynamic>? metadata,
      final Location? location,
      final CatchReport? catchReport,
      final WeatherInfo? weatherInfo}) = _$FeedPostImpl;

  factory _FeedPost.fromJson(Map<String, dynamic> json) =
      _$FeedPostImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get content;
  @override
  DateTime get timestamp;
  @override
  String get type;
  @override // text, image, video, catch_report, etc.
  List<String> get media;
  @override
  List<String> get hashtags;
  @override
  List<String> get mentions;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  int get shareCount;
  @override
  Map<String, dynamic>? get metadata;
  @override
  Location? get location;
  @override
  CatchReport? get catchReport;
  @override
  WeatherInfo? get weatherInfo;
  @override
  @JsonKey(ignore: true)
  _$$FeedPostImplCopyWith<_$FeedPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CatchReport _$CatchReportFromJson(Map<String, dynamic> json) {
  return _CatchReport.fromJson(json);
}

/// @nodoc
mixin _$CatchReport {
  String get id => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get length => throw _privateConstructorUsedError;
  DateTime get catchTime => throw _privateConstructorUsedError;
  String? get lure => throw _privateConstructorUsedError;
  String? get technique => throw _privateConstructorUsedError;
  String? get waterConditions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatchReportCopyWith<CatchReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatchReportCopyWith<$Res> {
  factory $CatchReportCopyWith(
          CatchReport value, $Res Function(CatchReport) then) =
      _$CatchReportCopyWithImpl<$Res, CatchReport>;
  @useResult
  $Res call(
      {String id,
      String species,
      double weight,
      double length,
      DateTime catchTime,
      String? lure,
      String? technique,
      String? waterConditions,
      Map<String, dynamic>? details});
}

/// @nodoc
class _$CatchReportCopyWithImpl<$Res, $Val extends CatchReport>
    implements $CatchReportCopyWith<$Res> {
  _$CatchReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? species = null,
    Object? weight = null,
    Object? length = null,
    Object? catchTime = null,
    Object? lure = freezed,
    Object? technique = freezed,
    Object? waterConditions = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      catchTime: null == catchTime
          ? _value.catchTime
          : catchTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lure: freezed == lure
          ? _value.lure
          : lure // ignore: cast_nullable_to_non_nullable
              as String?,
      technique: freezed == technique
          ? _value.technique
          : technique // ignore: cast_nullable_to_non_nullable
              as String?,
      waterConditions: freezed == waterConditions
          ? _value.waterConditions
          : waterConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatchReportImplCopyWith<$Res>
    implements $CatchReportCopyWith<$Res> {
  factory _$$CatchReportImplCopyWith(
          _$CatchReportImpl value, $Res Function(_$CatchReportImpl) then) =
      __$$CatchReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String species,
      double weight,
      double length,
      DateTime catchTime,
      String? lure,
      String? technique,
      String? waterConditions,
      Map<String, dynamic>? details});
}

/// @nodoc
class __$$CatchReportImplCopyWithImpl<$Res>
    extends _$CatchReportCopyWithImpl<$Res, _$CatchReportImpl>
    implements _$$CatchReportImplCopyWith<$Res> {
  __$$CatchReportImplCopyWithImpl(
      _$CatchReportImpl _value, $Res Function(_$CatchReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? species = null,
    Object? weight = null,
    Object? length = null,
    Object? catchTime = null,
    Object? lure = freezed,
    Object? technique = freezed,
    Object? waterConditions = freezed,
    Object? details = freezed,
  }) {
    return _then(_$CatchReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      catchTime: null == catchTime
          ? _value.catchTime
          : catchTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lure: freezed == lure
          ? _value.lure
          : lure // ignore: cast_nullable_to_non_nullable
              as String?,
      technique: freezed == technique
          ? _value.technique
          : technique // ignore: cast_nullable_to_non_nullable
              as String?,
      waterConditions: freezed == waterConditions
          ? _value.waterConditions
          : waterConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatchReportImpl with DiagnosticableTreeMixin implements _CatchReport {
  const _$CatchReportImpl(
      {required this.id,
      required this.species,
      required this.weight,
      required this.length,
      required this.catchTime,
      this.lure,
      this.technique,
      this.waterConditions,
      final Map<String, dynamic>? details})
      : _details = details;

  factory _$CatchReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatchReportImplFromJson(json);

  @override
  final String id;
  @override
  final String species;
  @override
  final double weight;
  @override
  final double length;
  @override
  final DateTime catchTime;
  @override
  final String? lure;
  @override
  final String? technique;
  @override
  final String? waterConditions;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CatchReport(id: $id, species: $species, weight: $weight, length: $length, catchTime: $catchTime, lure: $lure, technique: $technique, waterConditions: $waterConditions, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CatchReport'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('species', species))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('length', length))
      ..add(DiagnosticsProperty('catchTime', catchTime))
      ..add(DiagnosticsProperty('lure', lure))
      ..add(DiagnosticsProperty('technique', technique))
      ..add(DiagnosticsProperty('waterConditions', waterConditions))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatchReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.catchTime, catchTime) ||
                other.catchTime == catchTime) &&
            (identical(other.lure, lure) || other.lure == lure) &&
            (identical(other.technique, technique) ||
                other.technique == technique) &&
            (identical(other.waterConditions, waterConditions) ||
                other.waterConditions == waterConditions) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      species,
      weight,
      length,
      catchTime,
      lure,
      technique,
      waterConditions,
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatchReportImplCopyWith<_$CatchReportImpl> get copyWith =>
      __$$CatchReportImplCopyWithImpl<_$CatchReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatchReportImplToJson(
      this,
    );
  }
}

abstract class _CatchReport implements CatchReport {
  const factory _CatchReport(
      {required final String id,
      required final String species,
      required final double weight,
      required final double length,
      required final DateTime catchTime,
      final String? lure,
      final String? technique,
      final String? waterConditions,
      final Map<String, dynamic>? details}) = _$CatchReportImpl;

  factory _CatchReport.fromJson(Map<String, dynamic> json) =
      _$CatchReportImpl.fromJson;

  @override
  String get id;
  @override
  String get species;
  @override
  double get weight;
  @override
  double get length;
  @override
  DateTime get catchTime;
  @override
  String? get lure;
  @override
  String? get technique;
  @override
  String? get waterConditions;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(ignore: true)
  _$$CatchReportImplCopyWith<_$CatchReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String? name,
      String? address,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? name = freezed,
    Object? address = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String? name,
      String? address,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? name = freezed,
    Object? address = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$LocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
class _$LocationImpl with DiagnosticableTreeMixin implements _Location {
  const _$LocationImpl(
      {required this.latitude,
      required this.longitude,
      this.name,
      this.address,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? name;
  @override
  final String? address;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Location(latitude: $latitude, longitude: $longitude, name: $name, address: $address, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Location'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, name,
      address, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final double latitude,
      required final double longitude,
      final String? name,
      final String? address,
      final Map<String, dynamic>? metadata}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String? get name;
  @override
  String? get address;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherInfo _$WeatherInfoFromJson(Map<String, dynamic> json) {
  return _WeatherInfo.fromJson(json);
}

/// @nodoc
mixin _$WeatherInfo {
  double get temperature => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  String get conditions => throw _privateConstructorUsedError;
  double? get pressure => throw _privateConstructorUsedError;
  double? get visibility => throw _privateConstructorUsedError;
  Map<String, dynamic>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherInfoCopyWith<WeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoCopyWith<$Res> {
  factory $WeatherInfoCopyWith(
          WeatherInfo value, $Res Function(WeatherInfo) then) =
      _$WeatherInfoCopyWithImpl<$Res, WeatherInfo>;
  @useResult
  $Res call(
      {double temperature,
      double humidity,
      double windSpeed,
      String conditions,
      double? pressure,
      double? visibility,
      Map<String, dynamic>? details});
}

/// @nodoc
class _$WeatherInfoCopyWithImpl<$Res, $Val extends WeatherInfo>
    implements $WeatherInfoCopyWith<$Res> {
  _$WeatherInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? conditions = null,
    Object? pressure = freezed,
    Object? visibility = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherInfoImplCopyWith<$Res>
    implements $WeatherInfoCopyWith<$Res> {
  factory _$$WeatherInfoImplCopyWith(
          _$WeatherInfoImpl value, $Res Function(_$WeatherInfoImpl) then) =
      __$$WeatherInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temperature,
      double humidity,
      double windSpeed,
      String conditions,
      double? pressure,
      double? visibility,
      Map<String, dynamic>? details});
}

/// @nodoc
class __$$WeatherInfoImplCopyWithImpl<$Res>
    extends _$WeatherInfoCopyWithImpl<$Res, _$WeatherInfoImpl>
    implements _$$WeatherInfoImplCopyWith<$Res> {
  __$$WeatherInfoImplCopyWithImpl(
      _$WeatherInfoImpl _value, $Res Function(_$WeatherInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? conditions = null,
    Object? pressure = freezed,
    Object? visibility = freezed,
    Object? details = freezed,
  }) {
    return _then(_$WeatherInfoImpl(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherInfoImpl with DiagnosticableTreeMixin implements _WeatherInfo {
  const _$WeatherInfoImpl(
      {required this.temperature,
      required this.humidity,
      required this.windSpeed,
      required this.conditions,
      this.pressure,
      this.visibility,
      final Map<String, dynamic>? details})
      : _details = details;

  factory _$WeatherInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherInfoImplFromJson(json);

  @override
  final double temperature;
  @override
  final double humidity;
  @override
  final double windSpeed;
  @override
  final String conditions;
  @override
  final double? pressure;
  @override
  final double? visibility;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherInfo(temperature: $temperature, humidity: $humidity, windSpeed: $windSpeed, conditions: $conditions, pressure: $pressure, visibility: $visibility, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherInfo'))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('conditions', conditions))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherInfoImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.conditions, conditions) ||
                other.conditions == conditions) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      temperature,
      humidity,
      windSpeed,
      conditions,
      pressure,
      visibility,
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherInfoImplCopyWith<_$WeatherInfoImpl> get copyWith =>
      __$$WeatherInfoImplCopyWithImpl<_$WeatherInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherInfoImplToJson(
      this,
    );
  }
}

abstract class _WeatherInfo implements WeatherInfo {
  const factory _WeatherInfo(
      {required final double temperature,
      required final double humidity,
      required final double windSpeed,
      required final String conditions,
      final double? pressure,
      final double? visibility,
      final Map<String, dynamic>? details}) = _$WeatherInfoImpl;

  factory _WeatherInfo.fromJson(Map<String, dynamic> json) =
      _$WeatherInfoImpl.fromJson;

  @override
  double get temperature;
  @override
  double get humidity;
  @override
  double get windSpeed;
  @override
  String get conditions;
  @override
  double? get pressure;
  @override
  double? get visibility;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(ignore: true)
  _$$WeatherInfoImplCopyWith<_$WeatherInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String get id => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  List<String> get mentions => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  List<String> get media => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String id,
      String postId,
      String userId,
      String content,
      DateTime timestamp,
      String? parentId,
      List<String> mentions,
      int likeCount,
      List<String> media,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? content = null,
    Object? timestamp = null,
    Object? parentId = freezed,
    Object? mentions = null,
    Object? likeCount = null,
    Object? media = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String postId,
      String userId,
      String content,
      DateTime timestamp,
      String? parentId,
      List<String> mentions,
      int likeCount,
      List<String> media,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? content = null,
    Object? timestamp = null,
    Object? parentId = freezed,
    Object? mentions = null,
    Object? likeCount = null,
    Object? media = null,
    Object? metadata = freezed,
  }) {
    return _then(_$CommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      mentions: null == mentions
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl with DiagnosticableTreeMixin implements _Comment {
  const _$CommentImpl(
      {required this.id,
      required this.postId,
      required this.userId,
      required this.content,
      required this.timestamp,
      this.parentId,
      final List<String> mentions = const [],
      this.likeCount = 0,
      final List<String> media = const [],
      final Map<String, dynamic>? metadata})
      : _mentions = mentions,
        _media = media,
        _metadata = metadata;

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  final String id;
  @override
  final String postId;
  @override
  final String userId;
  @override
  final String content;
  @override
  final DateTime timestamp;
  @override
  final String? parentId;
  final List<String> _mentions;
  @override
  @JsonKey()
  List<String> get mentions {
    if (_mentions is EqualUnmodifiableListView) return _mentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentions);
  }

  @override
  @JsonKey()
  final int likeCount;
  final List<String> _media;
  @override
  @JsonKey()
  List<String> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Comment(id: $id, postId: $postId, userId: $userId, content: $content, timestamp: $timestamp, parentId: $parentId, mentions: $mentions, likeCount: $likeCount, media: $media, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Comment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('parentId', parentId))
      ..add(DiagnosticsProperty('mentions', mentions))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('media', media))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      postId,
      userId,
      content,
      timestamp,
      parentId,
      const DeepCollectionEquality().hash(_mentions),
      likeCount,
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {required final String id,
      required final String postId,
      required final String userId,
      required final String content,
      required final DateTime timestamp,
      final String? parentId,
      final List<String> mentions,
      final int likeCount,
      final List<String> media,
      final Map<String, dynamic>? metadata}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  String get id;
  @override
  String get postId;
  @override
  String get userId;
  @override
  String get content;
  @override
  DateTime get timestamp;
  @override
  String? get parentId;
  @override
  List<String> get mentions;
  @override
  int get likeCount;
  @override
  List<String> get media;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Like _$LikeFromJson(Map<String, dynamic> json) {
  return _Like.fromJson(json);
}

/// @nodoc
mixin _$Like {
  String get id => throw _privateConstructorUsedError;
  String get targetId => throw _privateConstructorUsedError;
  String get targetType => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCopyWith<Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCopyWith<$Res> {
  factory $LikeCopyWith(Like value, $Res Function(Like) then) =
      _$LikeCopyWithImpl<$Res, Like>;
  @useResult
  $Res call(
      {String id,
      String targetId,
      String targetType,
      String userId,
      DateTime timestamp});
}

/// @nodoc
class _$LikeCopyWithImpl<$Res, $Val extends Like>
    implements $LikeCopyWith<$Res> {
  _$LikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? targetId = null,
    Object? targetType = null,
    Object? userId = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeImplCopyWith<$Res> implements $LikeCopyWith<$Res> {
  factory _$$LikeImplCopyWith(
          _$LikeImpl value, $Res Function(_$LikeImpl) then) =
      __$$LikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String targetId,
      String targetType,
      String userId,
      DateTime timestamp});
}

/// @nodoc
class __$$LikeImplCopyWithImpl<$Res>
    extends _$LikeCopyWithImpl<$Res, _$LikeImpl>
    implements _$$LikeImplCopyWith<$Res> {
  __$$LikeImplCopyWithImpl(_$LikeImpl _value, $Res Function(_$LikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? targetId = null,
    Object? targetType = null,
    Object? userId = null,
    Object? timestamp = null,
  }) {
    return _then(_$LikeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikeImpl with DiagnosticableTreeMixin implements _Like {
  const _$LikeImpl(
      {required this.id,
      required this.targetId,
      required this.targetType,
      required this.userId,
      required this.timestamp});

  factory _$LikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeImplFromJson(json);

  @override
  final String id;
  @override
  final String targetId;
  @override
  final String targetType;
  @override
  final String userId;
  @override
  final DateTime timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Like(id: $id, targetId: $targetId, targetType: $targetType, userId: $userId, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Like'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('targetId', targetId))
      ..add(DiagnosticsProperty('targetType', targetType))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, targetId, targetType, userId, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeImplCopyWith<_$LikeImpl> get copyWith =>
      __$$LikeImplCopyWithImpl<_$LikeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeImplToJson(
      this,
    );
  }
}

abstract class _Like implements Like {
  const factory _Like(
      {required final String id,
      required final String targetId,
      required final String targetType,
      required final String userId,
      required final DateTime timestamp}) = _$LikeImpl;

  factory _Like.fromJson(Map<String, dynamic> json) = _$LikeImpl.fromJson;

  @override
  String get id;
  @override
  String get targetId;
  @override
  String get targetType;
  @override
  String get userId;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$LikeImplCopyWith<_$LikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Share _$ShareFromJson(Map<String, dynamic> json) {
  return _Share.fromJson(json);
}

/// @nodoc
mixin _$Share {
  String get id => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShareCopyWith<Share> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareCopyWith<$Res> {
  factory $ShareCopyWith(Share value, $Res Function(Share) then) =
      _$ShareCopyWithImpl<$Res, Share>;
  @useResult
  $Res call(
      {String id,
      String postId,
      String userId,
      DateTime timestamp,
      String? caption,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ShareCopyWithImpl<$Res, $Val extends Share>
    implements $ShareCopyWith<$Res> {
  _$ShareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? timestamp = null,
    Object? caption = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShareImplCopyWith<$Res> implements $ShareCopyWith<$Res> {
  factory _$$ShareImplCopyWith(
          _$ShareImpl value, $Res Function(_$ShareImpl) then) =
      __$$ShareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String postId,
      String userId,
      DateTime timestamp,
      String? caption,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ShareImplCopyWithImpl<$Res>
    extends _$ShareCopyWithImpl<$Res, _$ShareImpl>
    implements _$$ShareImplCopyWith<$Res> {
  __$$ShareImplCopyWithImpl(
      _$ShareImpl _value, $Res Function(_$ShareImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? timestamp = null,
    Object? caption = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ShareImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
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
class _$ShareImpl with DiagnosticableTreeMixin implements _Share {
  const _$ShareImpl(
      {required this.id,
      required this.postId,
      required this.userId,
      required this.timestamp,
      this.caption,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ShareImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShareImplFromJson(json);

  @override
  final String id;
  @override
  final String postId;
  @override
  final String userId;
  @override
  final DateTime timestamp;
  @override
  final String? caption;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Share(id: $id, postId: $postId, userId: $userId, timestamp: $timestamp, caption: $caption, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Share'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('caption', caption))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, userId, timestamp,
      caption, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareImplCopyWith<_$ShareImpl> get copyWith =>
      __$$ShareImplCopyWithImpl<_$ShareImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShareImplToJson(
      this,
    );
  }
}

abstract class _Share implements Share {
  const factory _Share(
      {required final String id,
      required final String postId,
      required final String userId,
      required final DateTime timestamp,
      final String? caption,
      final Map<String, dynamic>? metadata}) = _$ShareImpl;

  factory _Share.fromJson(Map<String, dynamic> json) = _$ShareImpl.fromJson;

  @override
  String get id;
  @override
  String get postId;
  @override
  String get userId;
  @override
  DateTime get timestamp;
  @override
  String? get caption;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ShareImplCopyWith<_$ShareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedFilter _$FeedFilterFromJson(Map<String, dynamic> json) {
  return _FeedFilter.fromJson(json);
}

/// @nodoc
mixin _$FeedFilter {
  List<String>? get species => throw _privateConstructorUsedError;
  List<String>? get techniques => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  double? get minWeight => throw _privateConstructorUsedError;
  double? get maxWeight => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  double? get radius => throw _privateConstructorUsedError;
  bool get followingOnly => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customFilters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedFilterCopyWith<FeedFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedFilterCopyWith<$Res> {
  factory $FeedFilterCopyWith(
          FeedFilter value, $Res Function(FeedFilter) then) =
      _$FeedFilterCopyWithImpl<$Res, FeedFilter>;
  @useResult
  $Res call(
      {List<String>? species,
      List<String>? techniques,
      DateTime? startDate,
      DateTime? endDate,
      double? minWeight,
      double? maxWeight,
      Location? location,
      double? radius,
      bool followingOnly,
      String? sortBy,
      Map<String, dynamic>? customFilters});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$FeedFilterCopyWithImpl<$Res, $Val extends FeedFilter>
    implements $FeedFilterCopyWith<$Res> {
  _$FeedFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = freezed,
    Object? techniques = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? minWeight = freezed,
    Object? maxWeight = freezed,
    Object? location = freezed,
    Object? radius = freezed,
    Object? followingOnly = null,
    Object? sortBy = freezed,
    Object? customFilters = freezed,
  }) {
    return _then(_value.copyWith(
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      techniques: freezed == techniques
          ? _value.techniques
          : techniques // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minWeight: freezed == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWeight: freezed == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
      followingOnly: null == followingOnly
          ? _value.followingOnly
          : followingOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      customFilters: freezed == customFilters
          ? _value.customFilters
          : customFilters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedFilterImplCopyWith<$Res>
    implements $FeedFilterCopyWith<$Res> {
  factory _$$FeedFilterImplCopyWith(
          _$FeedFilterImpl value, $Res Function(_$FeedFilterImpl) then) =
      __$$FeedFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? species,
      List<String>? techniques,
      DateTime? startDate,
      DateTime? endDate,
      double? minWeight,
      double? maxWeight,
      Location? location,
      double? radius,
      bool followingOnly,
      String? sortBy,
      Map<String, dynamic>? customFilters});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$FeedFilterImplCopyWithImpl<$Res>
    extends _$FeedFilterCopyWithImpl<$Res, _$FeedFilterImpl>
    implements _$$FeedFilterImplCopyWith<$Res> {
  __$$FeedFilterImplCopyWithImpl(
      _$FeedFilterImpl _value, $Res Function(_$FeedFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = freezed,
    Object? techniques = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? minWeight = freezed,
    Object? maxWeight = freezed,
    Object? location = freezed,
    Object? radius = freezed,
    Object? followingOnly = null,
    Object? sortBy = freezed,
    Object? customFilters = freezed,
  }) {
    return _then(_$FeedFilterImpl(
      species: freezed == species
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      techniques: freezed == techniques
          ? _value._techniques
          : techniques // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minWeight: freezed == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWeight: freezed == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double?,
      followingOnly: null == followingOnly
          ? _value.followingOnly
          : followingOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      customFilters: freezed == customFilters
          ? _value._customFilters
          : customFilters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedFilterImpl with DiagnosticableTreeMixin implements _FeedFilter {
  const _$FeedFilterImpl(
      {final List<String>? species,
      final List<String>? techniques,
      this.startDate,
      this.endDate,
      this.minWeight,
      this.maxWeight,
      this.location,
      this.radius,
      this.followingOnly = false,
      this.sortBy,
      final Map<String, dynamic>? customFilters})
      : _species = species,
        _techniques = techniques,
        _customFilters = customFilters;

  factory _$FeedFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedFilterImplFromJson(json);

  final List<String>? _species;
  @override
  List<String>? get species {
    final value = _species;
    if (value == null) return null;
    if (_species is EqualUnmodifiableListView) return _species;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _techniques;
  @override
  List<String>? get techniques {
    final value = _techniques;
    if (value == null) return null;
    if (_techniques is EqualUnmodifiableListView) return _techniques;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double? minWeight;
  @override
  final double? maxWeight;
  @override
  final Location? location;
  @override
  final double? radius;
  @override
  @JsonKey()
  final bool followingOnly;
  @override
  final String? sortBy;
  final Map<String, dynamic>? _customFilters;
  @override
  Map<String, dynamic>? get customFilters {
    final value = _customFilters;
    if (value == null) return null;
    if (_customFilters is EqualUnmodifiableMapView) return _customFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedFilter(species: $species, techniques: $techniques, startDate: $startDate, endDate: $endDate, minWeight: $minWeight, maxWeight: $maxWeight, location: $location, radius: $radius, followingOnly: $followingOnly, sortBy: $sortBy, customFilters: $customFilters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedFilter'))
      ..add(DiagnosticsProperty('species', species))
      ..add(DiagnosticsProperty('techniques', techniques))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('minWeight', minWeight))
      ..add(DiagnosticsProperty('maxWeight', maxWeight))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('radius', radius))
      ..add(DiagnosticsProperty('followingOnly', followingOnly))
      ..add(DiagnosticsProperty('sortBy', sortBy))
      ..add(DiagnosticsProperty('customFilters', customFilters));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedFilterImpl &&
            const DeepCollectionEquality().equals(other._species, _species) &&
            const DeepCollectionEquality()
                .equals(other._techniques, _techniques) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.minWeight, minWeight) ||
                other.minWeight == minWeight) &&
            (identical(other.maxWeight, maxWeight) ||
                other.maxWeight == maxWeight) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.followingOnly, followingOnly) ||
                other.followingOnly == followingOnly) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            const DeepCollectionEquality()
                .equals(other._customFilters, _customFilters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_species),
      const DeepCollectionEquality().hash(_techniques),
      startDate,
      endDate,
      minWeight,
      maxWeight,
      location,
      radius,
      followingOnly,
      sortBy,
      const DeepCollectionEquality().hash(_customFilters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedFilterImplCopyWith<_$FeedFilterImpl> get copyWith =>
      __$$FeedFilterImplCopyWithImpl<_$FeedFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedFilterImplToJson(
      this,
    );
  }
}

abstract class _FeedFilter implements FeedFilter {
  const factory _FeedFilter(
      {final List<String>? species,
      final List<String>? techniques,
      final DateTime? startDate,
      final DateTime? endDate,
      final double? minWeight,
      final double? maxWeight,
      final Location? location,
      final double? radius,
      final bool followingOnly,
      final String? sortBy,
      final Map<String, dynamic>? customFilters}) = _$FeedFilterImpl;

  factory _FeedFilter.fromJson(Map<String, dynamic> json) =
      _$FeedFilterImpl.fromJson;

  @override
  List<String>? get species;
  @override
  List<String>? get techniques;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  double? get minWeight;
  @override
  double? get maxWeight;
  @override
  Location? get location;
  @override
  double? get radius;
  @override
  bool get followingOnly;
  @override
  String? get sortBy;
  @override
  Map<String, dynamic>? get customFilters;
  @override
  @JsonKey(ignore: true)
  _$$FeedFilterImplCopyWith<_$FeedFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedEngagement _$FeedEngagementFromJson(Map<String, dynamic> json) {
  return _FeedEngagement.fromJson(json);
}

/// @nodoc
mixin _$FeedEngagement {
  String get userId => throw _privateConstructorUsedError;
  Map<String, DateTime> get likes => throw _privateConstructorUsedError;
  Map<String, DateTime> get comments => throw _privateConstructorUsedError;
  Map<String, DateTime> get shares => throw _privateConstructorUsedError;
  List<String> get savedPosts => throw _privateConstructorUsedError;
  Map<String, dynamic>? get preferences => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedEngagementCopyWith<FeedEngagement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEngagementCopyWith<$Res> {
  factory $FeedEngagementCopyWith(
          FeedEngagement value, $Res Function(FeedEngagement) then) =
      _$FeedEngagementCopyWithImpl<$Res, FeedEngagement>;
  @useResult
  $Res call(
      {String userId,
      Map<String, DateTime> likes,
      Map<String, DateTime> comments,
      Map<String, DateTime> shares,
      List<String> savedPosts,
      Map<String, dynamic>? preferences});
}

/// @nodoc
class _$FeedEngagementCopyWithImpl<$Res, $Val extends FeedEngagement>
    implements $FeedEngagementCopyWith<$Res> {
  _$FeedEngagementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? likes = null,
    Object? comments = null,
    Object? shares = null,
    Object? savedPosts = null,
    Object? preferences = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
      savedPosts: null == savedPosts
          ? _value.savedPosts
          : savedPosts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedEngagementImplCopyWith<$Res>
    implements $FeedEngagementCopyWith<$Res> {
  factory _$$FeedEngagementImplCopyWith(_$FeedEngagementImpl value,
          $Res Function(_$FeedEngagementImpl) then) =
      __$$FeedEngagementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      Map<String, DateTime> likes,
      Map<String, DateTime> comments,
      Map<String, DateTime> shares,
      List<String> savedPosts,
      Map<String, dynamic>? preferences});
}

/// @nodoc
class __$$FeedEngagementImplCopyWithImpl<$Res>
    extends _$FeedEngagementCopyWithImpl<$Res, _$FeedEngagementImpl>
    implements _$$FeedEngagementImplCopyWith<$Res> {
  __$$FeedEngagementImplCopyWithImpl(
      _$FeedEngagementImpl _value, $Res Function(_$FeedEngagementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? likes = null,
    Object? comments = null,
    Object? shares = null,
    Object? savedPosts = null,
    Object? preferences = freezed,
  }) {
    return _then(_$FeedEngagementImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
      shares: null == shares
          ? _value._shares
          : shares // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
      savedPosts: null == savedPosts
          ? _value._savedPosts
          : savedPosts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferences: freezed == preferences
          ? _value._preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedEngagementImpl
    with DiagnosticableTreeMixin
    implements _FeedEngagement {
  const _$FeedEngagementImpl(
      {required this.userId,
      required final Map<String, DateTime> likes,
      required final Map<String, DateTime> comments,
      required final Map<String, DateTime> shares,
      required final List<String> savedPosts,
      final Map<String, dynamic>? preferences})
      : _likes = likes,
        _comments = comments,
        _shares = shares,
        _savedPosts = savedPosts,
        _preferences = preferences;

  factory _$FeedEngagementImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedEngagementImplFromJson(json);

  @override
  final String userId;
  final Map<String, DateTime> _likes;
  @override
  Map<String, DateTime> get likes {
    if (_likes is EqualUnmodifiableMapView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_likes);
  }

  final Map<String, DateTime> _comments;
  @override
  Map<String, DateTime> get comments {
    if (_comments is EqualUnmodifiableMapView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_comments);
  }

  final Map<String, DateTime> _shares;
  @override
  Map<String, DateTime> get shares {
    if (_shares is EqualUnmodifiableMapView) return _shares;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_shares);
  }

  final List<String> _savedPosts;
  @override
  List<String> get savedPosts {
    if (_savedPosts is EqualUnmodifiableListView) return _savedPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedPosts);
  }

  final Map<String, dynamic>? _preferences;
  @override
  Map<String, dynamic>? get preferences {
    final value = _preferences;
    if (value == null) return null;
    if (_preferences is EqualUnmodifiableMapView) return _preferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedEngagement(userId: $userId, likes: $likes, comments: $comments, shares: $shares, savedPosts: $savedPosts, preferences: $preferences)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedEngagement'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('likes', likes))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('shares', shares))
      ..add(DiagnosticsProperty('savedPosts', savedPosts))
      ..add(DiagnosticsProperty('preferences', preferences));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedEngagementImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._shares, _shares) &&
            const DeepCollectionEquality()
                .equals(other._savedPosts, _savedPosts) &&
            const DeepCollectionEquality()
                .equals(other._preferences, _preferences));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_shares),
      const DeepCollectionEquality().hash(_savedPosts),
      const DeepCollectionEquality().hash(_preferences));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedEngagementImplCopyWith<_$FeedEngagementImpl> get copyWith =>
      __$$FeedEngagementImplCopyWithImpl<_$FeedEngagementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedEngagementImplToJson(
      this,
    );
  }
}

abstract class _FeedEngagement implements FeedEngagement {
  const factory _FeedEngagement(
      {required final String userId,
      required final Map<String, DateTime> likes,
      required final Map<String, DateTime> comments,
      required final Map<String, DateTime> shares,
      required final List<String> savedPosts,
      final Map<String, dynamic>? preferences}) = _$FeedEngagementImpl;

  factory _FeedEngagement.fromJson(Map<String, dynamic> json) =
      _$FeedEngagementImpl.fromJson;

  @override
  String get userId;
  @override
  Map<String, DateTime> get likes;
  @override
  Map<String, DateTime> get comments;
  @override
  Map<String, DateTime> get shares;
  @override
  List<String> get savedPosts;
  @override
  Map<String, dynamic>? get preferences;
  @override
  @JsonKey(ignore: true)
  _$$FeedEngagementImplCopyWith<_$FeedEngagementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedAnalytics _$FeedAnalyticsFromJson(Map<String, dynamic> json) {
  return _FeedAnalytics.fromJson(json);
}

/// @nodoc
mixin _$FeedAnalytics {
  String get postId => throw _privateConstructorUsedError;
  int get impressions => throw _privateConstructorUsedError;
  int get reaches => throw _privateConstructorUsedError;
  int get engagements => throw _privateConstructorUsedError;
  Map<String, int> get interactionCounts => throw _privateConstructorUsedError;
  Map<String, double> get demographics => throw _privateConstructorUsedError;
  DateTime? get peakEngagementTime => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedAnalyticsCopyWith<FeedAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedAnalyticsCopyWith<$Res> {
  factory $FeedAnalyticsCopyWith(
          FeedAnalytics value, $Res Function(FeedAnalytics) then) =
      _$FeedAnalyticsCopyWithImpl<$Res, FeedAnalytics>;
  @useResult
  $Res call(
      {String postId,
      int impressions,
      int reaches,
      int engagements,
      Map<String, int> interactionCounts,
      Map<String, double> demographics,
      DateTime? peakEngagementTime,
      Map<String, dynamic>? metrics});
}

/// @nodoc
class _$FeedAnalyticsCopyWithImpl<$Res, $Val extends FeedAnalytics>
    implements $FeedAnalyticsCopyWith<$Res> {
  _$FeedAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? impressions = null,
    Object? reaches = null,
    Object? engagements = null,
    Object? interactionCounts = null,
    Object? demographics = null,
    Object? peakEngagementTime = freezed,
    Object? metrics = freezed,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      impressions: null == impressions
          ? _value.impressions
          : impressions // ignore: cast_nullable_to_non_nullable
              as int,
      reaches: null == reaches
          ? _value.reaches
          : reaches // ignore: cast_nullable_to_non_nullable
              as int,
      engagements: null == engagements
          ? _value.engagements
          : engagements // ignore: cast_nullable_to_non_nullable
              as int,
      interactionCounts: null == interactionCounts
          ? _value.interactionCounts
          : interactionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      demographics: null == demographics
          ? _value.demographics
          : demographics // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      peakEngagementTime: freezed == peakEngagementTime
          ? _value.peakEngagementTime
          : peakEngagementTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metrics: freezed == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedAnalyticsImplCopyWith<$Res>
    implements $FeedAnalyticsCopyWith<$Res> {
  factory _$$FeedAnalyticsImplCopyWith(
          _$FeedAnalyticsImpl value, $Res Function(_$FeedAnalyticsImpl) then) =
      __$$FeedAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postId,
      int impressions,
      int reaches,
      int engagements,
      Map<String, int> interactionCounts,
      Map<String, double> demographics,
      DateTime? peakEngagementTime,
      Map<String, dynamic>? metrics});
}

/// @nodoc
class __$$FeedAnalyticsImplCopyWithImpl<$Res>
    extends _$FeedAnalyticsCopyWithImpl<$Res, _$FeedAnalyticsImpl>
    implements _$$FeedAnalyticsImplCopyWith<$Res> {
  __$$FeedAnalyticsImplCopyWithImpl(
      _$FeedAnalyticsImpl _value, $Res Function(_$FeedAnalyticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? impressions = null,
    Object? reaches = null,
    Object? engagements = null,
    Object? interactionCounts = null,
    Object? demographics = null,
    Object? peakEngagementTime = freezed,
    Object? metrics = freezed,
  }) {
    return _then(_$FeedAnalyticsImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      impressions: null == impressions
          ? _value.impressions
          : impressions // ignore: cast_nullable_to_non_nullable
              as int,
      reaches: null == reaches
          ? _value.reaches
          : reaches // ignore: cast_nullable_to_non_nullable
              as int,
      engagements: null == engagements
          ? _value.engagements
          : engagements // ignore: cast_nullable_to_non_nullable
              as int,
      interactionCounts: null == interactionCounts
          ? _value._interactionCounts
          : interactionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      demographics: null == demographics
          ? _value._demographics
          : demographics // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      peakEngagementTime: freezed == peakEngagementTime
          ? _value.peakEngagementTime
          : peakEngagementTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metrics: freezed == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedAnalyticsImpl
    with DiagnosticableTreeMixin
    implements _FeedAnalytics {
  const _$FeedAnalyticsImpl(
      {required this.postId,
      required this.impressions,
      required this.reaches,
      required this.engagements,
      required final Map<String, int> interactionCounts,
      required final Map<String, double> demographics,
      this.peakEngagementTime,
      final Map<String, dynamic>? metrics})
      : _interactionCounts = interactionCounts,
        _demographics = demographics,
        _metrics = metrics;

  factory _$FeedAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedAnalyticsImplFromJson(json);

  @override
  final String postId;
  @override
  final int impressions;
  @override
  final int reaches;
  @override
  final int engagements;
  final Map<String, int> _interactionCounts;
  @override
  Map<String, int> get interactionCounts {
    if (_interactionCounts is EqualUnmodifiableMapView)
      return _interactionCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_interactionCounts);
  }

  final Map<String, double> _demographics;
  @override
  Map<String, double> get demographics {
    if (_demographics is EqualUnmodifiableMapView) return _demographics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_demographics);
  }

  @override
  final DateTime? peakEngagementTime;
  final Map<String, dynamic>? _metrics;
  @override
  Map<String, dynamic>? get metrics {
    final value = _metrics;
    if (value == null) return null;
    if (_metrics is EqualUnmodifiableMapView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedAnalytics(postId: $postId, impressions: $impressions, reaches: $reaches, engagements: $engagements, interactionCounts: $interactionCounts, demographics: $demographics, peakEngagementTime: $peakEngagementTime, metrics: $metrics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedAnalytics'))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('impressions', impressions))
      ..add(DiagnosticsProperty('reaches', reaches))
      ..add(DiagnosticsProperty('engagements', engagements))
      ..add(DiagnosticsProperty('interactionCounts', interactionCounts))
      ..add(DiagnosticsProperty('demographics', demographics))
      ..add(DiagnosticsProperty('peakEngagementTime', peakEngagementTime))
      ..add(DiagnosticsProperty('metrics', metrics));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedAnalyticsImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.impressions, impressions) ||
                other.impressions == impressions) &&
            (identical(other.reaches, reaches) || other.reaches == reaches) &&
            (identical(other.engagements, engagements) ||
                other.engagements == engagements) &&
            const DeepCollectionEquality()
                .equals(other._interactionCounts, _interactionCounts) &&
            const DeepCollectionEquality()
                .equals(other._demographics, _demographics) &&
            (identical(other.peakEngagementTime, peakEngagementTime) ||
                other.peakEngagementTime == peakEngagementTime) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      impressions,
      reaches,
      engagements,
      const DeepCollectionEquality().hash(_interactionCounts),
      const DeepCollectionEquality().hash(_demographics),
      peakEngagementTime,
      const DeepCollectionEquality().hash(_metrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedAnalyticsImplCopyWith<_$FeedAnalyticsImpl> get copyWith =>
      __$$FeedAnalyticsImplCopyWithImpl<_$FeedAnalyticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedAnalyticsImplToJson(
      this,
    );
  }
}

abstract class _FeedAnalytics implements FeedAnalytics {
  const factory _FeedAnalytics(
      {required final String postId,
      required final int impressions,
      required final int reaches,
      required final int engagements,
      required final Map<String, int> interactionCounts,
      required final Map<String, double> demographics,
      final DateTime? peakEngagementTime,
      final Map<String, dynamic>? metrics}) = _$FeedAnalyticsImpl;

  factory _FeedAnalytics.fromJson(Map<String, dynamic> json) =
      _$FeedAnalyticsImpl.fromJson;

  @override
  String get postId;
  @override
  int get impressions;
  @override
  int get reaches;
  @override
  int get engagements;
  @override
  Map<String, int> get interactionCounts;
  @override
  Map<String, double> get demographics;
  @override
  DateTime? get peakEngagementTime;
  @override
  Map<String, dynamic>? get metrics;
  @override
  @JsonKey(ignore: true)
  _$$FeedAnalyticsImplCopyWith<_$FeedAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
