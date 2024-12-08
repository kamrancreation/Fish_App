import 'package:flutter/foundation.dart';
import '../error/app_error.dart';
import '../monitoring/monitoring_service.dart';

class ErrorService {
  final MonitoringService _monitoringService;

  ErrorService(this._monitoringService);

  Future<void> handleError(
    dynamic error,
    StackTrace stackTrace, {
    String? context,
    Map<String, dynamic>? extra,
  }) async {
    try {
      if (error is AppError) {
        await _handleAppError(error, stackTrace);
      } else {
        await _handleGenericError(error, stackTrace, context: context, extra: extra);
      }
    } catch (e) {
      debugPrint('Failed to handle error: $e');
    }
  }

  Future<void> _handleAppError(AppError error, StackTrace stackTrace) async {
    final errorDetails = {
      'code': error.code,
      'message': error.message,
      'context': error.context,
      ...?error.metadata,
    };

    await _monitoringService.captureException(
      error,
      stackTrace: stackTrace,
      extra: errorDetails,
    );

    // Log the error locally in debug mode
    if (kDebugMode) {
      print('AppError: ${error.toString()}');
      print('Stack trace: $stackTrace');
    }
  }

  Future<void> _handleGenericError(
    dynamic error,
    StackTrace stackTrace, {
    String? context,
    Map<String, dynamic>? extra,
  }) async {
    final errorDetails = {
      'error': error.toString(),
      if (context != null) 'context': context,
      if (extra != null) ...extra,
    };

    await _monitoringService.captureException(
      error,
      stackTrace: stackTrace,
      extra: errorDetails,
    );

    // Log the error locally in debug mode
    if (kDebugMode) {
      print('Error: ${error.toString()}');
      print('Context: $context');
      print('Stack trace: $stackTrace');
    }
  }

  Future<void> logWarning(
    String message, {
    Map<String, dynamic>? extra,
  }) async {
    try {
      await _monitoringService.captureMessage(
        message,
        level: SentryLevel.warning,
        extra: extra,
      );

      if (kDebugMode) {
        print('Warning: $message');
        if (extra != null) {
          print('Extra: $extra');
        }
      }
    } catch (e) {
      debugPrint('Failed to log warning: $e');
    }
  }

  Future<void> logInfo(
    String message, {
    Map<String, dynamic>? extra,
  }) async {
    try {
      await _monitoringService.captureMessage(
        message,
        level: SentryLevel.info,
        extra: extra,
      );

      if (kDebugMode) {
        print('Info: $message');
        if (extra != null) {
          print('Extra: $extra');
        }
      }
    } catch (e) {
      debugPrint('Failed to log info: $e');
    }
  }
}
