import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

enum MessageType {
  text,
  image,
  location,
  @JsonValue('catch')
  fishCatch,
  event,
  announcement,
}

@immutable
class ChatMessage {
  final String id;
  final String chatId;
  final String senderId;
  final MessageType type;
  final String content;
  final Map<String, dynamic>? metadata;
  final List<String> readBy;
  final List<String>? mentions;
  final DateTime timestamp;
  final DateTime? editedAt;
  final bool isDeleted;

  const ChatMessage({
    required this.id,
    required this.chatId,
    required this.senderId,
    required this.type,
    required this.content,
    this.metadata,
    required this.readBy,
    this.mentions,
    required this.timestamp,
    this.editedAt,
    this.isDeleted = false,
  });

  factory ChatMessage.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ChatMessage(
      id: doc.id,
      chatId: data['chatId'] as String,
      senderId: data['senderId'] as String,
      type: MessageType.values.firstWhere(
        (e) => e.toString() == 'MessageType.${data['type']}',
      ),
      content: data['content'] as String,
      metadata: data['metadata'] != null
          ? Map<String, dynamic>.from(data['metadata'] as Map)
          : null,
      readBy: List<String>.from(data['readBy'] as List),
      mentions: data['mentions'] != null
          ? List<String>.from(data['mentions'] as List)
          : null,
      timestamp: (data['timestamp'] as Timestamp).toDate(),
      editedAt: data['editedAt'] != null
          ? (data['editedAt'] as Timestamp).toDate()
          : null,
      isDeleted: data['isDeleted'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'chatId': chatId,
      'senderId': senderId,
      'type': type.toString().split('.').last,
      'content': content,
      'metadata': metadata,
      'readBy': readBy,
      'mentions': mentions,
      'timestamp': Timestamp.fromDate(timestamp),
      'editedAt': editedAt != null ? Timestamp.fromDate(editedAt!) : null,
      'isDeleted': isDeleted,
    };
  }

  ChatMessage copyWith({
    String? id,
    String? chatId,
    String? senderId,
    MessageType? type,
    String? content,
    Map<String, dynamic>? metadata,
    List<String>? readBy,
    List<String>? mentions,
    DateTime? timestamp,
    DateTime? editedAt,
    bool? isDeleted,
  }) {
    return ChatMessage(
      id: id ?? this.id,
      chatId: chatId ?? this.chatId,
      senderId: senderId ?? this.senderId,
      type: type ?? this.type,
      content: content ?? this.content,
      metadata: metadata ?? this.metadata,
      readBy: readBy ?? this.readBy,
      mentions: mentions ?? this.mentions,
      timestamp: timestamp ?? this.timestamp,
      editedAt: editedAt ?? this.editedAt,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  bool isRead(String userId) => readBy.contains(userId);

  bool isMentioned(String userId) => mentions?.contains(userId) ?? false;

  bool get isEdited => editedAt != null;

  String getDisplayContent() {
    if (isDeleted) return 'This message was deleted';

    switch (type) {
      case MessageType.text:
        return content;
      case MessageType.image:
        return '📷 Image';
      case MessageType.location:
        return '📍 Location';
      case MessageType.fishCatch:
        return '🎣 Catch: ${metadata?['species']} - ${metadata?['weight']}lb';
      case MessageType.event:
        return '📅 Event: ${metadata?['title']}';
      case MessageType.announcement:
        return '📢 $content';
    }
  }
}

@immutable
class ChatRoom {
  final String id;
  final String name;
  final String? imageUrl;
  final String type; // 'direct', 'group', 'club'
  final List<String> memberIds;
  final List<String> adminIds;
  final Map<String, dynamic> settings;
  final DateTime createdAt;
  final DateTime? lastActivity;

  const ChatRoom({
    required this.id,
    required this.name,
    this.imageUrl,
    required this.type,
    required this.memberIds,
    required this.adminIds,
    required this.settings,
    required this.createdAt,
    this.lastActivity,
  });

  factory ChatRoom.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ChatRoom(
      id: doc.id,
      name: data['name'] as String,
      imageUrl: data['imageUrl'] as String?,
      type: data['type'] as String,
      memberIds: List<String>.from(data['memberIds'] as List),
      adminIds: List<String>.from(data['adminIds'] as List),
      settings: Map<String, dynamic>.from(data['settings'] as Map),
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      lastActivity: data['lastActivity'] != null
          ? (data['lastActivity'] as Timestamp).toDate()
          : null,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'type': type,
      'memberIds': memberIds,
      'adminIds': adminIds,
      'settings': settings,
      'createdAt': Timestamp.fromDate(createdAt),
      'lastActivity':
          lastActivity != null ? Timestamp.fromDate(lastActivity!) : null,
    };
  }

  bool isAdmin(String userId) => adminIds.contains(userId);

  bool isMember(String userId) => memberIds.contains(userId);
}
