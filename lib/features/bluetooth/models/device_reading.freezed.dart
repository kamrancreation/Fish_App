// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_reading.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceReading _$DeviceReadingFromJson(Map<String, dynamic> json) {
  return _DeviceReading.fromJson(json);
}

/// @nodoc
mixin _$DeviceReading {
  String get deviceId => throw _privateConstructorUsedError;
  ReadingType get type => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceReadingCopyWith<DeviceReading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceReadingCopyWith<$Res> {
  factory $DeviceReadingCopyWith(
          DeviceReading value, $Res Function(DeviceReading) then) =
      _$DeviceReadingCopyWithImpl<$Res, DeviceReading>;
  @useResult
  $Res call(
      {String deviceId,
      ReadingType type,
      double value,
      DateTime timestamp,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$DeviceReadingCopyWithImpl<$Res, $Val extends DeviceReading>
    implements $DeviceReadingCopyWith<$Res> {
  _$DeviceReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? type = null,
    Object? value = null,
    Object? timestamp = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReadingType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceReadingImplCopyWith<$Res>
    implements $DeviceReadingCopyWith<$Res> {
  factory _$$DeviceReadingImplCopyWith(
          _$DeviceReadingImpl value, $Res Function(_$DeviceReadingImpl) then) =
      __$$DeviceReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId,
      ReadingType type,
      double value,
      DateTime timestamp,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$DeviceReadingImplCopyWithImpl<$Res>
    extends _$DeviceReadingCopyWithImpl<$Res, _$DeviceReadingImpl>
    implements _$$DeviceReadingImplCopyWith<$Res> {
  __$$DeviceReadingImplCopyWithImpl(
      _$DeviceReadingImpl _value, $Res Function(_$DeviceReadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? type = null,
    Object? value = null,
    Object? timestamp = null,
    Object? metadata = freezed,
  }) {
    return _then(_$DeviceReadingImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReadingType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceReadingImpl implements _DeviceReading {
  const _$DeviceReadingImpl(
      {required this.deviceId,
      required this.type,
      required this.value,
      required this.timestamp,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$DeviceReadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceReadingImplFromJson(json);

  @override
  final String deviceId;
  @override
  final ReadingType type;
  @override
  final double value;
  @override
  final DateTime timestamp;
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
    return 'DeviceReading(deviceId: $deviceId, type: $type, value: $value, timestamp: $timestamp, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceReadingImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, type, value, timestamp,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceReadingImplCopyWith<_$DeviceReadingImpl> get copyWith =>
      __$$DeviceReadingImplCopyWithImpl<_$DeviceReadingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceReadingImplToJson(
      this,
    );
  }
}

abstract class _DeviceReading implements DeviceReading {
  const factory _DeviceReading(
      {required final String deviceId,
      required final ReadingType type,
      required final double value,
      required final DateTime timestamp,
      final Map<String, dynamic>? metadata}) = _$DeviceReadingImpl;

  factory _DeviceReading.fromJson(Map<String, dynamic> json) =
      _$DeviceReadingImpl.fromJson;

  @override
  String get deviceId;
  @override
  ReadingType get type;
  @override
  double get value;
  @override
  DateTime get timestamp;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$DeviceReadingImplCopyWith<_$DeviceReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BiteReading _$BiteReadingFromJson(Map<String, dynamic> json) {
  return _BiteReading.fromJson(json);
}

/// @nodoc
mixin _$BiteReading {
  String get deviceId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get intensity => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  bool get isRun => throw _privateConstructorUsedError;
  String? get direction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiteReadingCopyWith<BiteReading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiteReadingCopyWith<$Res> {
  factory $BiteReadingCopyWith(
          BiteReading value, $Res Function(BiteReading) then) =
      _$BiteReadingCopyWithImpl<$Res, BiteReading>;
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      double intensity,
      Duration duration,
      bool isRun,
      String? direction});
}

/// @nodoc
class _$BiteReadingCopyWithImpl<$Res, $Val extends BiteReading>
    implements $BiteReadingCopyWith<$Res> {
  _$BiteReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? intensity = null,
    Object? duration = null,
    Object? isRun = null,
    Object? direction = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isRun: null == isRun
          ? _value.isRun
          : isRun // ignore: cast_nullable_to_non_nullable
              as bool,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiteReadingImplCopyWith<$Res>
    implements $BiteReadingCopyWith<$Res> {
  factory _$$BiteReadingImplCopyWith(
          _$BiteReadingImpl value, $Res Function(_$BiteReadingImpl) then) =
      __$$BiteReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      double intensity,
      Duration duration,
      bool isRun,
      String? direction});
}

/// @nodoc
class __$$BiteReadingImplCopyWithImpl<$Res>
    extends _$BiteReadingCopyWithImpl<$Res, _$BiteReadingImpl>
    implements _$$BiteReadingImplCopyWith<$Res> {
  __$$BiteReadingImplCopyWithImpl(
      _$BiteReadingImpl _value, $Res Function(_$BiteReadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? intensity = null,
    Object? duration = null,
    Object? isRun = null,
    Object? direction = freezed,
  }) {
    return _then(_$BiteReadingImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isRun: null == isRun
          ? _value.isRun
          : isRun // ignore: cast_nullable_to_non_nullable
              as bool,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiteReadingImpl implements _BiteReading {
  const _$BiteReadingImpl(
      {required this.deviceId,
      required this.timestamp,
      required this.intensity,
      required this.duration,
      required this.isRun,
      this.direction});

  factory _$BiteReadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiteReadingImplFromJson(json);

  @override
  final String deviceId;
  @override
  final DateTime timestamp;
  @override
  final double intensity;
  @override
  final Duration duration;
  @override
  final bool isRun;
  @override
  final String? direction;

  @override
  String toString() {
    return 'BiteReading(deviceId: $deviceId, timestamp: $timestamp, intensity: $intensity, duration: $duration, isRun: $isRun, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiteReadingImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isRun, isRun) || other.isRun == isRun) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, deviceId, timestamp, intensity, duration, isRun, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BiteReadingImplCopyWith<_$BiteReadingImpl> get copyWith =>
      __$$BiteReadingImplCopyWithImpl<_$BiteReadingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiteReadingImplToJson(
      this,
    );
  }
}

abstract class _BiteReading implements BiteReading {
  const factory _BiteReading(
      {required final String deviceId,
      required final DateTime timestamp,
      required final double intensity,
      required final Duration duration,
      required final bool isRun,
      final String? direction}) = _$BiteReadingImpl;

  factory _BiteReading.fromJson(Map<String, dynamic> json) =
      _$BiteReadingImpl.fromJson;

  @override
  String get deviceId;
  @override
  DateTime get timestamp;
  @override
  double get intensity;
  @override
  Duration get duration;
  @override
  bool get isRun;
  @override
  String? get direction;
  @override
  @JsonKey(ignore: true)
  _$$BiteReadingImplCopyWith<_$BiteReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationReading _$LocationReadingFromJson(Map<String, dynamic> json) {
  return _LocationReading.fromJson(json);
}

/// @nodoc
mixin _$LocationReading {
  String get deviceId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double? get speed => throw _privateConstructorUsedError;
  double? get heading => throw _privateConstructorUsedError;
  double? get accuracy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationReadingCopyWith<LocationReading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationReadingCopyWith<$Res> {
  factory $LocationReadingCopyWith(
          LocationReading value, $Res Function(LocationReading) then) =
      _$LocationReadingCopyWithImpl<$Res, LocationReading>;
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      double latitude,
      double longitude,
      double? speed,
      double? heading,
      double? accuracy});
}

/// @nodoc
class _$LocationReadingCopyWithImpl<$Res, $Val extends LocationReading>
    implements $LocationReadingCopyWith<$Res> {
  _$LocationReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? speed = freezed,
    Object? heading = freezed,
    Object? accuracy = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationReadingImplCopyWith<$Res>
    implements $LocationReadingCopyWith<$Res> {
  factory _$$LocationReadingImplCopyWith(_$LocationReadingImpl value,
          $Res Function(_$LocationReadingImpl) then) =
      __$$LocationReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      double latitude,
      double longitude,
      double? speed,
      double? heading,
      double? accuracy});
}

/// @nodoc
class __$$LocationReadingImplCopyWithImpl<$Res>
    extends _$LocationReadingCopyWithImpl<$Res, _$LocationReadingImpl>
    implements _$$LocationReadingImplCopyWith<$Res> {
  __$$LocationReadingImplCopyWithImpl(
      _$LocationReadingImpl _value, $Res Function(_$LocationReadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? speed = freezed,
    Object? heading = freezed,
    Object? accuracy = freezed,
  }) {
    return _then(_$LocationReadingImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationReadingImpl implements _LocationReading {
  const _$LocationReadingImpl(
      {required this.deviceId,
      required this.timestamp,
      required this.latitude,
      required this.longitude,
      this.speed,
      this.heading,
      this.accuracy});

  factory _$LocationReadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationReadingImplFromJson(json);

  @override
  final String deviceId;
  @override
  final DateTime timestamp;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double? speed;
  @override
  final double? heading;
  @override
  final double? accuracy;

  @override
  String toString() {
    return 'LocationReading(deviceId: $deviceId, timestamp: $timestamp, latitude: $latitude, longitude: $longitude, speed: $speed, heading: $heading, accuracy: $accuracy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationReadingImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, timestamp, latitude,
      longitude, speed, heading, accuracy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationReadingImplCopyWith<_$LocationReadingImpl> get copyWith =>
      __$$LocationReadingImplCopyWithImpl<_$LocationReadingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationReadingImplToJson(
      this,
    );
  }
}

abstract class _LocationReading implements LocationReading {
  const factory _LocationReading(
      {required final String deviceId,
      required final DateTime timestamp,
      required final double latitude,
      required final double longitude,
      final double? speed,
      final double? heading,
      final double? accuracy}) = _$LocationReadingImpl;

  factory _LocationReading.fromJson(Map<String, dynamic> json) =
      _$LocationReadingImpl.fromJson;

  @override
  String get deviceId;
  @override
  DateTime get timestamp;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double? get speed;
  @override
  double? get heading;
  @override
  double? get accuracy;
  @override
  @JsonKey(ignore: true)
  _$$LocationReadingImplCopyWith<_$LocationReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DepthReading _$DepthReadingFromJson(Map<String, dynamic> json) {
  return _DepthReading.fromJson(json);
}

/// @nodoc
mixin _$DepthReading {
  String get deviceId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get depth => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  List<Fish>? get detectedFish => throw _privateConstructorUsedError;
  Map<String, double>? get structureData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepthReadingCopyWith<DepthReading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepthReadingCopyWith<$Res> {
  factory $DepthReadingCopyWith(
          DepthReading value, $Res Function(DepthReading) then) =
      _$DepthReadingCopyWithImpl<$Res, DepthReading>;
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      double depth,
      double temperature,
      List<Fish>? detectedFish,
      Map<String, double>? structureData});
}

/// @nodoc
class _$DepthReadingCopyWithImpl<$Res, $Val extends DepthReading>
    implements $DepthReadingCopyWith<$Res> {
  _$DepthReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? depth = null,
    Object? temperature = null,
    Object? detectedFish = freezed,
    Object? structureData = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      detectedFish: freezed == detectedFish
          ? _value.detectedFish
          : detectedFish // ignore: cast_nullable_to_non_nullable
              as List<Fish>?,
      structureData: freezed == structureData
          ? _value.structureData
          : structureData // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepthReadingImplCopyWith<$Res>
    implements $DepthReadingCopyWith<$Res> {
  factory _$$DepthReadingImplCopyWith(
          _$DepthReadingImpl value, $Res Function(_$DepthReadingImpl) then) =
      __$$DepthReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      double depth,
      double temperature,
      List<Fish>? detectedFish,
      Map<String, double>? structureData});
}

/// @nodoc
class __$$DepthReadingImplCopyWithImpl<$Res>
    extends _$DepthReadingCopyWithImpl<$Res, _$DepthReadingImpl>
    implements _$$DepthReadingImplCopyWith<$Res> {
  __$$DepthReadingImplCopyWithImpl(
      _$DepthReadingImpl _value, $Res Function(_$DepthReadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? depth = null,
    Object? temperature = null,
    Object? detectedFish = freezed,
    Object? structureData = freezed,
  }) {
    return _then(_$DepthReadingImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      detectedFish: freezed == detectedFish
          ? _value._detectedFish
          : detectedFish // ignore: cast_nullable_to_non_nullable
              as List<Fish>?,
      structureData: freezed == structureData
          ? _value._structureData
          : structureData // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepthReadingImpl implements _DepthReading {
  const _$DepthReadingImpl(
      {required this.deviceId,
      required this.timestamp,
      required this.depth,
      required this.temperature,
      final List<Fish>? detectedFish,
      final Map<String, double>? structureData})
      : _detectedFish = detectedFish,
        _structureData = structureData;

  factory _$DepthReadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepthReadingImplFromJson(json);

  @override
  final String deviceId;
  @override
  final DateTime timestamp;
  @override
  final double depth;
  @override
  final double temperature;
  final List<Fish>? _detectedFish;
  @override
  List<Fish>? get detectedFish {
    final value = _detectedFish;
    if (value == null) return null;
    if (_detectedFish is EqualUnmodifiableListView) return _detectedFish;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, double>? _structureData;
  @override
  Map<String, double>? get structureData {
    final value = _structureData;
    if (value == null) return null;
    if (_structureData is EqualUnmodifiableMapView) return _structureData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DepthReading(deviceId: $deviceId, timestamp: $timestamp, depth: $depth, temperature: $temperature, detectedFish: $detectedFish, structureData: $structureData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepthReadingImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            const DeepCollectionEquality()
                .equals(other._detectedFish, _detectedFish) &&
            const DeepCollectionEquality()
                .equals(other._structureData, _structureData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceId,
      timestamp,
      depth,
      temperature,
      const DeepCollectionEquality().hash(_detectedFish),
      const DeepCollectionEquality().hash(_structureData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepthReadingImplCopyWith<_$DepthReadingImpl> get copyWith =>
      __$$DepthReadingImplCopyWithImpl<_$DepthReadingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepthReadingImplToJson(
      this,
    );
  }
}

abstract class _DepthReading implements DepthReading {
  const factory _DepthReading(
      {required final String deviceId,
      required final DateTime timestamp,
      required final double depth,
      required final double temperature,
      final List<Fish>? detectedFish,
      final Map<String, double>? structureData}) = _$DepthReadingImpl;

  factory _DepthReading.fromJson(Map<String, dynamic> json) =
      _$DepthReadingImpl.fromJson;

  @override
  String get deviceId;
  @override
  DateTime get timestamp;
  @override
  double get depth;
  @override
  double get temperature;
  @override
  List<Fish>? get detectedFish;
  @override
  Map<String, double>? get structureData;
  @override
  @JsonKey(ignore: true)
  _$$DepthReadingImplCopyWith<_$DepthReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fish _$FishFromJson(Map<String, dynamic> json) {
  return _Fish.fromJson(json);
}

/// @nodoc
mixin _$Fish {
  double get depth => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FishCopyWith<Fish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FishCopyWith<$Res> {
  factory $FishCopyWith(Fish value, $Res Function(Fish) then) =
      _$FishCopyWithImpl<$Res, Fish>;
  @useResult
  $Res call({double depth, double size, double confidence, String? species});
}

/// @nodoc
class _$FishCopyWithImpl<$Res, $Val extends Fish>
    implements $FishCopyWith<$Res> {
  _$FishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depth = null,
    Object? size = null,
    Object? confidence = null,
    Object? species = freezed,
  }) {
    return _then(_value.copyWith(
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FishImplCopyWith<$Res> implements $FishCopyWith<$Res> {
  factory _$$FishImplCopyWith(
          _$FishImpl value, $Res Function(_$FishImpl) then) =
      __$$FishImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double depth, double size, double confidence, String? species});
}

/// @nodoc
class __$$FishImplCopyWithImpl<$Res>
    extends _$FishCopyWithImpl<$Res, _$FishImpl>
    implements _$$FishImplCopyWith<$Res> {
  __$$FishImplCopyWithImpl(_$FishImpl _value, $Res Function(_$FishImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depth = null,
    Object? size = null,
    Object? confidence = null,
    Object? species = freezed,
  }) {
    return _then(_$FishImpl(
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FishImpl implements _Fish {
  const _$FishImpl(
      {required this.depth,
      required this.size,
      required this.confidence,
      this.species});

  factory _$FishImpl.fromJson(Map<String, dynamic> json) =>
      _$$FishImplFromJson(json);

  @override
  final double depth;
  @override
  final double size;
  @override
  final double confidence;
  @override
  final String? species;

  @override
  String toString() {
    return 'Fish(depth: $depth, size: $size, confidence: $confidence, species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FishImpl &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, depth, size, confidence, species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FishImplCopyWith<_$FishImpl> get copyWith =>
      __$$FishImplCopyWithImpl<_$FishImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FishImplToJson(
      this,
    );
  }
}

abstract class _Fish implements Fish {
  const factory _Fish(
      {required final double depth,
      required final double size,
      required final double confidence,
      final String? species}) = _$FishImpl;

  factory _Fish.fromJson(Map<String, dynamic> json) = _$FishImpl.fromJson;

  @override
  double get depth;
  @override
  double get size;
  @override
  double get confidence;
  @override
  String? get species;
  @override
  @JsonKey(ignore: true)
  _$$FishImplCopyWith<_$FishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeightReading _$WeightReadingFromJson(Map<String, dynamic> json) {
  return _WeightReading.fromJson(json);
}

/// @nodoc
mixin _$WeightReading {
  String get deviceId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  bool? get isStable => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightReadingCopyWith<WeightReading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightReadingCopyWith<$Res> {
  factory $WeightReadingCopyWith(
          WeightReading value, $Res Function(WeightReading) then) =
      _$WeightReadingCopyWithImpl<$Res, WeightReading>;
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      double weight,
      String unit,
      bool? isStable,
      double? temperature});
}

/// @nodoc
class _$WeightReadingCopyWithImpl<$Res, $Val extends WeightReading>
    implements $WeightReadingCopyWith<$Res> {
  _$WeightReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? weight = null,
    Object? unit = null,
    Object? isStable = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isStable: freezed == isStable
          ? _value.isStable
          : isStable // ignore: cast_nullable_to_non_nullable
              as bool?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightReadingImplCopyWith<$Res>
    implements $WeightReadingCopyWith<$Res> {
  factory _$$WeightReadingImplCopyWith(
          _$WeightReadingImpl value, $Res Function(_$WeightReadingImpl) then) =
      __$$WeightReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId,
      DateTime timestamp,
      double weight,
      String unit,
      bool? isStable,
      double? temperature});
}

/// @nodoc
class __$$WeightReadingImplCopyWithImpl<$Res>
    extends _$WeightReadingCopyWithImpl<$Res, _$WeightReadingImpl>
    implements _$$WeightReadingImplCopyWith<$Res> {
  __$$WeightReadingImplCopyWithImpl(
      _$WeightReadingImpl _value, $Res Function(_$WeightReadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? timestamp = null,
    Object? weight = null,
    Object? unit = null,
    Object? isStable = freezed,
    Object? temperature = freezed,
  }) {
    return _then(_$WeightReadingImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isStable: freezed == isStable
          ? _value.isStable
          : isStable // ignore: cast_nullable_to_non_nullable
              as bool?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightReadingImpl implements _WeightReading {
  const _$WeightReadingImpl(
      {required this.deviceId,
      required this.timestamp,
      required this.weight,
      required this.unit,
      this.isStable,
      this.temperature});

  factory _$WeightReadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightReadingImplFromJson(json);

  @override
  final String deviceId;
  @override
  final DateTime timestamp;
  @override
  final double weight;
  @override
  final String unit;
  @override
  final bool? isStable;
  @override
  final double? temperature;

  @override
  String toString() {
    return 'WeightReading(deviceId: $deviceId, timestamp: $timestamp, weight: $weight, unit: $unit, isStable: $isStable, temperature: $temperature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightReadingImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.isStable, isStable) ||
                other.isStable == isStable) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, deviceId, timestamp, weight, unit, isStable, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightReadingImplCopyWith<_$WeightReadingImpl> get copyWith =>
      __$$WeightReadingImplCopyWithImpl<_$WeightReadingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightReadingImplToJson(
      this,
    );
  }
}

abstract class _WeightReading implements WeightReading {
  const factory _WeightReading(
      {required final String deviceId,
      required final DateTime timestamp,
      required final double weight,
      required final String unit,
      final bool? isStable,
      final double? temperature}) = _$WeightReadingImpl;

  factory _WeightReading.fromJson(Map<String, dynamic> json) =
      _$WeightReadingImpl.fromJson;

  @override
  String get deviceId;
  @override
  DateTime get timestamp;
  @override
  double get weight;
  @override
  String get unit;
  @override
  bool? get isStable;
  @override
  double? get temperature;
  @override
  @JsonKey(ignore: true)
  _$$WeightReadingImplCopyWith<_$WeightReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
