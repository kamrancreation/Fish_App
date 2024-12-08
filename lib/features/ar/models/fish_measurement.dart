import 'package:freezed_annotation/freezed_annotation.dart';

part 'fish_measurement.freezed.dart';
part 'fish_measurement.g.dart';

@freezed
class FishMeasurement with _$FishMeasurement {
  const factory FishMeasurement({
    required double length,
    required double width,
    required double height,
    required double confidence,
    required DateTime timestamp,
    String? species,
    String? imageUrl,
    String? modelUrl,
    Map<String, double>? additionalMeasurements,
  }) = _FishMeasurement;

  factory FishMeasurement.fromJson(Map<String, dynamic> json) =>
      _$FishMeasurementFromJson(json);
}
