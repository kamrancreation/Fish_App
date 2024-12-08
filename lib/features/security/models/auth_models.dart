import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
class UserAuth with _$UserAuth {
  const factory UserAuth({
    required String id,
    required String email,
    required bool isEmailVerified,
    required bool isMfaEnabled,
    required List<String> mfaMethods,
    required List<String> linkedSocialAccounts,
    required DateTime lastLogin,
    required Map<String, dynamic> metadata,
  }) = _UserAuth;

  factory UserAuth.fromJson(Map<String, dynamic> json) =>
      _$UserAuthFromJson(json);
}

@freezed
class MfaMethod with _$MfaMethod {
  const factory MfaMethod({
    required String id,
    required String userId,
    required String type,
    required bool isEnabled,
    required DateTime createdAt,
    required DateTime lastUsed,
    required Map<String, dynamic> metadata,
  }) = _MfaMethod;

  factory MfaMethod.fromJson(Map<String, dynamic> json) =>
      _$MfaMethodFromJson(json);
}

@freezed
class UserSession with _$UserSession {
  const factory UserSession({
    required String id,
    required String userId,
    required String deviceId,
    required String ipAddress,
    required DateTime createdAt,
    required DateTime expiresAt,
    required bool isActive,
    required Map<String, dynamic> metadata,
  }) = _UserSession;

  factory UserSession.fromJson(Map<String, dynamic> json) =>
      _$UserSessionFromJson(json);
}

@freezed
class PasswordPolicy with _$PasswordPolicy {
  const factory PasswordPolicy({
    required int minLength,
    required bool requireUppercase,
    required bool requireLowercase,
    required bool requireNumbers,
    required bool requireSpecialChars,
    required int maxAge,
    required int historyCount,
    required Map<String, dynamic> metadata,
  }) = _PasswordPolicy;

  factory PasswordPolicy.fromJson(Map<String, dynamic> json) =>
      _$PasswordPolicyFromJson(json);
}

@freezed
class RecoveryOption with _$RecoveryOption {
  const factory RecoveryOption({
    required String id,
    required String userId,
    required String type,
    required String value,
    required bool isVerified,
    required DateTime createdAt,
    required DateTime? lastUsed,
    required Map<String, dynamic> metadata,
  }) = _RecoveryOption;

  factory RecoveryOption.fromJson(Map<String, dynamic> json) =>
      _$RecoveryOptionFromJson(json);
}

@freezed
class LoginAttempt with _$LoginAttempt {
  const factory LoginAttempt({
    required String id,
    required String userId,
    required String ipAddress,
    required String deviceInfo,
    required bool isSuccessful,
    required String failureReason,
    required DateTime timestamp,
    required Map<String, dynamic> metadata,
  }) = _LoginAttempt;

  factory LoginAttempt.fromJson(Map<String, dynamic> json) =>
      _$LoginAttemptFromJson(json);
}
