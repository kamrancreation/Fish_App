import 'dart:async';
import 'package:collection/collection.dart';
import '../models/tournament_notification.dart';
import 'notification_service.dart';

class BatchNotificationHandler {
  final TournamentNotificationService _notificationService;
  final Duration _batchWindow;
  final int _maxBatchSize;

  final _notificationQueue = <TournamentNotification>[];
  Timer? _batchTimer;

  BatchNotificationHandler(
    this._notificationService, {
    Duration batchWindow = const Duration(minutes: 5),
    int maxBatchSize = 10,
  })  : _batchWindow = batchWindow,
        _maxBatchSize = maxBatchSize;

  Future<void> addNotification(TournamentNotification notification) async {
    _notificationQueue.add(notification);

    if (_notificationQueue.length >= _maxBatchSize) {
      await _processBatch();
    } else {
      _scheduleBatchProcessing();
    }
  }

  void _scheduleBatchProcessing() {
    _batchTimer?.cancel();
    _batchTimer = Timer(_batchWindow, () async {
      await _processBatch();
    });
  }

  Future<void> _processBatch() async {
    if (_notificationQueue.isEmpty) return;

    final batch = _notificationQueue.toList();
    _notificationQueue.clear();
    _batchTimer?.cancel();

    // Group notifications by type and tournament
    final groupedNotifications = groupBy(
      batch,
      (notification) => '${notification.type}_${notification.tournamentId}',
    );

    for (final group in groupedNotifications.values) {
      if (group.length == 1) {
        // Send single notification
        await _notificationService.sendNotification(group.first);
      } else {
        // Create and send batch notification
        await _sendBatchNotification(group);
      }
    }
  }

  Future<void> _sendBatchNotification(
      List<TournamentNotification> notifications) async {
    final type = notifications.first.type;
    final tournamentId = notifications.first.tournamentId;

    String title;
    String message;
    Map<String, dynamic> data = {
      'type': 'batch_notification',
      'tournamentId': tournamentId,
      'count': notifications.length,
    };

    switch (type) {
      case NotificationType.newCatch:
        title = 'New Catches';
        message = '${notifications.length} new catches in your tournament';
        break;
      case NotificationType.leaderboardUpdate:
        title = 'Leaderboard Updates';
        message = '${notifications.length} changes in tournament rankings';
        break;
      case NotificationType.verification:
        title = 'Catch Verifications';
        message = '${notifications.length} catches have been verified';
        break;
      default:
        title = 'Tournament Updates';
        message = '${notifications.length} new updates in your tournament';
    }

    final batchNotification = TournamentNotification(
      id: DateTime.now().toIso8601String(),
      tournamentId: tournamentId,
      type: type,
      title: title,
      message: message,
      timestamp: DateTime.now(),
      data: {
        ...data,
        'notifications': notifications.map((n) => n.toJson()).toList(),
      },
    );

    await _notificationService.sendNotification(batchNotification);
  }

  Future<void> processDailyDigest(String userId) async {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(days: 1));

    // Fetch user's tournaments
    final tournaments = await _notificationService.getUserTournaments(userId);

    for (final tournament in tournaments) {
      // Get tournament activity for the last 24 hours
      final activity = await _notificationService.getTournamentActivity(
        tournament.id,
        yesterday,
        now,
      );

      if (activity.isEmpty) continue;

      final notification = TournamentNotification(
        id: 'daily_digest_${tournament.id}_${now.toIso8601String()}',
        tournamentId: tournament.id,
        userId: userId,
        type: NotificationType.announcement,
        title: 'Daily Tournament Digest',
        message: _createDailyDigestMessage(activity),
        timestamp: now,
        data: {
          'type': 'daily_digest',
          'tournamentId': tournament.id,
          'activity': activity,
        },
      );

      await _notificationService.sendNotification(notification);
    }
  }

  Future<void> processWeeklyReport(String userId) async {
    final now = DateTime.now();
    final weekAgo = now.subtract(const Duration(days: 7));

    // Fetch user's tournaments
    final tournaments = await _notificationService.getUserTournaments(userId);

    for (final tournament in tournaments) {
      // Get tournament statistics for the week
      final stats = await _notificationService.getTournamentStats(
        tournament.id,
        weekAgo,
        now,
      );

      if (stats == null) continue;

      final notification = TournamentNotification(
        id: 'weekly_report_${tournament.id}_${now.toIso8601String()}',
        tournamentId: tournament.id,
        userId: userId,
        type: NotificationType.announcement,
        title: 'Weekly Tournament Report',
        message: _createWeeklyReportMessage(stats),
        timestamp: now,
        data: {
          'type': 'weekly_report',
          'tournamentId': tournament.id,
          'stats': stats,
        },
      );

      await _notificationService.sendNotification(notification);
    }
  }

  String _createDailyDigestMessage(Map<String, dynamic> activity) {
    final catches = activity['catches'] ?? 0;
    final participants = activity['participants'] ?? 0;
    final topCatch = activity['topCatch'];

    return 'Yesterday\'s Activity: '
        '$catches new catches, '
        '$participants active participants'
        '${topCatch != null ? ', top catch: ${topCatch['weight']}lb ${topCatch['species']}' : ''}';
  }

  String _createWeeklyReportMessage(Map<String, dynamic> stats) {
    final totalCatches = stats['totalCatches'] ?? 0;
    final rank = stats['rank'];
    final improvement = stats['rankImprovement'];

    return 'Weekly Performance: '
        '$totalCatches catches, '
        '${rank != null ? 'Rank #$rank' : ''}'
        '${improvement != null ? ', ${improvement > 0 ? 'up' : 'down'} ${improvement.abs()} places' : ''}';
  }

  void dispose() {
    _batchTimer?.cancel();
    _notificationQueue.clear();
  }
}
