// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessLogImpl _$$AccessLogImplFromJson(Map<String, dynamic> json) =>
    _$AccessLogImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      resource: json['resource'] as String,
      action: json['action'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      success: json['success'] as bool,
      errorMessage: json['errorMessage'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      ipAddress: json['ipAddress'] as String?,
      deviceInfo: json['deviceInfo'] as String?,
    );

Map<String, dynamic> _$$AccessLogImplToJson(_$AccessLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'resource': instance.resource,
      'action': instance.action,
      'timestamp': instance.timestamp.toIso8601String(),
      'success': instance.success,
      'errorMessage': instance.errorMessage,
      'metadata': instance.metadata,
      'ipAddress': instance.ipAddress,
      'deviceInfo': instance.deviceInfo,
    };
