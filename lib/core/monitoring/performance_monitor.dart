import 'package:firebase_performance/firebase_performance.dart';
import '../error/error_handler.dart';
import '../services/analytics_service.dart';

class PerformanceMonitor {
  final FirebasePerformance _performance = FirebasePerformance.instance;
  final AnalyticsService _analytics;
  final ErrorHandler _errorHandler;

  PerformanceMonitor({
    AnalyticsService? analytics,
    ErrorHandler? errorHandler,
  })  : _analytics = analytics ?? AnalyticsService(),
        _errorHandler = errorHandler ?? ErrorHandler();

  Future<T> trackOperation<T>({
    required String name,
    required Future<T> Function() operation,
    Map<String, String>? attributes,
  }) async {
    final trace = _performance.newTrace(name);
    await trace.start();

    for (final entry in attributes?.entries ?? []) {
      trace.putAttribute(entry.key, entry.value);
    }

    try {
      final startTime = DateTime.now();
      final result = await operation();
      final duration = DateTime.now().difference(startTime);

      trace.putAttribute('success', 'true');
      trace.putMetric('duration_ms', duration.inMilliseconds.toDouble());

      await _analytics.trackEvent(
        'performance_metric',
        parameters: {
          'operation': name,
          'duration_ms': duration.inMilliseconds,
          'success': true,
          ...?attributes,
        },
      );

      return result;
    } catch (error) {
      trace.putAttribute('success', 'false');
      trace.putAttribute('error_type', error.runtimeType.toString());

      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Performance monitoring: $name',
      );

      rethrow;
    } finally {
      await trace.stop();
    }
  }

  Future<void> startCustomTrace(String name) async {
    final trace = _performance.newTrace(name);
    await trace.start();
  }

  Future<void> stopCustomTrace(String name) async {
    final trace = _performance.newTrace(name);
    await trace.stop();
  }

  Future<T> trackNetworkRequest<T>({
    required String url,
    required String method,
    required Future<T> Function() request,
  }) async {
    final metric = _performance.newHttpMetric(
        url,
        HttpMethod.values.firstWhere(
          (e) =>
              e.toString().split('.').last.toUpperCase() ==
              method.toUpperCase(),
          orElse: () => HttpMethod.get,
        ));

    await metric.start();

    try {
      final startTime = DateTime.now();
      final response = await request();
      final duration = DateTime.now().difference(startTime);

      metric.httpResponseCode = 200;
      metric.responsePayloadSize = _getResponseSize(response);
      metric.putAttribute('success', 'true');

      await _analytics.trackEvent(
        'network_request',
        parameters: {
          'url': url,
          'method': method,
          'duration_ms': duration.inMilliseconds,
          'success': true,
        },
      );

      return response;
    } catch (error) {
      metric.httpResponseCode = _getErrorStatusCode(error);
      metric.putAttribute('success', 'false');
      metric.putAttribute('error_type', error.runtimeType.toString());

      await _errorHandler.handleError(
        () => Future.error(error),
        context: 'Network request: $method $url',
      );

      rethrow;
    } finally {
      await metric.stop();
    }
  }

  void setUserProperty(String name, String value) {
    _analytics.setUserProperty(name: name, value: value);
  }

  Future<void> trackScreenLoad(String screenName, Duration loadTime) async {
    await _analytics.trackEvent(
      'screen_load',
      parameters: {
        'screen_name': screenName,
        'load_time_ms': loadTime.inMilliseconds,
      },
    );
  }

  Future<void> trackMemoryUsage(String context) async {
    // Implementation depends on platform-specific memory APIs
  }

  int _getResponseSize(dynamic response) {
    // Implementation to calculate response size
    return 0;
  }

  int _getErrorStatusCode(dynamic error) {
    // Implementation to extract status code from error
    return 500;
  }
}
