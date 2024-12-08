import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../models/tournament_notification.dart';
import '../models/tournament_model.dart';

class TournamentNotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    // Request permission for notifications
    await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    // Initialize local notifications
    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    await _localNotifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _handleNotificationTap,
    );

    // Handle background messages
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
  }

  Future<void> _handleNotificationTap(NotificationResponse response) async {
    // Handle notification tap
    final payload = response.payload;
    if (payload != null) {
      // Navigate to appropriate screen based on payload
    }
  }

  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    // Show local notification when app is in foreground
    await _showLocalNotification(
      title: message.notification?.title ?? '',
      body: message.notification?.body ?? '',
      payload: message.data['payload'],
    );
  }

  Future<void> _showLocalNotification({
    required String title,
    required String body,
    String? payload,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'tournament_channel',
      'Tournament Notifications',
      channelDescription: 'Notifications for tournament updates',
      importance: Importance.high,
      priority: Priority.high,
      showWhen: true,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _localNotifications.show(
      DateTime.now().millisecond,
      title,
      body,
      details,
      payload: payload,
    );
  }

  Future<void> subscribeTournament(String tournamentId) async {
    await _messaging.subscribeToTopic('tournament_$tournamentId');
  }

  Future<void> unsubscribeTournament(String tournamentId) async {
    await _messaging.unsubscribeFromTopic('tournament_$tournamentId');
  }

  Future<void> sendTournamentStartNotification(TournamentModel tournament) async {
    final notification = TournamentNotification(
      id: DateTime.now().toIso8601String(),
      tournamentId: tournament.id,
      type: NotificationType.tournamentStart,
      title: 'Tournament Starting',
      message: '${tournament.name} is starting now!',
      timestamp: DateTime.now(),
      data: {
        'tournamentId': tournament.id,
        'action': 'view_tournament',
      },
    );

    await _sendNotification(notification);
  }

  Future<void> sendNewCatchNotification({
    required String tournamentId,
    required String catcherId,
    required String catcherName,
    required double weight,
    required String species,
  }) async {
    final notification = TournamentNotification(
      id: DateTime.now().toIso8601String(),
      tournamentId: tournamentId,
      userId: catcherId,
      type: NotificationType.newCatch,
      title: 'New Catch Submitted',
      message: '$catcherName caught a $weight lb $species!',
      timestamp: DateTime.now(),
      data: {
        'tournamentId': tournamentId,
        'catcherId': catcherId,
        'weight': weight,
        'species': species,
        'action': 'view_catch',
      },
    );

    await _sendNotification(notification);
  }

  Future<void> sendLeaderboardUpdateNotification({
    required String tournamentId,
    required String userId,
    required String userName,
    required int newRank,
  }) async {
    final notification = TournamentNotification(
      id: DateTime.now().toIso8601String(),
      tournamentId: tournamentId,
      userId: userId,
      type: NotificationType.leaderboardUpdate,
      title: 'Leaderboard Update',
      message: '$userName has moved to rank #$newRank!',
      timestamp: DateTime.now(),
      data: {
        'tournamentId': tournamentId,
        'userId': userId,
        'newRank': newRank,
        'action': 'view_leaderboard',
      },
    );

    await _sendNotification(notification);
  }

  Future<void> sendTournamentEndNotification(TournamentModel tournament) async {
    final notification = TournamentNotification(
      id: DateTime.now().toIso8601String(),
      tournamentId: tournament.id,
      type: NotificationType.tournamentEnd,
      title: 'Tournament Ended',
      message: '${tournament.name} has ended. Check the final results!',
      timestamp: DateTime.now(),
      data: {
        'tournamentId': tournament.id,
        'action': 'view_results',
      },
    );

    await _sendNotification(notification);
  }

  Future<void> sendPrizeNotification({
    required String tournamentId,
    required String userId,
    required double amount,
    required int rank,
  }) async {
    final notification = TournamentNotification(
      id: DateTime.now().toIso8601String(),
      tournamentId: tournamentId,
      userId: userId,
      type: NotificationType.prizeAwarded,
      title: 'Prize Awarded',
      message: 'You won \$$amount for placing #$rank!',
      timestamp: DateTime.now(),
      data: {
        'tournamentId': tournamentId,
        'userId': userId,
        'amount': amount,
        'rank': rank,
        'action': 'view_prizes',
      },
    );

    await _sendNotification(notification);
  }

  Future<void> sendTournamentInvitation({
    required String tournamentId,
    required String inviterId,
    required String inviterName,
    required String inviteeId,
  }) async {
    final notification = TournamentNotification(
      id: DateTime.now().toIso8601String(),
      tournamentId: tournamentId,
      userId: inviteeId,
      type: NotificationType.invitation,
      title: 'Tournament Invitation',
      message: '$inviterName invited you to join their tournament!',
      timestamp: DateTime.now(),
      data: {
        'tournamentId': tournamentId,
        'inviterId': inviterId,
        'action': 'view_invitation',
      },
    );

    await _sendNotification(notification);
  }

  Future<void> _sendNotification(TournamentNotification notification) async {
    // Save notification to database
    // await _saveNotification(notification);

    // Send push notification
    await _messaging.sendMessage(
      to: notification.userId != null
          ? '/topics/user_${notification.userId}'
          : '/topics/tournament_${notification.tournamentId}',
      data: {
        ...notification.toJson(),
        'payload': notification.data.toString(),
      },
    );
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Handle background messages
  print('Handling background message: ${message.messageId}');
}
