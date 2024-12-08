// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminUserImpl _$$AdminUserImplFromJson(Map<String, dynamic> json) =>
    _$AdminUserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      roles: (json['roles'] as List<dynamic>)
          .map((e) => $enumDecode(_$UserRoleEnumMap, e))
          .toList(),
      permissions: AdminPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>),
      createdAt: _parseDateTime(json['createdAt']),
      lastLogin: _parseDateTime(json['lastLogin']),
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AdminUserImplToJson(_$AdminUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'roles': instance.roles.map((e) => _$UserRoleEnumMap[e]!).toList(),
      'permissions': instance.permissions,
      'createdAt': _dateToString(instance.createdAt),
      'lastLogin': _dateToString(instance.lastLogin),
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'metadata': instance.metadata,
    };

const _$UserRoleEnumMap = {
  UserRole.superAdmin: 'superAdmin',
  UserRole.admin: 'admin',
  UserRole.moderator: 'moderator',
  UserRole.support: 'support',
  UserRole.contentManager: 'contentManager',
  UserRole.analyst: 'analyst',
};

_$AdminPermissionsImpl _$$AdminPermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminPermissionsImpl(
      canManageUsers: json['canManageUsers'] as bool? ?? false,
      canManageRoles: json['canManageRoles'] as bool? ?? false,
      canViewAnalytics: json['canViewAnalytics'] as bool? ?? false,
      canManageContent: json['canManageContent'] as bool? ?? false,
      canHandleSupport: json['canHandleSupport'] as bool? ?? false,
      canManageBans: json['canManageBans'] as bool? ?? false,
      canAccessLogs: json['canAccessLogs'] as bool? ?? false,
      canManageSettings: json['canManageSettings'] as bool? ?? false,
      canExportData: json['canExportData'] as bool? ?? false,
      canManagePayments: json['canManagePayments'] as bool? ?? false,
    );

Map<String, dynamic> _$$AdminPermissionsImplToJson(
        _$AdminPermissionsImpl instance) =>
    <String, dynamic>{
      'canManageUsers': instance.canManageUsers,
      'canManageRoles': instance.canManageRoles,
      'canViewAnalytics': instance.canViewAnalytics,
      'canManageContent': instance.canManageContent,
      'canHandleSupport': instance.canHandleSupport,
      'canManageBans': instance.canManageBans,
      'canAccessLogs': instance.canAccessLogs,
      'canManageSettings': instance.canManageSettings,
      'canExportData': instance.canExportData,
      'canManagePayments': instance.canManagePayments,
    };

_$UserBanImpl _$$UserBanImplFromJson(Map<String, dynamic> json) =>
    _$UserBanImpl(
      userId: json['userId'] as String,
      reason: json['reason'] as String,
      adminId: json['adminId'] as String,
      startTime: _parseDateTime(json['startTime']),
      endTime: _parseDateTimeNullable(json['endTime']),
      notes: json['notes'] as String?,
      evidenceUrls: (json['evidenceUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type: $enumDecodeNullable(_$BanTypeEnumMap, json['type']),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserBanImplToJson(_$UserBanImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'reason': instance.reason,
      'adminId': instance.adminId,
      'startTime': _dateToString(instance.startTime),
      'endTime': _dateToStringNullable(instance.endTime),
      'notes': instance.notes,
      'evidenceUrls': instance.evidenceUrls,
      'type': _$BanTypeEnumMap[instance.type],
      'metadata': instance.metadata,
    };

const _$BanTypeEnumMap = {
  BanType.temporary: 'temporary',
  BanType.permanent: 'permanent',
  BanType.contentRestriction: 'contentRestriction',
  BanType.shadowBan: 'shadowBan',
  BanType.ipBan: 'ipBan',
};

_$UserAnalyticsImpl _$$UserAnalyticsImplFromJson(Map<String, dynamic> json) =>
    _$UserAnalyticsImpl(
      userId: json['userId'] as String,
      lastActive: _parseDateTime(json['lastActive']),
      totalLogins: (json['totalLogins'] as num).toInt(),
      contentCount: (json['contentCount'] as num).toInt(),
      activityMetrics: Map<String, int>.from(json['activityMetrics'] as Map),
      engagementScores: (json['engagementScores'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      customMetrics: json['customMetrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserAnalyticsImplToJson(_$UserAnalyticsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'lastActive': _dateToString(instance.lastActive),
      'totalLogins': instance.totalLogins,
      'contentCount': instance.contentCount,
      'activityMetrics': instance.activityMetrics,
      'engagementScores': instance.engagementScores,
      'customMetrics': instance.customMetrics,
    };

_$SupportTicketImpl _$$SupportTicketImplFromJson(Map<String, dynamic> json) =>
    _$SupportTicketImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String,
      status: $enumDecode(_$TicketStatusEnumMap, json['status']),
      priority: $enumDecode(_$TicketPriorityEnumMap, json['priority']),
      createdAt: _parseDateTime(json['createdAt']),
      assignedTo: json['assignedTo'] as String?,
      resolvedAt: _parseDateTimeNullable(json['resolvedAt']),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      updates: (json['updates'] as List<dynamic>?)
          ?.map((e) => TicketUpdate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SupportTicketImplToJson(_$SupportTicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subject': instance.subject,
      'description': instance.description,
      'status': _$TicketStatusEnumMap[instance.status]!,
      'priority': _$TicketPriorityEnumMap[instance.priority]!,
      'createdAt': _dateToString(instance.createdAt),
      'assignedTo': instance.assignedTo,
      'resolvedAt': _dateToStringNullable(instance.resolvedAt),
      'tags': instance.tags,
      'updates': instance.updates,
    };

const _$TicketStatusEnumMap = {
  TicketStatus.open: 'open',
  TicketStatus.inProgress: 'inProgress',
  TicketStatus.waitingForUser: 'waitingForUser',
  TicketStatus.resolved: 'resolved',
  TicketStatus.closed: 'closed',
};

const _$TicketPriorityEnumMap = {
  TicketPriority.low: 'low',
  TicketPriority.medium: 'medium',
  TicketPriority.high: 'high',
  TicketPriority.urgent: 'urgent',
};

_$TicketUpdateImpl _$$TicketUpdateImplFromJson(Map<String, dynamic> json) =>
    _$TicketUpdateImpl(
      id: json['id'] as String,
      ticketId: json['ticketId'] as String,
      userId: json['userId'] as String,
      message: json['message'] as String,
      timestamp: _parseDateTime(json['timestamp']),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isInternal: json['isInternal'] as bool?,
    );

Map<String, dynamic> _$$TicketUpdateImplToJson(_$TicketUpdateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticketId': instance.ticketId,
      'userId': instance.userId,
      'message': instance.message,
      'timestamp': _dateToString(instance.timestamp),
      'attachments': instance.attachments,
      'isInternal': instance.isInternal,
    };
