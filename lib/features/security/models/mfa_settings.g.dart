// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MfaSettingsImpl _$$MfaSettingsImplFromJson(Map<String, dynamic> json) =>
    _$MfaSettingsImpl(
      userId: json['userId'] as String,
      secret: json['secret'] as String? ?? '',
      enabled: json['enabled'] as bool? ?? false,
      backupCodes: (json['backupCodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      lastVerified: json['lastVerified'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$MfaSettingsImplToJson(_$MfaSettingsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'secret': instance.secret,
      'enabled': instance.enabled,
      'backupCodes': instance.backupCodes,
      'lastVerified': instance.lastVerified,
      'metadata': instance.metadata,
    };
