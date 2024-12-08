// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      data: json['data'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isRead: json['isRead'] as bool? ?? false,
      imageUrl: json['imageUrl'] as String?,
      actionUrl: json['actionUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AppNotificationImplToJson(
        _$AppNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'data': instance.data,
      'timestamp': instance.timestamp.toIso8601String(),
      'isRead': instance.isRead,
      'imageUrl': instance.imageUrl,
      'actionUrl': instance.actionUrl,
      'metadata': instance.metadata,
    };

_$ChatNotificationImpl _$$ChatNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatNotificationImpl(
      id: json['id'] as String,
      roomId: json['roomId'] as String,
      senderId: json['senderId'] as String,
      messageId: json['messageId'] as String,
      messageText: json['messageText'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      senderName: json['senderName'] as String?,
      senderAvatar: json['senderAvatar'] as String?,
      isRead: json['isRead'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatNotificationImplToJson(
        _$ChatNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'senderId': instance.senderId,
      'messageId': instance.messageId,
      'messageText': instance.messageText,
      'timestamp': instance.timestamp.toIso8601String(),
      'senderName': instance.senderName,
      'senderAvatar': instance.senderAvatar,
      'isRead': instance.isRead,
    };

_$SocialNotificationImpl _$$SocialNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialNotificationImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      actorId: json['actorId'] as String,
      targetId: json['targetId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      actorName: json['actorName'] as String?,
      actorAvatar: json['actorAvatar'] as String?,
      content: json['content'] as String?,
      isRead: json['isRead'] as bool? ?? false,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocialNotificationImplToJson(
        _$SocialNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'actorId': instance.actorId,
      'targetId': instance.targetId,
      'timestamp': instance.timestamp.toIso8601String(),
      'actorName': instance.actorName,
      'actorAvatar': instance.actorAvatar,
      'content': instance.content,
      'isRead': instance.isRead,
      'metadata': instance.metadata,
    };

_$NotificationSettingsImpl _$$NotificationSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingsImpl(
      userId: json['userId'] as String,
      pushEnabled: json['pushEnabled'] as bool? ?? true,
      emailEnabled: json['emailEnabled'] as bool? ?? true,
      chatNotifications: json['chatNotifications'] as bool? ?? true,
      socialNotifications: json['socialNotifications'] as bool? ?? true,
      systemNotifications: json['systemNotifications'] as bool? ?? true,
      specificSettings:
          (json['specificSettings'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as bool),
              ) ??
              const {},
      quietHoursStart: json['quietHoursStart'] == null
          ? null
          : DateTime.parse(json['quietHoursStart'] as String),
      quietHoursEnd: json['quietHoursEnd'] == null
          ? null
          : DateTime.parse(json['quietHoursEnd'] as String),
    );

Map<String, dynamic> _$$NotificationSettingsImplToJson(
        _$NotificationSettingsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'pushEnabled': instance.pushEnabled,
      'emailEnabled': instance.emailEnabled,
      'chatNotifications': instance.chatNotifications,
      'socialNotifications': instance.socialNotifications,
      'systemNotifications': instance.systemNotifications,
      'specificSettings': instance.specificSettings,
      'quietHoursStart': instance.quietHoursStart?.toIso8601String(),
      'quietHoursEnd': instance.quietHoursEnd?.toIso8601String(),
    };

_$NotificationTokenImpl _$$NotificationTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationTokenImpl(
      userId: json['userId'] as String,
      token: json['token'] as String,
      platform: json['platform'] as String,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      deviceId: json['deviceId'] as String?,
      deviceInfo: json['deviceInfo'] as String?,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$NotificationTokenImplToJson(
        _$NotificationTokenImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
      'platform': instance.platform,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'deviceId': instance.deviceId,
      'deviceInfo': instance.deviceInfo,
      'isActive': instance.isActive,
    };

_$NotificationBatchImpl _$$NotificationBatchImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationBatchImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      recipients: (json['recipients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      title: json['title'] as String,
      body: json['body'] as String,
      data: json['data'] as Map<String, dynamic>,
      scheduledFor: DateTime.parse(json['scheduledFor'] as String),
      status: json['status'] as String? ?? 'pending',
      sentAt: json['sentAt'] == null
          ? null
          : DateTime.parse(json['sentAt'] as String),
      results: json['results'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$NotificationBatchImplToJson(
        _$NotificationBatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'recipients': instance.recipients,
      'title': instance.title,
      'body': instance.body,
      'data': instance.data,
      'scheduledFor': instance.scheduledFor.toIso8601String(),
      'status': instance.status,
      'sentAt': instance.sentAt?.toIso8601String(),
      'results': instance.results,
    };

_$NotificationTemplateImpl _$$NotificationTemplateImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationTemplateImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      defaultData: json['defaultData'] as Map<String, dynamic>?,
      translations: (json['translations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$NotificationTemplateImplToJson(
        _$NotificationTemplateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'defaultData': instance.defaultData,
      'translations': instance.translations,
      'isActive': instance.isActive,
    };
