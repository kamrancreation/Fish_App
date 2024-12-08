import 'package:freezed_annotation/freezed_annotation.dart';

part 'fishing_device.freezed.dart';
part 'fishing_device.g.dart';

enum DeviceType {
  biteAlarm,
  fishFinder,
  scale,
  baitBoat,
  unknown,
}

@freezed
class FishingDevice with _$FishingDevice {
  const factory FishingDevice({
    required String id,
    required String name,
    required DeviceType type,
    required DateTime lastConnected,
    @Default({}) Map<String, dynamic> settings,
    @Default(false) bool isConnected,
    String? firmwareVersion,
    int? batteryLevel,
    int? signalStrength,
  }) = _FishingDevice;

  factory FishingDevice.fromJson(Map<String, dynamic> json) =>
      _$FishingDeviceFromJson(json);
}

@freezed
class DeviceSettings with _$DeviceSettings {
  const factory DeviceSettings({
    // Bite Alarm Settings
    @Default(50) int sensitivity,
    @Default(true) bool nightMode,
    @Default(true) bool vibration,
    @Default(3) int volume,
    
    // Fish Finder Settings
    @Default(50) int depth,
    @Default(true) bool fishIcons,
    @Default(true) bool depthAlarm,
    @Default(20.0) double depthThreshold,
    
    // Scale Settings
    @Default('kg') String unit,
    @Default(true) bool autoTare,
    @Default(true) bool holdReading,
    
    // Bait Boat Settings
    @Default(100) int maxRange,
    @Default(true) bool returnToHome,
    @Default(50) int cruisingSpeed,
    @Default(true) bool autoAnchor,
  }) = _DeviceSettings;

  factory DeviceSettings.fromJson(Map<String, dynamic> json) =>
      _$DeviceSettingsFromJson(json);
}
