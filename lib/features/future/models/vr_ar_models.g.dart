// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vr_ar_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VirtualTutorialImpl _$$VirtualTutorialImplFromJson(
        Map<String, dynamic> json) =>
    _$VirtualTutorialImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      modelUrl: json['modelUrl'] as String,
      steps: (json['steps'] as List<dynamic>).map((e) => e as String).toList(),
      interactions: json['interactions'] as Map<String, dynamic>,
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$VirtualTutorialImplToJson(
        _$VirtualTutorialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'modelUrl': instance.modelUrl,
      'steps': instance.steps,
      'interactions': instance.interactions,
      'metadata': instance.metadata,
    };

_$FishModel3DImpl _$$FishModel3DImplFromJson(Map<String, dynamic> json) =>
    _$FishModel3DImpl(
      id: json['id'] as String,
      speciesId: json['speciesId'] as String,
      modelUrl: json['modelUrl'] as String,
      textureUrl: json['textureUrl'] as String,
      animations: json['animations'] as Map<String, dynamic>,
      metadata: json['metadata'] as Map<String, dynamic>,
      isAnimated: json['isAnimated'] as bool,
    );

Map<String, dynamic> _$$FishModel3DImplToJson(_$FishModel3DImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'speciesId': instance.speciesId,
      'modelUrl': instance.modelUrl,
      'textureUrl': instance.textureUrl,
      'animations': instance.animations,
      'metadata': instance.metadata,
      'isAnimated': instance.isAnimated,
    };

_$InteractiveGuideImpl _$$InteractiveGuideImplFromJson(
        Map<String, dynamic> json) =>
    _$InteractiveGuideImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => GuideStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      resources: json['resources'] as Map<String, dynamic>,
      interactions: json['interactions'] as Map<String, dynamic>,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$InteractiveGuideImplToJson(
        _$InteractiveGuideImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'steps': instance.steps,
      'resources': instance.resources,
      'interactions': instance.interactions,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

_$GuideStepImpl _$$GuideStepImplFromJson(Map<String, dynamic> json) =>
    _$GuideStepImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      mediaUrl: json['mediaUrl'] as String,
      mediaType: json['mediaType'] as String,
      interactions: json['interactions'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$GuideStepImplToJson(_$GuideStepImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'mediaUrl': instance.mediaUrl,
      'mediaType': instance.mediaType,
      'interactions': instance.interactions,
    };

_$TrainingSimulationImpl _$$TrainingSimulationImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingSimulationImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      sceneUrl: json['sceneUrl'] as String,
      parameters: json['parameters'] as Map<String, dynamic>,
      objectives: json['objectives'] as Map<String, dynamic>,
      progress: json['progress'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$TrainingSimulationImplToJson(
        _$TrainingSimulationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'sceneUrl': instance.sceneUrl,
      'parameters': instance.parameters,
      'objectives': instance.objectives,
      'progress': instance.progress,
    };

_$SpotVisualizationImpl _$$SpotVisualizationImplFromJson(
        Map<String, dynamic> json) =>
    _$SpotVisualizationImpl(
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      arMarkers: json['arMarkers'] as Map<String, dynamic>,
      overlayData: json['overlayData'] as Map<String, dynamic>,
      hotspots:
          (json['hotspots'] as List<dynamic>).map((e) => e as String).toList(),
      conditions: json['conditions'] as Map<String, dynamic>,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$SpotVisualizationImplToJson(
        _$SpotVisualizationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'arMarkers': instance.arMarkers,
      'overlayData': instance.overlayData,
      'hotspots': instance.hotspots,
      'conditions': instance.conditions,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

_$TechniquePracticeImpl _$$TechniquePracticeImplFromJson(
        Map<String, dynamic> json) =>
    _$TechniquePracticeImpl(
      id: json['id'] as String,
      techniqueId: json['techniqueId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      motions: json['motions'] as Map<String, dynamic>,
      feedback: json['feedback'] as Map<String, dynamic>,
      scoring: json['scoring'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$TechniquePracticeImplToJson(
        _$TechniquePracticeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'techniqueId': instance.techniqueId,
      'title': instance.title,
      'description': instance.description,
      'motions': instance.motions,
      'feedback': instance.feedback,
      'scoring': instance.scoring,
    };
