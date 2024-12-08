import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vector_math/vector_math.dart';
import '../../shared/converters/json_converters.dart';

part 'ar_marker.freezed.dart';
part 'ar_marker.g.dart';

enum MarkerType {
  fishingSpot,
  castingPoint,
  hazard,
  technique,
  equipment,
  custom
}

@freezed
class ARMarker with _$ARMarker {
  const factory ARMarker({
    required String id,
    required String type,
    @Vector3Converter() required Vector3 position,
    required double scale,
    String? description,
    Map<String, dynamic>? metadata,
  }) = _ARMarker;

  factory ARMarker.fromJson(Map<String, dynamic> json) => _$ARMarkerFromJson(json);
}
