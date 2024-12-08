import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_event.freezed.dart';
part 'security_event.g.dart';

@freezed
class SecurityEvent with _$SecurityEvent {
  const factory SecurityEvent({
    required String id,
    required String userId,
    required String type,
    required String description,
    required DateTime timestamp,
    required String severity,
    @Default({}) Map<String, dynamic> metadata,
  }) = _SecurityEvent;

  factory SecurityEvent.fromJson(Map<String, dynamic> json) =>
      _$SecurityEventFromJson(json);
}
