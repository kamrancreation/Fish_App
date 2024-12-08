// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iot_expansion_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvancedDeviceImpl _$$AdvancedDeviceImplFromJson(Map<String, dynamic> json) =>
    _$AdvancedDeviceImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      protocol: json['protocol'] as String,
      capabilities: json['capabilities'] as Map<String, dynamic>,
      configuration: json['configuration'] as Map<String, dynamic>,
      isActive: json['isActive'] as bool,
      lastSync: DateTime.parse(json['lastSync'] as String),
    );

Map<String, dynamic> _$$AdvancedDeviceImplToJson(
        _$AdvancedDeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'protocol': instance.protocol,
      'capabilities': instance.capabilities,
      'configuration': instance.configuration,
      'isActive': instance.isActive,
      'lastSync': instance.lastSync.toIso8601String(),
    };

_$SensorIntegrationImpl _$$SensorIntegrationImplFromJson(
        Map<String, dynamic> json) =>
    _$SensorIntegrationImpl(
      id: json['id'] as String,
      deviceId: json['deviceId'] as String,
      sensorType: json['sensorType'] as String,
      readings: json['readings'] as Map<String, dynamic>,
      calibration: json['calibration'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isCalibrated: json['isCalibrated'] as bool,
    );

Map<String, dynamic> _$$SensorIntegrationImplToJson(
        _$SensorIntegrationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'sensorType': instance.sensorType,
      'readings': instance.readings,
      'calibration': instance.calibration,
      'timestamp': instance.timestamp.toIso8601String(),
      'isCalibrated': instance.isCalibrated,
    };

_$AutomatedLogImpl _$$AutomatedLogImplFromJson(Map<String, dynamic> json) =>
    _$AutomatedLogImpl(
      id: json['id'] as String,
      deviceId: json['deviceId'] as String,
      logType: json['logType'] as String,
      data: json['data'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      metadata: json['metadata'] as Map<String, dynamic>,
      isVerified: json['isVerified'] as bool,
    );

Map<String, dynamic> _$$AutomatedLogImplToJson(_$AutomatedLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'logType': instance.logType,
      'data': instance.data,
      'timestamp': instance.timestamp.toIso8601String(),
      'metadata': instance.metadata,
      'isVerified': instance.isVerified,
    };

_$EnvironmentalMonitorImpl _$$EnvironmentalMonitorImplFromJson(
        Map<String, dynamic> json) =>
    _$EnvironmentalMonitorImpl(
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      conditions: json['conditions'] as Map<String, dynamic>,
      thresholds: json['thresholds'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      alerts:
          (json['alerts'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$EnvironmentalMonitorImplToJson(
        _$EnvironmentalMonitorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'conditions': instance.conditions,
      'thresholds': instance.thresholds,
      'timestamp': instance.timestamp.toIso8601String(),
      'alerts': instance.alerts,
    };

_$EquipmentTrackerImpl _$$EquipmentTrackerImplFromJson(
        Map<String, dynamic> json) =>
    _$EquipmentTrackerImpl(
      id: json['id'] as String,
      equipmentId: json['equipmentId'] as String,
      type: json['type'] as String,
      status: json['status'] as Map<String, dynamic>,
      maintenance: json['maintenance'] as Map<String, dynamic>,
      lastChecked: DateTime.parse(json['lastChecked'] as String),
      alerts:
          (json['alerts'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$EquipmentTrackerImplToJson(
        _$EquipmentTrackerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipmentId': instance.equipmentId,
      'type': instance.type,
      'status': instance.status,
      'maintenance': instance.maintenance,
      'lastChecked': instance.lastChecked.toIso8601String(),
      'alerts': instance.alerts,
    };

_$SmartAlertImpl _$$SmartAlertImplFromJson(Map<String, dynamic> json) =>
    _$SmartAlertImpl(
      id: json['id'] as String,
      sourceId: json['sourceId'] as String,
      alertType: json['alertType'] as String,
      severity: json['severity'] as String,
      data: json['data'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isAcknowledged: json['isAcknowledged'] as bool,
    );

Map<String, dynamic> _$$SmartAlertImplToJson(_$SmartAlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceId': instance.sourceId,
      'alertType': instance.alertType,
      'severity': instance.severity,
      'data': instance.data,
      'timestamp': instance.timestamp.toIso8601String(),
      'isAcknowledged': instance.isAcknowledged,
    };
