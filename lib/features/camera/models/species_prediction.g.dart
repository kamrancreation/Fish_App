// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesPredictionImpl _$$SpeciesPredictionImplFromJson(
        Map<String, dynamic> json) =>
    _$SpeciesPredictionImpl(
      name: json['name'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      type: $enumDecode(_$PredictionTypeEnumMap, json['type']),
      boundingBox: json['boundingBox'] == null
          ? null
          : BoundingBox.fromJson(json['boundingBox'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$SpeciesPredictionImplToJson(
        _$SpeciesPredictionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'confidence': instance.confidence,
      'type': _$PredictionTypeEnumMap[instance.type]!,
      'boundingBox': instance.boundingBox,
      'metadata': instance.metadata,
    };

const _$PredictionTypeEnumMap = {
  PredictionType.object: 'object',
  PredictionType.label: 'label',
};

_$BoundingBoxImpl _$$BoundingBoxImplFromJson(Map<String, dynamic> json) =>
    _$BoundingBoxImpl(
      left: (json['left'] as num).toDouble(),
      top: (json['top'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
    );

Map<String, dynamic> _$$BoundingBoxImplToJson(_$BoundingBoxImpl instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'width': instance.width,
      'height': instance.height,
    };
