import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../shared/converters/json_converters.dart';

part 'catch.g.dart';

@JsonSerializable()
class Catch {
  final String id;
  final String userId;
  final String species;
  final double? weight;
  final double? length;
  final DateTime timestamp;
  final String? notes;
  final List<String> photoUrls;
  @GeoPointConverter() final GeoPoint? location;
  final String? spotId;
  final Weather? weather;
  final List<String> tags;
  final bool isPrivate;

  Catch({
    required this.id,
    required this.userId,
    required this.species,
    this.weight,
    this.length,
    required this.timestamp,
    this.notes,
    required this.photoUrls,
    this.location,
    this.spotId,
    this.weather,
    required this.tags,
    this.isPrivate = false,
  });

  factory Catch.fromJson(Map<String, dynamic> json) => _$CatchFromJson(json);
  Map<String, dynamic> toJson() => _$CatchToJson(this);

  Catch copyWith({
    String? id,
    String? userId,
    String? species,
    double? weight,
    double? length,
    DateTime? timestamp,
    String? notes,
    List<String>? photoUrls,
    GeoPoint? location,
    String? spotId,
    Weather? weather,
    List<String>? tags,
    bool? isPrivate,
  }) {
    return Catch(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      species: species ?? this.species,
      weight: weight ?? this.weight,
      length: length ?? this.length,
      timestamp: timestamp ?? this.timestamp,
      notes: notes ?? this.notes,
      photoUrls: photoUrls ?? this.photoUrls,
      location: location ?? this.location,
      spotId: spotId ?? this.spotId,
      weather: weather ?? this.weather,
      tags: tags ?? this.tags,
      isPrivate: isPrivate ?? this.isPrivate,
    );
  }
}

@JsonSerializable()
class Weather {
  final double temperature;
  final String conditions;
  final double? windSpeed;
  final String? windDirection;
  final double? pressure;
  final double? humidity;

  Weather({
    required this.temperature,
    required this.conditions,
    this.windSpeed,
    this.windDirection,
    this.pressure,
    this.humidity,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
