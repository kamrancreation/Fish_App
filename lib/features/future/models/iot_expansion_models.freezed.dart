// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iot_expansion_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvancedDevice _$AdvancedDeviceFromJson(Map<String, dynamic> json) {
  return _AdvancedDevice.fromJson(json);
}

/// @nodoc
mixin _$AdvancedDevice {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get protocol => throw _privateConstructorUsedError;
  Map<String, dynamic> get capabilities => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get lastSync => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvancedDeviceCopyWith<AdvancedDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedDeviceCopyWith<$Res> {
  factory $AdvancedDeviceCopyWith(
          AdvancedDevice value, $Res Function(AdvancedDevice) then) =
      _$AdvancedDeviceCopyWithImpl<$Res, AdvancedDevice>;
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      String protocol,
      Map<String, dynamic> capabilities,
      Map<String, dynamic> configuration,
      bool isActive,
      DateTime lastSync});
}

/// @nodoc
class _$AdvancedDeviceCopyWithImpl<$Res, $Val extends AdvancedDevice>
    implements $AdvancedDeviceCopyWith<$Res> {
  _$AdvancedDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? protocol = null,
    Object? capabilities = null,
    Object? configuration = null,
    Object? isActive = null,
    Object? lastSync = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSync: null == lastSync
          ? _value.lastSync
          : lastSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvancedDeviceImplCopyWith<$Res>
    implements $AdvancedDeviceCopyWith<$Res> {
  factory _$$AdvancedDeviceImplCopyWith(_$AdvancedDeviceImpl value,
          $Res Function(_$AdvancedDeviceImpl) then) =
      __$$AdvancedDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      String protocol,
      Map<String, dynamic> capabilities,
      Map<String, dynamic> configuration,
      bool isActive,
      DateTime lastSync});
}

/// @nodoc
class __$$AdvancedDeviceImplCopyWithImpl<$Res>
    extends _$AdvancedDeviceCopyWithImpl<$Res, _$AdvancedDeviceImpl>
    implements _$$AdvancedDeviceImplCopyWith<$Res> {
  __$$AdvancedDeviceImplCopyWithImpl(
      _$AdvancedDeviceImpl _value, $Res Function(_$AdvancedDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? protocol = null,
    Object? capabilities = null,
    Object? configuration = null,
    Object? isActive = null,
    Object? lastSync = null,
  }) {
    return _then(_$AdvancedDeviceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      capabilities: null == capabilities
          ? _value._capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSync: null == lastSync
          ? _value.lastSync
          : lastSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedDeviceImpl
    with DiagnosticableTreeMixin
    implements _AdvancedDevice {
  const _$AdvancedDeviceImpl(
      {required this.id,
      required this.type,
      required this.name,
      required this.protocol,
      required final Map<String, dynamic> capabilities,
      required final Map<String, dynamic> configuration,
      required this.isActive,
      required this.lastSync})
      : _capabilities = capabilities,
        _configuration = configuration;

  factory _$AdvancedDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvancedDeviceImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String name;
  @override
  final String protocol;
  final Map<String, dynamic> _capabilities;
  @override
  Map<String, dynamic> get capabilities {
    if (_capabilities is EqualUnmodifiableMapView) return _capabilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_capabilities);
  }

  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  @override
  final bool isActive;
  @override
  final DateTime lastSync;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdvancedDevice(id: $id, type: $type, name: $name, protocol: $protocol, capabilities: $capabilities, configuration: $configuration, isActive: $isActive, lastSync: $lastSync)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdvancedDevice'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('protocol', protocol))
      ..add(DiagnosticsProperty('capabilities', capabilities))
      ..add(DiagnosticsProperty('configuration', configuration))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('lastSync', lastSync));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedDeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            const DeepCollectionEquality()
                .equals(other._capabilities, _capabilities) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastSync, lastSync) ||
                other.lastSync == lastSync));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      name,
      protocol,
      const DeepCollectionEquality().hash(_capabilities),
      const DeepCollectionEquality().hash(_configuration),
      isActive,
      lastSync);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedDeviceImplCopyWith<_$AdvancedDeviceImpl> get copyWith =>
      __$$AdvancedDeviceImplCopyWithImpl<_$AdvancedDeviceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedDeviceImplToJson(
      this,
    );
  }
}

