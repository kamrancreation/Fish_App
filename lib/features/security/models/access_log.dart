import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_log.freezed.dart';
part 'access_log.g.dart';

@freezed
class AccessLog with _$AccessLog {
  const factory AccessLog({
    required String id,
    required String userId,
    required String resource,
    required String action,
    required DateTime timestamp,
    required bool success,
    String? errorMessage,
    Map<String, dynamic>? metadata,
    String? ipAddress,
    String? deviceInfo,
  }) = _AccessLog;

  factory AccessLog.fromJson(Map<String, dynamic> json) =>
      _$AccessLogFromJson(json);
}
