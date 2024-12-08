// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_expansion_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveStreamImpl _$$LiveStreamImplFromJson(Map<String, dynamic> json) =>
    _$LiveStreamImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      streamUrl: json['streamUrl'] as String,
      isLive: json['isLive'] as bool,
      startTime: DateTime.parse(json['startTime'] as String),
      settings: json['settings'] as Map<String, dynamic>,
      statistics: json['statistics'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$LiveStreamImplToJson(_$LiveStreamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'description': instance.description,
      'streamUrl': instance.streamUrl,
      'isLive': instance.isLive,
      'startTime': instance.startTime.toIso8601String(),
      'settings': instance.settings,
      'statistics': instance.statistics,
    };

_$VirtualTournamentImpl _$$VirtualTournamentImplFromJson(
        Map<String, dynamic> json) =>
    _$VirtualTournamentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      rules: json['rules'] as Map<String, dynamic>,
      prizes: json['prizes'] as Map<String, dynamic>,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      standings: json['standings'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$VirtualTournamentImplToJson(
        _$VirtualTournamentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'rules': instance.rules,
      'prizes': instance.prizes,
      'participants': instance.participants,
      'standings': instance.standings,
    };

_$CommunityFeatureImpl _$$CommunityFeatureImplFromJson(
        Map<String, dynamic> json) =>
    _$CommunityFeatureImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      configuration: json['configuration'] as Map<String, dynamic>,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      activities: json['activities'] as Map<String, dynamic>,
      lastActivity: DateTime.parse(json['lastActivity'] as String),
    );

Map<String, dynamic> _$$CommunityFeatureImplToJson(
        _$CommunityFeatureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'configuration': instance.configuration,
      'participants': instance.participants,
      'activities': instance.activities,
      'lastActivity': instance.lastActivity.toIso8601String(),
    };

_$GroupChallengeImpl _$$GroupChallengeImplFromJson(Map<String, dynamic> json) =>
    _$GroupChallengeImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      objectives: json['objectives'] as Map<String, dynamic>,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      progress: json['progress'] as Map<String, dynamic>,
      rewards: json['rewards'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$GroupChallengeImplToJson(
        _$GroupChallengeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'objectives': instance.objectives,
      'participants': instance.participants,
      'progress': instance.progress,
      'rewards': instance.rewards,
    };

_$SocialRewardImpl _$$SocialRewardImplFromJson(Map<String, dynamic> json) =>
    _$SocialRewardImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      points: (json['points'] as num).toInt(),
      criteria: json['criteria'] as Map<String, dynamic>,
      benefits: json['benefits'] as Map<String, dynamic>,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$SocialRewardImplToJson(_$SocialRewardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'points': instance.points,
      'criteria': instance.criteria,
      'benefits': instance.benefits,
      'isActive': instance.isActive,
    };

_$CollaborativeFeatureImpl _$$CollaborativeFeatureImplFromJson(
        Map<String, dynamic> json) =>
    _$CollaborativeFeatureImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      configuration: json['configuration'] as Map<String, dynamic>,
      collaborators: (json['collaborators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      permissions: json['permissions'] as Map<String, dynamic>,
      status: json['status'] as Map<String, dynamic>,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$CollaborativeFeatureImplToJson(
        _$CollaborativeFeatureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'configuration': instance.configuration,
      'collaborators': instance.collaborators,
      'permissions': instance.permissions,
      'status': instance.status,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };
