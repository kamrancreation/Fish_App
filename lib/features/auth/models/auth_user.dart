import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser({
    required String id,
    required String email,
    required String displayName,
    String? photoUrl,
    required bool emailVerified,
    String? phoneNumber,
    required DateTime createdAt,
    required DateTime lastLoginAt,
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
    required String deviceId,
    required String deviceInfo,
    required DateTime createdAt,
    required DateTime expiresAt,
    required String ipAddress,
    required String userAgent,
    @Default({}) Map<String, dynamic> metadata,
    @Default(true) bool isActive,
  }) = _AuthSession;

  factory AuthSession.fromJson(Map<String, dynamic> json) => _$AuthSessionFromJson(json);
}

@freezed
class AuthToken with _$AuthToken {
  const factory AuthToken({
    required String accessToken,
    required String refreshToken,
    required DateTime expiresAt,
    required String tokenType,
    @Default({}) Map<String, dynamic> claims,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, dynamic> json) => _$AuthTokenFromJson(json);
}

@freezed
class MfaSettings with _$MfaSettings {
  const factory MfaSettings({
    required String userId,
    required bool isEnabled,
    required List<String> methods,
    String? preferredMethod,
    @Default({}) Map<String, dynamic> methodSettings,
    DateTime? lastUpdated,
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
    required String deviceInfo,
    @Default({}) Map<String, dynamic> metadata,
    String? status,
    String? errorMessage,
  }) = _AuthEvent;

  factory AuthEvent.fromJson(Map<String, dynamic> json) => _$AuthEventFromJson(json);
}
