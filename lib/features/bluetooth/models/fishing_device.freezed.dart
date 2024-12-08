// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fishing_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FishingDevice _$FishingDeviceFromJson(Map<String, dynamic> json) {
  return _FishingDevice.fromJson(json);
}

/// @nodoc
mixin _$FishingDevice {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DeviceType get type => throw _privateConstructorUsedError;
  DateTime get lastConnected => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  String? get firmwareVersion => throw _privateConstructorUsedError;
  int? get batteryLevel => throw _privateConstructorUsedError;
  int? get signalStrength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FishingDeviceCopyWith<FishingDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FishingDeviceCopyWith<$Res> {
  factory $FishingDeviceCopyWith(
          FishingDevice value, $Res Function(FishingDevice) then) =
      _$FishingDeviceCopyWithImpl<$Res, FishingDevice>;
  @useResult
  $Res call(
      {String id,
      String name,
      DeviceType type,
      DateTime lastConnected,
      Map<String, dynamic> settings,
      bool isConnected,
      String? firmwareVersion,
      int? batteryLevel,
      int? signalStrength});
}

/// @nodoc
class _$FishingDeviceCopyWithImpl<$Res, $Val extends FishingDevice>
    implements $FishingDeviceCopyWith<$Res> {
  _$FishingDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? lastConnected = null,
    Object? settings = null,
    Object? isConnected = null,
    Object? firmwareVersion = freezed,
    Object? batteryLevel = freezed,
    Object? signalStrength = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      lastConnected: null == lastConnected
          ? _value.lastConnected
          : lastConnected // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      firmwareVersion: freezed == firmwareVersion
          ? _value.firmwareVersion
          : firmwareVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      batteryLevel: freezed == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      signalStrength: freezed == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FishingDeviceImplCopyWith<$Res>
    implements $FishingDeviceCopyWith<$Res> {
  factory _$$FishingDeviceImplCopyWith(
          _$FishingDeviceImpl value, $Res Function(_$FishingDeviceImpl) then) =
      __$$FishingDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      DeviceType type,
      DateTime lastConnected,
      Map<String, dynamic> settings,
      bool isConnected,
      String? firmwareVersion,
      int? batteryLevel,
      int? signalStrength});
}

/// @nodoc
class __$$FishingDeviceImplCopyWithImpl<$Res>
    extends _$FishingDeviceCopyWithImpl<$Res, _$FishingDeviceImpl>
    implements _$$FishingDeviceImplCopyWith<$Res> {
  __$$FishingDeviceImplCopyWithImpl(
      _$FishingDeviceImpl _value, $Res Function(_$FishingDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? lastConnected = null,
    Object? settings = null,
    Object? isConnected = null,
    Object? firmwareVersion = freezed,
    Object? batteryLevel = freezed,
    Object? signalStrength = freezed,
  }) {
    return _then(_$FishingDeviceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      lastConnected: null == lastConnected
          ? _value.lastConnected
          : lastConnected // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      firmwareVersion: freezed == firmwareVersion
          ? _value.firmwareVersion
          : firmwareVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      batteryLevel: freezed == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      signalStrength: freezed == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FishingDeviceImpl implements _FishingDevice {
  const _$FishingDeviceImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.lastConnected,
      final Map<String, dynamic> settings = const {},
      this.isConnected = false,
      this.firmwareVersion,
      this.batteryLevel,
      this.signalStrength})
      : _settings = settings;

  factory _$FishingDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$FishingDeviceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DeviceType type;
  @override
  final DateTime lastConnected;
  final Map<String, dynamic> _settings;
  @override
  @JsonKey()
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  @JsonKey()
  final bool isConnected;
  @override
  final String? firmwareVersion;
  @override
  final int? batteryLevel;
  @override
  final int? signalStrength;

  @override
  String toString() {
    return 'FishingDevice(id: $id, name: $name, type: $type, lastConnected: $lastConnected, settings: $settings, isConnected: $isConnected, firmwareVersion: $firmwareVersion, batteryLevel: $batteryLevel, signalStrength: $signalStrength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FishingDeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lastConnected, lastConnected) ||
                other.lastConnected == lastConnected) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.firmwareVersion, firmwareVersion) ||
                other.firmwareVersion == firmwareVersion) &&
            (identical(other.batteryLevel, batteryLevel) ||
                other.batteryLevel == batteryLevel) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      lastConnected,
      const DeepCollectionEquality().hash(_settings),
      isConnected,
      firmwareVersion,
      batteryLevel,
      signalStrength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FishingDeviceImplCopyWith<_$FishingDeviceImpl> get copyWith =>
      __$$FishingDeviceImplCopyWithImpl<_$FishingDeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FishingDeviceImplToJson(
      this,
    );
  }
}

