// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentItemImpl _$$ContentItemImplFromJson(Map<String, dynamic> json) =>
    _$ContentItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      creatorId: json['creatorId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: $enumDecode(_$ContentStatusEnumMap, json['status']),
      metadata: json['metadata'] as Map<String, dynamic>,
      description: json['description'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      mediaUrls: (json['mediaUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      modifiedBy: json['modifiedBy'] as String?,
      visibility:
          $enumDecodeNullable(_$ContentVisibilityEnumMap, json['visibility']),
    );

Map<String, dynamic> _$$ContentItemImplToJson(_$ContentItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'creatorId': instance.creatorId,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': _$ContentStatusEnumMap[instance.status]!,
      'metadata': instance.metadata,
      'description': instance.description,
      'tags': instance.tags,
      'mediaUrls': instance.mediaUrls,
      'lastModified': instance.lastModified?.toIso8601String(),
      'modifiedBy': instance.modifiedBy,
      'visibility': _$ContentVisibilityEnumMap[instance.visibility],
    };

const _$ContentStatusEnumMap = {
  ContentStatus.draft: 'draft',
  ContentStatus.pending: 'pending',
  ContentStatus.published: 'published',
  ContentStatus.archived: 'archived',
  ContentStatus.deleted: 'deleted',
  ContentStatus.flagged: 'flagged',
};

const _$ContentVisibilityEnumMap = {
  ContentVisibility.public: 'public',
  ContentVisibility.private: 'private',
  ContentVisibility.membersOnly: 'membersOnly',
  ContentVisibility.premiumOnly: 'premiumOnly',
};

_$TournamentImpl _$$TournamentImplFromJson(Map<String, dynamic> json) =>
    _$TournamentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      status: $enumDecode(_$TournamentStatusEnumMap, json['status']),
      rules: json['rules'] as Map<String, dynamic>,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      moderators: (json['moderators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sponsorId: json['sponsorId'] as String?,
      prizes: json['prizes'] as Map<String, dynamic>?,
      leaderboard: json['leaderboard'] as Map<String, dynamic>?,
      mediaUrls: (json['mediaUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      settings: json['settings'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TournamentImplToJson(_$TournamentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'status': _$TournamentStatusEnumMap[instance.status]!,
      'rules': instance.rules,
      'participants': instance.participants,
      'moderators': instance.moderators,
      'sponsorId': instance.sponsorId,
      'prizes': instance.prizes,
      'leaderboard': instance.leaderboard,
      'mediaUrls': instance.mediaUrls,
      'settings': instance.settings,
    };

const _$TournamentStatusEnumMap = {
  TournamentStatus.draft: 'draft',
  TournamentStatus.registration: 'registration',
  TournamentStatus.active: 'active',
  TournamentStatus.completed: 'completed',
  TournamentStatus.cancelled: 'cancelled',
};

_$ContentReportImpl _$$ContentReportImplFromJson(Map<String, dynamic> json) =>
    _$ContentReportImpl(
      id: json['id'] as String,
      contentId: json['contentId'] as String,
      reporterId: json['reporterId'] as String,
      reason: json['reason'] as String,
      reportedAt: DateTime.parse(json['reportedAt'] as String),
      status: $enumDecode(_$ReportStatusEnumMap, json['status']),
      description: json['description'] as String?,
      evidenceUrls: (json['evidenceUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      moderatorId: json['moderatorId'] as String?,
      resolution: json['resolution'] as String?,
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
      notes:
          (json['notes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ContentReportImplToJson(_$ContentReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contentId': instance.contentId,
      'reporterId': instance.reporterId,
      'reason': instance.reason,
      'reportedAt': instance.reportedAt.toIso8601String(),
      'status': _$ReportStatusEnumMap[instance.status]!,
      'description': instance.description,
      'evidenceUrls': instance.evidenceUrls,
      'moderatorId': instance.moderatorId,
      'resolution': instance.resolution,
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
      'notes': instance.notes,
    };

const _$ReportStatusEnumMap = {
  ReportStatus.pending: 'pending',
  ReportStatus.investigating: 'investigating',
  ReportStatus.resolved: 'resolved',
  ReportStatus.dismissed: 'dismissed',
};

_$AnnouncementImpl _$$AnnouncementImplFromJson(Map<String, dynamic> json) =>
    _$AnnouncementImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      authorId: json['authorId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      type: $enumDecode(_$AnnouncementTypeEnumMap, json['type']),
      targetAudience: (json['targetAudience'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool,
      imageUrl: json['imageUrl'] as String?,
      actionUrl: json['actionUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AnnouncementImplToJson(_$AnnouncementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'authorId': instance.authorId,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'type': _$AnnouncementTypeEnumMap[instance.type]!,
      'targetAudience': instance.targetAudience,
      'isActive': instance.isActive,
      'imageUrl': instance.imageUrl,
      'actionUrl': instance.actionUrl,
      'metadata': instance.metadata,
      'tags': instance.tags,
    };

const _$AnnouncementTypeEnumMap = {
  AnnouncementType.general: 'general',
  AnnouncementType.maintenance: 'maintenance',
  AnnouncementType.update: 'update',
  AnnouncementType.event: 'event',
  AnnouncementType.promotion: 'promotion',
  AnnouncementType.emergency: 'emergency',
};

_$ResourceImpl _$$ResourceImplFromJson(Map<String, dynamic> json) =>
    _$ResourceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: $enumDecode(_$ResourceStatusEnumMap, json['status']),
      usage: Map<String, int>.from(json['usage'] as Map),
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$ResourceImplToJson(_$ResourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'url': instance.url,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': _$ResourceStatusEnumMap[instance.status]!,
      'usage': instance.usage,
      'description': instance.description,
      'metadata': instance.metadata,
      'tags': instance.tags,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };

const _$ResourceStatusEnumMap = {
  ResourceStatus.active: 'active',
  ResourceStatus.inactive: 'inactive',
  ResourceStatus.deprecated: 'deprecated',
  ResourceStatus.maintenance: 'maintenance',
};
