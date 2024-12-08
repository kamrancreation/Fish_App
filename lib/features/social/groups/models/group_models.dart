import 'package:equatable/equatable.dart';

enum GroupMemberRole {
  admin,
  moderator,
  member,
}

class Group extends Equatable {
  final String id;
  final String name;
  final String description;
  final String createdBy;
  final DateTime createdAt;
  final bool isPublic;
  final List<String> tags;
  final List<String> rules;
  final int memberCount;
  final GroupSettings settings;

  const Group({
    required this.id,
    required this.name,
    required this.description,
    required this.createdBy,
    required this.createdAt,
    required this.isPublic,
    required this.tags,
    required this.rules,
    required this.memberCount,
    required this.settings,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        createdBy,
        createdAt,
        isPublic,
        tags,
        rules,
        memberCount,
        settings,
      ];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'createdBy': createdBy,
      'createdAt': createdAt.toIso8601String(),
      'isPublic': isPublic,
      'tags': tags,
      'rules': rules,
      'memberCount': memberCount,
      'settings': settings.toJson(),
    };
  }

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      createdBy: json['createdBy'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isPublic: json['isPublic'] as bool,
      tags: List<String>.from(json['tags'] as List),
      rules: List<String>.from(json['rules'] as List),
      memberCount: json['memberCount'] as int,
      settings: GroupSettings.fromJson(json['settings'] as Map<String, dynamic>),
    );
  }
}

class GroupSettings extends Equatable {
  final bool joinApprovalRequired;
  final bool postApprovalRequired;
  final bool allowMemberInvites;

  const GroupSettings({
    required this.joinApprovalRequired,
    required this.postApprovalRequired,
    required this.allowMemberInvites,
  });

  @override
  List<Object?> get props => [
        joinApprovalRequired,
        postApprovalRequired,
        allowMemberInvites,
      ];

  Map<String, dynamic> toJson() {
    return {
      'joinApprovalRequired': joinApprovalRequired,
      'postApprovalRequired': postApprovalRequired,
      'allowMemberInvites': allowMemberInvites,
    };
  }

  factory GroupSettings.fromJson(Map<String, dynamic> json) {
    return GroupSettings(
      joinApprovalRequired: json['joinApprovalRequired'] as bool,
      postApprovalRequired: json['postApprovalRequired'] as bool,
      allowMemberInvites: json['allowMemberInvites'] as bool,
    );
  }
}

class GroupMember extends Equatable {
  final String userId;
  final String groupId;
  final GroupMemberRole role;
  final DateTime joinedAt;

  const GroupMember({
    required this.userId,
    required this.groupId,
    required this.role,
    required this.joinedAt,
  });

  @override
  List<Object?> get props => [userId, groupId, role, joinedAt];

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'groupId': groupId,
      'role': role.toString(),
      'joinedAt': joinedAt.toIso8601String(),
    };
  }

  factory GroupMember.fromJson(Map<String, dynamic> json) {
    return GroupMember(
      userId: json['userId'] as String,
      groupId: json['groupId'] as String,
      role: GroupMemberRole.values.firstWhere(
        (role) => role.toString() == json['role'],
      ),
      joinedAt: DateTime.parse(json['joinedAt'] as String),
    );
  }
}

class GroupCreationData extends Equatable {
  final String name;
  final String description;
  final String creatorId;
  final bool isPublic;
  final List<String> tags;
  final List<String> rules;
  final GroupSettings settings;

  const GroupCreationData({
    required this.name,
    required this.description,
    required this.creatorId,
    required this.isPublic,
    required this.tags,
    required this.rules,
    required this.settings,
  });

  @override
  List<Object?> get props => [
        name,
        description,
        creatorId,
        isPublic,
        tags,
        rules,
        settings,
      ];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'creatorId': creatorId,
      'isPublic': isPublic,
      'tags': tags,
      'rules': rules,
      'settings': settings.toJson(),
    };
  }
}

class GroupUpdateData extends Equatable {
  final String? name;
  final String? description;
  final bool? isPublic;
  final List<String>? tags;
  final List<String>? rules;
  final GroupSettings? settings;

  const GroupUpdateData({
    this.name,
    this.description,
    this.isPublic,
    this.tags,
    this.rules,
    this.settings,
  });

  @override
  List<Object?> get props => [
        name,
        description,
        isPublic,
        tags,
        rules,
        settings,
      ];

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) json['name'] = name;
    if (description != null) json['description'] = description;
    if (isPublic != null) json['isPublic'] = isPublic;
    if (tags != null) json['tags'] = tags;
    if (rules != null) json['rules'] = rules;
    if (settings != null) json['settings'] = settings!.toJson();
    return json;
  }
}

class GroupInvitation extends Equatable {
  final String id;
  final String groupId;
  final String inviterId;
  final String inviteeId;
  final String status;
  final DateTime createdAt;

  const GroupInvitation({
    required this.id,
    required this.groupId,
    required this.inviterId,
    required this.inviteeId,
    required this.status,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
        id,
        groupId,
        inviterId,
        inviteeId,
        status,
        createdAt,
      ];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'groupId': groupId,
      'inviterId': inviterId,
      'inviteeId': inviteeId,
      'status': status,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory GroupInvitation.fromJson(Map<String, dynamic> json) {
    return GroupInvitation(
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      inviterId: json['inviterId'] as String,
      inviteeId: json['inviteeId'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }
}
