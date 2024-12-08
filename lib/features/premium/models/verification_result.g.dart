// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationResultImpl _$$VerificationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationResultImpl(
      isValid: json['isValid'] as bool,
      measurementVerified: json['measurementVerified'] as bool,
      imageVerified: json['imageVerified'] as bool,
      locationVerified: json['locationVerified'] as bool,
      timeVerified: json['timeVerified'] as bool,
      verificationTimestamp:
          DateTime.parse(json['verificationTimestamp'] as String),
      details: json['details'] as Map<String, dynamic>?,
      certificationHash: json['certificationHash'] as String?,
    );

Map<String, dynamic> _$$VerificationResultImplToJson(
        _$VerificationResultImpl instance) =>
    <String, dynamic>{
      'isValid': instance.isValid,
      'measurementVerified': instance.measurementVerified,
      'imageVerified': instance.imageVerified,
      'locationVerified': instance.locationVerified,
      'timeVerified': instance.timeVerified,
      'verificationTimestamp': instance.verificationTimestamp.toIso8601String(),
      'details': instance.details,
      'certificationHash': instance.certificationHash,
    };
