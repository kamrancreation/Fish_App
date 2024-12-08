// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_audit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecurityAuditImpl _$$SecurityAuditImplFromJson(Map<String, dynamic> json) =>
    _$SecurityAuditImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      parameters: json['parameters'] as Map<String, dynamic>,
      initiatedBy: json['initiatedBy'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      status: json['status'] as String?,
      results: json['results'] as Map<String, dynamic>?,
      errorMessage: json['errorMessage'] as String?,
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$$SecurityAuditImplToJson(_$SecurityAuditImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'description': instance.description,
      'parameters': instance.parameters,
      'initiatedBy': instance.initiatedBy,
      'startTime': instance.startTime.toIso8601String(),
      'status': instance.status,
      'results': instance.results,
      'errorMessage': instance.errorMessage,
      'endTime': instance.endTime?.toIso8601String(),
    };
