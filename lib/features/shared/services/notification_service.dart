import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationService {
  final FirebaseMessaging _messaging;
  final FlutterLocalNotificationsPlugin _localNotifications;
  final FirebaseFirestore _firestore;

  NotificationService(
    this._messaging,
    this._localNotifications,
    this._firestore,
  );

  Future<void> initialize() async {
    // Request permission
    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      // Initialize local notifications
      const initializationSettings = InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(),
      );

      await _localNotifications.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: _onNotificationTapped,
      );

      // Handle background messages
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);

      // Handle foreground messages
      FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

      // Handle notification taps when app was terminated
      final initialMessage = await _messaging.getInitialMessage();
      if (initialMessage != null) {
        _handleNotificationTap(initialMessage.data);
      }
    }
  }

  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    final notification = message.notification;
    if (notification == null) return;

    const androidDetails = AndroidNotificationDetails(
      'fishpro_channel',
      'FishPro Notifications',
      channelDescription: 'Notifications from FishPro app',
      importance: Importance.max,
      priority: Priority.high,
    );

    const platformDetails = NotificationDetails(android: androidDetails);

    await _localNotifications.show(
      notification.hashCode,
      notification.title,
      notification.body,
      platformDetails,
      payload: message.data.toString(),
    );
  }

  void _onNotificationTapped(NotificationResponse response) {
    if (response.payload != null) {
      final data = Map<String, dynamic>.from(
        // Convert string payload back to map
        response.payload!
            .replaceAll('{', '')
            .replaceAll('}', '')
            .split(',')
            .map((e) {
              final parts = e.split(':');
              return MapEntry(
                parts[0].trim(),
                parts[1].trim(),
              );
            })
            .toList()
            .asMap(),
      );
      _handleNotificationTap(data);
    }
  }

  Future<void> _handleNotificationTap(Map<String, dynamic> data) async {
    // Handle different notification types
    final type = data['type'];
    final id = data['id'];

    switch (type) {
      case 'chat':
        // Navigate to chat screen
        break;
      case 'post':
        // Navigate to post details
        break;
      case 'catch':
        // Navigate to catch details
        break;
      case 'event':
        // Navigate to event details
        break;
      case 'achievement':
        // Navigate to achievement details
        break;
    }

    // Mark notification as read
    if (data['notificationId'] != null) {
      await _markNotificationAsRead(data['notificationId']);
    }
  }

  Future<void> _markNotificationAsRead(String notificationId) async {
    await _firestore
        .collection('notifications')
        .doc(notificationId)
        .update({'read': true});
  }

  Future<void> subscribeToTopic(String topic) async {
    await _messaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await _messaging.unsubscribeFromTopic(topic);
  }

  Future<void> updateUserToken(String userId) async {
    final token = await _messaging.getToken();
    if (token != null) {
      await _firestore.collection('users').doc(userId).update({
        'fcmTokens': FieldValue.arrayUnion([token]),
      });
    }
  }

  Future<void> removeUserToken(String userId) async {
    final token = await _messaging.getToken();
    if (token != null) {
      await _firestore.collection('users').doc(userId).update({
        'fcmTokens': FieldValue.arrayRemove([token]),
      });
    }
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Handle background messages
  // This needs to be a top-level function
  print('Handling background message: ${message.messageId}');
}
