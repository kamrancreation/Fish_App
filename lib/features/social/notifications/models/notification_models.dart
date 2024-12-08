import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'notification_models.freezed.dart';
part 'notification_models.g.dart';

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required String type,
    required String title,
    required String body,
    required Map<String, dynamic> data,
    required DateTime timestamp,
    @Default(false) bool isRead,
    String? imageUrl,
    String? actionUrl,
    Map<String, dynamic>? metadata,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}

@freezed
class ChatNotification with _$ChatNotification {
  const factory ChatNotification({
    required String id,
    required String roomId,
    required String senderId,
    required String messageId,
    required String messageText,
    required DateTime timestamp,
    String? senderName,
    String? senderAvatar,
    @Default(false) bool isRead,
  }) = _ChatNotification;

  factory ChatNotification.fromJson(Map<String, dynamic> json) =>
      _$ChatNotificationFromJson(json);
}

@freezed
class SocialNotification with _$SocialNotification {
  const factory SocialNotification({
    required String id,
    required String type, // like, comment, follow, mention
    required String actorId,
    required String targetId,
    required DateTime timestamp,
    String? actorName,
    String? actorAvatar,
    String? content,
    @Default(false) bool isRead,
    Map<String, dynamic>? metadata,
  }) = _SocialNotification;

  factory SocialNotification.fromJson(Map<String, dynamic> json) =>
      _$SocialNotificationFromJson(json);
}

@freezed
class NotificationSettings with _$NotificationSettings {
  const factory NotificationSettings({
    required String userId,
    @Default(true) bool pushEnabled,
    @Default(true) bool emailEnabled,
    @Default(true) bool chatNotifications,
    @Default(true) bool socialNotifications,
    @Default(true) bool systemNotifications,
    @Default({}) Map<String, bool> specificSettings,
    DateTime? quietHoursStart,
    DateTime? quietHoursEnd,
  }) = _NotificationSettings;

  factory NotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsFromJson(json);
}

@freezed
class NotificationToken with _$NotificationToken {
  const factory NotificationToken({
    required String userId,
    required String token,
    required String platform,
    required DateTime lastUpdated,
    String? deviceId,
    String? deviceInfo,
    @Default(true) bool isActive,
  }) = _NotificationToken;

  factory NotificationToken.fromJson(Map<String, dynamic> json) =>
      _$NotificationTokenFromJson(json);
}

@freezed
class NotificationBatch with _$NotificationBatch {
  const factory NotificationBatch({
    required String id,
    required String type,
    required List<String> recipients,
    required String title,
    required String body,
    required Map<String, dynamic> data,
    required DateTime scheduledFor,
    @Default('pending') String status,
    DateTime? sentAt,
    Map<String, dynamic>? results,
  }) = _NotificationBatch;

  factory NotificationBatch.fromJson(Map<String, dynamic> json) =>
      _$NotificationBatchFromJson(json);
}

@freezed
class NotificationTemplate with _$NotificationTemplate {
  const factory NotificationTemplate({
    required String id,
    required String type,
    required String title,
    required String body,
    Map<String, dynamic>? defaultData,
    Map<String, String>? translations,
    @Default(true) bool isActive,
  }) = _NotificationTemplate;

  factory NotificationTemplate.fromJson(Map<String, dynamic> json) =>
      _$NotificationTemplateFromJson(json);
}
