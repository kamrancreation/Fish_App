// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workshop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Workshop _$WorkshopFromJson(Map<String, dynamic> json) {
  return _Workshop.fromJson(json);
}

/// @nodoc
mixin _$Workshop {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get expertId => throw _privateConstructorUsedError;
  String get expertName => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  int get maxParticipants => throw _privateConstructorUsedError;
  WorkshopStatus get status => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;
  Map<String, dynamic> get requirements => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get recordingUrl => throw _privateConstructorUsedError;
  int? get currentParticipants => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  List<String>? get materials => throw _privateConstructorUsedError;
  Map<String, dynamic>? get interactionStats =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkshopCopyWith<Workshop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkshopCopyWith<$Res> {
  factory $WorkshopCopyWith(Workshop value, $Res Function(Workshop) then) =
      _$WorkshopCopyWithImpl<$Res, Workshop>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String expertId,
      String expertName,
      DateTime startTime,
      DateTime endTime,
      int maxParticipants,
      WorkshopStatus status,
      List<String> topics,
      Map<String, dynamic> requirements,
      String? thumbnailUrl,
      String? recordingUrl,
      int? currentParticipants,
      double? rating,
      List<String>? materials,
      Map<String, dynamic>? interactionStats});
}

/// @nodoc
class _$WorkshopCopyWithImpl<$Res, $Val extends Workshop>
    implements $WorkshopCopyWith<$Res> {
  _$WorkshopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? expertId = null,
    Object? expertName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? maxParticipants = null,
    Object? status = null,
    Object? topics = null,
    Object? requirements = null,
    Object? thumbnailUrl = freezed,
    Object? recordingUrl = freezed,
    Object? currentParticipants = freezed,
    Object? rating = freezed,
    Object? materials = freezed,
    Object? interactionStats = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      expertId: null == expertId
          ? _value.expertId
          : expertId // ignore: cast_nullable_to_non_nullable
              as String,
      expertName: null == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkshopStatus,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currentParticipants: freezed == currentParticipants
          ? _value.currentParticipants
          : currentParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      materials: freezed == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interactionStats: freezed == interactionStats
          ? _value.interactionStats
          : interactionStats // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkshopImplCopyWith<$Res>
    implements $WorkshopCopyWith<$Res> {
  factory _$$WorkshopImplCopyWith(
          _$WorkshopImpl value, $Res Function(_$WorkshopImpl) then) =
      __$$WorkshopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String expertId,
      String expertName,
      DateTime startTime,
      DateTime endTime,
      int maxParticipants,
      WorkshopStatus status,
      List<String> topics,
      Map<String, dynamic> requirements,
      String? thumbnailUrl,
      String? recordingUrl,
      int? currentParticipants,
      double? rating,
      List<String>? materials,
      Map<String, dynamic>? interactionStats});
}

/// @nodoc
class __$$WorkshopImplCopyWithImpl<$Res>
    extends _$WorkshopCopyWithImpl<$Res, _$WorkshopImpl>
    implements _$$WorkshopImplCopyWith<$Res> {
  __$$WorkshopImplCopyWithImpl(
      _$WorkshopImpl _value, $Res Function(_$WorkshopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? expertId = null,
    Object? expertName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? maxParticipants = null,
    Object? status = null,
    Object? topics = null,
    Object? requirements = null,
    Object? thumbnailUrl = freezed,
    Object? recordingUrl = freezed,
    Object? currentParticipants = freezed,
    Object? rating = freezed,
    Object? materials = freezed,
    Object? interactionStats = freezed,
  }) {
    return _then(_$WorkshopImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      expertId: null == expertId
          ? _value.expertId
          : expertId // ignore: cast_nullable_to_non_nullable
              as String,
      expertName: null == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkshopStatus,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requirements: null == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currentParticipants: freezed == currentParticipants
          ? _value.currentParticipants
          : currentParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      materials: freezed == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interactionStats: freezed == interactionStats
          ? _value._interactionStats
          : interactionStats // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkshopImpl implements _Workshop {
  const _$WorkshopImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.expertId,
      required this.expertName,
      required this.startTime,
      required this.endTime,
      required this.maxParticipants,
      required this.status,
      required final List<String> topics,
      required final Map<String, dynamic> requirements,
      this.thumbnailUrl,
      this.recordingUrl,
      this.currentParticipants,
      this.rating,
      final List<String>? materials,
      final Map<String, dynamic>? interactionStats})
      : _topics = topics,
        _requirements = requirements,
        _materials = materials,
        _interactionStats = interactionStats;

  factory _$WorkshopImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkshopImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String expertId;
  @override
  final String expertName;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final int maxParticipants;
  @override
  final WorkshopStatus status;
  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  final Map<String, dynamic> _requirements;
  @override
  Map<String, dynamic> get requirements {
    if (_requirements is EqualUnmodifiableMapView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requirements);
  }

  @override
  final String? thumbnailUrl;
  @override
  final String? recordingUrl;
  @override
  final int? currentParticipants;
  @override
  final double? rating;
  final List<String>? _materials;
  @override
  List<String>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _interactionStats;
  @override
  Map<String, dynamic>? get interactionStats {
    final value = _interactionStats;
    if (value == null) return null;
    if (_interactionStats is EqualUnmodifiableMapView) return _interactionStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Workshop(id: $id, title: $title, description: $description, expertId: $expertId, expertName: $expertName, startTime: $startTime, endTime: $endTime, maxParticipants: $maxParticipants, status: $status, topics: $topics, requirements: $requirements, thumbnailUrl: $thumbnailUrl, recordingUrl: $recordingUrl, currentParticipants: $currentParticipants, rating: $rating, materials: $materials, interactionStats: $interactionStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkshopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.expertId, expertId) ||
                other.expertId == expertId) &&
            (identical(other.expertName, expertName) ||
                other.expertName == expertName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl) &&
            (identical(other.currentParticipants, currentParticipants) ||
                other.currentParticipants == currentParticipants) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._interactionStats, _interactionStats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      expertId,
      expertName,
      startTime,
      endTime,
      maxParticipants,
      status,
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_requirements),
      thumbnailUrl,
      recordingUrl,
      currentParticipants,
      rating,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_interactionStats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkshopImplCopyWith<_$WorkshopImpl> get copyWith =>
      __$$WorkshopImplCopyWithImpl<_$WorkshopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkshopImplToJson(
      this,
    );
  }
}

abstract class _Workshop implements Workshop {
  const factory _Workshop(
      {required final String id,
      required final String title,
      required final String description,
      required final String expertId,
      required final String expertName,
      required final DateTime startTime,
      required final DateTime endTime,
      required final int maxParticipants,
      required final WorkshopStatus status,
      required final List<String> topics,
      required final Map<String, dynamic> requirements,
      final String? thumbnailUrl,
      final String? recordingUrl,
      final int? currentParticipants,
      final double? rating,
      final List<String>? materials,
      final Map<String, dynamic>? interactionStats}) = _$WorkshopImpl;

  factory _Workshop.fromJson(Map<String, dynamic> json) =
      _$WorkshopImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get expertId;
  @override
  String get expertName;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  int get maxParticipants;
  @override
  WorkshopStatus get status;
  @override
  List<String> get topics;
  @override
  Map<String, dynamic> get requirements;
  @override
  String? get thumbnailUrl;
  @override
  String? get recordingUrl;
  @override
  int? get currentParticipants;
  @override
  double? get rating;
  @override
  List<String>? get materials;
  @override
  Map<String, dynamic>? get interactionStats;
  @override
  @JsonKey(ignore: true)
  _$$WorkshopImplCopyWith<_$WorkshopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
