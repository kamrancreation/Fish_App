import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import '../models/tournament_model.dart';
import '../models/notification_preferences.dart';
import 'notification_service.dart';

class NotificationScheduler {
  final FlutterLocalNotificationsPlugin _notifications;
  final TournamentNotificationService _notificationService;

  NotificationScheduler(this._notifications, this._notificationService);

  Future<void> scheduleTournamentReminders(
    TournamentModel tournament,
    NotificationPreferences preferences,
  ) async {
    if (!preferences.reminders) return;

    final startTime = tournament.startTime;
    final reminderTime =
        startTime.subtract(preferences.tournamentStartReminder);

    if (reminderTime.isAfter(DateTime.now())) {
      await _scheduleNotification(
        id: tournament.hashCode,
        title: 'Tournament Starting Soon',
        body:
            '${tournament.name} starts in ${preferences.tournamentStartReminder.inMinutes} minutes!',
        scheduledDate: reminderTime,
        payload: {
          'type': 'tournament_reminder',
          'tournamentId': tournament.id,
        },
      );
    }

    // Schedule end reminder if tournament duration is known
    if (tournament.endTime != null) {
      final endReminderTime = tournament.endTime!.subtract(
        const Duration(minutes: 30),
      );

      if (endReminderTime.isAfter(DateTime.now())) {
        await _scheduleNotification(
          id: tournament.hashCode + 1,
          title: 'Tournament Ending Soon',
          body: '${tournament.name} ends in 30 minutes!',
          scheduledDate: endReminderTime,
          payload: {
            'type': 'tournament_end_reminder',
            'tournamentId': tournament.id,
          },
        );
      }
    }
  }

  Future<void> scheduleDailyDigest(NotificationPreferences preferences) async {
    if (!preferences.dailyDigest) return;

    final now = DateTime.now();
    var scheduledDate = DateTime(
      now.year,
      now.month,
      now.day,
      preferences.dailyDigestTime.hour,
      preferences.dailyDigestTime.minute,
    );

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    await _scheduleNotification(
      id: 'daily_digest'.hashCode,
      title: 'Daily Tournament Digest',
      body: 'Check out your tournament summary for today!',
      scheduledDate: scheduledDate,
      payload: {'type': 'daily_digest'},
      repeating: true,
      frequency: const Duration(days: 1),
    );
  }

  Future<void> scheduleWeeklyReport(NotificationPreferences preferences) async {
    if (!preferences.weeklyReport) return;

    final now = DateTime.now();
    var scheduledDate = _nextWeekday(
      preferences.weeklyReportDay,
      preferences.weeklyReportTime,
    );

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 7));
    }

    await _scheduleNotification(
      id: 'weekly_report'.hashCode,
      title: 'Weekly Tournament Report',
      body: 'View your tournament performance for this week!',
      scheduledDate: scheduledDate,
      payload: {'type': 'weekly_report'},
      repeating: true,
      frequency: const Duration(days: 7),
    );
  }

  Future<void> _scheduleNotification({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledDate,
    required Map<String, dynamic> payload,
    bool repeating = false,
    Duration? frequency,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'scheduled_notifications',
      'Scheduled Notifications',
      channelDescription: 'Notifications for scheduled tournament updates',
      importance: Importance.high,
      priority: Priority.high,
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

    if (repeating && frequency != null) {
      await _notifications.periodicallyShow(
        id,
        title,
        body,
        RepeatInterval.daily,
        details,
        payload: payload.toString(),
      );
    } else {
      await _notifications.zonedSchedule(
        id,
        title,
        body,
        tz.TZDateTime.from(scheduledDate, tz.local),
        details,
        payload: payload.toString(),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );
    }
  }

  DateTime _nextWeekday(int targetDay, TimeOfDay time) {
    final now = DateTime.now();
    var days = targetDay - now.weekday;
    if (days <= 0) days += 7;

    return DateTime(
      now.year,
      now.month,
      now.day + days,
      time.hour,
      time.minute,
    );
  }

  Future<void> cancelAllScheduledNotifications() async {
    await _notifications.cancelAll();
  }

  Future<void> cancelTournamentReminders(int tournamentId) async {
    await _notifications.cancel(tournamentId);
    await _notifications.cancel(tournamentId + 1);
  }
}
