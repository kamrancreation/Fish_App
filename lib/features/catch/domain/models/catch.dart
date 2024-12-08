import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../shared/converters/json_converters.dart';

part 'catch.freezed.dart';
part 'catch.g.dart';

@freezed
class CatchData with _$CatchData {
  const factory CatchData({
    String? id,
    required String species,
    required double weight,
    required double length,
    required String spotId,
    @Default('') String notes,
    required String weather,
    required double temperature,
    required DateTime timestamp,
    @LatLngConverter() required LatLng location,
    @Default([]) List<String> photos,
    @Default({}) Map<String, dynamic> metadata,
  }) = _CatchData;

  factory CatchData.fromJson(Map<String, dynamic> json) => _$CatchDataFromJson(json);
}
