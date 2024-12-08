import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/chat_message.dart';

class ChatService {
  final FirebaseFirestore _firestore;
  final String _messagesCollection = 'messages';
  final String _chatsCollection = 'chats';

  ChatService(this._firestore);

  // Chat Room Management
  Future<ChatRoom> createChatRoom(ChatRoom room) async {
    final docRef = await _firestore.collection(_chatsCollection).add(
      room.toFirestore(),
    );
    return room.copyWith(id: docRef.id);
  }

  Future<void> updateChatRoom(ChatRoom room) async {
    await _firestore
        .collection(_chatsCollection)
        .doc(room.id)
        .update(room.toFirestore());
  }

  Future<void> deleteChatRoom(String roomId) async {
    // Delete all messages in the chat room
    final messages = await _firestore
        .collection(_messagesCollection)
        .where('chatId', isEqualTo: roomId)
        .get();

    final batch = _firestore.batch();
    for (var doc in messages.docs) {
      batch.delete(doc.reference);
    }

    // Delete the chat room
    batch.delete(_firestore.collection(_chatsCollection).doc(roomId));
    await batch.commit();
  }

  Stream<ChatRoom> streamChatRoom(String roomId) {
    return _firestore
        .collection(_chatsCollection)
        .doc(roomId)
        .snapshots()
        .map((doc) => ChatRoom.fromFirestore(doc));
  }

  Future<List<ChatRoom>> getUserChats(String userId) async {
    final querySnapshot = await _firestore
        .collection(_chatsCollection)
        .where('memberIds', arrayContains: userId)
        .get();

    return querySnapshot.docs
        .map((doc) => ChatRoom.fromFirestore(doc))
        .toList();
  }

  // Message Management
  Future<ChatMessage> sendMessage(ChatMessage message) async {
    // Create message
    final docRef = await _firestore
        .collection(_messagesCollection)
        .add(message.toFirestore());

    // Update chat room's last activity
    await _firestore.collection(_chatsCollection).doc(message.chatId).update({
      'lastActivity': Timestamp.fromDate(message.timestamp),
    });

    return message.copyWith(id: docRef.id);
  }

  Future<void> editMessage(ChatMessage message) async {
    await _firestore
        .collection(_messagesCollection)
        .doc(message.id)
        .update(message.toFirestore());
  }

  Future<void> deleteMessage(String messageId) async {
    await _firestore.collection(_messagesCollection).doc(messageId).update({
      'isDeleted': true,
      'content': '',
      'metadata': null,
    });
  }

  Stream<List<ChatMessage>> streamMessages(
    String chatId, {
    int limit = 50,
    DateTime? before,
  }) {
    Query query = _firestore
        .collection(_messagesCollection)
        .where('chatId', isEqualTo: chatId)
        .orderBy('timestamp', descending: true)
        .limit(limit);

    if (before != null) {
      query = query.where('timestamp',
          isLessThan: Timestamp.fromDate(before));
    }

    return query.snapshots().map((snapshot) => snapshot.docs
        .map((doc) => ChatMessage.fromFirestore(doc))
        .toList());
  }

  Future<void> markMessagesAsRead(String chatId, String userId) async {
    final unreadMessages = await _firestore
        .collection(_messagesCollection)
        .where('chatId', isEqualTo: chatId)
        .where('readBy', arrayContains: userId)
        .get();

    final batch = _firestore.batch();
    for (var doc in unreadMessages.docs) {
      batch.update(doc.reference, {
        'readBy': FieldValue.arrayUnion([userId]),
      });
    }
    await batch.commit();
  }

  // Member Management
  Future<void> addMembers(String chatId, List<String> userIds) async {
    await _firestore.collection(_chatsCollection).doc(chatId).update({
      'memberIds': FieldValue.arrayUnion(userIds),
    });
  }

  Future<void> removeMembers(String chatId, List<String> userIds) async {
    await _firestore.collection(_chatsCollection).doc(chatId).update({
      'memberIds': FieldValue.arrayRemove(userIds),
    });
  }

  Future<void> addAdmins(String chatId, List<String> userIds) async {
    await _firestore.collection(_chatsCollection).doc(chatId).update({
      'adminIds': FieldValue.arrayUnion(userIds),
    });
  }

  Future<void> removeAdmins(String chatId, List<String> userIds) async {
    await _firestore.collection(_chatsCollection).doc(chatId).update({
      'adminIds': FieldValue.arrayRemove(userIds),
    });
  }

  // Chat Settings
  Future<void> updateChatSettings(
    String chatId,
    Map<String, dynamic> settings,
  ) async {
    await _firestore.collection(_chatsCollection).doc(chatId).update({
      'settings': settings,
    });
  }

  // Analytics
  Future<Map<String, dynamic>> getChatStats(String chatId) async {
    final messages = await _firestore
        .collection(_messagesCollection)
        .where('chatId', isEqualTo: chatId)
        .get();

    final stats = {
      'totalMessages': messages.size,
      'messageTypes': <String, int>{},
      'activeUsers': <String>{},
      'mediaCount': 0,
    };

    for (var doc in messages.docs) {
      final message = ChatMessage.fromFirestore(doc);
      
      // Count message types
      final type = message.type.toString().split('.').last;
      stats['messageTypes'][type] = (stats['messageTypes'][type] ?? 0) + 1;

      // Count active users
      stats['activeUsers'].add(message.senderId);

      // Count media messages
      if (message.type == MessageType.image) {
        stats['mediaCount'] = (stats['mediaCount'] as int) + 1;
      }
    }

    stats['activeUsers'] = (stats['activeUsers'] as Set).length;

    return stats;
  }
}
