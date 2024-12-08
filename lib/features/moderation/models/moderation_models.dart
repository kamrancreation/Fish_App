import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'moderation_models.freezed.dart';
part 'moderation_models.g.dart';

@freezed
class ModerationResult with _$ModerationResult {
  const factory ModerationResult({
    required bool isApproved,
    required double confidence,
    required String reason,
    Map<String, dynamic>? details,
  }) = _ModerationResult;

  factory ModerationResult.fromJson(Map<String, dynamic> json) =>
      _$ModerationResultFromJson(json);
}

@freezed
class ContentReport with _$ContentReport {
  const factory ContentReport({
    required String id,
    required String contentId,
    required String contentType,
    required String reporterId,
    required String reason,
    required DateTime timestamp,
    required String status,
    String? moderatorId,
    String? moderatorNotes,
    DateTime? reviewedAt,
    Map<String, dynamic>? metadata,
  }) = _ContentReport;

  factory ContentReport.fromJson(Map<String, dynamic> json) =>
      _$ContentReportFromJson(json);
}

@freezed
class UserBan with _$UserBan {
  const factory UserBan({
    required String userId,
    required String reason,
    required DateTime startTime,
    required DateTime endTime,
    required String bannedBy,
    String? notes,
    @Default(false) bool isActive,
    DateTime? liftedAt,
    String? liftedBy,
    Map<String, dynamic>? metadata,
  }) = _UserBan;

  factory UserBan.fromJson(Map<String, dynamic> json) =>
      _$UserBanFromJson(json);
}

@freezed
class ModerationAction with _$ModerationAction {
  const factory ModerationAction({
    required String id,
    required String type,
    required String targetId,
    required String moderatorId,
    required DateTime timestamp,
    required String action,
    String? reason,
    Map<String, dynamic>? metadata,
  }) = _ModerationAction;

  factory ModerationAction.fromJson(Map<String, dynamic> json) =>
      _$ModerationActionFromJson(json);
}

@freezed
class ModerationRule with _$ModerationRule {
  const factory ModerationRule({
    required String id,
    required String type,
    required String name,
    required String description,
    required bool isActive,
    required double severity,
    Map<String, dynamic>? conditions,
    Map<String, dynamic>? actions,
    DateTime? lastUpdated,
    String? updatedBy,
  }) = _ModerationRule;

  factory ModerationRule.fromJson(Map<String, dynamic> json) =>
      _$ModerationRuleFromJson(json);
}

@freezed
class AutoModerationConfig with _$AutoModerationConfig {
  const factory AutoModerationConfig({
    required bool enabled,
    required double confidenceThreshold,
    required Map<String, double> categoryThresholds,
    required List<String> bannedWords,
    required Map<String, String> autoResponses,
    @Default(true) bool notifyModerators,
    Map<String, dynamic>? customRules,
  }) = _AutoModerationConfig;

  factory AutoModerationConfig.fromJson(Map<String, dynamic> json) =>
      _$AutoModerationConfigFromJson(json);
}

@freezed
class ModerationStats with _$ModerationStats {
  const factory ModerationStats({
    required String period,
    required int totalReports,
    required int processedReports,
    required int pendingReports,
    required Map<String, int> reportTypes,
    required Map<String, int> actionsTaken,
    required double averageResponseTime,
    Map<String, dynamic>? additionalMetrics,
  }) = _ModerationStats;

  factory ModerationStats.fromJson(Map<String, dynamic> json) =>
      _$ModerationStatsFromJson(json);
}

@freezed
class ModerationQueue with _$ModerationQueue {
  const factory ModerationQueue({
    required String id,
    required String name,
    required List<String> moderatorIds,
    required List<String> contentTypes,
    required int priority,
    required Map<String, dynamic> rules,
    @Default(0) int currentSize,
    DateTime? lastProcessed,
    Map<String, dynamic>? settings,
  }) = _ModerationQueue;

  factory ModerationQueue.fromJson(Map<String, dynamic> json) =>
      _$ModerationQueueFromJson(json);
}
