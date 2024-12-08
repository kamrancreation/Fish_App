import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../shared/converters/json_converters.dart';

part 'fishing_spot.freezed.dart';
part 'fishing_spot.g.dart';

@freezed
class FishingSpot with _$FishingSpot {
  const factory FishingSpot({
    required String id,
    required String name,
    @LatLngConverter() required LatLng location,
    required String type,
    required List<String> species,
    required double rating,
    String? description,
    Map<String, dynamic>? features,
    List<String>? photos,
    Map<String, dynamic>? metadata,
  }) = _FishingSpot;

  factory FishingSpot.fromJson(Map<String, dynamic> json) => _$FishingSpotFromJson(json);
}
