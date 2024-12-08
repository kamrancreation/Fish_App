// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fishing_spot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FishingSpotImpl _$$FishingSpotImplFromJson(Map<String, dynamic> json) =>
    _$FishingSpotImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      location: const LatLngConverter()
          .fromJson(json['location'] as Map<String, dynamic>),
      type: json['type'] as String,
      species:
          (json['species'] as List<dynamic>).map((e) => e as String).toList(),
      rating: (json['rating'] as num).toDouble(),
      description: json['description'] as String?,
      features: json['features'] as Map<String, dynamic>?,
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$FishingSpotImplToJson(_$FishingSpotImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': const LatLngConverter().toJson(instance.location),
      'type': instance.type,
      'species': instance.species,
      'rating': instance.rating,
      'description': instance.description,
      'features': instance.features,
      'photos': instance.photos,
      'metadata': instance.metadata,
    };
