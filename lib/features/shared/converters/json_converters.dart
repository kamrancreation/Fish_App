import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vector_math/vector_math.dart';

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

class GeoPointConverter implements JsonConverter<GeoPoint, Map<String, dynamic>> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(Map<String, dynamic> json) {
    return GeoPoint(
      json['latitude'] as double,
      json['longitude'] as double,
    );
  }

  @override
  Map<String, dynamic> toJson(GeoPoint point) {
    return {
      'latitude': point.latitude,
      'longitude': point.longitude,
    };
  }
}

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
  Map<String, dynamic> toJson(LatLng point) {
    return {
      'latitude': point.latitude,
      'longitude': point.longitude,
    };
  }
}
