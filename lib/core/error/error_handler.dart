import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import '../services/analytics_service.dart';
import '../services/logging_service.dart';
import '../monitoring/monitoring_service.dart';
import 'app_error.dart';

class ErrorHandler {
  final LoggingService _loggingService;
  final AnalyticsService _analyticsService;
  final MonitoringService _monitoringService;

  ErrorHandler({
    LoggingService? loggingService,
    AnalyticsService? analyticsService,
    MonitoringService? monitoringService,
  })  : _loggingService = loggingService ?? LoggingService(),
        _analyticsService = analyticsService ?? AnalyticsService(),
        _monitoringService = monitoringService ?? MonitoringService.instance;

  Future<T> handleError<T>(
    Future<T> Function() action, {
    String? context,
    bool shouldRethrow = false,
    FutureOr<T> Function(AppError error)? onError,
  }) async {
    try {
      return await action();
    } catch (error, stackTrace) {
      final appError = _processError(error, stackTrace, context);
      
      // Log the error
      _monitoringService.recordError(appError);
      _analyticsService.trackError(
        appError.code,
        appError.message,
        stackTrace: stackTrace ?? StackTrace.current,
        context: context,
      );
      _loggingService.logError(
        appError.message,
      );

      // Record error in monitoring services
      _monitoringService.recordAppError(appError);

      // Add breadcrumb for error tracking
      _monitoringService.addBreadcrumb(
        message: appError.message,
        category: 'error',
        data: {
          'code': appError.code.toString(),
          'context': context ?? 'No context provided',
        },
      );

      // Handle specific error cases
      if (onError != null) {
        return await onError(appError);
      }

      if (shouldRethrow) {
        throw appError;
      }

      return Future.error(appError);
    }
  }

  AppError _processError(Object error, StackTrace stackTrace, String? context) {
    if (error is AppError) {
      return error;
    }

    // Network errors
    if (error is SocketException || error is HttpException) {
      return AppError(
        code: ErrorCodes.networkError,
        message: 'Network connection error. Please check your internet connection.',
        stackTrace: stackTrace,
      );
    }

    // Firebase errors
    if (error is FirebaseException) {
      return AppError(
        code: _mapFirebaseErrorCode(error.code),
        message: error.message ?? 'An error occurred with Firebase.',
        stackTrace: stackTrace,
      );
    }

    // Permission errors
    if (error is PlatformException && error.code == 'PERMISSION_DENIED') {
      return AppError(
        code: ErrorCodes.permissionError,
        message: 'Permission denied. Please grant the required permissions.',
        stackTrace: stackTrace,
      );
    }

    // Timeout errors
    if (error is TimeoutException) {
      return AppError(
        code: ErrorCodes.timeoutError,
        message: 'The operation timed out. Please try again.',
        stackTrace: stackTrace,
      );
    }

    // Format errors
    if (error is FormatException) {
      return AppError(
        code: ErrorCodes.formatError,
        message: 'Invalid data format: ${error.message}',
        stackTrace: stackTrace,
      );
    }

    // State errors
    if (error is StateError) {
      return AppError(
        code: ErrorCodes.stateError,
        message: 'Application state error: ${error.message}',
        stackTrace: stackTrace,
      );
    }

    // Default error
    return AppError(
      code: ErrorCodes.unknownError,
      message: 'An unexpected error occurred: ${error.toString()}',
      stackTrace: stackTrace,
    );
  }
}