import 'dart:convert';
import 'package:http/http.dart' as http;
import '../error/app_error.dart';
import 'connectivity_service.dart';

class ApiService {
  final String baseUrl;
  final ConnectivityService _connectivityService;
  final Map<String, String> _defaultHeaders;
  final Duration timeout;

  ApiService({
    required this.baseUrl,
    required ConnectivityService connectivityService,
    Map<String, String>? defaultHeaders,
    this.timeout = const Duration(seconds: 30),
  })  : _connectivityService = connectivityService,
        _defaultHeaders = defaultHeaders ?? {};

  Future<T> get<T>(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    return _handleRequest(() async {
      final uri = _buildUri(endpoint, queryParameters);
      final response = await http
          .get(uri, headers: _mergeHeaders(headers))
          .timeout(timeout);
      return _handleResponse(response, fromJson);
    });
  }

  Future<T> post<T>(
    String endpoint, {
    dynamic body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    return _handleRequest(() async {
      final uri = _buildUri(endpoint, queryParameters);
      final response = await http
          .post(
            uri,
            headers: _mergeHeaders(headers),
            body: _encodeBody(body),
          )
          .timeout(timeout);
      return _handleResponse(response, fromJson);
    });
  }

  Future<T> put<T>(
    String endpoint, {
    dynamic body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    return _handleRequest(() async {
      final uri = _buildUri(endpoint, queryParameters);
      final response = await http
          .put(
            uri,
            headers: _mergeHeaders(headers),
            body: _encodeBody(body),
          )
          .timeout(timeout);
      return _handleResponse(response, fromJson);
    });
  }

  Future<T> delete<T>(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    return _handleRequest(() async {
      final uri = _buildUri(endpoint, queryParameters);
      final response = await http
          .delete(uri, headers: _mergeHeaders(headers))
          .timeout(timeout);
      return _handleResponse(response, fromJson);
    });
  }

  Future<T> patch<T>(
    String endpoint, {
    dynamic body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    return _handleRequest(() async {
      final uri = _buildUri(endpoint, queryParameters);
      final response = await http
          .patch(
            uri,
            headers: _mergeHeaders(headers),
            body: _encodeBody(body),
          )
          .timeout(timeout);
      return _handleResponse(response, fromJson);
    });
  }

  Future<List<T>> getList<T>(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    return _handleRequest(() async {
      final uri = _buildUri(endpoint, queryParameters);
      final response = await http
          .get(uri, headers: _mergeHeaders(headers))
          .timeout(timeout);
      
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((item) => fromJson!(item as Map<String, dynamic>)).toList();
    });
  }

  Uri _buildUri(String endpoint, Map<String, dynamic>? queryParameters) {
    final uri = Uri.parse('$baseUrl$endpoint');
    if (queryParameters == null) return uri;

    final normalizedParams = queryParameters.map(
      (key, value) => MapEntry(key, value.toString()),
    );

    return uri.replace(queryParameters: normalizedParams);
  }

  Map<String, String> _mergeHeaders(Map<String, String>? headers) {
    return {
      'Content-Type': 'application/json',
      ..._defaultHeaders,
      ...?headers,
    };
  }

  String? _encodeBody(dynamic body) {
    if (body == null) return null;
    return json.encode(body);
  }

  Future<T> _handleRequest<T>(Future<T> Function() request) async {
    if (!await _connectivityService.checkConnectivity()) {
      throw AppError(
        code: 'no-internet',
        message: 'No internet connection available',
      );
    }

    try {
      return await request();
    } on http.ClientException catch (e) {
      throw AppError(
        code: 'network-error',
        message: 'Network request failed',
        context: {'error': e.toString()},
      );
    } catch (e) {
      throw AppError(
        code: 'request-failed',
        message: 'Request failed: ${e.toString()}',
      );
    }
  }

  T _handleResponse<T>(
    http.Response response,
    T Function(Map<String, dynamic>)? fromJson,
  ) {
    final statusCode = response.statusCode;
    final body = _decodeBody(response);

    if (statusCode >= 200 && statusCode < 300) {
      if (fromJson != null) {
        return fromJson(body);
      }
      return body as T;
    }

    throw _createErrorFromResponse(statusCode, body);
  }

  Map<String, dynamic> _decodeBody(http.Response response) {
    try {
      return json.decode(response.body) as Map<String, dynamic>;
    } catch (e) {
      throw AppError(
        code: 'invalid-response',
        message: 'Invalid response format',
        context: {'body': response.body},
      );
    }
  }

  AppError _createErrorFromResponse(
    int statusCode,
    Map<String, dynamic> body,
  ) {
    final message = body['message'] as String? ?? 'Unknown error occurred';
    
    switch (statusCode) {
      case 400:
        return AppError(
          code: 'bad-request',
          message: message,
          context: body,
        );
      case 401:
        return AppError(
          code: 'unauthorized',
          message: 'Unauthorized access',
          context: body,
        );
      case 403:
        return AppError(
          code: 'forbidden',
          message: 'Access forbidden',
          context: body,
        );
      case 404:
        return AppError(
          code: 'not-found',
          message: 'Resource not found',
          context: body,
        );
      case 409:
        return AppError(
          code: 'conflict',
          message: message,
          context: body,
        );
      case 422:
        return AppError(
          code: 'validation-error',
          message: message,
          context: body,
        );
      case 429:
        return AppError(
          code: 'rate-limit',
          message: 'Too many requests',
          context: body,
        );
      case 500:
        return AppError(
          code: 'server-error',
          message: 'Internal server error',
          context: body,
        );
      default:
        return AppError(
          code: 'unknown-error',
          message: message,
          context: body,
        );
    }
  }
}
