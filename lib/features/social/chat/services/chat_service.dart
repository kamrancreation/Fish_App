import 'dart:async';
import 'package:firebase_storage/firebase_storage.dart';
import '../models/chat_models.dart';
import '../repositories/chat_repository.dart';
import '../../notifications/services/push_notification_service.dart';

class ChatService {
  final ChatRepository _chatRepository;
  final PushNotificationService _pushNotificationService;
  final FirebaseStorage _storage;

  final _messageControllers = <String, StreamController<List<ChatMessage>>>{};
  final _typingControllers =
      <String, StreamController<List<ChatTypingIndicator>>>{};
  final _presenceControllers = <String, StreamController<List<ChatPresence>>>{};

  ChatService({
    ChatRepository? chatRepository,
    PushNotificationService? pushNotificationService,
    FirebaseStorage? storage,
  })  : _chatRepository = chatRepository ?? ChatRepository(),
        _pushNotificationService =
            pushNotificationService ?? PushNotificationService(),
        _storage = storage ?? FirebaseStorage.instance;

  // Create chat room
  Future<ChatRoom> createChatRoom({
    required String name,
    required String type,
    required List<String> participants,
    Map<String, dynamic>? metadata,
  }) async {
    final room = ChatRoom(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      type: type,
      participants: participants,
      createdAt: DateTime.now(),
      metadata: metadata,
    );

    await _chatRepository.createRoom(room);
    return room;
  }

  // Send message
  Future<ChatMessage> sendMessage({
    required String roomId,
    required String senderId,
    required String content,
    required String type,
    List<ChatAttachment>? attachments,
    ChatMessage? replyTo,
    Map<String, dynamic>? metadata,
  }) async {
    final message = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      roomId: roomId,
      senderId: senderId,
      content: content,
      type: type,
      timestamp: DateTime.now(),
      attachments: attachments,
      replyTo: replyTo,
      metadata: metadata,
    );

    await _chatRepository.sendMessage(message);

    // Update room's last message
    await _chatRepository.updateRoom(roomId, {
      'lastMessageAt': message.timestamp,
      'lastMessageText': content,
      'lastMessageSenderId': senderId,
    });

    // Send push notifications to other participants
    final room = await _chatRepository.getRoom(roomId);
    if (room != null) {
      final recipients = room.participants.where((p) => p != senderId).toList();
      await _pushNotificationService.sendChatNotification(
        recipients: recipients,
        title: room.name,
        body: content,
        data: {
          'type': 'chat_message',
          'roomId': roomId,
          'messageId': message.id,
        },
      );
    }

    return message;
  }

  // Upload attachment
  Future<ChatAttachment> uploadAttachment({
    required String roomId,
    required String filePath,
    required String type,
    String? name,
    Map<String, dynamic>? metadata,
  }) async {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final path = 'chat/$roomId/$timestamp';
    final ref = _storage.ref().child(path);

    final uploadTask = await ref.putFile(File(filePath));
    final url = await uploadTask.ref.getDownloadURL();

    final attachment = ChatAttachment(
      id: timestamp.toString(),
      type: type,
      url: url,
      name: name,
      metadata: metadata,
    );

    return attachment;
  }

  // Stream messages
  Stream<List<ChatMessage>> streamMessages(String roomId) {
    if (!_messageControllers.containsKey(roomId)) {
      _messageControllers[roomId] =
          StreamController<List<ChatMessage>>.broadcast();
      _chatRepository.streamMessages(roomId).listen(
            (messages) => _messageControllers[roomId]?.add(messages),
            onError: (error) => _messageControllers[roomId]?.addError(error),
          );
    }
    return _messageControllers[roomId]!.stream;
  }

  // Stream typing indicators
  Stream<List<ChatTypingIndicator>> streamTypingIndicators(String roomId) {
    if (!_typingControllers.containsKey(roomId)) {
      _typingControllers[roomId] =
          StreamController<List<ChatTypingIndicator>>.broadcast();
      _chatRepository.streamTypingIndicators(roomId).listen(
            (indicators) => _typingControllers[roomId]?.add(indicators),
            onError: (error) => _typingControllers[roomId]?.addError(error),
          );
    }
    return _typingControllers[roomId]!.stream;
  }

  // Stream user presence
  Stream<List<ChatPresence>> streamPresence(List<String> userIds) {
    final key = userIds.join(',');
    if (!_presenceControllers.containsKey(key)) {
      _presenceControllers[key] =
          StreamController<List<ChatPresence>>.broadcast();
      _chatRepository.streamPresence(userIds).listen(
            (presence) => _presenceControllers[key]?.add(presence),
            onError: (error) => _presenceControllers[key]?.addError(error),
          );
    }
    return _presenceControllers[key]!.stream;
  }

  // Mark message as read
  Future<void> markMessageAsRead(String messageId, String userId) async {
    await _chatRepository.markMessageAsRead(messageId, userId);
  }

  // Add reaction
  Future<void> addReaction({
    required String messageId,
    required String userId,
    required String reaction,
  }) async {
    final chatReaction = ChatReaction(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      messageId: messageId,
      userId: userId,
      reaction: reaction,
      timestamp: DateTime.now(),
    );
    await _chatRepository.addReaction(chatReaction);
  }

  // Remove reaction
  Future<void> removeReaction(String reactionId) async {
    await _chatRepository.removeReaction(reactionId);
  }

  // Update typing indicator
  Future<void> updateTypingIndicator({
    required String roomId,
    required String userId,
  }) async {
    final indicator = ChatTypingIndicator(
      roomId: roomId,
      userId: userId,
      timestamp: DateTime.now(),
    );
    await _chatRepository.updateTypingIndicator(indicator);
  }

  // Update presence
  Future<void> updatePresence({
    required String userId,
    required String status,
    Map<String, dynamic>? metadata,
  }) async {
    final presence = ChatPresence(
      userId: userId,
      status: status,
      lastSeen: DateTime.now(),
      metadata: metadata,
    );
    await _chatRepository.updatePresence(presence);
  }

  // Get room participants
  Future<List<ChatParticipant>> getRoomParticipants(String roomId) async {
    return _chatRepository.getRoomParticipants(roomId);
  }

  // Update room settings
  Future<void> updateRoomSettings({
    required String roomId,
    required String userId,
    required ChatRoomSettings settings,
  }) async {
    await _chatRepository.updateRoomSettings(roomId, userId, settings);
  }

  // Delete message
  Future<void> deleteMessage(String messageId) async {
    await _chatRepository.deleteMessage(messageId);
  }

  // Edit message
  Future<void> editMessage({
    required String messageId,
    required String newContent,
  }) async {
    await _chatRepository.editMessage(messageId, newContent);
  }

  // Leave room
  Future<void> leaveRoom({
    required String roomId,
    required String userId,
  }) async {
    await _chatRepository.leaveRoom(roomId, userId);
  }

  // Dispose
  void dispose() {
    for (var controller in _messageControllers.values) {
      controller.close();
    }
    for (var controller in _typingControllers.values) {
      controller.close();
    }
    for (var controller in _presenceControllers.values) {
      controller.close();
    }
    _messageControllers.clear();
    _typingControllers.clear();
    _presenceControllers.clear();
  }
}
