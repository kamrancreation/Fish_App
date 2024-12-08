// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptionKeyImpl _$$EncryptionKeyImplFromJson(Map<String, dynamic> json) =>
    _$EncryptionKeyImpl(
      id: json['id'] as String,
      key: json['key'] as String,
      createdAt: _parseDateTime(json['createdAt']),
      expiresAt: _parseDateTime(json['expiresAt']),
      isActive: json['isActive'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$EncryptionKeyImplToJson(_$EncryptionKeyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'createdAt': _dateToString(instance.createdAt),
      'expiresAt': _dateToString(instance.expiresAt),
      'isActive': instance.isActive,
      'metadata': instance.metadata,
    };

_$SecurityAuditImpl _$$SecurityAuditImplFromJson(Map<String, dynamic> json) =>
    _$SecurityAuditImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      action: json['action'] as String,
      timestamp: _parseDateTime(json['timestamp']),
      ipAddress: json['ipAddress'] as String,
      userAgent: json['userAgent'] as String,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$SecurityAuditImplToJson(_$SecurityAuditImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'action': instance.action,
      'timestamp': _dateToString(instance.timestamp),
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
      'metadata': instance.metadata,
    };

_$DataBackupImpl _$$DataBackupImplFromJson(Map<String, dynamic> json) =>
    _$DataBackupImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      timestamp: _parseDateTime(json['timestamp']),
      location: json['location'] as String,
      size: (json['size'] as num).toInt(),
      isComplete: json['isComplete'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$DataBackupImplToJson(_$DataBackupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'timestamp': _dateToString(instance.timestamp),
      'location': instance.location,
      'size': instance.size,
      'isComplete': instance.isComplete,
      'metadata': instance.metadata,
    };

_$PrivacySettingsImpl _$$PrivacySettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivacySettingsImpl(
      userId: json['userId'] as String,
      isProfilePublic: json['isProfilePublic'] as bool,
      showLocation: json['showLocation'] as bool,
      blockedUsers: (json['blockedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      settings: json['settings'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$PrivacySettingsImplToJson(
        _$PrivacySettingsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'isProfilePublic': instance.isProfilePublic,
      'showLocation': instance.showLocation,
      'blockedUsers': instance.blockedUsers,
      'settings': instance.settings,
    };

_$AccessLogImpl _$$AccessLogImplFromJson(Map<String, dynamic> json) =>
    _$AccessLogImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      resource: json['resource'] as String,
      action: json['action'] as String,
      timestamp: _parseDateTime(json['timestamp']),
      ipAddress: json['ipAddress'] as String,
      userAgent: json['userAgent'] as String,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$AccessLogImplToJson(_$AccessLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'resource': instance.resource,
      'action': instance.action,
      'timestamp': _dateToString(instance.timestamp),
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
      'metadata': instance.metadata,
    };

_$SecurityAlertImpl _$$SecurityAlertImplFromJson(Map<String, dynamic> json) =>
    _$SecurityAlertImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      type: json['type'] as String,
      message: json['message'] as String,
      timestamp: _parseDateTime(json['timestamp']),
      isResolved: json['isResolved'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$SecurityAlertImplToJson(_$SecurityAlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'message': instance.message,
      'timestamp': _dateToString(instance.timestamp),
      'isResolved': instance.isResolved,
      'metadata': instance.metadata,
    };
