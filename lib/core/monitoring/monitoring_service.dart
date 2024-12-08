import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import '../config/app_config.dart';
import '../error/app_error.dart';

part 'monitoring_service.g.dart';

class MonitoringService {
  final AppConfig _config;
  bool _isInitialized = false;
  final List<AppError> _errorQueue = [];
  static const int _maxQueueSize = 100;
  static const Duration _batchInterval = Duration(seconds: 30);

  static final MonitoringService _instance = MonitoringService._internal();

  factory MonitoringService() {
    return _instance;
  }

  static MonitoringService get instance => _instance;

  MonitoringService._internal();

  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      await SentryFlutter.init(
        (options) {
          options.dsn = _config.sentryConfig.dsn;
          options.tracesSampleRate = 1.0;
          options.enableAutoPerformanceTracing = true;
          options.debug = kDebugMode;
          options.beforeSend = _beforeSend;
          options.maxBreadcrumbs = 100;
          options.attachStacktrace = true;
          options.sendDefaultPii = false;
          options.environment = _config.environment;
        },
      );
      _isInitialized = true;
      debugPrint('Sentry initialized successfully');
    } catch (e, stackTrace) {
      debugPrint('Failed to initialize Sentry: $e');
      debugPrint(stackTrace.toString());
      // Don't rethrow as monitoring should fail gracefully
    }
  }

  Future<SentryEvent?> _beforeSend(SentryEvent event, {Hint? hint}) async {
    // Remove sensitive data
    event.extra?.remove('password');
    event.extra?.remove('token');
    event.extra?.remove('auth');

    // Add additional context
    return event.copyWith(
      extra: {
        ...event.extra ?? {},
        'appVersion': _config.version,
        'buildNumber': _config.buildNumber,
      },
    );
  }

  void _startErrorProcessing() {
    Future.doWhile(() async {
      await Future.delayed(_batchInterval);
      await _processErrorQueue();
      return true; // Continue the loop
    });
  }

  Future<void> _processErrorQueue() async {
    if (!_isInitialized || _errorQueue.isEmpty) return;

    final errors = List<AppError>.from(_errorQueue);
    _errorQueue.clear();

    try {
      await Future.wait(
        errors.map((error) => _sendError(error)),
        eagerError: false,
      );
    } catch (e) {
      debugPrint('Failed to process error queue: $e');
    }
  }

  Future<void> _sendError(AppError error) async {
    try {
      final scope = Scope();
      scope.setTag('error_code', error.code);
      if (error.context != null) {
        scope.setExtras(error.context!);
      }

      await Sentry.captureException(
        error,
        stackTrace: error.stackTrace,
      );
    } catch (e) {
      debugPrint('Failed to send error to Sentry: $e');
    }
  }

  Future<void> captureException(
    dynamic exception, {
    dynamic stackTrace,
    String? hint,
    Map<String, dynamic>? extra,
  }) async {
    if (exception is AppError) {
      _queueError(exception);
      return;
    }

    try {
      if (!_isInitialized) return;

      final scope = Scope();
      if (extra != null) {
        scope.setExtras(extra);
      }

      await Sentry.captureException(
        exception,
        stackTrace: stackTrace,
        hint: hint,
      );
    } catch (e) {
      debugPrint('Failed to capture exception: $e');
    }
  }

  void _queueError(AppError error) {
    if (_errorQueue.length >= _maxQueueSize) {
      _errorQueue.removeAt(0); // Remove oldest error
    }
    _errorQueue.add(error);
  }

  void recordError(AppError error) {
    _queueError(error);
    // Assuming logError is a method from LoggingService
    // logError(error.message);
  }

  void recordAppError(AppError error) {
    // Logic to record the application-specific error
    _queueError(error);
    // You can also log this error using the logging service if needed
    logError(error.message);
  }

  Future<void> captureMessage(
    String message, {
    SentryLevel? level,
    Map<String, dynamic>? extra,
  }) async {
    try {
      if (!_isInitialized) return;

      final scope = Scope();
      if (extra != null) {
        scope.setExtras(extra);
      }

      await Sentry.captureMessage(
        message,
        level: level ?? SentryLevel.info,
      );
    } catch (e) {
      debugPrint('Failed to capture message: $e');
    }
  }

  Future<void> addBreadcrumb(
    String message, {
    String? category,
    Map<String, dynamic>? data,
    SentryLevel? level,
  }) async {
    try {
      if (!_isInitialized) return;

      final breadcrumb = Breadcrumb(
        message: message,
        category: category,
        data: data,
        level: level ?? SentryLevel.info,
        timestamp: DateTime.now().toUtc(),
      );

      await Sentry.addBreadcrumb(breadcrumb);
    } catch (e) {
      debugPrint('Failed to add breadcrumb: $e');
    }
  }

  Future<void> setUser(String userId, {String? email, String? username}) async {
    try {
      if (!_isInitialized) return;

      await Sentry.configureScope((scope) {
        scope.setUser(SentryUser(
          id: userId,
          email: email,
          username: username,
        ));
      });
    } catch (e) {
      debugPrint('Failed to set user: $e');
    }
  }

  Future<void> clearUser() async {
    try {
      if (!_isInitialized) return;

      await Sentry.configureScope((scope) {
        scope.setUser(null);
      });
    } catch (e) {
      debugPrint('Failed to clear user: $e');
    }
  }
}

@riverpod
MonitoringService monitoringService(MonitoringServiceRef ref) {
  return MonitoringService();
}
