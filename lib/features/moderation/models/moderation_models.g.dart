// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderation_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModerationResultImpl _$$ModerationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationResultImpl(
      isApproved: json['isApproved'] as bool,
      confidence: (json['confidence'] as num).toDouble(),
      reason: json['reason'] as String,
      details: json['details'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ModerationResultImplToJson(
        _$ModerationResultImpl instance) =>
    <String, dynamic>{
      'isApproved': instance.isApproved,
      'confidence': instance.confidence,
      'reason': instance.reason,
      'details': instance.details,
    };

_$ContentReportImpl _$$ContentReportImplFromJson(Map<String, dynamic> json) =>
    _$ContentReportImpl(
      id: json['id'] as String,
      contentId: json['contentId'] as String,
      contentType: json['contentType'] as String,
      reporterId: json['reporterId'] as String,
      reason: json['reason'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      status: json['status'] as String,
      moderatorId: json['moderatorId'] as String?,
      moderatorNotes: json['moderatorNotes'] as String?,
      reviewedAt: json['reviewedAt'] == null
          ? null
          : DateTime.parse(json['reviewedAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ContentReportImplToJson(_$ContentReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contentId': instance.contentId,
      'contentType': instance.contentType,
      'reporterId': instance.reporterId,
      'reason': instance.reason,
      'timestamp': instance.timestamp.toIso8601String(),
      'status': instance.status,
      'moderatorId': instance.moderatorId,
      'moderatorNotes': instance.moderatorNotes,
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$UserBanImpl _$$UserBanImplFromJson(Map<String, dynamic> json) =>
    _$UserBanImpl(
      userId: json['userId'] as String,
      reason: json['reason'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      bannedBy: json['bannedBy'] as String,
      notes: json['notes'] as String?,
      isActive: json['isActive'] as bool? ?? false,
      liftedAt: json['liftedAt'] == null
          ? null
          : DateTime.parse(json['liftedAt'] as String),
      liftedBy: json['liftedBy'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserBanImplToJson(_$UserBanImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'reason': instance.reason,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'bannedBy': instance.bannedBy,
      'notes': instance.notes,
      'isActive': instance.isActive,
      'liftedAt': instance.liftedAt?.toIso8601String(),
      'liftedBy': instance.liftedBy,
      'metadata': instance.metadata,
    };

_$ModerationActionImpl _$$ModerationActionImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationActionImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      targetId: json['targetId'] as String,
      moderatorId: json['moderatorId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      action: json['action'] as String,
      reason: json['reason'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ModerationActionImplToJson(
        _$ModerationActionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'targetId': instance.targetId,
      'moderatorId': instance.moderatorId,
      'timestamp': instance.timestamp.toIso8601String(),
      'action': instance.action,
      'reason': instance.reason,
      'metadata': instance.metadata,
    };

_$ModerationRuleImpl _$$ModerationRuleImplFromJson(Map<String, dynamic> json) =>
    _$ModerationRuleImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      severity: (json['severity'] as num).toDouble(),
      conditions: json['conditions'] as Map<String, dynamic>?,
      actions: json['actions'] as Map<String, dynamic>?,
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      updatedBy: json['updatedBy'] as String?,
    );

Map<String, dynamic> _$$ModerationRuleImplToJson(
        _$ModerationRuleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'isActive': instance.isActive,
      'severity': instance.severity,
      'conditions': instance.conditions,
      'actions': instance.actions,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'updatedBy': instance.updatedBy,
    };

_$AutoModerationConfigImpl _$$AutoModerationConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoModerationConfigImpl(
      enabled: json['enabled'] as bool,
      confidenceThreshold: (json['confidenceThreshold'] as num).toDouble(),
      categoryThresholds:
          (json['categoryThresholds'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      bannedWords: (json['bannedWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      autoResponses: Map<String, String>.from(json['autoResponses'] as Map),
      notifyModerators: json['notifyModerators'] as bool? ?? true,
      customRules: json['customRules'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AutoModerationConfigImplToJson(
        _$AutoModerationConfigImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'confidenceThreshold': instance.confidenceThreshold,
      'categoryThresholds': instance.categoryThresholds,
      'bannedWords': instance.bannedWords,
      'autoResponses': instance.autoResponses,
      'notifyModerators': instance.notifyModerators,
      'customRules': instance.customRules,
    };

_$ModerationStatsImpl _$$ModerationStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationStatsImpl(
      period: json['period'] as String,
      totalReports: (json['totalReports'] as num).toInt(),
      processedReports: (json['processedReports'] as num).toInt(),
      pendingReports: (json['pendingReports'] as num).toInt(),
      reportTypes: Map<String, int>.from(json['reportTypes'] as Map),
      actionsTaken: Map<String, int>.from(json['actionsTaken'] as Map),
      averageResponseTime: (json['averageResponseTime'] as num).toDouble(),
      additionalMetrics: json['additionalMetrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ModerationStatsImplToJson(
        _$ModerationStatsImpl instance) =>
    <String, dynamic>{
      'period': instance.period,
      'totalReports': instance.totalReports,
      'processedReports': instance.processedReports,
      'pendingReports': instance.pendingReports,
      'reportTypes': instance.reportTypes,
      'actionsTaken': instance.actionsTaken,
      'averageResponseTime': instance.averageResponseTime,
      'additionalMetrics': instance.additionalMetrics,
    };

_$ModerationQueueImpl _$$ModerationQueueImplFromJson(
        Map<String, dynamic> json) =>
    _$ModerationQueueImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      moderatorIds: (json['moderatorIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      contentTypes: (json['contentTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      priority: (json['priority'] as num).toInt(),
      rules: json['rules'] as Map<String, dynamic>,
      currentSize: (json['currentSize'] as num?)?.toInt() ?? 0,
      lastProcessed: json['lastProcessed'] == null
          ? null
          : DateTime.parse(json['lastProcessed'] as String),
      settings: json['settings'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ModerationQueueImplToJson(
        _$ModerationQueueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'moderatorIds': instance.moderatorIds,
      'contentTypes': instance.contentTypes,
      'priority': instance.priority,
      'rules': instance.rules,
      'currentSize': instance.currentSize,
      'lastProcessed': instance.lastProcessed?.toIso8601String(),
      'settings': instance.settings,
    };
