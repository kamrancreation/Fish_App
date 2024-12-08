import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vector_math/vector_math.dart';

class LatLngConverter implements JsonConverter<LatLng, Map<String, dynamic>> {
  const LatLngConverter();

  @override
  LatLng fromJson(Map<String, dynamic> json) {
    return LatLng(
      json['latitude'] as double,
      json['longitude'] as double,
    );
  }

  @override
  Map<String, dynamic> toJson(LatLng latLng) {
    return {
      'latitude': latLng.latitude,
      'longitude': latLng.longitude,
    };
  }
}

class Vector3Converter implements JsonConverter<Vector3, Map<String, dynamic>> {
  const Vector3Converter();

  @override
  Vector3 fromJson(Map<String, dynamic> json) {
    return Vector3(
      json['x'] as double,
      json['y'] as double,
      json['z'] as double,
    );
  }

  @override
  Map<String, dynamic> toJson(Vector3 vector) {
    return {
      'x': vector.x,
      'y': vector.y,
      'z': vector.z,
    };
  }
}
