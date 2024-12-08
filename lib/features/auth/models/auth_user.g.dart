// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserImpl _$$AuthUserImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      photoUrl: json['photoUrl'] as String?,
      emailVerified: json['emailVerified'] as bool,
      phoneNumber: json['phoneNumber'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastLoginAt: DateTime.parse(json['lastLoginAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      isMfaEnabled: json['isMfaEnabled'] as bool? ?? false,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      permissions: (json['permissions'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ) ??
          const {},
    );

Map<String, dynamic> _$$AuthUserImplToJson(_$AuthUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'emailVerified': instance.emailVerified,
      'phoneNumber': instance.phoneNumber,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt.toIso8601String(),
      'metadata': instance.metadata,
      'isMfaEnabled': instance.isMfaEnabled,
      'roles': instance.roles,
      'permissions': instance.permissions,
    };

_$AuthSessionImpl _$$AuthSessionImplFromJson(Map<String, dynamic> json) =>
    _$AuthSessionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      deviceId: json['deviceId'] as String,
      deviceInfo: json['deviceInfo'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      ipAddress: json['ipAddress'] as String,
      userAgent: json['userAgent'] as String,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$AuthSessionImplToJson(_$AuthSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'deviceId': instance.deviceId,
      'deviceInfo': instance.deviceInfo,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
      'metadata': instance.metadata,
      'isActive': instance.isActive,
    };

_$AuthTokenImpl _$$AuthTokenImplFromJson(Map<String, dynamic> json) =>
    _$AuthTokenImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      tokenType: json['tokenType'] as String,
      claims: json['claims'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$AuthTokenImplToJson(_$AuthTokenImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'tokenType': instance.tokenType,
      'claims': instance.claims,
    };

_$MfaSettingsImpl _$$MfaSettingsImplFromJson(Map<String, dynamic> json) =>
    _$MfaSettingsImpl(
      userId: json['userId'] as String,
      isEnabled: json['isEnabled'] as bool,
      methods:
          (json['methods'] as List<dynamic>).map((e) => e as String).toList(),
      preferredMethod: json['preferredMethod'] as String?,
      methodSettings:
          json['methodSettings'] as Map<String, dynamic>? ?? const {},
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$MfaSettingsImplToJson(_$MfaSettingsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'isEnabled': instance.isEnabled,
      'methods': instance.methods,
      'preferredMethod': instance.preferredMethod,
      'methodSettings': instance.methodSettings,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };

_$AuthEventImpl _$$AuthEventImplFromJson(Map<String, dynamic> json) =>
    _$AuthEventImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      event: json['event'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      ipAddress: json['ipAddress'] as String,
      deviceInfo: json['deviceInfo'] as String,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      status: json['status'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$AuthEventImplToJson(_$AuthEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'event': instance.event,
      'timestamp': instance.timestamp.toIso8601String(),
      'ipAddress': instance.ipAddress,
      'deviceInfo': instance.deviceInfo,
      'metadata': instance.metadata,
      'status': instance.status,
      'errorMessage': instance.errorMessage,
    };
