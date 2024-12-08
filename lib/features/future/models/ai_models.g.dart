// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesRecognitionImpl _$$SpeciesRecognitionImplFromJson(
        Map<String, dynamic> json) =>
    _$SpeciesRecognitionImpl(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      predictions: (json['predictions'] as List<dynamic>)
          .map((e) => SpeciesPrediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      metadata: json['metadata'] as Map<String, dynamic>,
      isVerified: json['isVerified'] as bool,
    );

Map<String, dynamic> _$$SpeciesRecognitionImplToJson(
        _$SpeciesRecognitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'predictions': instance.predictions,
      'timestamp': instance.timestamp.toIso8601String(),
      'metadata': instance.metadata,
      'isVerified': instance.isVerified,
    };

_$SpeciesPredictionImpl _$$SpeciesPredictionImplFromJson(
        Map<String, dynamic> json) =>
    _$SpeciesPredictionImpl(
      speciesId: json['speciesId'] as String,
      commonName: json['commonName'] as String,
      scientificName: json['scientificName'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      characteristics: json['characteristics'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$SpeciesPredictionImplToJson(
        _$SpeciesPredictionImpl instance) =>
    <String, dynamic>{
      'speciesId': instance.speciesId,
      'commonName': instance.commonName,
      'scientificName': instance.scientificName,
      'confidence': instance.confidence,
      'characteristics': instance.characteristics,
    };

_$BehaviorPredictionImpl _$$BehaviorPredictionImplFromJson(
        Map<String, dynamic> json) =>
    _$BehaviorPredictionImpl(
      id: json['id'] as String,
      speciesId: json['speciesId'] as String,
      behavior: json['behavior'] as String,
      probability: (json['probability'] as num).toDouble(),
      conditions: json['conditions'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      factors: json['factors'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$BehaviorPredictionImplToJson(
        _$BehaviorPredictionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'speciesId': instance.speciesId,
      'behavior': instance.behavior,
      'probability': instance.probability,
      'conditions': instance.conditions,
      'timestamp': instance.timestamp.toIso8601String(),
      'factors': instance.factors,
    };

_$CatchForecastImpl _$$CatchForecastImplFromJson(Map<String, dynamic> json) =>
    _$CatchForecastImpl(
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      forecastTime: DateTime.parse(json['forecastTime'] as String),
      probability: (json['probability'] as num).toDouble(),
      targetSpecies: (json['targetSpecies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      conditions: json['conditions'] as Map<String, dynamic>,
      recommendations: json['recommendations'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$CatchForecastImplToJson(_$CatchForecastImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'forecastTime': instance.forecastTime.toIso8601String(),
      'probability': instance.probability,
      'targetSpecies': instance.targetSpecies,
      'conditions': instance.conditions,
      'recommendations': instance.recommendations,
    };

_$PatternAnalysisImpl _$$PatternAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$PatternAnalysisImpl(
      id: json['id'] as String,
      patternType: json['patternType'] as String,
      data: json['data'] as Map<String, dynamic>,
      analysisDate: DateTime.parse(json['analysisDate'] as String),
      relatedPatterns: (json['relatedPatterns'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      insights: json['insights'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$PatternAnalysisImplToJson(
        _$PatternAnalysisImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patternType': instance.patternType,
      'data': instance.data,
      'analysisDate': instance.analysisDate.toIso8601String(),
      'relatedPatterns': instance.relatedPatterns,
      'insights': instance.insights,
    };

_$AutomatedReportImpl _$$AutomatedReportImplFromJson(
        Map<String, dynamic> json) =>
    _$AutomatedReportImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      reportType: json['reportType'] as String,
      generatedAt: DateTime.parse(json['generatedAt'] as String),
      data: json['data'] as Map<String, dynamic>,
      insights:
          (json['insights'] as List<dynamic>).map((e) => e as String).toList(),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$AutomatedReportImplToJson(
        _$AutomatedReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'reportType': instance.reportType,
      'generatedAt': instance.generatedAt.toIso8601String(),
      'data': instance.data,
      'insights': instance.insights,
      'metadata': instance.metadata,
    };

_$SmartRecommendationImpl _$$SmartRecommendationImplFromJson(
        Map<String, dynamic> json) =>
    _$SmartRecommendationImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      type: json['type'] as String,
      recommendation: json['recommendation'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      context: json['context'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$SmartRecommendationImplToJson(
        _$SmartRecommendationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'recommendation': instance.recommendation,
      'confidence': instance.confidence,
      'context': instance.context,
      'timestamp': instance.timestamp.toIso8601String(),
      'metadata': instance.metadata,
    };
