import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'vr_ar_models.freezed.dart';
part 'vr_ar_models.g.dart';

@freezed
class VirtualTutorial with _$VirtualTutorial {
  const factory VirtualTutorial({
    required String id,
    required String title,
    required String description,
    required String modelUrl,
    required List<String> steps,
    required Map<String, dynamic> interactions,
    required Map<String, dynamic> metadata,
  }) = _VirtualTutorial;

  factory VirtualTutorial.fromJson(Map<String, dynamic> json) =>
      _$VirtualTutorialFromJson(json);
}

@freezed
class FishModel3D with _$FishModel3D {
  const factory FishModel3D({
    required String id,
    required String speciesId,
    required String modelUrl,
    required String textureUrl,
    required Map<String, dynamic> animations,
    required Map<String, dynamic> metadata,
    required bool isAnimated,
  }) = _FishModel3D;

  factory FishModel3D.fromJson(Map<String, dynamic> json) =>
      _$FishModel3DFromJson(json);
}

@freezed
class InteractiveGuide with _$InteractiveGuide {
  const factory InteractiveGuide({
    required String id,
    required String title,
    required List<GuideStep> steps,
    required Map<String, dynamic> resources,
    required Map<String, dynamic> interactions,
    required DateTime lastUpdated,
  }) = _InteractiveGuide;

  factory InteractiveGuide.fromJson(Map<String, dynamic> json) =>
      _$InteractiveGuideFromJson(json);
}

@freezed
class GuideStep with _$GuideStep {
  const factory GuideStep({
    required String id,
    required String title,
    required String description,
    required String mediaUrl,
    required String mediaType,
    required Map<String, dynamic> interactions,
  }) = _GuideStep;

  factory GuideStep.fromJson(Map<String, dynamic> json) =>
      _$GuideStepFromJson(json);
}

@freezed
class TrainingSimulation with _$TrainingSimulation {
  const factory TrainingSimulation({
    required String id,
    required String title,
    required String description,
    required String sceneUrl,
    required Map<String, dynamic> parameters,
    required Map<String, dynamic> objectives,
    required Map<String, dynamic> progress,
  }) = _TrainingSimulation;

  factory TrainingSimulation.fromJson(Map<String, dynamic> json) =>
      _$TrainingSimulationFromJson(json);
}

@freezed
class SpotVisualization with _$SpotVisualization {
  const factory SpotVisualization({
    required String id,
    required String locationId,
    required Map<String, dynamic> arMarkers,
    required Map<String, dynamic> overlayData,
    required List<String> hotspots,
    required Map<String, dynamic> conditions,
    required DateTime lastUpdated,
  }) = _SpotVisualization;

  factory SpotVisualization.fromJson(Map<String, dynamic> json) =>
      _$SpotVisualizationFromJson(json);
}

@freezed
class TechniquePractice with _$TechniquePractice {
  const factory TechniquePractice({
    required String id,
    required String techniqueId,
    required String title,
    required String description,
    required Map<String, dynamic> motions,
    required Map<String, dynamic> feedback,
    required Map<String, dynamic> scoring,
  }) = _TechniquePractice;

  factory TechniquePractice.fromJson(Map<String, dynamic> json) =>
      _$TechniquePracticeFromJson(json);
}
