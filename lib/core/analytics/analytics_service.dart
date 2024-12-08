import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import '../error/error_handler.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  final ErrorHandler _errorHandler;

  AnalyticsService({ErrorHandler? errorHandler})
      : _errorHandler = errorHandler ?? ErrorHandler();

  Future<void> trackEvent(
    String eventName, {
    Map<String, dynamic>? parameters,
  }) async {
    try {
      await _analytics.logEvent(
        name: eventName,
        parameters: parameters,
      );

      if (kDebugMode) {
        print('Analytics Event: $eventName');
        print('Parameters: $parameters');
      }
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Analytics tracking: $eventName',
      );
    }
  }

  Future<void> setUserProperty({
    required String name,
    required String value,
  }) async {
    try {
      await _analytics.setUserProperty(name: name, value: value);
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Setting user property: $name',
      );
    }
  }

  Future<void> setUserId(String? userId) async {
    try {
      await _analytics.setUserId(id: userId);
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Setting user ID',
      );
    }
  }

  Future<void> trackScreenView(String screenName) async {
    try {
      await _analytics.setCurrentScreen(screenName: screenName);
      await trackEvent('screen_view', parameters: {'screen_name': screenName});
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Screen view tracking: $screenName',
      );
    }
  }

  Future<void> trackUserEngagement({
    required String action,
    required String contentType,
    String? itemId,
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      await trackEvent(
        'user_engagement',
        parameters: {
          'action': action,
          'content_type': contentType,
          if (itemId != null) 'item_id': itemId,
          if (additionalParams != null) ...additionalParams,
        },
      );
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'User engagement tracking',
      );
    }
  }

  Future<void> trackError(
    String errorCode,
    String errorMessage, {
    StackTrace? stackTrace,
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      await trackEvent(
        'app_error',
        parameters: {
          'error_code': errorCode,
          'error_message': errorMessage,
          if (stackTrace != null) 'stack_trace': stackTrace.toString(),
          if (additionalParams != null) ...additionalParams,
        },
      );
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Error tracking',
      );
    }
  }

  Future<void> trackSearch(String searchTerm) async {
    try {
      await _analytics.logSearch(searchTerm: searchTerm);
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Search tracking',
      );
    }
  }

  Future<void> trackLogin(String method) async {
    try {
      await _analytics.logLogin(loginMethod: method);
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Login tracking',
      );
    }
  }

  Future<void> trackSignUp(String method) async {
    try {
      await _analytics.logSignUp(signUpMethod: method);
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Sign up tracking',
      );
    }
  }

  Future<void> trackShare(
    String contentType,
    String itemId,
    String method,
  ) async {
    try {
      await _analytics.logShare(
        contentType: contentType,
        itemId: itemId,
        method: method,
      );
    } catch (error) {
      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Share tracking',
      );
    }
  }
}
