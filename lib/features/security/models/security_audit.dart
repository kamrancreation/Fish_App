import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_audit.freezed.dart';
part 'security_audit.g.dart';

@freezed
class SecurityAudit with _$SecurityAudit {
  const factory SecurityAudit({
    required String id,
    required String type,
    required String description,
    required Map<String, dynamic> parameters,
    required String initiatedBy,
    required DateTime startTime,
    String? status,
    Map<String, dynamic>? results,
    String? errorMessage,
    DateTime? endTime,
  }) = _SecurityAudit;

  factory SecurityAudit.fromJson(Map<String, dynamic> json) =>
      _$SecurityAuditFromJson(json);
}
