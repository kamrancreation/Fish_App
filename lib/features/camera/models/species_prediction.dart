import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_prediction.freezed.dart';
part 'species_prediction.g.dart';

@freezed
class SpeciesPrediction with _$SpeciesPrediction {
  const factory SpeciesPrediction({
    required String name,
    required double confidence,
    required PredictionType type,
    BoundingBox? boundingBox,
    @Default({}) Map<String, dynamic> metadata,
  }) = _SpeciesPrediction;

  factory SpeciesPrediction.fromJson(Map<String, dynamic> json) =>
      _$SpeciesPredictionFromJson(json);
}

@freezed
class BoundingBox with _$BoundingBox {
  const factory BoundingBox({
    required double left,
    required double top,
    required double width,
    required double height,
  }) = _BoundingBox;

  factory BoundingBox.fromJson(Map<String, dynamic> json) =>
      _$BoundingBoxFromJson(json);
}

enum PredictionType {
  object,
  label;

  bool get isObject => this == PredictionType.object;
  bool get isLabel => this == PredictionType.label;
}
