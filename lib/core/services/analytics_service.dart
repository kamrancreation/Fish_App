import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics;

  AnalyticsService({FirebaseAnalytics? analytics})
      : _analytics = analytics ?? FirebaseAnalytics.instance;

  Future<void> logEvent({
    required String name,
    Map<String, dynamic>? parameters,
  }) async {
    try {
      await _analytics.logEvent(
        name: name,
        parameters: parameters,
      );
    } catch (e) {
      debugPrint('Failed to log analytics event: $e');
    }
  }

  Future<void> setUserProperties({
    required String userId,
    String? userRole,
    String? subscription,
  }) async {
    try {
      await _analytics.setUserId(id: userId);
      
      if (userRole != null) {
        await _analytics.setUserProperty(
          name: 'user_role',
          value: userRole,
        );
      }

      if (subscription != null) {
        await _analytics.setUserProperty(
          name: 'subscription_type',
          value: subscription,
        );
      }
    } catch (e) {
      debugPrint('Failed to set user properties: $e');
    }
  }

  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
  }) async {
    try {
      await _analytics.logScreenView(
        screenName: screenName,
        screenClass: screenClass,
      );
    } catch (e) {
      debugPrint('Failed to log screen view: $e');
    }
  }

  Future<void> logLogin({
    required String method,
  }) async {
    try {
      await _analytics.logLogin(
        loginMethod: method,
      );
    } catch (e) {
      debugPrint('Failed to log login: $e');
    }
  }

  Future<void> logSignUp({
    required String method,
  }) async {
    try {
      await _analytics.logSignUp(
        signUpMethod: method,
      );
    } catch (e) {
      debugPrint('Failed to log sign up: $e');
    }
  }

  Future<void> logPurchase({
    required String itemId,
    required String itemName,
    required double value,
    String? currency,
  }) async {
    try {
      await _analytics.logPurchase(
        currency: currency ?? 'USD',
        value: value,
        items: [
          AnalyticsEventItem(
            itemId: itemId,
            itemName: itemName,
            price: value,
          ),
        ],
      );
    } catch (e) {
      debugPrint('Failed to log purchase: $e');
    }
  }

  Future<void> logSearch({
    required String searchTerm,
  }) async {
    try {
      await _analytics.logSearch(
        searchTerm: searchTerm,
      );
    } catch (e) {
      debugPrint('Failed to log search: $e');
    }
  }

  Future<void> logShare({
    required String contentType,
    required String itemId,
    required String method,
  }) async {
    try {
      await _analytics.logShare(
        contentType: contentType,
        itemId: itemId,
        method: method,
      );
    } catch (e) {
      debugPrint('Failed to log share: $e');
    }
  }

  Future<void> trackError(String code, String message, {StackTrace? stackTrace, String? context}) async {
    try {
      await _analytics.logEvent(
        name: 'error',
        parameters: {
          'error_code': code,
          'error_message': message,
          'stack_trace': stackTrace.toString(),
          'context': context,
        },
      );
    } catch (e) {
      debugPrint('Failed to track error: $e');
    }
  }

  Future<void> setAnalyticsCollectionEnabled(bool enabled) async {
    try {
      await _analytics.setAnalyticsCollectionEnabled(enabled);
    } catch (e) {
      debugPrint('Failed to set analytics collection enabled: $e');
    }
  }
}
