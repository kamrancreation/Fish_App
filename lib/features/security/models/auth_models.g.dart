// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthImpl _$$UserAuthImplFromJson(Map<String, dynamic> json) =>
    _$UserAuthImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
      isMfaEnabled: json['isMfaEnabled'] as bool,
      mfaMethods: (json['mfaMethods'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      linkedSocialAccounts: (json['linkedSocialAccounts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      lastLogin: DateTime.parse(json['lastLogin'] as String),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$UserAuthImplToJson(_$UserAuthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'isEmailVerified': instance.isEmailVerified,
      'isMfaEnabled': instance.isMfaEnabled,
      'mfaMethods': instance.mfaMethods,
      'linkedSocialAccounts': instance.linkedSocialAccounts,
      'lastLogin': instance.lastLogin.toIso8601String(),
      'metadata': instance.metadata,
    };

_$MfaMethodImpl _$$MfaMethodImplFromJson(Map<String, dynamic> json) =>
    _$MfaMethodImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      type: json['type'] as String,
      isEnabled: json['isEnabled'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastUsed: DateTime.parse(json['lastUsed'] as String),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MfaMethodImplToJson(_$MfaMethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'isEnabled': instance.isEnabled,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastUsed': instance.lastUsed.toIso8601String(),
      'metadata': instance.metadata,
    };

_$UserSessionImpl _$$UserSessionImplFromJson(Map<String, dynamic> json) =>
    _$UserSessionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      deviceId: json['deviceId'] as String,
      ipAddress: json['ipAddress'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      isActive: json['isActive'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$UserSessionImplToJson(_$UserSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'deviceId': instance.deviceId,
      'ipAddress': instance.ipAddress,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'isActive': instance.isActive,
      'metadata': instance.metadata,
    };

_$PasswordPolicyImpl _$$PasswordPolicyImplFromJson(Map<String, dynamic> json) =>
    _$PasswordPolicyImpl(
      minLength: (json['minLength'] as num).toInt(),
      requireUppercase: json['requireUppercase'] as bool,
      requireLowercase: json['requireLowercase'] as bool,
      requireNumbers: json['requireNumbers'] as bool,
      requireSpecialChars: json['requireSpecialChars'] as bool,
      maxAge: (json['maxAge'] as num).toInt(),
      historyCount: (json['historyCount'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$PasswordPolicyImplToJson(
        _$PasswordPolicyImpl instance) =>
    <String, dynamic>{
      'minLength': instance.minLength,
      'requireUppercase': instance.requireUppercase,
      'requireLowercase': instance.requireLowercase,
      'requireNumbers': instance.requireNumbers,
      'requireSpecialChars': instance.requireSpecialChars,
      'maxAge': instance.maxAge,
      'historyCount': instance.historyCount,
      'metadata': instance.metadata,
    };

_$RecoveryOptionImpl _$$RecoveryOptionImplFromJson(Map<String, dynamic> json) =>
    _$RecoveryOptionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      type: json['type'] as String,
      value: json['value'] as String,
      isVerified: json['isVerified'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastUsed: json['lastUsed'] == null
          ? null
          : DateTime.parse(json['lastUsed'] as String),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$RecoveryOptionImplToJson(
        _$RecoveryOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'value': instance.value,
      'isVerified': instance.isVerified,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastUsed': instance.lastUsed?.toIso8601String(),
      'metadata': instance.metadata,
    };

_$LoginAttemptImpl _$$LoginAttemptImplFromJson(Map<String, dynamic> json) =>
    _$LoginAttemptImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      ipAddress: json['ipAddress'] as String,
      deviceInfo: json['deviceInfo'] as String,
      isSuccessful: json['isSuccessful'] as bool,
      failureReason: json['failureReason'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$LoginAttemptImplToJson(_$LoginAttemptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'ipAddress': instance.ipAddress,
      'deviceInfo': instance.deviceInfo,
      'isSuccessful': instance.isSuccessful,
      'failureReason': instance.failureReason,
      'timestamp': instance.timestamp.toIso8601String(),
      'metadata': instance.metadata,
    };
