import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/analytics_models.dart';
import '../repositories/analytics_repository.dart';

final analyticsServiceProvider = Provider((ref) {
  return AnalyticsService(ref.watch(analyticsRepositoryProvider));
});

class AnalyticsService {
  final AnalyticsRepository _repository;

  AnalyticsService(this._repository);

  // Usage Analytics
  Future<void> trackUserSession({
    required String userId,
    required String sessionId,
    required Duration duration,
    required Map<String, int> featureUsage,
    required Map<String, int> screenViews,
  }) async {
    await _repository.trackUserSession(
      userId: userId,
      sessionId: sessionId,
      duration: duration,
      featureUsage: featureUsage,
      screenViews: screenViews,
    );
  }

  Future<UsageMetrics> getUsageMetrics({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getUsageMetrics(
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Performance Monitoring
  Future<void> trackPerformanceMetric({
    required String metric,
    required double value,
    required String context,
  }) async {
    await _repository.trackPerformanceMetric(
      metric: metric,
      value: value,
      context: context,
    );
  }

  Future<PerformanceMetrics> getPerformanceMetrics({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getPerformanceMetrics(
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Engagement Tracking
  Future<void> trackEngagement({
    required String userId,
    required String action,
    required String context,
    required Duration duration,
  }) async {
    await _repository.trackEngagement(
      userId: userId,
      action: action,
      context: context,
      duration: duration,
    );
  }

  Future<EngagementMetrics> getEngagementMetrics({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getEngagementMetrics(
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Revenue Tracking
  Future<void> trackRevenue({
    required String userId,
    required double amount,
    required String source,
    required String transactionId,
    Map<String, dynamic>? metadata,
  }) async {
    await _repository.trackRevenue(
      userId: userId,
      amount: amount,
      source: source,
      transactionId: transactionId,
      metadata: metadata,
    );
  }

  Future<RevenueMetrics> getRevenueMetrics({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getRevenueMetrics(
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Feature Adoption
  Future<void> trackFeatureUsage({
    required String userId,
    required String feature,
    required String action,
    required bool successful,
    Map<String, dynamic>? metadata,
  }) async {
    await _repository.trackFeatureUsage(
      userId: userId,
      feature: feature,
      action: action,
      successful: successful,
      metadata: metadata,
    );
  }

  Future<FeatureAdoptionMetrics> getFeatureAdoptionMetrics({
    String? feature,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getFeatureAdoptionMetrics(
      feature: feature,
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Error Monitoring
  Future<void> trackError({
    required String errorType,
    required String errorMessage,
    required String stackTrace,
    required String deviceInfo,
    required String appVersion,
    required String userId,
    required Map<String, dynamic> context,
    required ErrorSeverity severity,
  }) async {
    await _repository.trackError(
      errorType: errorType,
      errorMessage: errorMessage,
      stackTrace: stackTrace,
      deviceInfo: deviceInfo,
      appVersion: appVersion,
      userId: userId,
      context: context,
      severity: severity,
    );
  }

  Future<List<ErrorMetrics>> getErrors({
    ErrorSeverity? minSeverity,
    List<ErrorStatus>? status,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getErrors(
      minSeverity: minSeverity,
      status: status,
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Dashboard
  Future<AnalyticsDashboard> getDashboard({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getDashboard(
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Trends and Insights
  Future<Map<String, List<double>>> getTrends({
    required List<String> metrics,
    required Duration period,
    required int points,
  }) async {
    return _repository.getTrends(
      metrics: metrics,
      period: period,
      points: points,
    );
  }

  Future<Map<String, dynamic>> getInsights({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getInsights(
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Alerts and Monitoring
  Future<void> setAlertThreshold({
    required String metric,
    required double threshold,
    required String condition,
    required String notificationChannel,
  }) async {
    await _repository.setAlertThreshold(
      metric: metric,
      threshold: threshold,
      condition: condition,
      notificationChannel: notificationChannel,
    );
  }

  Future<void> checkAlerts() async {
    await _repository.checkAlerts();
  }

  // Export
  Future<String> exportAnalytics({
    required List<String> metrics,
    required DateTime startDate,
    required DateTime endDate,
    required String format,
  }) async {
    return _repository.exportAnalytics(
      metrics: metrics,
      startDate: startDate,
      endDate: endDate,
      format: format,
    );
  }
}
