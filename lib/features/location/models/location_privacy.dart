import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_privacy.freezed.dart';
part 'location_privacy.g.dart';

@freezed
class LocationPrivacy with _$LocationPrivacy {
  factory LocationPrivacy({
    @Default(true) bool allowTracking,
    @Default(true) bool allowNearbySpots,
    @Default(true) bool allowLocationSharing,
    @Default(PrivacyLevel.friends) PrivacyLevel shareWith,
    @Default(true) bool showInPublicListings,
    @Default(false) bool hideExactLocation,
    @Default(100.0) double locationFuzziness,
    @Default([]) List<String> blockedUsers,
    @Default({}) Map<String, PrivacyLevel> spotSpecificSettings,
  }) = _LocationPrivacy;

  factory LocationPrivacy.fromJson(Map<String, dynamic> json) =>
      _$LocationPrivacyFromJson(json);
}

enum PrivacyLevel {
  public,
  friends,
  private;

  bool get isPublic => this == PrivacyLevel.public;
  bool get isFriends => this == PrivacyLevel.friends;
  bool get isPrivate => this == PrivacyLevel.private;
}

@freezed
class SpotPrivacy with _$SpotPrivacy {
  factory SpotPrivacy({
    required String spotId,
    required PrivacyLevel level,
    @Default([]) List<String> allowedUsers,
    @Default(false) bool hideExactLocation,
    @Default(100.0) double locationFuzziness,
  }) = _SpotPrivacy;

  factory SpotPrivacy.fromJson(Map<String, dynamic> json) =>
      _$SpotPrivacyFromJson(json);
}
