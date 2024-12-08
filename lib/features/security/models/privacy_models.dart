import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'privacy_models.freezed.dart';
part 'privacy_models.g.dart';

@freezed
class LocationPrivacy with _$LocationPrivacy {
  const factory LocationPrivacy({
    required String userId,
    required bool shareLocation,
    required String precision,
    required List<String> allowedUsers,
    required List<String> blockedUsers,
    required Map<String, bool> featureSettings,
    required Map<String, dynamic> metadata,
  }) = _LocationPrivacy;

  factory LocationPrivacy.fromJson(Map<String, dynamic> json) =>
      _$LocationPrivacyFromJson(json);
}

@freezed
class DataSharingSettings with _$DataSharingSettings {
  const factory DataSharingSettings({
    required String userId,
    required Map<String, String> dataTypes,
    required Map<String, List<String>> allowedUsers,
    required Map<String, bool> thirdPartySharing,
    required DateTime lastUpdated,
    required Map<String, dynamic> preferences,
  }) = _DataSharingSettings;

  factory DataSharingSettings.fromJson(Map<String, dynamic> json) =>
      _$DataSharingSettingsFromJson(json);
}

@freezed
class ProfileVisibility with _$ProfileVisibility {
  const factory ProfileVisibility({
    required String userId,
    required String defaultVisibility,
    required Map<String, String> fieldVisibility,
    required List<String> allowedUsers,
    required List<String> blockedUsers,
    required Map<String, dynamic> settings,
  }) = _ProfileVisibility;

  factory ProfileVisibility.fromJson(Map<String, dynamic> json) =>
      _$ProfileVisibilityFromJson(json);
}

@freezed
class ContentAccess with _$ContentAccess {
  const factory ContentAccess({
    required String contentId,
    required String contentType,
    required String ownerId,
    required String visibility,
    required List<String> allowedUsers,
    required List<String> blockedUsers,
    required Map<String, dynamic> permissions,
  }) = _ContentAccess;

  factory ContentAccess.fromJson(Map<String, dynamic> json) =>
      _$ContentAccessFromJson(json);
}

@freezed
class FriendControl with _$FriendControl {
  const factory FriendControl({
    required String userId,
    required bool allowFriendRequests,
    required List<String> friendList,
    required List<String> pendingRequests,
    required List<String> blockedUsers,
    required Map<String, String> friendGroups,
    required Map<String, dynamic> settings,
  }) = _FriendControl;

  factory FriendControl.fromJson(Map<String, dynamic> json) =>
      _$FriendControlFromJson(json);
}

@freezed
class BlockSettings with _$BlockSettings {
  const factory BlockSettings({
    required String userId,
    required List<String> blockedUsers,
    required List<String> blockedByUsers,
    required Map<String, String> blockReasons,
    required DateTime lastUpdated,
    required Map<String, dynamic> settings,
  }) = _BlockSettings;

  factory BlockSettings.fromJson(Map<String, dynamic> json) =>
      _$BlockSettingsFromJson(json);
}
