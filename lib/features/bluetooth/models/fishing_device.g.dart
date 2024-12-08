// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fishing_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FishingDeviceImpl _$$FishingDeviceImplFromJson(Map<String, dynamic> json) =>
    _$FishingDeviceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$DeviceTypeEnumMap, json['type']),
      lastConnected: DateTime.parse(json['lastConnected'] as String),
      settings: json['settings'] as Map<String, dynamic>? ?? const {},
      isConnected: json['isConnected'] as bool? ?? false,
      firmwareVersion: json['firmwareVersion'] as String?,
      batteryLevel: (json['batteryLevel'] as num?)?.toInt(),
      signalStrength: (json['signalStrength'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FishingDeviceImplToJson(_$FishingDeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$DeviceTypeEnumMap[instance.type]!,
      'lastConnected': instance.lastConnected.toIso8601String(),
      'settings': instance.settings,
      'isConnected': instance.isConnected,
      'firmwareVersion': instance.firmwareVersion,
      'batteryLevel': instance.batteryLevel,
      'signalStrength': instance.signalStrength,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.biteAlarm: 'biteAlarm',
  DeviceType.fishFinder: 'fishFinder',
  DeviceType.scale: 'scale',
  DeviceType.baitBoat: 'baitBoat',
  DeviceType.unknown: 'unknown',
};

_$DeviceSettingsImpl _$$DeviceSettingsImplFromJson(Map<String, dynamic> json) =>
    _$DeviceSettingsImpl(
      sensitivity: (json['sensitivity'] as num?)?.toInt() ?? 50,
      nightMode: json['nightMode'] as bool? ?? true,
      vibration: json['vibration'] as bool? ?? true,
      volume: (json['volume'] as num?)?.toInt() ?? 3,
      depth: (json['depth'] as num?)?.toInt() ?? 50,
      fishIcons: json['fishIcons'] as bool? ?? true,
      depthAlarm: json['depthAlarm'] as bool? ?? true,
      depthThreshold: (json['depthThreshold'] as num?)?.toDouble() ?? 20.0,
      unit: json['unit'] as String? ?? 'kg',
      autoTare: json['autoTare'] as bool? ?? true,
      holdReading: json['holdReading'] as bool? ?? true,
      maxRange: (json['maxRange'] as num?)?.toInt() ?? 100,
      returnToHome: json['returnToHome'] as bool? ?? true,
      cruisingSpeed: (json['cruisingSpeed'] as num?)?.toInt() ?? 50,
      autoAnchor: json['autoAnchor'] as bool? ?? true,
    );

Map<String, dynamic> _$$DeviceSettingsImplToJson(
        _$DeviceSettingsImpl instance) =>
    <String, dynamic>{
      'sensitivity': instance.sensitivity,
      'nightMode': instance.nightMode,
      'vibration': instance.vibration,
      'volume': instance.volume,
      'depth': instance.depth,
      'fishIcons': instance.fishIcons,
      'depthAlarm': instance.depthAlarm,
      'depthThreshold': instance.depthThreshold,
      'unit': instance.unit,
      'autoTare': instance.autoTare,
      'holdReading': instance.holdReading,
      'maxRange': instance.maxRange,
      'returnToHome': instance.returnToHome,
      'cruisingSpeed': instance.cruisingSpeed,
      'autoAnchor': instance.autoAnchor,
    };
