class ErrorCodes {
  static const String networkError = 'NETWORK_ERROR';
  static const String authenticationError = 'AUTHENTICATION_ERROR';
  static const String permissionError = 'PERMISSION_ERROR';
  static const String timeoutError = 'TIMEOUT_ERROR';
  static const String formatError = 'FORMAT_ERROR';
  static const String stateError = 'STATE_ERROR';
  static const String unknownError = 'UNKNOWN_ERROR';
  static const String notFoundError = 'NOT_FOUND_ERROR';
  static const String duplicateError = 'DUPLICATE_ERROR';
  static const String quotaError = 'QUOTA_ERROR';
  static const String cancelledError = 'CANCELLED_ERROR';
  static const String preconditionError = 'PRECONDITION_ERROR';
}

class ErrorCode {
  static const String network = ErrorCodes.networkError;
  static const String authentication = ErrorCodes.authenticationError;
  static const String permission = ErrorCodes.permissionError;
  static const String timeout = ErrorCodes.timeoutError;
  static const String format = ErrorCodes.formatError;
  static const String state = ErrorCodes.stateError;
  static const String unknown = ErrorCodes.unknownError;
  static const String notFound = ErrorCodes.notFoundError;
  static const String duplicate = ErrorCodes.duplicateError;
  static const String quota = ErrorCodes.quotaError;
  static const String cancelled = ErrorCodes.cancelledError;
  static const String precondition = ErrorCodes.preconditionError;
}
