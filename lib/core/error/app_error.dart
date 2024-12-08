
class AppError implements Exception {
  final String code;
  final String message;
  final Map<String, dynamic>? context;
  final Map<String, dynamic>? metadata;
  final StackTrace? stackTrace;

  AppError({
    required this.code,
    required this.message,
    this.context,
    this.metadata,
    this.stackTrace,
  });

  @override
  String toString() {
    return 'AppError: [$code] $message';
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'message': message,
      if (context != null) 'context': context,
      if (metadata != null) 'metadata': metadata,
      if (stackTrace != null) 'stackTrace': stackTrace.toString(),
    };
  }

  static AppError fromMap(Map<String, dynamic> map) {
    return AppError(
      code: map['code'] as String,
      message: map['message'] as String,
      context: map['context'] as Map<String, dynamic>?,
      metadata: map['metadata'] as Map<String, dynamic>?,
    );
  }

  AppError copyWith({
    String? code,
    String? message,
    Map<String, dynamic>? context,
    Map<String, dynamic>? metadata,
    StackTrace? stackTrace,
  }) {
    return AppError(
      code: code ?? this.code,
      message: message ?? this.message,
      context: context ?? this.context,
      metadata: metadata ?? this.metadata,
      stackTrace: stackTrace ?? this.stackTrace,
    );
  }
}

// Common error codes
class ErrorCodes {
  static const String networkError = 'network-error';
  static const String serverError = 'server-error';
  static const String authError = 'auth-error';
  static const String validationError = 'validation-error';
  static const String notFoundError = 'not-found';
  static const String permissionError = 'permission-denied';
  static const String unknownError = 'unknown-error';
  static const String timeoutError = 'timeout';
  static const String authenticationError = 'authentication-error';
  static const String duplicateError = 'duplicate';
  static const String quotaError = 'quota';
  static const String preconditionError = 'precondition';
  static const String cancelledError = 'cancelled';
  static const String formatError = 'format';
  static const String stateError = 'state';
}
