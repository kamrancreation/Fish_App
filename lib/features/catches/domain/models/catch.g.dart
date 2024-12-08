// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Catch _$CatchFromJson(Map<String, dynamic> json) => Catch(
      id: json['id'] as String,
      userId: json['userId'] as String,
      species: json['species'] as String,
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      notes: json['notes'] as String?,
      photoUrls:
          (json['photoUrls'] as List<dynamic>).map((e) => e as String).toList(),
      location: _$JsonConverterFromJson<Map<String, dynamic>, GeoPoint>(
          json['location'], const GeoPointConverter().fromJson),
      spotId: json['spotId'] as String?,
      weather: json['weather'] == null
          ? null
          : Weather.fromJson(json['weather'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isPrivate: json['isPrivate'] as bool? ?? false,
    );

Map<String, dynamic> _$CatchToJson(Catch instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'species': instance.species,
      'weight': instance.weight,
      'length': instance.length,
      'timestamp': instance.timestamp.toIso8601String(),
      'notes': instance.notes,
      'photoUrls': instance.photoUrls,
      'location': _$JsonConverterToJson<Map<String, dynamic>, GeoPoint>(
          instance.location, const GeoPointConverter().toJson),
      'spotId': instance.spotId,
      'weather': instance.weather,
      'tags': instance.tags,
      'isPrivate': instance.isPrivate,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      temperature: (json['temperature'] as num).toDouble(),
      conditions: json['conditions'] as String,
      windSpeed: (json['windSpeed'] as num?)?.toDouble(),
      windDirection: json['windDirection'] as String?,
      pressure: (json['pressure'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'temperature': instance.temperature,
      'conditions': instance.conditions,
      'windSpeed': instance.windSpeed,
      'windDirection': instance.windDirection,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