abstract class _AdvancedDevice implements AdvancedDevice {
  const factory _AdvancedDevice(
      {required final String id,
      required final String type,
      required final String name,
      required final String protocol,
      required final Map<String, dynamic> capabilities,
      required final Map<String, dynamic> configuration,
      required final bool isActive,
      required final DateTime lastSync}) = _$AdvancedDeviceImpl;

  factory _AdvancedDevice.fromJson(Map<String, dynamic> json) =
      _$AdvancedDeviceImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get name;
  @override
  String get protocol;
  @override
  Map<String, dynamic> get capabilities;
  @override
  Map<String, dynamic> get configuration;
  @override
  bool get isActive;
  @override
  DateTime get lastSync;
  @override
  @JsonKey(ignore: true)
  _$$AdvancedDeviceImplCopyWith<_$AdvancedDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SensorIntegration _$SensorIntegrationFromJson(Map<String, dynamic> json) {
  return _SensorIntegration.fromJson(json);
}

/// @nodoc
mixin _$SensorIntegration {
  String get id => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get sensorType => throw _privateConstructorUsedError;
  Map<String, dynamic> get readings => throw _privateConstructorUsedError;
  Map<String, dynamic> get calibration => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isCalibrated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorIntegrationCopyWith<SensorIntegration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorIntegrationCopyWith<$Res> {
  factory $SensorIntegrationCopyWith(
          SensorIntegration value, $Res Function(SensorIntegration) then) =
      _$SensorIntegrationCopyWithImpl<$Res, SensorIntegration>;
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String sensorType,
      Map<String, dynamic> readings,
      Map<String, dynamic> calibration,
      DateTime timestamp,
      bool isCalibrated});
}

/// @nodoc
class _$SensorIntegrationCopyWithImpl<$Res, $Val extends SensorIntegration>
    implements $SensorIntegrationCopyWith<$Res> {
  _$SensorIntegrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? sensorType = null,
    Object? readings = null,
    Object? calibration = null,
    Object? timestamp = null,
    Object? isCalibrated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      sensorType: null == sensorType
          ? _value.sensorType
          : sensorType // ignore: cast_nullable_to_non_nullable
              as String,
      readings: null == readings
          ? _value.readings
          : readings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      calibration: null == calibration
          ? _value.calibration
          : calibration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCalibrated: null == isCalibrated
          ? _value.isCalibrated
          : isCalibrated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SensorIntegrationImplCopyWith<$Res>
    implements $SensorIntegrationCopyWith<$Res> {
  factory _$$SensorIntegrationImplCopyWith(_$SensorIntegrationImpl value,
          $Res Function(_$SensorIntegrationImpl) then) =
      __$$SensorIntegrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String sensorType,
      Map<String, dynamic> readings,
      Map<String, dynamic> calibration,
      DateTime timestamp,
      bool isCalibrated});
}

