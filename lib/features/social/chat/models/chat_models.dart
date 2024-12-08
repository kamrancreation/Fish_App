import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chat_models.freezed.dart';
part 'chat_models.g.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    required String id,
    required String name,
    required String type, // 'private', 'group', 'channel'
    required List<String> participants,
    required DateTime createdAt,
    DateTime? lastMessageAt,
    String? lastMessageText,
    String? lastMessageSenderId,
    Map<String, dynamic>? metadata,
    @Default({}) Map<String, ChatRoomSettings> participantSettings,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) => _$ChatRoomFromJson(json);
}

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required String roomId,
    required String senderId,
    required String content,
    required String type, // 'text', 'image', 'video', 'location', etc.
    required DateTime timestamp,
    @Default([]) List<String> readBy,
    @Default([]) List<String> deliveredTo,
    Map<String, dynamic>? metadata,
    List<ChatAttachment>? attachments,
    ChatMessage? replyTo,
    @Default(false) bool isEdited,
    DateTime? editedAt,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);
}

@freezed
class ChatAttachment with _$ChatAttachment {
  const factory ChatAttachment({
    required String id,
    required String type,
    required String url,
    String? thumbnailUrl,
    String? name,
    int? size,
    String? mimeType,
    Map<String, dynamic>? metadata,
  }) = _ChatAttachment;

  factory ChatAttachment.fromJson(Map<String, dynamic> json) => _$ChatAttachmentFromJson(json);
}

@freezed
class ChatRoomSettings with _$ChatRoomSettings {
  const factory ChatRoomSettings({
    required String userId,
    required String roomId,
    @Default(true) bool notifications,
    @Default('all') String messageVisibility,
    String? nickname,
    @Default({}) Map<String, dynamic> customSettings,
  }) = _ChatRoomSettings;

  factory ChatRoomSettings.fromJson(Map<String, dynamic> json) => _$ChatRoomSettingsFromJson(json);
}

@freezed
class ChatParticipant with _$ChatParticipant {
  const factory ChatParticipant({
    required String userId,
    required String roomId,
    required String role, // 'admin', 'moderator', 'member'
    required DateTime joinedAt,
    DateTime? lastSeen,
    @Default(true) bool isActive,
    Map<String, dynamic>? permissions,
  }) = _ChatParticipant;

  factory ChatParticipant.fromJson(Map<String, dynamic> json) => _$ChatParticipantFromJson(json);
}

@freezed
class ChatReaction with _$ChatReaction {
  const factory ChatReaction({
    required String id,
    required String messageId,
    required String userId,
    required String reaction,
    required DateTime timestamp,
  }) = _ChatReaction;

  factory ChatReaction.fromJson(Map<String, dynamic> json) => _$ChatReactionFromJson(json);
}

@freezed
class ChatTypingIndicator with _$ChatTypingIndicator {
  const factory ChatTypingIndicator({
    required String roomId,
    required String userId,
    required DateTime timestamp,
  }) = _ChatTypingIndicator;

  factory ChatTypingIndicator.fromJson(Map<String, dynamic> json) => _$ChatTypingIndicatorFromJson(json);
}

@freezed
class ChatPresence with _$ChatPresence {
  const factory ChatPresence({
    required String userId,
    required String status, // 'online', 'offline', 'away'
    required DateTime lastSeen,
    String? deviceInfo,
    Map<String, dynamic>? metadata,
  }) = _ChatPresence;

  factory ChatPresence.fromJson(Map<String, dynamic> json) => _$ChatPresenceFromJson(json);
}
