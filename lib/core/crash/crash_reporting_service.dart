import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import '../analytics/analytics_service.dart';

class CrashReportingService {
  final FirebaseCrashlytics _crashlytics = FirebaseCrashlytics.instance;
  final AnalyticsService _analytics;

  CrashReportingService({AnalyticsService? analytics})
      : _analytics = analytics ?? AnalyticsService();

  Future<void> initialize() async {
    // Pass all uncaught errors to Crashlytics
    FlutterError.onError = (FlutterErrorDetails details) async {
      await _crashlytics.recordFlutterError(details);
      await _analytics.trackError(
        'flutter_error',
        details.exception.toString(),
        stackTrace: details.stack,
      );
    };

    // Enable crash collection based on build configuration
    await _crashlytics.setCrashlyticsCollectionEnabled(!kDebugMode);
  }

  Future<void> recordError(
    dynamic exception,
    StackTrace? stack, {
    String? reason,
    Iterable<Object>? information,
    bool fatal = false,
  }) async {
    try {
      await _crashlytics.recordError(
        exception,
        stack,
        reason: reason,
        information: information,
        fatal: fatal,
      );

      await _analytics.trackError(
        'app_error',
        exception.toString(),
        stackTrace: stack,
        additionalParams: {
          'reason': reason,
          'fatal': fatal,
        },
      );
    } catch (e) {
      debugPrint('Failed to record error to Crashlytics: $e');
    }
  }

  Future<void> setUserIdentifier(String identifier) async {
    try {
      await _crashlytics.setUserIdentifier(identifier);
    } catch (e) {
      debugPrint('Failed to set user identifier in Crashlytics: $e');
    }
  }

  Future<void> setCustomKey(String key, dynamic value) async {
    try {
      await _crashlytics.setCustomKey(key, value);
    } catch (e) {
      debugPrint('Failed to set custom key in Crashlytics: $e');
    }
  }

  Future<void> log(String message) async {
    try {
      await _crashlytics.log(message);
    } catch (e) {
      debugPrint('Failed to log message to Crashlytics: $e');
    }
  }

  Future<void> recordFlutterError(FlutterErrorDetails details) async {
    try {
      await _crashlytics.recordFlutterError(details);
      await _analytics.trackError(
        'flutter_error',
        details.exception.toString(),
        stackTrace: details.stack,
      );
    } catch (e) {
      debugPrint('Failed to record Flutter error to Crashlytics: $e');
    }
  }

  Future<void> recordNonFatalError(
    dynamic exception,
    StackTrace? stack, {
    String? reason,
  }) async {
    await recordError(
      exception,
      stack,
      reason: reason,
      fatal: false,
    );
  }

  Future<void> recordFatalError(
    dynamic exception,
    StackTrace? stack, {
    String? reason,
  }) async {
    await recordError(
      exception,
      stack,
      reason: reason,
      fatal: true,
    );
  }

  Future<void> setEnvironment(String environment) async {
    try {
      await _crashlytics.setCustomKey('environment', environment);
    } catch (e) {
      debugPrint('Failed to set environment in Crashlytics: $e');
    }
  }

  Future<void> setAttribute(String key, dynamic value) async {
    try {
      await _crashlytics.setCustomKey(key, value);
    } catch (e) {
      debugPrint('Failed to set attribute in Crashlytics: $e');
    }
  }

  Future<void> forceCrash() async {
    if (kDebugMode) {
      _crashlytics.crash();
    }
  }
}