/// @nodoc
class __$$SensorIntegrationImplCopyWithImpl<$Res>
    extends _$SensorIntegrationCopyWithImpl<$Res, _$SensorIntegrationImpl>
    implements _$$SensorIntegrationImplCopyWith<$Res> {
  __$$SensorIntegrationImplCopyWithImpl(_$SensorIntegrationImpl _value,
      $Res Function(_$SensorIntegrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? sensorType = null,
    Object? readings = null,
    Object? calibration = null,
    Object? timestamp = null,
    Object? isCalibrated = null,
  }) {
    return _then(_$SensorIntegrationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      sensorType: null == sensorType
          ? _value.sensorType
          : sensorType // ignore: cast_nullable_to_non_nullable
              as String,
      readings: null == readings
          ? _value._readings
          : readings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      calibration: null == calibration
          ? _value._calibration
          : calibration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCalibrated: null == isCalibrated
          ? _value.isCalibrated
          : isCalibrated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SensorIntegrationImpl
    with DiagnosticableTreeMixin
    implements _SensorIntegration {
  const _$SensorIntegrationImpl(
      {required this.id,
      required this.deviceId,
      required this.sensorType,
      required final Map<String, dynamic> readings,
      required final Map<String, dynamic> calibration,
      required this.timestamp,
      required this.isCalibrated})
      : _readings = readings,
        _calibration = calibration;

  factory _$SensorIntegrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SensorIntegrationImplFromJson(json);

  @override
  final String id;
  @override
  final String deviceId;
  @override
  final String sensorType;
  final Map<String, dynamic> _readings;
  @override
  Map<String, dynamic> get readings {
    if (_readings is EqualUnmodifiableMapView) return _readings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_readings);
  }

  final Map<String, dynamic> _calibration;
  @override
  Map<String, dynamic> get calibration {
    if (_calibration is EqualUnmodifiableMapView) return _calibration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_calibration);
  }

  @override
  final DateTime timestamp;
  @override
  final bool isCalibrated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SensorIntegration(id: $id, deviceId: $deviceId, sensorType: $sensorType, readings: $readings, calibration: $calibration, timestamp: $timestamp, isCalibrated: $isCalibrated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SensorIntegration'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('sensorType', sensorType))
      ..add(DiagnosticsProperty('readings', readings))
      ..add(DiagnosticsProperty('calibration', calibration))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('isCalibrated', isCalibrated));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorIntegrationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.sensorType, sensorType) ||
                other.sensorType == sensorType) &&
            const DeepCollectionEquality().equals(other._readings, _readings) &&
            const DeepCollectionEquality()
                .equals(other._calibration, _calibration) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isCalibrated, isCalibrated) ||
                other.isCalibrated == isCalibrated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      deviceId,
      sensorType,
      const DeepCollectionEquality().hash(_readings),
      const DeepCollectionEquality().hash(_calibration),
      timestamp,
      isCalibrated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorIntegrationImplCopyWith<_$SensorIntegrationImpl> get copyWith =>
      __$$SensorIntegrationImplCopyWithImpl<_$SensorIntegrationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SensorIntegrationImplToJson(
      this,
    );
  }
}

abstract class _SensorIntegration implements SensorIntegration {
  const factory _SensorIntegration(
      {required final String id,
      required final String deviceId,
      required final String sensorType,
      required final Map<String, dynamic> readings,
      required final Map<String, dynamic> calibration,
      required final DateTime timestamp,
      required final bool isCalibrated}) = _$SensorIntegrationImpl;

  factory _SensorIntegration.fromJson(Map<String, dynamic> json) =
      _$SensorIntegrationImpl.fromJson;

  @override
  String get id;
  @override
  String get deviceId;
  @override
  String get sensorType;
  @override
  Map<String, dynamic> get readings;
  @override
  Map<String, dynamic> get calibration;
  @override
  DateTime get timestamp;
  @override
  bool get isCalibrated;
  @override
  @JsonKey(ignore: true)
  _$$SensorIntegrationImplCopyWith<_$SensorIntegrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AutomatedLog _$AutomatedLogFromJson(Map<String, dynamic> json) {
  return _AutomatedLog.fromJson(json);
}

/// @nodoc
mixin _$AutomatedLog {
  String get id => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get logType => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutomatedLogCopyWith<AutomatedLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutomatedLogCopyWith<$Res> {
  factory $AutomatedLogCopyWith(
          AutomatedLog value, $Res Function(AutomatedLog) then) =
      _$AutomatedLogCopyWithImpl<$Res, AutomatedLog>;
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String logType,
      Map<String, dynamic> data,
      DateTime timestamp,
      Map<String, dynamic> metadata,
      bool isVerified});
}

