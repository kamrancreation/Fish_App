import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'social_expansion_models.freezed.dart';
part 'social_expansion_models.g.dart';

@freezed
class LiveStream with _$LiveStream {
  const factory LiveStream({
    required String id,
    required String userId,
    required String title,
    required String description,
    required String streamUrl,
    required bool isLive,
    required DateTime startTime,
    required Map<String, dynamic> settings,
    required Map<String, dynamic> statistics,
  }) = _LiveStream;

  factory LiveStream.fromJson(Map<String, dynamic> json) =>
      _$LiveStreamFromJson(json);
}

@freezed
class VirtualTournament with _$VirtualTournament {
  const factory VirtualTournament({
    required String id,
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required Map<String, dynamic> rules,
    required Map<String, dynamic> prizes,
    required List<String> participants,
    required Map<String, dynamic> standings,
  }) = _VirtualTournament;

  factory VirtualTournament.fromJson(Map<String, dynamic> json) =>
      _$VirtualTournamentFromJson(json);
}

@freezed
class CommunityFeature with _$CommunityFeature {
  const factory CommunityFeature({
    required String id,
    required String name,
    required String type,
    required Map<String, dynamic> configuration,
    required List<String> participants,
    required Map<String, dynamic> activities,
    required DateTime lastActivity,
  }) = _CommunityFeature;

  factory CommunityFeature.fromJson(Map<String, dynamic> json) =>
      _$CommunityFeatureFromJson(json);
}

@freezed
class GroupChallenge with _$GroupChallenge {
  const factory GroupChallenge({
    required String id,
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required Map<String, dynamic> objectives,
    required List<String> participants,
    required Map<String, dynamic> progress,
    required Map<String, dynamic> rewards,
  }) = _GroupChallenge;

  factory GroupChallenge.fromJson(Map<String, dynamic> json) =>
      _$GroupChallengeFromJson(json);
}

@freezed
class SocialReward with _$SocialReward {
  const factory SocialReward({
    required String id,
    required String type,
    required String name,
    required String description,
    required int points,
    required Map<String, dynamic> criteria,
    required Map<String, dynamic> benefits,
    required bool isActive,
  }) = _SocialReward;

  factory SocialReward.fromJson(Map<String, dynamic> json) =>
      _$SocialRewardFromJson(json);
}

@freezed
class CollaborativeFeature with _$CollaborativeFeature {
  const factory CollaborativeFeature({
    required String id,
    required String type,
    required String name,
    required Map<String, dynamic> configuration,
    required List<String> collaborators,
    required Map<String, dynamic> permissions,
    required Map<String, dynamic> status,
    required DateTime lastUpdated,
  }) = _CollaborativeFeature;

  factory CollaborativeFeature.fromJson(Map<String, dynamic> json) =>
      _$CollaborativeFeatureFromJson(json);
}
