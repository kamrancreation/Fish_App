// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fish_species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FishSpeciesImpl _$$FishSpeciesImplFromJson(Map<String, dynamic> json) =>
    _$FishSpeciesImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      scientificName: json['scientificName'] as String,
      description: json['description'] as String,
      habitat: json['habitat'] as String,
      imageUrl: json['imageUrl'] as String,
      isFreshwater: json['isFreshwater'] as bool,
      isSaltwater: json['isSaltwater'] as bool,
      averageWeight: (json['averageWeight'] as num).toDouble(),
      maxWeight: (json['maxWeight'] as num).toDouble(),
      averageLength: (json['averageLength'] as num).toDouble(),
      maxLength: (json['maxLength'] as num).toDouble(),
      seasonalPatterns: json['seasonalPatterns'] as Map<String, dynamic>,
      commonLocations: (json['commonLocations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      bestBaits:
          (json['bestBaits'] as List<dynamic>).map((e) => e as String).toList(),
      techniques: (json['techniques'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      regulations: json['regulations'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$FishSpeciesImplToJson(_$FishSpeciesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'scientificName': instance.scientificName,
      'description': instance.description,
      'habitat': instance.habitat,
      'imageUrl': instance.imageUrl,
      'isFreshwater': instance.isFreshwater,
      'isSaltwater': instance.isSaltwater,
      'averageWeight': instance.averageWeight,
      'maxWeight': instance.maxWeight,
      'averageLength': instance.averageLength,
      'maxLength': instance.maxLength,
      'seasonalPatterns': instance.seasonalPatterns,
      'commonLocations': instance.commonLocations,
      'bestBaits': instance.bestBaits,
      'techniques': instance.techniques,
      'regulations': instance.regulations,
    };
