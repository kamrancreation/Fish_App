// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationPrivacyImpl _$$LocationPrivacyImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationPrivacyImpl(
      userId: json['userId'] as String,
      shareLocation: json['shareLocation'] as bool,
      precision: json['precision'] as String,
      allowedUsers: (json['allowedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      blockedUsers: (json['blockedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      featureSettings: Map<String, bool>.from(json['featureSettings'] as Map),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$LocationPrivacyImplToJson(
        _$LocationPrivacyImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'shareLocation': instance.shareLocation,
      'precision': instance.precision,
      'allowedUsers': instance.allowedUsers,
      'blockedUsers': instance.blockedUsers,
      'featureSettings': instance.featureSettings,
      'metadata': instance.metadata,
    };

_$DataSharingSettingsImpl _$$DataSharingSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$DataSharingSettingsImpl(
      userId: json['userId'] as String,
      dataTypes: Map<String, String>.from(json['dataTypes'] as Map),
      allowedUsers: (json['allowedUsers'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      thirdPartySharing:
          Map<String, bool>.from(json['thirdPartySharing'] as Map),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      preferences: json['preferences'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$DataSharingSettingsImplToJson(
        _$DataSharingSettingsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'dataTypes': instance.dataTypes,
      'allowedUsers': instance.allowedUsers,
      'thirdPartySharing': instance.thirdPartySharing,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'preferences': instance.preferences,
    };

_$ProfileVisibilityImpl _$$ProfileVisibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileVisibilityImpl(
      userId: json['userId'] as String,
      defaultVisibility: json['defaultVisibility'] as String,
      fieldVisibility: Map<String, String>.from(json['fieldVisibility'] as Map),
      allowedUsers: (json['allowedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      blockedUsers: (json['blockedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      settings: json['settings'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$ProfileVisibilityImplToJson(
        _$ProfileVisibilityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'defaultVisibility': instance.defaultVisibility,
      'fieldVisibility': instance.fieldVisibility,
      'allowedUsers': instance.allowedUsers,
      'blockedUsers': instance.blockedUsers,
      'settings': instance.settings,
    };

_$ContentAccessImpl _$$ContentAccessImplFromJson(Map<String, dynamic> json) =>
    _$ContentAccessImpl(
      contentId: json['contentId'] as String,
      contentType: json['contentType'] as String,
      ownerId: json['ownerId'] as String,
      visibility: json['visibility'] as String,
      allowedUsers: (json['allowedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      blockedUsers: (json['blockedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      permissions: json['permissions'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$ContentAccessImplToJson(_$ContentAccessImpl instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentType': instance.contentType,
      'ownerId': instance.ownerId,
      'visibility': instance.visibility,
      'allowedUsers': instance.allowedUsers,
      'blockedUsers': instance.blockedUsers,
      'permissions': instance.permissions,
    };

_$FriendControlImpl _$$FriendControlImplFromJson(Map<String, dynamic> json) =>
    _$FriendControlImpl(
      userId: json['userId'] as String,
      allowFriendRequests: json['allowFriendRequests'] as bool,
      friendList: (json['friendList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      pendingRequests: (json['pendingRequests'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      blockedUsers: (json['blockedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      friendGroups: Map<String, String>.from(json['friendGroups'] as Map),
      settings: json['settings'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$FriendControlImplToJson(_$FriendControlImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'allowFriendRequests': instance.allowFriendRequests,
      'friendList': instance.friendList,
      'pendingRequests': instance.pendingRequests,
      'blockedUsers': instance.blockedUsers,
      'friendGroups': instance.friendGroups,
      'settings': instance.settings,
    };

_$BlockSettingsImpl _$$BlockSettingsImplFromJson(Map<String, dynamic> json) =>
    _$BlockSettingsImpl(
      userId: json['userId'] as String,
      blockedUsers: (json['blockedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      blockedByUsers: (json['blockedByUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      blockReasons: Map<String, String>.from(json['blockReasons'] as Map),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      settings: json['settings'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$BlockSettingsImplToJson(_$BlockSettingsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'blockedUsers': instance.blockedUsers,
      'blockedByUsers': instance.blockedByUsers,
      'blockReasons': instance.blockReasons,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'settings': instance.settings,
    };
