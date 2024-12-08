import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../models/notification_models.dart';
import '../repositories/notification_repository.dart';

class PushNotificationService {
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotifications;
  final NotificationRepository _notificationRepository;

  // Stream controllers for different notification types
  final _notificationStreamController = StreamController<RemoteMessage>.broadcast();
  final _messageStreamController = StreamController<ChatNotification>.broadcast();
  final _socialStreamController = StreamController<SocialNotification>.broadcast();

  PushNotificationService({
    FirebaseMessaging? firebaseMessaging,
    FlutterLocalNotificationsPlugin? localNotifications,
    NotificationRepository? notificationRepository,
  })  : _firebaseMessaging = firebaseMessaging ?? FirebaseMessaging.instance,
        _localNotifications = localNotifications ?? FlutterLocalNotificationsPlugin(),
        _notificationRepository = notificationRepository ?? NotificationRepository() {
    _initialize();
  }

  Future<void> _initialize() async {
    // Request permission
    await _requestPermission();

    // Initialize local notifications
    await _initializeLocalNotifications();

    // Configure firebase messaging handlers
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);
    FirebaseMessaging.onBackgroundMessage(_handleBackgroundMessage);
  }

  Future<void> _requestPermission() async {
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined permission');
    }
  }

  Future<void> _initializeLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const settings = InitializationSettings(android: androidSettings, iOS: iosSettings);

    await _localNotifications.initialize(
      settings,
      onDidReceiveNotificationResponse: (details) {
        // Handle notification tap
        _handleNotificationTap(details);
      },
    );
  }

  void _handleForegroundMessage(RemoteMessage message) {
    // Process the message
    _processMessage(message);

    // Show local notification
    _showLocalNotification(
      id: message.messageId.hashCode,
      title: message.notification?.title ?? '',
      body: message.notification?.body ?? '',
      payload: message.data.toString(),
    );

    // Broadcast the message
    _notificationStreamController.add(message);
  }

  void _handleMessageOpenedApp(RemoteMessage message) {
    _processMessage(message);
  }

  static Future<void> _handleBackgroundMessage(RemoteMessage message) async {
    // Handle background message
    print('Handling background message: ${message.messageId}');
  }

  Future<void> _showLocalNotification({
    required int id,
    required String title,
    required String body,
    String? payload,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'fishpro_channel',
      'FishPro Notifications',
      channelDescription: 'FishPro app notification channel',
      importance: Importance.high,
      priority: Priority.high,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const details = NotificationDetails(android: androidDetails, iOS: iosDetails);

    await _localNotifications.show(id, title, body, details, payload: payload);
  }

  void _processMessage(RemoteMessage message) {
    final data = message.data;
    final type = data['type'];

    switch (type) {
      case 'chat':
        final chatNotification = ChatNotification.fromJson(data);
        _messageStreamController.add(chatNotification);
        break;
      case 'social':
        final socialNotification = SocialNotification.fromJson(data);
        _socialStreamController.add(socialNotification);
        break;
    }

    // Store notification in repository
    _notificationRepository.storeNotification(
      AppNotification(
        id: message.messageId ?? DateTime.now().toString(),
        type: type,
        title: message.notification?.title ?? '',
        body: message.notification?.body ?? '',
        data: data,
        timestamp: DateTime.now(),
        isRead: false,
      ),
    );
  }

  void _handleNotificationTap(NotificationResponse details) {
    // Handle notification tap based on payload
    print('Notification tapped: ${details.payload}');
  }

  // Get FCM token
  Future<String?> getFCMToken() async {
    return await _firebaseMessaging.getToken();
  }

  // Subscribe to topic
  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
  }

  // Unsubscribe from topic
  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
  }

  // Send chat notification
  Future<void> sendChatNotification({
    required List<String> recipients,
    required String title,
    required String body,
    required Map<String, dynamic> data,
  }) async {
    for (final recipient in recipients) {
      final token = await _notificationRepository.getDeviceToken(recipient);
      if (token != null) {
        await _notificationRepository.sendNotification(
          token: token,
          title: title,
          body: body,
          data: {
            'type': 'chat',
            ...data,
          },
        );
      }
    }
  }

  // Send social notification
  Future<void> sendSocialNotification({
    required String recipient,
    required String title,
    required String body,
    required Map<String, dynamic> data,
  }) async {
    final token = await _notificationRepository.getDeviceToken(recipient);
    if (token != null) {
      await _notificationRepository.sendNotification(
        token: token,
        title: title,
        body: body,
        data: {
          'type': 'social',
          ...data,
        },
      );
    }
  }

  // Get notification streams
  Stream<RemoteMessage> get notificationStream => _notificationStreamController.stream;
  Stream<ChatNotification> get messageStream => _messageStreamController.stream;
  Stream<SocialNotification> get socialStream => _socialStreamController.stream;

  // Dispose
  void dispose() {
    _notificationStreamController.close();
    _messageStreamController.close();
    _socialStreamController.close();
  }
}
