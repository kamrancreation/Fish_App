// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatchDataImpl _$$CatchDataImplFromJson(Map<String, dynamic> json) =>
    _$CatchDataImpl(
      id: json['id'] as String?,
      species: json['species'] as String,
      weight: (json['weight'] as num).toDouble(),
      length: (json['length'] as num).toDouble(),
      spotId: json['spotId'] as String,
      notes: json['notes'] as String? ?? '',
      weather: json['weather'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      location: const LatLngConverter()
          .fromJson(json['location'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$CatchDataImplToJson(_$CatchDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'species': instance.species,
      'weight': instance.weight,
      'length': instance.length,
      'spotId': instance.spotId,
      'notes': instance.notes,
      'weather': instance.weather,
      'temperature': instance.temperature,
      'timestamp': instance.timestamp.toIso8601String(),
      'location': const LatLngConverter().toJson(instance.location),
      'photos': instance.photos,
      'metadata': instance.metadata,
    };
