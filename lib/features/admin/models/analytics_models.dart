import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_models.freezed.dart';
part 'analytics_models.g.dart';

@freezed
class UsageMetrics with _$UsageMetrics {
  const factory UsageMetrics({
    required String id,
    required DateTime timestamp,
    required int dailyActiveUsers,
    required int monthlyActiveUsers,
    required Map<String, int> sessionCounts,
    required Map<String, double> averageSessionDuration,
    required Map<String, int> featureUsage,
    required Map<String, int> screenViews,
    required Map<String, double> retentionRates,
    Map<String, dynamic>? customMetrics,
  }) = _UsageMetrics;

  factory UsageMetrics.fromJson(Map<String, dynamic> json) =>
      _$UsageMetricsFromJson(json);
}

@freezed
class PerformanceMetrics with _$PerformanceMetrics {
  const factory PerformanceMetrics({
    required String id,
    required DateTime timestamp,
    required Map<String, double> apiLatency,
    required Map<String, int> errorCounts,
    required Map<String, double> loadTimes,
    required Map<String, int> crashCounts,
    required double appStartTime,
    required Map<String, double> frameRate,
    required Map<String, int> memoryUsage,
    required Map<String, double> batteryImpact,
    Map<String, dynamic>? customMetrics,
  }) = _PerformanceMetrics;

  factory PerformanceMetrics.fromJson(Map<String, dynamic> json) =>
      _$PerformanceMetricsFromJson(json);
}

@freezed
class EngagementMetrics with _$EngagementMetrics {
  const factory EngagementMetrics({
    required String id,
    required DateTime timestamp,
    required Map<String, int> contentInteractions,
    required Map<String, double> averageEngagementTime,
    required Map<String, int> socialInteractions,
    required Map<String, double> conversionRates,
    required Map<String, int> userContributions,
    required Map<String, double> featureAdoption,
    Map<String, dynamic>? customMetrics,
  }) = _EngagementMetrics;

  factory EngagementMetrics.fromJson(Map<String, dynamic> json) =>
      _$EngagementMetricsFromJson(json);
}

@freezed
class RevenueMetrics with _$RevenueMetrics {
  const factory RevenueMetrics({
    required String id,
    required DateTime timestamp,
    required double totalRevenue,
    required Map<String, double> revenueBySource,
    required Map<String, int> transactionCounts,
    required double averageOrderValue,
    required Map<String, double> subscriptionRevenue,
    required Map<String, int> subscriptionCounts,
    required Map<String, double> churnRate,
    required double customerLifetimeValue,
    Map<String, dynamic>? customMetrics,
  }) = _RevenueMetrics;

  factory RevenueMetrics.fromJson(Map<String, dynamic> json) =>
      _$RevenueMetricsFromJson(json);
}

@freezed
class FeatureAdoptionMetrics with _$FeatureAdoptionMetrics {
  const factory FeatureAdoptionMetrics({
    required String id,
    required DateTime timestamp,
    required Map<String, int> featureUsage,
    required Map<String, double> adoptionRate,
    required Map<String, double> retentionRate,
    required Map<String, int> activeUsers,
    required Map<String, double> satisfactionScore,
    required Map<String, int> abandonmentRate,
    Map<String, dynamic>? customMetrics,
  }) = _FeatureAdoptionMetrics;

  factory FeatureAdoptionMetrics.fromJson(Map<String, dynamic> json) =>
      _$FeatureAdoptionMetricsFromJson(json);
}

@freezed
class ErrorMetrics with _$ErrorMetrics {
  const factory ErrorMetrics({
    required String id,
    required DateTime timestamp,
    required String errorType,
    required String errorMessage,
    required String stackTrace,
    required String deviceInfo,
    required String appVersion,
    required String userId,
    required Map<String, dynamic> context,
    required ErrorSeverity severity,
    required ErrorStatus status,
    String? resolution,
    DateTime? resolvedAt,
  }) = _ErrorMetrics;

  factory ErrorMetrics.fromJson(Map<String, dynamic> json) =>
      _$ErrorMetricsFromJson(json);
}

enum ErrorSeverity {
  critical,
  high,
  medium,
  low;

  bool get isCritical => this == ErrorSeverity.critical;
  bool get isHigh => this == ErrorSeverity.high;
  bool get isMedium => this == ErrorSeverity.medium;
  bool get isLow => this == ErrorSeverity.low;
}

enum ErrorStatus {
  @JsonValue('new')
  initial,
  investigating,
  resolved,
  ignored;

  bool get isNew => this == ErrorStatus.initial;
  bool get isInvestigating => this == ErrorStatus.investigating;
  bool get isResolved => this == ErrorStatus.resolved;
  bool get isIgnored => this == ErrorStatus.ignored;
}

@freezed
class AnalyticsDashboard with _$AnalyticsDashboard {
  const factory AnalyticsDashboard({
    required String id,
    required DateTime timestamp,
    required UsageMetrics usage,
    required PerformanceMetrics performance,
    required EngagementMetrics engagement,
    required RevenueMetrics revenue,
    required FeatureAdoptionMetrics featureAdoption,
    required List<ErrorMetrics> recentErrors,
    required Map<String, dynamic> keyInsights,
    required Map<String, List<double>> trends,
  }) = _AnalyticsDashboard;

  factory AnalyticsDashboard.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsDashboardFromJson(json);
}