/// @nodoc
class _$AutomatedLogCopyWithImpl<$Res, $Val extends AutomatedLog>
    implements $AutomatedLogCopyWith<$Res> {
  _$AutomatedLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? logType = null,
    Object? data = null,
    Object? timestamp = null,
    Object? metadata = null,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      logType: null == logType
          ? _value.logType
          : logType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutomatedLogImplCopyWith<$Res>
    implements $AutomatedLogCopyWith<$Res> {
  factory _$$AutomatedLogImplCopyWith(
          _$AutomatedLogImpl value, $Res Function(_$AutomatedLogImpl) then) =
      __$$AutomatedLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String logType,
      Map<String, dynamic> data,
      DateTime timestamp,
      Map<String, dynamic> metadata,
      bool isVerified});
}

/// @nodoc
class __$$AutomatedLogImplCopyWithImpl<$Res>
    extends _$AutomatedLogCopyWithImpl<$Res, _$AutomatedLogImpl>
    implements _$$AutomatedLogImplCopyWith<$Res> {
  __$$AutomatedLogImplCopyWithImpl(
      _$AutomatedLogImpl _value, $Res Function(_$AutomatedLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? logType = null,
    Object? data = null,
    Object? timestamp = null,
    Object? metadata = null,
    Object? isVerified = null,
  }) {
    return _then(_$AutomatedLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      logType: null == logType
          ? _value.logType
          : logType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutomatedLogImpl with DiagnosticableTreeMixin implements _AutomatedLog {
  const _$AutomatedLogImpl(
      {required this.id,
      required this.deviceId,
      required this.logType,
      required final Map<String, dynamic> data,
      required this.timestamp,
      required final Map<String, dynamic> metadata,
      required this.isVerified})
      : _data = data,
        _metadata = metadata;

  factory _$AutomatedLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutomatedLogImplFromJson(json);

  @override
  final String id;
  @override
  final String deviceId;
  @override
  final String logType;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime timestamp;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final bool isVerified;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AutomatedLog(id: $id, deviceId: $deviceId, logType: $logType, data: $data, timestamp: $timestamp, metadata: $metadata, isVerified: $isVerified)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AutomatedLog'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('logType', logType))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('isVerified', isVerified));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutomatedLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.logType, logType) || other.logType == logType) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      deviceId,
      logType,
      const DeepCollectionEquality().hash(_data),
      timestamp,
      const DeepCollectionEquality().hash(_metadata),
      isVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutomatedLogImplCopyWith<_$AutomatedLogImpl> get copyWith =>
      __$$AutomatedLogImplCopyWithImpl<_$AutomatedLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutomatedLogImplToJson(
      this,
    );
  }
}

abstract class _AutomatedLog implements AutomatedLog {
  const factory _AutomatedLog(
      {required final String id,
      required final String deviceId,
      required final String logType,
      required final Map<String, dynamic> data,
      required final DateTime timestamp,
      required final Map<String, dynamic> metadata,
      required final bool isVerified}) = _$AutomatedLogImpl;

  factory _AutomatedLog.fromJson(Map<String, dynamic> json) =
      _$AutomatedLogImpl.fromJson;

  @override
  String get id;
  @override
  String get deviceId;
  @override
  String get logType;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get timestamp;
  @override
  Map<String, dynamic> get metadata;
  @override
  bool get isVerified;
  @override
  @JsonKey(ignore: true)
  _$$AutomatedLogImplCopyWith<_$AutomatedLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnvironmentalMonitor _$EnvironmentalMonitorFromJson(Map<String, dynamic> json) {
  return _EnvironmentalMonitor.fromJson(json);
}

/// @nodoc
mixin _$EnvironmentalMonitor {
  String get id => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  Map<String, dynamic> get conditions => throw _privateConstructorUsedError;
  Map<String, dynamic> get thresholds => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String> get alerts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnvironmentalMonitorCopyWith<EnvironmentalMonitor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentalMonitorCopyWith<$Res> {
  factory $EnvironmentalMonitorCopyWith(EnvironmentalMonitor value,
          $Res Function(EnvironmentalMonitor) then) =
      _$EnvironmentalMonitorCopyWithImpl<$Res, EnvironmentalMonitor>;
  @useResult
  $Res call(
      {String id,
      String locationId,
      Map<String, dynamic> conditions,
      Map<String, dynamic> thresholds,
      DateTime timestamp,
      List<String> alerts});
}

/// @nodoc
class _$EnvironmentalMonitorCopyWithImpl<$Res,
        $Val extends EnvironmentalMonitor>
    implements $EnvironmentalMonitorCopyWith<$Res> {
  _$EnvironmentalMonitorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationId = null,
    Object? conditions = null,
    Object? thresholds = null,
    Object? timestamp = null,
    Object? alerts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      thresholds: null == thresholds
          ? _value.thresholds
          : thresholds // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnvironmentalMonitorImplCopyWith<$Res>
    implements $EnvironmentalMonitorCopyWith<$Res> {
  factory _$$EnvironmentalMonitorImplCopyWith(_$EnvironmentalMonitorImpl value,
          $Res Function(_$EnvironmentalMonitorImpl) then) =
      __$$EnvironmentalMonitorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String locationId,
      Map<String, dynamic> conditions,
      Map<String, dynamic> thresholds,
      DateTime timestamp,
      List<String> alerts});
}

/// @nodoc
class __$$EnvironmentalMonitorImplCopyWithImpl<$Res>
    extends _$EnvironmentalMonitorCopyWithImpl<$Res, _$EnvironmentalMonitorImpl>
    implements _$$EnvironmentalMonitorImplCopyWith<$Res> {
  __$$EnvironmentalMonitorImplCopyWithImpl(_$EnvironmentalMonitorImpl _value,
      $Res Function(_$EnvironmentalMonitorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationId = null,
    Object? conditions = null,
    Object? thresholds = null,
    Object? timestamp = null,
    Object? alerts = null,
  }) {
    return _then(_$EnvironmentalMonitorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      thresholds: null == thresholds
          ? _value._thresholds
          : thresholds // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnvironmentalMonitorImpl
    with DiagnosticableTreeMixin
    implements _EnvironmentalMonitor {
  const _$EnvironmentalMonitorImpl(
      {required this.id,
      required this.locationId,
      required final Map<String, dynamic> conditions,
      required final Map<String, dynamic> thresholds,
      required this.timestamp,
      required final List<String> alerts})
      : _conditions = conditions,
        _thresholds = thresholds,
        _alerts = alerts;

  factory _$EnvironmentalMonitorImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnvironmentalMonitorImplFromJson(json);

  @override
  final String id;
  @override
  final String locationId;
  final Map<String, dynamic> _conditions;
  @override
  Map<String, dynamic> get conditions {
    if (_conditions is EqualUnmodifiableMapView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conditions);
  }

  final Map<String, dynamic> _thresholds;
  @override
  Map<String, dynamic> get thresholds {
    if (_thresholds is EqualUnmodifiableMapView) return _thresholds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_thresholds);
  }

  @override
  final DateTime timestamp;
  final List<String> _alerts;
  @override
  List<String> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EnvironmentalMonitor(id: $id, locationId: $locationId, conditions: $conditions, thresholds: $thresholds, timestamp: $timestamp, alerts: $alerts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EnvironmentalMonitor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('locationId', locationId))
      ..add(DiagnosticsProperty('conditions', conditions))
      ..add(DiagnosticsProperty('thresholds', thresholds))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('alerts', alerts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnvironmentalMonitorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._thresholds, _thresholds) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      locationId,
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_thresholds),
      timestamp,
      const DeepCollectionEquality().hash(_alerts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnvironmentalMonitorImplCopyWith<_$EnvironmentalMonitorImpl>
      get copyWith =>
          __$$EnvironmentalMonitorImplCopyWithImpl<_$EnvironmentalMonitorImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnvironmentalMonitorImplToJson(
      this,
    );
  }
}

abstract class _EnvironmentalMonitor implements EnvironmentalMonitor {
  const factory _EnvironmentalMonitor(
      {required final String id,
      required final String locationId,
      required final Map<String, dynamic> conditions,
      required final Map<String, dynamic> thresholds,
      required final DateTime timestamp,
      required final List<String> alerts}) = _$EnvironmentalMonitorImpl;

  factory _EnvironmentalMonitor.fromJson(Map<String, dynamic> json) =
      _$EnvironmentalMonitorImpl.fromJson;

  @override
  String get id;
  @override
  String get locationId;
  @override
  Map<String, dynamic> get conditions;
  @override
  Map<String, dynamic> get thresholds;
  @override
  DateTime get timestamp;
  @override
  List<String> get alerts;
  @override
  @JsonKey(ignore: true)
  _$$EnvironmentalMonitorImplCopyWith<_$EnvironmentalMonitorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EquipmentTracker _$EquipmentTrackerFromJson(Map<String, dynamic> json) {
  return _EquipmentTracker.fromJson(json);
}

/// @nodoc
mixin _$EquipmentTracker {
  String get id => throw _privateConstructorUsedError;
  String get equipmentId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get maintenance => throw _privateConstructorUsedError;
  DateTime get lastChecked => throw _privateConstructorUsedError;
  List<String> get alerts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentTrackerCopyWith<EquipmentTracker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentTrackerCopyWith<$Res> {
  factory $EquipmentTrackerCopyWith(
          EquipmentTracker value, $Res Function(EquipmentTracker) then) =
      _$EquipmentTrackerCopyWithImpl<$Res, EquipmentTracker>;
  @useResult
  $Res call(
      {String id,
      String equipmentId,
      String type,
      Map<String, dynamic> status,
      Map<String, dynamic> maintenance,
      DateTime lastChecked,
      List<String> alerts});
}

/// @nodoc
class _$EquipmentTrackerCopyWithImpl<$Res, $Val extends EquipmentTracker>
    implements $EquipmentTrackerCopyWith<$Res> {
  _$EquipmentTrackerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? equipmentId = null,
    Object? type = null,
    Object? status = null,
    Object? maintenance = null,
    Object? lastChecked = null,
    Object? alerts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentId: null == equipmentId
          ? _value.equipmentId
          : equipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      maintenance: null == maintenance
          ? _value.maintenance
          : maintenance // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastChecked: null == lastChecked
          ? _value.lastChecked
          : lastChecked // ignore: cast_nullable_to_non_nullable
              as DateTime,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentTrackerImplCopyWith<$Res>
    implements $EquipmentTrackerCopyWith<$Res> {
  factory _$$EquipmentTrackerImplCopyWith(_$EquipmentTrackerImpl value,
          $Res Function(_$EquipmentTrackerImpl) then) =
      __$$EquipmentTrackerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String equipmentId,
      String type,
      Map<String, dynamic> status,
      Map<String, dynamic> maintenance,
      DateTime lastChecked,
      List<String> alerts});
}

/// @nodoc
class __$$EquipmentTrackerImplCopyWithImpl<$Res>
    extends _$EquipmentTrackerCopyWithImpl<$Res, _$EquipmentTrackerImpl>
    implements _$$EquipmentTrackerImplCopyWith<$Res> {
  __$$EquipmentTrackerImplCopyWithImpl(_$EquipmentTrackerImpl _value,
      $Res Function(_$EquipmentTrackerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? equipmentId = null,
    Object? type = null,
    Object? status = null,
    Object? maintenance = null,
    Object? lastChecked = null,
    Object? alerts = null,
  }) {
    return _then(_$EquipmentTrackerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentId: null == equipmentId
          ? _value.equipmentId
          : equipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      maintenance: null == maintenance
          ? _value._maintenance
          : maintenance // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastChecked: null == lastChecked
          ? _value.lastChecked
          : lastChecked // ignore: cast_nullable_to_non_nullable
              as DateTime,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipmentTrackerImpl
    with DiagnosticableTreeMixin
    implements _EquipmentTracker {
  const _$EquipmentTrackerImpl(
      {required this.id,
      required this.equipmentId,
      required this.type,
      required final Map<String, dynamic> status,
      required final Map<String, dynamic> maintenance,
      required this.lastChecked,
      required final List<String> alerts})
      : _status = status,
        _maintenance = maintenance,
        _alerts = alerts;

  factory _$EquipmentTrackerImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentTrackerImplFromJson(json);

  @override
  final String id;
  @override
  final String equipmentId;
  @override
  final String type;
  final Map<String, dynamic> _status;
  @override
  Map<String, dynamic> get status {
    if (_status is EqualUnmodifiableMapView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_status);
  }

  final Map<String, dynamic> _maintenance;
  @override
  Map<String, dynamic> get maintenance {
    if (_maintenance is EqualUnmodifiableMapView) return _maintenance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_maintenance);
  }

  @override
  final DateTime lastChecked;
  final List<String> _alerts;
  @override
  List<String> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EquipmentTracker(id: $id, equipmentId: $equipmentId, type: $type, status: $status, maintenance: $maintenance, lastChecked: $lastChecked, alerts: $alerts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EquipmentTracker'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('equipmentId', equipmentId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('maintenance', maintenance))
      ..add(DiagnosticsProperty('lastChecked', lastChecked))
      ..add(DiagnosticsProperty('alerts', alerts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentTrackerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.equipmentId, equipmentId) ||
                other.equipmentId == equipmentId) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            const DeepCollectionEquality()
                .equals(other._maintenance, _maintenance) &&
            (identical(other.lastChecked, lastChecked) ||
                other.lastChecked == lastChecked) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      equipmentId,
      type,
      const DeepCollectionEquality().hash(_status),
      const DeepCollectionEquality().hash(_maintenance),
      lastChecked,
      const DeepCollectionEquality().hash(_alerts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentTrackerImplCopyWith<_$EquipmentTrackerImpl> get copyWith =>
      __$$EquipmentTrackerImplCopyWithImpl<_$EquipmentTrackerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentTrackerImplToJson(
      this,
    );
  }
}

abstract class _EquipmentTracker implements EquipmentTracker {
  const factory _EquipmentTracker(
      {required final String id,
      required final String equipmentId,
      required final String type,
      required final Map<String, dynamic> status,
      required final Map<String, dynamic> maintenance,
      required final DateTime lastChecked,
      required final List<String> alerts}) = _$EquipmentTrackerImpl;

  factory _EquipmentTracker.fromJson(Map<String, dynamic> json) =
      _$EquipmentTrackerImpl.fromJson;

  @override
  String get id;
  @override
  String get equipmentId;
  @override
  String get type;
  @override
  Map<String, dynamic> get status;
  @override
  Map<String, dynamic> get maintenance;
  @override
  DateTime get lastChecked;
  @override
  List<String> get alerts;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentTrackerImplCopyWith<_$EquipmentTrackerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SmartAlert _$SmartAlertFromJson(Map<String, dynamic> json) {
  return _SmartAlert.fromJson(json);
}

/// @nodoc
mixin _$SmartAlert {
  String get id => throw _privateConstructorUsedError;
  String get sourceId => throw _privateConstructorUsedError;
  String get alertType => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isAcknowledged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmartAlertCopyWith<SmartAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartAlertCopyWith<$Res> {
  factory $SmartAlertCopyWith(
          SmartAlert value, $Res Function(SmartAlert) then) =
      _$SmartAlertCopyWithImpl<$Res, SmartAlert>;
  @useResult
  $Res call(
      {String id,
      String sourceId,
      String alertType,
      String severity,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isAcknowledged});
}

/// @nodoc
class _$SmartAlertCopyWithImpl<$Res, $Val extends SmartAlert>
    implements $SmartAlertCopyWith<$Res> {
  _$SmartAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sourceId = null,
    Object? alertType = null,
    Object? severity = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isAcknowledged = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      alertType: null == alertType
          ? _value.alertType
          : alertType // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAcknowledged: null == isAcknowledged
          ? _value.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmartAlertImplCopyWith<$Res>
    implements $SmartAlertCopyWith<$Res> {
  factory _$$SmartAlertImplCopyWith(
          _$SmartAlertImpl value, $Res Function(_$SmartAlertImpl) then) =
      __$$SmartAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sourceId,
      String alertType,
      String severity,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isAcknowledged});
}

/// @nodoc
class __$$SmartAlertImplCopyWithImpl<$Res>
    extends _$SmartAlertCopyWithImpl<$Res, _$SmartAlertImpl>
    implements _$$SmartAlertImplCopyWith<$Res> {
  __$$SmartAlertImplCopyWithImpl(
      _$SmartAlertImpl _value, $Res Function(_$SmartAlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sourceId = null,
    Object? alertType = null,
    Object? severity = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isAcknowledged = null,
  }) {
    return _then(_$SmartAlertImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      alertType: null == alertType
          ? _value.alertType
          : alertType // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAcknowledged: null == isAcknowledged
          ? _value.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmartAlertImpl with DiagnosticableTreeMixin implements _SmartAlert {
  const _$SmartAlertImpl(
      {required this.id,
      required this.sourceId,
      required this.alertType,
      required this.severity,
      required final Map<String, dynamic> data,
      required this.timestamp,
      required this.isAcknowledged})
      : _data = data;

  factory _$SmartAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmartAlertImplFromJson(json);

  @override
  final String id;
  @override
  final String sourceId;
  @override
  final String alertType;
  @override
  final String severity;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime timestamp;
  @override
  final bool isAcknowledged;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SmartAlert(id: $id, sourceId: $sourceId, alertType: $alertType, severity: $severity, data: $data, timestamp: $timestamp, isAcknowledged: $isAcknowledged)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SmartAlert'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sourceId', sourceId))
      ..add(DiagnosticsProperty('alertType', alertType))
      ..add(DiagnosticsProperty('severity', severity))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('isAcknowledged', isAcknowledged));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmartAlertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.alertType, alertType) ||
                other.alertType == alertType) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isAcknowledged, isAcknowledged) ||
                other.isAcknowledged == isAcknowledged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sourceId,
      alertType,
      severity,
      const DeepCollectionEquality().hash(_data),
      timestamp,
      isAcknowledged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmartAlertImplCopyWith<_$SmartAlertImpl> get copyWith =>
      __$$SmartAlertImplCopyWithImpl<_$SmartAlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmartAlertImplToJson(
      this,
    );
  }
}

abstract class _SmartAlert implements SmartAlert {
  const factory _SmartAlert(
      {required final String id,
      required final String sourceId,
      required final String alertType,
      required final String severity,
      required final Map<String, dynamic> data,
      required final DateTime timestamp,
      required final bool isAcknowledged}) = _$SmartAlertImpl;

  factory _SmartAlert.fromJson(Map<String, dynamic> json) =
      _$SmartAlertImpl.fromJson;

  @override
  String get id;
  @override
  String get sourceId;
  @override
  String get alertType;
  @override
  String get severity;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get timestamp;
  @override
  bool get isAcknowledged;
  @override
  @JsonKey(ignore: true)
  _$$SmartAlertImplCopyWith<_$SmartAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
