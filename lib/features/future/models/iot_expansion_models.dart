import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'iot_expansion_models.freezed.dart';
part 'iot_expansion_models.g.dart';

@freezed
class AdvancedDevice with _$AdvancedDevice {
  const factory AdvancedDevice({
    required String id,
    required String type,
    required String name,
    required String protocol,
    required Map<String, dynamic> capabilities,
    required Map<String, dynamic> configuration,
    required bool isActive,
    required DateTime lastSync,
  }) = _AdvancedDevice;

  factory AdvancedDevice.fromJson(Map<String, dynamic> json) =>
      _$AdvancedDeviceFromJson(json);
}

@freezed
class SensorIntegration with _$SensorIntegration {
  const factory SensorIntegration({
    required String id,
    required String deviceId,
    required String sensorType,
    required Map<String, dynamic> readings,
    required Map<String, dynamic> calibration,
    required DateTime timestamp,
    required bool isCalibrated,
  }) = _SensorIntegration;

  factory SensorIntegration.fromJson(Map<String, dynamic> json) =>
      _$SensorIntegrationFromJson(json);
}

@freezed
class AutomatedLog with _$AutomatedLog {
  const factory AutomatedLog({
    required String id,
    required String deviceId,
    required String logType,
    required Map<String, dynamic> data,
    required DateTime timestamp,
    required Map<String, dynamic> metadata,
    required bool isVerified,
  }) = _AutomatedLog;

  factory AutomatedLog.fromJson(Map<String, dynamic> json) =>
      _$AutomatedLogFromJson(json);
}

@freezed
class EnvironmentalMonitor with _$EnvironmentalMonitor {
  const factory EnvironmentalMonitor({
    required String id,
    required String locationId,
    required Map<String, dynamic> conditions,
    required Map<String, dynamic> thresholds,
    required DateTime timestamp,
    required List<String> alerts,
  }) = _EnvironmentalMonitor;

  factory EnvironmentalMonitor.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentalMonitorFromJson(json);
}

@freezed
class EquipmentTracker with _$EquipmentTracker {
  const factory EquipmentTracker({
    required String id,
    required String equipmentId,
    required String type,
    required Map<String, dynamic> status,
    required Map<String, dynamic> maintenance,
    required DateTime lastChecked,
    required List<String> alerts,
  }) = _EquipmentTracker;

  factory EquipmentTracker.fromJson(Map<String, dynamic> json) =>
      _$EquipmentTrackerFromJson(json);
}

@freezed
class SmartAlert with _$SmartAlert {
  const factory SmartAlert({
    required String id,
    required String sourceId,
    required String alertType,
    required String severity,
    required Map<String, dynamic> data,
    required DateTime timestamp,
    required bool isAcknowledged,
  }) = _SmartAlert;

  factory SmartAlert.fromJson(Map<String, dynamic> json) =>
      _$SmartAlertFromJson(json);
}
