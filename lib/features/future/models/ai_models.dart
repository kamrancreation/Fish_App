import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ai_models.freezed.dart';
part 'ai_models.g.dart';

@freezed
class SpeciesRecognition with _$SpeciesRecognition {
  const factory SpeciesRecognition({
    required String id,
    required String imageUrl,
    required List<SpeciesPrediction> predictions,
    required DateTime timestamp,
    required Map<String, dynamic> metadata,
    required bool isVerified,
  }) = _SpeciesRecognition;

  factory SpeciesRecognition.fromJson(Map<String, dynamic> json) =>
      _$SpeciesRecognitionFromJson(json);
}

@freezed
class SpeciesPrediction with _$SpeciesPrediction {
  const factory SpeciesPrediction({
    required String speciesId,
    required String commonName,
    required String scientificName,
    required double confidence,
    required Map<String, dynamic> characteristics,
  }) = _SpeciesPrediction;

  factory SpeciesPrediction.fromJson(Map<String, dynamic> json) =>
      _$SpeciesPredictionFromJson(json);
}

@freezed
class BehaviorPrediction with _$BehaviorPrediction {
  const factory BehaviorPrediction({
    required String id,
    required String speciesId,
    required String behavior,
    required double probability,
    required Map<String, dynamic> conditions,
    required DateTime timestamp,
    required Map<String, dynamic> factors,
  }) = _BehaviorPrediction;

  factory BehaviorPrediction.fromJson(Map<String, dynamic> json) =>
      _$BehaviorPredictionFromJson(json);
}

@freezed
class CatchForecast with _$CatchForecast {
  const factory CatchForecast({
    required String id,
    required String locationId,
    required DateTime forecastTime,
    required double probability,
    required List<String> targetSpecies,
    required Map<String, dynamic> conditions,
    required Map<String, dynamic> recommendations,
  }) = _CatchForecast;

  factory CatchForecast.fromJson(Map<String, dynamic> json) =>
      _$CatchForecastFromJson(json);
}

@freezed
class PatternAnalysis with _$PatternAnalysis {
  const factory PatternAnalysis({
    required String id,
    required String patternType,
    required Map<String, dynamic> data,
    required DateTime analysisDate,
    required List<String> relatedPatterns,
    required Map<String, dynamic> insights,
  }) = _PatternAnalysis;

  factory PatternAnalysis.fromJson(Map<String, dynamic> json) =>
      _$PatternAnalysisFromJson(json);
}

@freezed
class AutomatedReport with _$AutomatedReport {
  const factory AutomatedReport({
    required String id,
    required String userId,
    required String reportType,
    required DateTime generatedAt,
    required Map<String, dynamic> data,
    required List<String> insights,
    required Map<String, dynamic> metadata,
  }) = _AutomatedReport;

  factory AutomatedReport.fromJson(Map<String, dynamic> json) =>
      _$AutomatedReportFromJson(json);
}

@freezed
class SmartRecommendation with _$SmartRecommendation {
  const factory SmartRecommendation({
    required String id,
    required String userId,
    required String type,
    required String recommendation,
    required double confidence,
    required Map<String, dynamic> context,
    required DateTime timestamp,
    required Map<String, dynamic> metadata,
  }) = _SmartRecommendation;

  factory SmartRecommendation.fromJson(Map<String, dynamic> json) =>
      _$SmartRecommendationFromJson(json);
}
