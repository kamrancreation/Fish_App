// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_reading.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceReadingImpl _$$DeviceReadingImplFromJson(Map<String, dynamic> json) =>
    _$DeviceReadingImpl(
      deviceId: json['deviceId'] as String,
      type: $enumDecode(_$ReadingTypeEnumMap, json['type']),
      value: (json['value'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DeviceReadingImplToJson(_$DeviceReadingImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'type': _$ReadingTypeEnumMap[instance.type]!,
      'value': instance.value,
      'timestamp': instance.timestamp.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$ReadingTypeEnumMap = {
  ReadingType.bite: 'bite',
  ReadingType.depth: 'depth',
  ReadingType.temperature: 'temperature',
  ReadingType.battery: 'battery',
  ReadingType.location: 'location',
  ReadingType.weight: 'weight',
  ReadingType.environmental: 'environmental',
};

_$BiteReadingImpl _$$BiteReadingImplFromJson(Map<String, dynamic> json) =>
    _$BiteReadingImpl(
      deviceId: json['deviceId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      intensity: (json['intensity'] as num).toDouble(),
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
      isRun: json['isRun'] as bool,
      direction: json['direction'] as String?,
    );

Map<String, dynamic> _$$BiteReadingImplToJson(_$BiteReadingImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'timestamp': instance.timestamp.toIso8601String(),
      'intensity': instance.intensity,
      'duration': instance.duration.inMicroseconds,
      'isRun': instance.isRun,
      'direction': instance.direction,
    };

_$LocationReadingImpl _$$LocationReadingImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationReadingImpl(
      deviceId: json['deviceId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      speed: (json['speed'] as num?)?.toDouble(),
      heading: (json['heading'] as num?)?.toDouble(),
      accuracy: (json['accuracy'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationReadingImplToJson(
        _$LocationReadingImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'timestamp': instance.timestamp.toIso8601String(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'speed': instance.speed,
      'heading': instance.heading,
      'accuracy': instance.accuracy,
    };

_$DepthReadingImpl _$$DepthReadingImplFromJson(Map<String, dynamic> json) =>
    _$DepthReadingImpl(
      deviceId: json['deviceId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      depth: (json['depth'] as num).toDouble(),
      temperature: (json['temperature'] as num).toDouble(),
      detectedFish: (json['detectedFish'] as List<dynamic>?)
          ?.map((e) => Fish.fromJson(e as Map<String, dynamic>))
          .toList(),
      structureData: (json['structureData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$DepthReadingImplToJson(_$DepthReadingImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'timestamp': instance.timestamp.toIso8601String(),
      'depth': instance.depth,
      'temperature': instance.temperature,
      'detectedFish': instance.detectedFish,
      'structureData': instance.structureData,
    };

_$FishImpl _$$FishImplFromJson(Map<String, dynamic> json) => _$FishImpl(
      depth: (json['depth'] as num).toDouble(),
      size: (json['size'] as num).toDouble(),
      confidence: (json['confidence'] as num).toDouble(),
      species: json['species'] as String?,
    );

Map<String, dynamic> _$$FishImplToJson(_$FishImpl instance) =>
    <String, dynamic>{
      'depth': instance.depth,
      'size': instance.size,
      'confidence': instance.confidence,
      'species': instance.species,
    };

_$WeightReadingImpl _$$WeightReadingImplFromJson(Map<String, dynamic> json) =>
    _$WeightReadingImpl(
      deviceId: json['deviceId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      weight: (json['weight'] as num).toDouble(),
      unit: json['unit'] as String,
      isStable: json['isStable'] as bool?,
      temperature: (json['temperature'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeightReadingImplToJson(_$WeightReadingImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'timestamp': instance.timestamp.toIso8601String(),
      'weight': instance.weight,
      'unit': instance.unit,
      'isStable': instance.isStable,
      'temperature': instance.temperature,
    };
