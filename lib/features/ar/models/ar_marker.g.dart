// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ar_marker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ARMarkerImpl _$$ARMarkerImplFromJson(Map<String, dynamic> json) =>
    _$ARMarkerImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      position: const Vector3Converter()
          .fromJson(json['position'] as Map<String, dynamic>),
      scale: (json['scale'] as num).toDouble(),
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ARMarkerImplToJson(_$ARMarkerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'position': const Vector3Converter().toJson(instance.position),
      'scale': instance.scale,
      'description': instance.description,
      'metadata': instance.metadata,
    };
