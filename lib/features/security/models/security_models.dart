import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_models.freezed.dart';
part 'security_models.g.dart';

DateTime _parseDateTime(dynamic value) {
  if (value is DateTime) return value;
  if (value is String) return DateTime.parse(value);
  throw ArgumentError('Invalid DateTime value: $value');
}

@freezed
class EncryptionKey with _$EncryptionKey {
  const factory EncryptionKey({
    required String id,
    required String key,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime createdAt,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime expiresAt,
    required bool isActive,
    @Default({}) Map<String, dynamic> metadata,
  }) = _EncryptionKey;

  factory EncryptionKey.fromJson(Map<String, dynamic> json) => _$EncryptionKeyFromJson(json);
}

@freezed
class SecurityAudit with _$SecurityAudit {
  const factory SecurityAudit({
    required String id,
    required String userId,
    required String action,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime timestamp,
    required String ipAddress,
    required String userAgent,
    @Default({}) Map<String, dynamic> metadata,
  }) = _SecurityAudit;

  factory SecurityAudit.fromJson(Map<String, dynamic> json) => _$SecurityAuditFromJson(json);
}

@freezed
class DataBackup with _$DataBackup {
  const factory DataBackup({
    required String id,
    required String userId,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime timestamp,
    required String location,
    required int size,
    required bool isComplete,
    @Default({}) Map<String, dynamic> metadata,
  }) = _DataBackup;

  factory DataBackup.fromJson(Map<String, dynamic> json) => _$DataBackupFromJson(json);
}

@freezed
class PrivacySettings with _$PrivacySettings {
  const factory PrivacySettings({
    required String userId,
    required bool isProfilePublic,
    required bool showLocation,
    required List<String> blockedUsers,
    @Default({}) Map<String, dynamic> settings,
  }) = _PrivacySettings;

  factory PrivacySettings.fromJson(Map<String, dynamic> json) => _$PrivacySettingsFromJson(json);
}

@freezed
class AccessLog with _$AccessLog {
  const factory AccessLog({
    required String id,
    required String userId,
    required String resource,
    required String action,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime timestamp,
    required String ipAddress,
    required String userAgent,
    @Default({}) Map<String, dynamic> metadata,
  }) = _AccessLog;

  factory AccessLog.fromJson(Map<String, dynamic> json) => _$AccessLogFromJson(json);
}

@freezed
class SecurityAlert with _$SecurityAlert {
  const factory SecurityAlert({
    required String id,
    required String userId,
    required String type,
    required String message,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime timestamp,
    required bool isResolved,
    @Default({}) Map<String, dynamic> metadata,
  }) = _SecurityAlert;

  factory SecurityAlert.fromJson(Map<String, dynamic> json) => _$SecurityAlertFromJson(json);
}

String _dateToString(DateTime date) => date.toIso8601String();
