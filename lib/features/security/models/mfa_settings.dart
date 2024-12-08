import 'package:freezed_annotation/freezed_annotation.dart';

part 'mfa_settings.freezed.dart';
part 'mfa_settings.g.dart';

@freezed
class MfaSettings with _$MfaSettings {
  const factory MfaSettings({
    required String userId,
    @Default('') String secret,
    @Default(false) bool enabled,
    @Default([]) List<String> backupCodes,
    String? lastVerified,
    @Default({}) Map<String, dynamic> metadata,
  }) = _MfaSettings;

  factory MfaSettings.fromJson(Map<String, dynamic> json) => _$MfaSettingsFromJson(json);
}
