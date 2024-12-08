// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fish_measurement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FishMeasurementImpl _$$FishMeasurementImplFromJson(
        Map<String, dynamic> json) =>
    _$FishMeasurementImpl(
      length: (json['length'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      confidence: (json['confidence'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      species: json['species'] as String?,
      imageUrl: json['imageUrl'] as String?,
      modelUrl: json['modelUrl'] as String?,
      additionalMeasurements:
          (json['additionalMeasurements'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$FishMeasurementImplToJson(
        _$FishMeasurementImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
      'confidence': instance.confidence,
      'timestamp': instance.timestamp.toIso8601String(),
      'species': instance.species,
      'imageUrl': instance.imageUrl,
      'modelUrl': instance.modelUrl,
      'additionalMeasurements': instance.additionalMeasurements,
    };
