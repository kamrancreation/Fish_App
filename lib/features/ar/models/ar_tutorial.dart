import 'package:freezed_annotation/freezed_annotation.dart';
import 'ar_marker.dart';

part 'ar_tutorial.freezed.dart';
part 'ar_tutorial.g.dart';

@freezed
class ARTutorial with _$ARTutorial {
  const factory ARTutorial({
    required String id,
    required String title,
    required List<TutorialStep> steps,
    required List<ARMarker> markers,
    required List<Animation> animations,
    String? description,
    String? difficulty,
    String? duration,
    List<String>? requirements,
    Map<String, dynamic>? metadata,
  }) = _ARTutorial;

  factory ARTutorial.fromJson(Map<String, dynamic> json) =>
      _$ARTutorialFromJson(json);
}

@freezed
class TutorialStep with _$TutorialStep {
  const factory TutorialStep({
    required String title,
    required String description,
    required List<ARMarker> markers,
    required List<Animation> animations,
    String? videoUrl,
    String? audioUrl,
    List<String>? tips,
    Map<String, dynamic>? metadata,
  }) = _TutorialStep;

  factory TutorialStep.fromJson(Map<String, dynamic> json) =>
      _$TutorialStepFromJson(json);
}

@freezed
class Animation with _$Animation {
  const factory Animation({
    required String id,
    required String type,
    required Duration duration,
    required Map<String, dynamic> keyframes,
    String? target,
    String? easing,
    bool? loop,
    Map<String, dynamic>? metadata,
  }) = _Animation;

  factory Animation.fromJson(Map<String, dynamic> json) =>
      _$AnimationFromJson(json);
}
