// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomImpl _$$ChatRoomImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoomImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastMessageAt: json['lastMessageAt'] == null
          ? null
          : DateTime.parse(json['lastMessageAt'] as String),
      lastMessageText: json['lastMessageText'] as String?,
      lastMessageSenderId: json['lastMessageSenderId'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      participantSettings:
          (json['participantSettings'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                    k, ChatRoomSettings.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {},
    );

Map<String, dynamic> _$$ChatRoomImplToJson(_$ChatRoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'participants': instance.participants,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastMessageAt': instance.lastMessageAt?.toIso8601String(),
      'lastMessageText': instance.lastMessageText,
      'lastMessageSenderId': instance.lastMessageSenderId,
      'metadata': instance.metadata,
      'participantSettings': instance.participantSettings,
    };

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      id: json['id'] as String,
      roomId: json['roomId'] as String,
      senderId: json['senderId'] as String,
      content: json['content'] as String,
      type: json['type'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      readBy: (json['readBy'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      deliveredTo: (json['deliveredTo'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      metadata: json['metadata'] as Map<String, dynamic>?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => ChatAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyTo: json['replyTo'] == null
          ? null
          : ChatMessage.fromJson(json['replyTo'] as Map<String, dynamic>),
      isEdited: json['isEdited'] as bool? ?? false,
      editedAt: json['editedAt'] == null
          ? null
          : DateTime.parse(json['editedAt'] as String),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'senderId': instance.senderId,
      'content': instance.content,
      'type': instance.type,
      'timestamp': instance.timestamp.toIso8601String(),
      'readBy': instance.readBy,
      'deliveredTo': instance.deliveredTo,
      'metadata': instance.metadata,
      'attachments': instance.attachments,
      'replyTo': instance.replyTo,
      'isEdited': instance.isEdited,
      'editedAt': instance.editedAt?.toIso8601String(),
    };

_$ChatAttachmentImpl _$$ChatAttachmentImplFromJson(Map<String, dynamic> json) =>
    _$ChatAttachmentImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      name: json['name'] as String?,
      size: (json['size'] as num?)?.toInt(),
      mimeType: json['mimeType'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ChatAttachmentImplToJson(
        _$ChatAttachmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
      'name': instance.name,
      'size': instance.size,
      'mimeType': instance.mimeType,
      'metadata': instance.metadata,
    };

_$ChatRoomSettingsImpl _$$ChatRoomSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatRoomSettingsImpl(
      userId: json['userId'] as String,
      roomId: json['roomId'] as String,
      notifications: json['notifications'] as bool? ?? true,
      messageVisibility: json['messageVisibility'] as String? ?? 'all',
      nickname: json['nickname'] as String?,
      customSettings:
          json['customSettings'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$ChatRoomSettingsImplToJson(
        _$ChatRoomSettingsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'roomId': instance.roomId,
      'notifications': instance.notifications,
      'messageVisibility': instance.messageVisibility,
      'nickname': instance.nickname,
      'customSettings': instance.customSettings,
    };

_$ChatParticipantImpl _$$ChatParticipantImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatParticipantImpl(
      userId: json['userId'] as String,
      roomId: json['roomId'] as String,
      role: json['role'] as String,
      joinedAt: DateTime.parse(json['joinedAt'] as String),
      lastSeen: json['lastSeen'] == null
          ? null
          : DateTime.parse(json['lastSeen'] as String),
      isActive: json['isActive'] as bool? ?? true,
      permissions: json['permissions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ChatParticipantImplToJson(
        _$ChatParticipantImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'roomId': instance.roomId,
      'role': instance.role,
      'joinedAt': instance.joinedAt.toIso8601String(),
      'lastSeen': instance.lastSeen?.toIso8601String(),
      'isActive': instance.isActive,
      'permissions': instance.permissions,
    };

_$ChatReactionImpl _$$ChatReactionImplFromJson(Map<String, dynamic> json) =>
    _$ChatReactionImpl(
      id: json['id'] as String,
      messageId: json['messageId'] as String,
      userId: json['userId'] as String,
      reaction: json['reaction'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$ChatReactionImplToJson(_$ChatReactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messageId': instance.messageId,
      'userId': instance.userId,
      'reaction': instance.reaction,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$ChatTypingIndicatorImpl _$$ChatTypingIndicatorImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatTypingIndicatorImpl(
      roomId: json['roomId'] as String,
      userId: json['userId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$ChatTypingIndicatorImplToJson(
        _$ChatTypingIndicatorImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'userId': instance.userId,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$ChatPresenceImpl _$$ChatPresenceImplFromJson(Map<String, dynamic> json) =>
    _$ChatPresenceImpl(
      userId: json['userId'] as String,
      status: json['status'] as String,
      lastSeen: DateTime.parse(json['lastSeen'] as String),
      deviceInfo: json['deviceInfo'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ChatPresenceImplToJson(_$ChatPresenceImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'status': instance.status,
      'lastSeen': instance.lastSeen.toIso8601String(),
      'deviceInfo': instance.deviceInfo,
      'metadata': instance.metadata,
    };
