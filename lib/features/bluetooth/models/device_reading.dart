import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_reading.freezed.dart';
part 'device_reading.g.dart';

enum ReadingType {
  bite,
  depth,
  temperature,
  battery,
  location,
  weight,
  environmental,
}

@freezed
class DeviceReading with _$DeviceReading {
  const factory DeviceReading({
    required String deviceId,
    required ReadingType type,
    required double value,
    required DateTime timestamp,
    Map<String, dynamic>? metadata,
  }) = _DeviceReading;

  factory DeviceReading.fromJson(Map<String, dynamic> json) =>
      _$DeviceReadingFromJson(json);
}

@freezed
class BiteReading with _$BiteReading {
  const factory BiteReading({
    required String deviceId,
    required DateTime timestamp,
    required double intensity,
    required Duration duration,
    required bool isRun,
    String? direction,
  }) = _BiteReading;

  factory BiteReading.fromJson(Map<String, dynamic> json) =>
      _$BiteReadingFromJson(json);
}

@freezed
class LocationReading with _$LocationReading {
  const factory LocationReading({
    required String deviceId,
    required DateTime timestamp,
    required double latitude,
    required double longitude,
    double? speed,
    double? heading,
    double? accuracy,
  }) = _LocationReading;

  factory LocationReading.fromJson(Map<String, dynamic> json) =>
      _$LocationReadingFromJson(json);
}

@freezed
class DepthReading with _$DepthReading {
  const factory DepthReading({
    required String deviceId,
    required DateTime timestamp,
    required double depth,
    required double temperature,
    List<Fish>? detectedFish,
    Map<String, double>? structureData,
  }) = _DepthReading;

  factory DepthReading.fromJson(Map<String, dynamic> json) =>
      _$DepthReadingFromJson(json);
}

@freezed
class Fish with _$Fish {
  const factory Fish({
    required double depth,
    required double size,
    required double confidence,
    String? species,
  }) = _Fish;

  factory Fish.fromJson(Map<String, dynamic> json) => _$FishFromJson(json);
}

@freezed
class WeightReading with _$WeightReading {
  const factory WeightReading({
    required String deviceId,
    required DateTime timestamp,
    required double weight,
    required String unit,
    bool? isStable,
    double? temperature,
  }) = _WeightReading;

  factory WeightReading.fromJson(Map<String, dynamic> json) =>
      _$WeightReadingFromJson(json);
}