abstract class _FishingDevice implements FishingDevice {
  const factory _FishingDevice(
      {required final String id,
      required final String name,
      required final DeviceType type,
      required final DateTime lastConnected,
      final Map<String, dynamic> settings,
      final bool isConnected,
      final String? firmwareVersion,
      final int? batteryLevel,
      final int? signalStrength}) = _$FishingDeviceImpl;

  factory _FishingDevice.fromJson(Map<String, dynamic> json) =
      _$FishingDeviceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DeviceType get type;
  @override
  DateTime get lastConnected;
  @override
  Map<String, dynamic> get settings;
  @override
  bool get isConnected;
  @override
  String? get firmwareVersion;
  @override
  int? get batteryLevel;
  @override
  int? get signalStrength;
  @override
  @JsonKey(ignore: true)
  _$$FishingDeviceImplCopyWith<_$FishingDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceSettings _$DeviceSettingsFromJson(Map<String, dynamic> json) {
  return _DeviceSettings.fromJson(json);
}

/// @nodoc
mixin _$DeviceSettings {
// Bite Alarm Settings
  int get sensitivity => throw _privateConstructorUsedError;
  bool get nightMode => throw _privateConstructorUsedError;
  bool get vibration => throw _privateConstructorUsedError;
  int get volume => throw _privateConstructorUsedError; // Fish Finder Settings
  int get depth => throw _privateConstructorUsedError;
  bool get fishIcons => throw _privateConstructorUsedError;
  bool get depthAlarm => throw _privateConstructorUsedError;
  double get depthThreshold =>
      throw _privateConstructorUsedError; // Scale Settings
  String get unit => throw _privateConstructorUsedError;
  bool get autoTare => throw _privateConstructorUsedError;
  bool get holdReading =>
      throw _privateConstructorUsedError; // Bait Boat Settings
  int get maxRange => throw _privateConstructorUsedError;
  bool get returnToHome => throw _privateConstructorUsedError;
  int get cruisingSpeed => throw _privateConstructorUsedError;
  bool get autoAnchor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceSettingsCopyWith<DeviceSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSettingsCopyWith<$Res> {
  factory $DeviceSettingsCopyWith(
          DeviceSettings value, $Res Function(DeviceSettings) then) =
      _$DeviceSettingsCopyWithImpl<$Res, DeviceSettings>;
  @useResult
  $Res call(
      {int sensitivity,
      bool nightMode,
      bool vibration,
      int volume,
      int depth,
      bool fishIcons,
      bool depthAlarm,
      double depthThreshold,
      String unit,
      bool autoTare,
      bool holdReading,
      int maxRange,
      bool returnToHome,
      int cruisingSpeed,
      bool autoAnchor});
}

/// @nodoc
class _$DeviceSettingsCopyWithImpl<$Res, $Val extends DeviceSettings>
    implements $DeviceSettingsCopyWith<$Res> {
  _$DeviceSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensitivity = null,
    Object? nightMode = null,
    Object? vibration = null,
    Object? volume = null,
    Object? depth = null,
    Object? fishIcons = null,
    Object? depthAlarm = null,
    Object? depthThreshold = null,
    Object? unit = null,
    Object? autoTare = null,
    Object? holdReading = null,
    Object? maxRange = null,
    Object? returnToHome = null,
    Object? cruisingSpeed = null,
    Object? autoAnchor = null,
  }) {
    return _then(_value.copyWith(
      sensitivity: null == sensitivity
          ? _value.sensitivity
          : sensitivity // ignore: cast_nullable_to_non_nullable
              as int,
      nightMode: null == nightMode
          ? _value.nightMode
          : nightMode // ignore: cast_nullable_to_non_nullable
              as bool,
      vibration: null == vibration
          ? _value.vibration
          : vibration // ignore: cast_nullable_to_non_nullable
              as bool,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      fishIcons: null == fishIcons
          ? _value.fishIcons
          : fishIcons // ignore: cast_nullable_to_non_nullable
              as bool,
      depthAlarm: null == depthAlarm
          ? _value.depthAlarm
          : depthAlarm // ignore: cast_nullable_to_non_nullable
              as bool,
      depthThreshold: null == depthThreshold
          ? _value.depthThreshold
          : depthThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      autoTare: null == autoTare
          ? _value.autoTare
          : autoTare // ignore: cast_nullable_to_non_nullable
              as bool,
      holdReading: null == holdReading
          ? _value.holdReading
          : holdReading // ignore: cast_nullable_to_non_nullable
              as bool,
      maxRange: null == maxRange
          ? _value.maxRange
          : maxRange // ignore: cast_nullable_to_non_nullable
              as int,
      returnToHome: null == returnToHome
          ? _value.returnToHome
          : returnToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      cruisingSpeed: null == cruisingSpeed
          ? _value.cruisingSpeed
          : cruisingSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      autoAnchor: null == autoAnchor
          ? _value.autoAnchor
          : autoAnchor // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceSettingsImplCopyWith<$Res>
    implements $DeviceSettingsCopyWith<$Res> {
  factory _$$DeviceSettingsImplCopyWith(_$DeviceSettingsImpl value,
          $Res Function(_$DeviceSettingsImpl) then) =
      __$$DeviceSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sensitivity,
      bool nightMode,
      bool vibration,
      int volume,
      int depth,
      bool fishIcons,
      bool depthAlarm,
      double depthThreshold,
      String unit,
      bool autoTare,
      bool holdReading,
      int maxRange,
      bool returnToHome,
      int cruisingSpeed,
      bool autoAnchor});
}

/// @nodoc
class __$$DeviceSettingsImplCopyWithImpl<$Res>
    extends _$DeviceSettingsCopyWithImpl<$Res, _$DeviceSettingsImpl>
    implements _$$DeviceSettingsImplCopyWith<$Res> {
  __$$DeviceSettingsImplCopyWithImpl(
      _$DeviceSettingsImpl _value, $Res Function(_$DeviceSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensitivity = null,
    Object? nightMode = null,
    Object? vibration = null,
    Object? volume = null,
    Object? depth = null,
    Object? fishIcons = null,
    Object? depthAlarm = null,
    Object? depthThreshold = null,
    Object? unit = null,
    Object? autoTare = null,
    Object? holdReading = null,
    Object? maxRange = null,
    Object? returnToHome = null,
    Object? cruisingSpeed = null,
    Object? autoAnchor = null,
  }) {
    return _then(_$DeviceSettingsImpl(
      sensitivity: null == sensitivity
          ? _value.sensitivity
          : sensitivity // ignore: cast_nullable_to_non_nullable
              as int,
      nightMode: null == nightMode
          ? _value.nightMode
          : nightMode // ignore: cast_nullable_to_non_nullable
              as bool,
      vibration: null == vibration
          ? _value.vibration
          : vibration // ignore: cast_nullable_to_non_nullable
              as bool,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      fishIcons: null == fishIcons
          ? _value.fishIcons
          : fishIcons // ignore: cast_nullable_to_non_nullable
              as bool,
      depthAlarm: null == depthAlarm
          ? _value.depthAlarm
          : depthAlarm // ignore: cast_nullable_to_non_nullable
              as bool,
      depthThreshold: null == depthThreshold
          ? _value.depthThreshold
          : depthThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      autoTare: null == autoTare
          ? _value.autoTare
          : autoTare // ignore: cast_nullable_to_non_nullable
              as bool,
      holdReading: null == holdReading
          ? _value.holdReading
          : holdReading // ignore: cast_nullable_to_non_nullable
              as bool,
      maxRange: null == maxRange
          ? _value.maxRange
          : maxRange // ignore: cast_nullable_to_non_nullable
              as int,
      returnToHome: null == returnToHome
          ? _value.returnToHome
          : returnToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      cruisingSpeed: null == cruisingSpeed
          ? _value.cruisingSpeed
          : cruisingSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      autoAnchor: null == autoAnchor
          ? _value.autoAnchor
          : autoAnchor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceSettingsImpl implements _DeviceSettings {
  const _$DeviceSettingsImpl(
      {this.sensitivity = 50,
      this.nightMode = true,
      this.vibration = true,
      this.volume = 3,
      this.depth = 50,
      this.fishIcons = true,
      this.depthAlarm = true,
      this.depthThreshold = 20.0,
      this.unit = 'kg',
      this.autoTare = true,
      this.holdReading = true,
      this.maxRange = 100,
      this.returnToHome = true,
      this.cruisingSpeed = 50,
      this.autoAnchor = true});

  factory _$DeviceSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceSettingsImplFromJson(json);

// Bite Alarm Settings
  @override
  @JsonKey()
  final int sensitivity;
  @override
  @JsonKey()
  final bool nightMode;
  @override
  @JsonKey()
  final bool vibration;
  @override
  @JsonKey()
  final int volume;
// Fish Finder Settings
  @override
  @JsonKey()
  final int depth;
  @override
  @JsonKey()
  final bool fishIcons;
  @override
  @JsonKey()
  final bool depthAlarm;
  @override
  @JsonKey()
  final double depthThreshold;
// Scale Settings
  @override
  @JsonKey()
  final String unit;
  @override
  @JsonKey()
  final bool autoTare;
  @override
  @JsonKey()
  final bool holdReading;
// Bait Boat Settings
  @override
  @JsonKey()
  final int maxRange;
  @override
  @JsonKey()
  final bool returnToHome;
  @override
  @JsonKey()
  final int cruisingSpeed;
  @override
  @JsonKey()
  final bool autoAnchor;

  @override
  String toString() {
    return 'DeviceSettings(sensitivity: $sensitivity, nightMode: $nightMode, vibration: $vibration, volume: $volume, depth: $depth, fishIcons: $fishIcons, depthAlarm: $depthAlarm, depthThreshold: $depthThreshold, unit: $unit, autoTare: $autoTare, holdReading: $holdReading, maxRange: $maxRange, returnToHome: $returnToHome, cruisingSpeed: $cruisingSpeed, autoAnchor: $autoAnchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceSettingsImpl &&
            (identical(other.sensitivity, sensitivity) ||
                other.sensitivity == sensitivity) &&
            (identical(other.nightMode, nightMode) ||
                other.nightMode == nightMode) &&
            (identical(other.vibration, vibration) ||
                other.vibration == vibration) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.fishIcons, fishIcons) ||
                other.fishIcons == fishIcons) &&
            (identical(other.depthAlarm, depthAlarm) ||
                other.depthAlarm == depthAlarm) &&
            (identical(other.depthThreshold, depthThreshold) ||
                other.depthThreshold == depthThreshold) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.autoTare, autoTare) ||
                other.autoTare == autoTare) &&
            (identical(other.holdReading, holdReading) ||
                other.holdReading == holdReading) &&
            (identical(other.maxRange, maxRange) ||
                other.maxRange == maxRange) &&
            (identical(other.returnToHome, returnToHome) ||
                other.returnToHome == returnToHome) &&
            (identical(other.cruisingSpeed, cruisingSpeed) ||
                other.cruisingSpeed == cruisingSpeed) &&
            (identical(other.autoAnchor, autoAnchor) ||
                other.autoAnchor == autoAnchor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sensitivity,
      nightMode,
      vibration,
      volume,
      depth,
      fishIcons,
      depthAlarm,
      depthThreshold,
      unit,
      autoTare,
      holdReading,
      maxRange,
      returnToHome,
      cruisingSpeed,
      autoAnchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceSettingsImplCopyWith<_$DeviceSettingsImpl> get copyWith =>
      __$$DeviceSettingsImplCopyWithImpl<_$DeviceSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceSettingsImplToJson(
      this,
    );
  }
}

abstract class _DeviceSettings implements DeviceSettings {
  const factory _DeviceSettings(
      {final int sensitivity,
      final bool nightMode,
      final bool vibration,
      final int volume,
      final int depth,
      final bool fishIcons,
      final bool depthAlarm,
      final double depthThreshold,
      final String unit,
      final bool autoTare,
      final bool holdReading,
      final int maxRange,
      final bool returnToHome,
      final int cruisingSpeed,
      final bool autoAnchor}) = _$DeviceSettingsImpl;

  factory _DeviceSettings.fromJson(Map<String, dynamic> json) =
      _$DeviceSettingsImpl.fromJson;

  @override // Bite Alarm Settings
  int get sensitivity;
  @override
  bool get nightMode;
  @override
  bool get vibration;
  @override
  int get volume;
  @override // Fish Finder Settings
  int get depth;
  @override
  bool get fishIcons;
  @override
  bool get depthAlarm;
  @override
  double get depthThreshold;
  @override // Scale Settings
  String get unit;
  @override
  bool get autoTare;
  @override
  bool get holdReading;
  @override // Bait Boat Settings
  int get maxRange;
  @override
  bool get returnToHome;
  @override
  int get cruisingSpeed;
  @override
  bool get autoAnchor;
  @override
  @JsonKey(ignore: true)
  _$$DeviceSettingsImplCopyWith<_$DeviceSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
