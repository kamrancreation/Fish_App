// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ar_tutorial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ARTutorialImpl _$$ARTutorialImplFromJson(Map<String, dynamic> json) =>
    _$ARTutorialImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => TutorialStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      markers: (json['markers'] as List<dynamic>)
          .map((e) => ARMarker.fromJson(e as Map<String, dynamic>))
          .toList(),
      animations: (json['animations'] as List<dynamic>)
          .map((e) => Animation.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      difficulty: json['difficulty'] as String?,
      duration: json['duration'] as String?,
      requirements: (json['requirements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ARTutorialImplToJson(_$ARTutorialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'steps': instance.steps,
      'markers': instance.markers,
      'animations': instance.animations,
      'description': instance.description,
      'difficulty': instance.difficulty,
      'duration': instance.duration,
      'requirements': instance.requirements,
      'metadata': instance.metadata,
    };

_$TutorialStepImpl _$$TutorialStepImplFromJson(Map<String, dynamic> json) =>
    _$TutorialStepImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      markers: (json['markers'] as List<dynamic>)
          .map((e) => ARMarker.fromJson(e as Map<String, dynamic>))
          .toList(),
      animations: (json['animations'] as List<dynamic>)
          .map((e) => Animation.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoUrl: json['videoUrl'] as String?,
      audioUrl: json['audioUrl'] as String?,
      tips: (json['tips'] as List<dynamic>?)?.map((e) => e as String).toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TutorialStepImplToJson(_$TutorialStepImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'markers': instance.markers,
      'animations': instance.animations,
      'videoUrl': instance.videoUrl,
      'audioUrl': instance.audioUrl,
      'tips': instance.tips,
      'metadata': instance.metadata,
    };

_$AnimationImpl _$$AnimationImplFromJson(Map<String, dynamic> json) =>
    _$AnimationImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
      keyframes: json['keyframes'] as Map<String, dynamic>,
      target: json['target'] as String?,
      easing: json['easing'] as String?,
      loop: json['loop'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AnimationImplToJson(_$AnimationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'duration': instance.duration.inMicroseconds,
      'keyframes': instance.keyframes,
      'target': instance.target,
      'easing': instance.easing,
      'loop': instance.loop,
      'metadata': instance.metadata,
    };
