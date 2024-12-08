import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser({
    required String id,
    required String email,
    String? displayName,
    String? photoUrl,
    @Default({}) Map<String, dynamic> metadata,
    @Default(false) bool isMfaEnabled,
    @Default([]) List<String> roles,
    @Default({}) Map<String, bool> permissions,
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) => _$AuthUserFromJson(json);
}

@freezed
class AuthSession with _$AuthSession {
  const factory AuthSession({
    required String id,
    required String userId,
    required DateTime createdAt,
    required DateTime expiresAt,
    @Default({}) Map<String, dynamic> metadata,
    @Default(true) bool isActive,
  }) = _AuthSession;

  factory AuthSession.fromJson(Map<String, dynamic> json) => _$AuthSessionFromJson(json);
}

@freezed
class AuthToken with _$AuthToken {
  const factory AuthToken({
    required String token,
    required DateTime expiresAt,
    @Default({}) Map<String, dynamic> claims,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, dynamic> json) => _$AuthTokenFromJson(json);
}

@freezed
class MfaSettings with _$MfaSettings {
  const factory MfaSettings({
    required String userId,
    required String secret,
    required bool isEnabled,
    required DateTime createdAt,
    required DateTime lastUpdatedAt,
    @Default({}) Map<String, dynamic> methodSettings,
  }) = _MfaSettings;

  factory MfaSettings.fromJson(Map<String, dynamic> json) => _$MfaSettingsFromJson(json);
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent({
    required String id,
    required String userId,
    required String event,
    required DateTime timestamp,
    required String ipAddress,
    required String userAgent,
    @Default({}) Map<String, dynamic> metadata,
  }) = _AuthEvent;

  factory AuthEvent.fromJson(Map<String, dynamic> json) => _$AuthEventFromJson(json);
}
