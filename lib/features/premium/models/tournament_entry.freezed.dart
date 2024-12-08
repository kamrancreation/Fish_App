// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TournamentEntry _$TournamentEntryFromJson(Map<String, dynamic> json) {
  return _TournamentEntry.fromJson(json);
}

/// @nodoc
mixin _$TournamentEntry {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get tournamentId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<FishMeasurement> get fishMeasurements =>
      throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  Map<String, dynamic> get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  Map<String, dynamic>? get verificationData =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TournamentEntryCopyWith<TournamentEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentEntryCopyWith<$Res> {
  factory $TournamentEntryCopyWith(
          TournamentEntry value, $Res Function(TournamentEntry) then) =
      _$TournamentEntryCopyWithImpl<$Res, TournamentEntry>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String tournamentId,
      DateTime timestamp,
      List<FishMeasurement> fishMeasurements,
      List<String> images,
      Map<String, dynamic> location,
      String? description,
      List<String>? tags,
      Map<String, dynamic>? verificationData,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class _$TournamentEntryCopyWithImpl<$Res, $Val extends TournamentEntry>
    implements $TournamentEntryCopyWith<$Res> {
  _$TournamentEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? tournamentId = null,
    Object? timestamp = null,
    Object? fishMeasurements = null,
    Object? images = null,
    Object? location = null,
    Object? description = freezed,
    Object? tags = freezed,
    Object? verificationData = freezed,
    Object? additionalData = freezed,
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
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fishMeasurements: null == fishMeasurements
          ? _value.fishMeasurements
          : fishMeasurements // ignore: cast_nullable_to_non_nullable
              as List<FishMeasurement>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      verificationData: freezed == verificationData
          ? _value.verificationData
          : verificationData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TournamentEntryImplCopyWith<$Res>
    implements $TournamentEntryCopyWith<$Res> {
  factory _$$TournamentEntryImplCopyWith(_$TournamentEntryImpl value,
          $Res Function(_$TournamentEntryImpl) then) =
      __$$TournamentEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String tournamentId,
      DateTime timestamp,
      List<FishMeasurement> fishMeasurements,
      List<String> images,
      Map<String, dynamic> location,
      String? description,
      List<String>? tags,
      Map<String, dynamic>? verificationData,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class __$$TournamentEntryImplCopyWithImpl<$Res>
    extends _$TournamentEntryCopyWithImpl<$Res, _$TournamentEntryImpl>
    implements _$$TournamentEntryImplCopyWith<$Res> {
  __$$TournamentEntryImplCopyWithImpl(
      _$TournamentEntryImpl _value, $Res Function(_$TournamentEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? tournamentId = null,
    Object? timestamp = null,
    Object? fishMeasurements = null,
    Object? images = null,
    Object? location = null,
    Object? description = freezed,
    Object? tags = freezed,
    Object? verificationData = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_$TournamentEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fishMeasurements: null == fishMeasurements
          ? _value._fishMeasurements
          : fishMeasurements // ignore: cast_nullable_to_non_nullable
              as List<FishMeasurement>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      verificationData: freezed == verificationData
          ? _value._verificationData
          : verificationData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      additionalData: freezed == additionalData
          ? _value._additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TournamentEntryImpl implements _TournamentEntry {
  const _$TournamentEntryImpl(
      {required this.id,
      required this.userId,
      required this.tournamentId,
      required this.timestamp,
      required final List<FishMeasurement> fishMeasurements,
      required final List<String> images,
      required final Map<String, dynamic> location,
      this.description,
      final List<String>? tags,
      final Map<String, dynamic>? verificationData,
      final Map<String, dynamic>? additionalData})
      : _fishMeasurements = fishMeasurements,
        _images = images,
        _location = location,
        _tags = tags,
        _verificationData = verificationData,
        _additionalData = additionalData;

  factory _$TournamentEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TournamentEntryImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String tournamentId;
  @override
  final DateTime timestamp;
  final List<FishMeasurement> _fishMeasurements;
  @override
  List<FishMeasurement> get fishMeasurements {
    if (_fishMeasurements is EqualUnmodifiableListView)
      return _fishMeasurements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fishMeasurements);
  }

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final Map<String, dynamic> _location;
  @override
  Map<String, dynamic> get location {
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_location);
  }

  @override
  final String? description;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _verificationData;
  @override
  Map<String, dynamic>? get verificationData {
    final value = _verificationData;
    if (value == null) return null;
    if (_verificationData is EqualUnmodifiableMapView) return _verificationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _additionalData;
  @override
  Map<String, dynamic>? get additionalData {
    final value = _additionalData;
    if (value == null) return null;
    if (_additionalData is EqualUnmodifiableMapView) return _additionalData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TournamentEntry(id: $id, userId: $userId, tournamentId: $tournamentId, timestamp: $timestamp, fishMeasurements: $fishMeasurements, images: $images, location: $location, description: $description, tags: $tags, verificationData: $verificationData, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TournamentEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tournamentId, tournamentId) ||
                other.tournamentId == tournamentId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._fishMeasurements, _fishMeasurements) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._verificationData, _verificationData) &&
            const DeepCollectionEquality()
                .equals(other._additionalData, _additionalData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      tournamentId,
      timestamp,
      const DeepCollectionEquality().hash(_fishMeasurements),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_location),
      description,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_verificationData),
      const DeepCollectionEquality().hash(_additionalData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TournamentEntryImplCopyWith<_$TournamentEntryImpl> get copyWith =>
      __$$TournamentEntryImplCopyWithImpl<_$TournamentEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TournamentEntryImplToJson(
      this,
    );
  }
}

abstract class _TournamentEntry implements TournamentEntry {
  const factory _TournamentEntry(
      {required final String id,
      required final String userId,
      required final String tournamentId,
      required final DateTime timestamp,
      required final List<FishMeasurement> fishMeasurements,
      required final List<String> images,
      required final Map<String, dynamic> location,
      final String? description,
      final List<String>? tags,
      final Map<String, dynamic>? verificationData,
      final Map<String, dynamic>? additionalData}) = _$TournamentEntryImpl;

  factory _TournamentEntry.fromJson(Map<String, dynamic> json) =
      _$TournamentEntryImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get tournamentId;
  @override
  DateTime get timestamp;
  @override
  List<FishMeasurement> get fishMeasurements;
  @override
  List<String> get images;
  @override
  Map<String, dynamic> get location;
  @override
  String? get description;
  @override
  List<String>? get tags;
  @override
  Map<String, dynamic>? get verificationData;
  @override
  Map<String, dynamic>? get additionalData;
  @override
  @JsonKey(ignore: true)
  _$$TournamentEntryImplCopyWith<_$TournamentEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
