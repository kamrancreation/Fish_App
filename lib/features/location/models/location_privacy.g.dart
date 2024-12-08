// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_privacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationPrivacyImpl _$$LocationPrivacyImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationPrivacyImpl(
      allowTracking: json['allowTracking'] as bool? ?? true,
      allowNearbySpots: json['allowNearbySpots'] as bool? ?? true,
      allowLocationSharing: json['allowLocationSharing'] as bool? ?? true,
      shareWith:
          $enumDecodeNullable(_$PrivacyLevelEnumMap, json['shareWith']) ??
              PrivacyLevel.friends,
      showInPublicListings: json['showInPublicListings'] as bool? ?? true,
      hideExactLocation: json['hideExactLocation'] as bool? ?? false,
      locationFuzziness:
          (json['locationFuzziness'] as num?)?.toDouble() ?? 100.0,
      blockedUsers: (json['blockedUsers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      spotSpecificSettings:
          (json['spotSpecificSettings'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, $enumDecode(_$PrivacyLevelEnumMap, e)),
              ) ??
              const {},
    );

Map<String, dynamic> _$$LocationPrivacyImplToJson(
        _$LocationPrivacyImpl instance) =>
    <String, dynamic>{
      'allowTracking': instance.allowTracking,
      'allowNearbySpots': instance.allowNearbySpots,
      'allowLocationSharing': instance.allowLocationSharing,
      'shareWith': _$PrivacyLevelEnumMap[instance.shareWith]!,
      'showInPublicListings': instance.showInPublicListings,
      'hideExactLocation': instance.hideExactLocation,
      'locationFuzziness': instance.locationFuzziness,
      'blockedUsers': instance.blockedUsers,
      'spotSpecificSettings': instance.spotSpecificSettings
          .map((k, e) => MapEntry(k, _$PrivacyLevelEnumMap[e]!)),
    };

const _$PrivacyLevelEnumMap = {
  PrivacyLevel.public: 'public',
  PrivacyLevel.friends: 'friends',
  PrivacyLevel.private: 'private',
};

_$SpotPrivacyImpl _$$SpotPrivacyImplFromJson(Map<String, dynamic> json) =>
    _$SpotPrivacyImpl(
      spotId: json['spotId'] as String,
      level: $enumDecode(_$PrivacyLevelEnumMap, json['level']),
      allowedUsers: (json['allowedUsers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      hideExactLocation: json['hideExactLocation'] as bool? ?? false,
      locationFuzziness:
          (json['locationFuzziness'] as num?)?.toDouble() ?? 100.0,
    );

Map<String, dynamic> _$$SpotPrivacyImplToJson(_$SpotPrivacyImpl instance) =>
    <String, dynamic>{
      'spotId': instance.spotId,
      'level': _$PrivacyLevelEnumMap[instance.level]!,
      'allowedUsers': instance.allowedUsers,
      'hideExactLocation': instance.hideExactLocation,
      'locationFuzziness': instance.locationFuzziness,
    };
