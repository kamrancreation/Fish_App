import 'analytics_service.dart';

class FishingAnalytics {
  final AnalyticsService _analytics;

  FishingAnalytics({AnalyticsService? analytics})
      : _analytics = analytics ?? AnalyticsService();

  // Spot Related Events
  Future<void> trackSpotView(String spotId, String spotName) async {
    await _analytics.trackEvent(
      'spot_viewed',
      parameters: {
        'spot_id': spotId,
        'spot_name': spotName,
        'timestamp': DateTime.now().toIso8601String(),
      },
    );
  }

  Future<void> trackSpotSave(String spotId, String spotName) async {
    await _analytics.trackEvent(
      'spot_saved',
      parameters: {
        'spot_id': spotId,
        'spot_name': spotName,
      },
    );
  }

  Future<void> trackSpotShare(
      String spotId, String spotName, String method) async {
    await _analytics.trackShare(
      'fishing_spot',
      spotId,
      method,
    );
  }

  // Review Related Events
  Future<void> trackReviewSubmission(
    String spotId,
    double rating,
    bool hasPhotos,
    bool hasComment,
  ) async {
    await _analytics.trackEvent(
      'review_submitted',
      parameters: {
        'spot_id': spotId,
        'rating': rating,
        'has_photos': hasPhotos,
        'has_comment': hasComment,
      },
    );
  }

  Future<void> trackReviewInteraction(
    String reviewId,
    String interactionType,
  ) async {
    await _analytics.trackEvent(
      'review_interaction',
      parameters: {
        'review_id': reviewId,
        'interaction_type': interactionType,
      },
    );
  }

  // Map Related Events
  Future<void> trackMapInteraction(
    String interactionType,
    Map<String, dynamic> details,
  ) async {
    await _analytics.trackEvent(
      'map_interaction',
      parameters: {
        'interaction_type': interactionType,
        ...details,
      },
    );
  }

  Future<void> trackMapFilter(Map<String, dynamic> filters) async {
    await _analytics.trackEvent(
      'map_filter_applied',
      parameters: filters,
    );
  }

  // Social Features
  Future<void> trackGroupActivity(
    String groupId,
    String activityType,
    Map<String, dynamic>? details,
  ) async {
    await _analytics.trackEvent(
      'group_activity',
      parameters: {
        'group_id': groupId,
        'activity_type': activityType,
        if (details != null) ...details,
      },
    );
  }

  Future<void> trackSocialInteraction(
    String interactionType,
    String targetType,
    String targetId,
  ) async {
    await _analytics.trackEvent(
      'social_interaction',
      parameters: {
        'interaction_type': interactionType,
        'target_type': targetType,
        'target_id': targetId,
      },
    );
  }

  // Premium Features
  Future<void> trackPremiumFeatureUsage(
    String featureId,
    String featureName,
  ) async {
    await _analytics.trackEvent(
      'premium_feature_used',
      parameters: {
        'feature_id': featureId,
        'feature_name': featureName,
      },
    );
  }

  Future<void> trackSubscriptionEvent(
    String eventType,
    String planId,
    String planName,
  ) async {
    await _analytics.trackEvent(
      'subscription_event',
      parameters: {
        'event_type': eventType,
        'plan_id': planId,
        'plan_name': planName,
      },
    );
  }

  // App Performance
  Future<void> trackAppPerformance({
    required String metricName,
    required double value,
    Map<String, dynamic>? additionalParams,
  }) async {
    await _analytics.trackEvent(
      'app_performance',
      parameters: {
        'metric_name': metricName,
        'value': value,
        if (additionalParams != null) ...additionalParams,
      },
    );
  }

  // User Preferences
  Future<void> trackPreferenceChange(
    String preferenceName,
    dynamic oldValue,
    dynamic newValue,
  ) async {
    await _analytics.trackEvent(
      'preference_changed',
      parameters: {
        'preference_name': preferenceName,
        'old_value': oldValue.toString(),
        'new_value': newValue.toString(),
      },
    );
  }

  // Search Analytics
  Future<void> trackSpotSearch(
    String searchTerm,
    int resultCount,
    Map<String, dynamic>? filters,
  ) async {
    await _analytics.trackSearch(searchTerm);
    await _analytics.trackEvent(
      'spot_search',
      parameters: {
        'search_term': searchTerm,
        'result_count': resultCount,
        if (filters != null) 'filters': filters,
      },
    );
  }

  // Error Tracking
  Future<void> trackAppError(
    String errorCode,
    String errorMessage,
    String errorContext,
  ) async {
    await _analytics.trackError(
      errorCode,
      errorMessage,
      additionalParams: {'context': errorContext},
    );
  }
}
