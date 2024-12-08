import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_result.freezed.dart';
part 'verification_result.g.dart';

@freezed
class VerificationResult with _$VerificationResult {
  const factory VerificationResult({
    required bool isValid,
    required bool measurementVerified,
    required bool imageVerified,
    required bool locationVerified,
    required bool timeVerified,
    required DateTime verificationTimestamp,
    Map<String, dynamic>? details,
    String? certificationHash,
  }) = _VerificationResult;

  factory VerificationResult.fromJson(Map<String, dynamic> json) =>
      _$VerificationResultFromJson(json);
}
