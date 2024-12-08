// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserImpl _$$AuthUserImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      photoUrl: json['photoUrl'] as String?,
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
      'metadata': instance.metadata,
      'isMfaEnabled': instance.isMfaEnabled,
      'roles': instance.roles,
      'permissions': instance.permissions,
    };

_$AuthSessionImpl _$$AuthSessionImplFromJson(Map<String, dynamic> json) =>
    _$AuthSessionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$AuthSessionImplToJson(_$AuthSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'metadata': instance.metadata,
      'isActive': instance.isActive,
    };

_$AuthTokenImpl _$$AuthTokenImplFromJson(Map<String, dynamic> json) =>
    _$AuthTokenImpl(
      token: json['token'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      claims: json['claims'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$AuthTokenImplToJson(_$AuthTokenImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'claims': instance.claims,
    };

_$MfaSettingsImpl _$$MfaSettingsImplFromJson(Map<String, dynamic> json) =>
    _$MfaSettingsImpl(
      userId: json['userId'] as String,
      secret: json['secret'] as String,
      isEnabled: json['isEnabled'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastUpdatedAt: DateTime.parse(json['lastUpdatedAt'] as String),
      methodSettings:
          json['methodSettings'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$MfaSettingsImplToJson(_$MfaSettingsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'secret': instance.secret,
      'isEnabled': instance.isEnabled,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastUpdatedAt': instance.lastUpdatedAt.toIso8601String(),
      'methodSettings': instance.methodSettings,
    };

_$AuthEventImpl _$$AuthEventImplFromJson(Map<String, dynamic> json) =>
    _$AuthEventImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      event: json['event'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      ipAddress: json['ipAddress'] as String,
      userAgent: json['userAgent'] as String,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$AuthEventImplToJson(_$AuthEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'event': instance.event,
      'timestamp': instance.timestamp.toIso8601String(),
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
      'metadata': instance.metadata,
    };
