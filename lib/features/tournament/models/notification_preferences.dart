import 'package:flutter/foundation.dart';

@immutable
class NotificationPreferences {
  final bool tournamentStart;
  final bool tournamentEnd;
  final bool newCatch;
  final bool leaderboardUpdates;
  final bool prizeAwards;
  final bool invitations;
  final bool reminders;
  final bool verifications;
  final bool announcements;
  
  // Reminder settings
  final Duration tournamentStartReminder;
  final bool dailyDigest;
  final TimeOfDay dailyDigestTime;
  final bool weeklyReport;
  final int weeklyReportDay; // 1-7 (Monday-Sunday)
  final TimeOfDay weeklyReportTime;

  const NotificationPreferences({
    this.tournamentStart = true,
    this.tournamentEnd = true,
    this.newCatch = true,
    this.leaderboardUpdates = true,
    this.prizeAwards = true,
    this.invitations = true,
    this.reminders = true,
    this.verifications = true,
    this.announcements = true,
    this.tournamentStartReminder = const Duration(hours: 1),
    this.dailyDigest = false,
    this.dailyDigestTime = const TimeOfDay(hour: 20, minute: 0),
    this.weeklyReport = false,
    this.weeklyReportDay = 1,
    this.weeklyReportTime = const TimeOfDay(hour: 10, minute: 0),
  });

  factory NotificationPreferences.fromJson(Map<String, dynamic> json) {
    return NotificationPreferences(
      tournamentStart: json['tournamentStart'] ?? true,
      tournamentEnd: json['tournamentEnd'] ?? true,
      newCatch: json['newCatch'] ?? true,
      leaderboardUpdates: json['leaderboardUpdates'] ?? true,
      prizeAwards: json['prizeAwards'] ?? true,
      invitations: json['invitations'] ?? true,
      reminders: json['reminders'] ?? true,
      verifications: json['verifications'] ?? true,
      announcements: json['announcements'] ?? true,
      tournamentStartReminder: Duration(minutes: json['tournamentStartReminderMinutes'] ?? 60),
      dailyDigest: json['dailyDigest'] ?? false,
      dailyDigestTime: TimeOfDay(
        hour: json['dailyDigestHour'] ?? 20,
        minute: json['dailyDigestMinute'] ?? 0,
      ),
      weeklyReport: json['weeklyReport'] ?? false,
      weeklyReportDay: json['weeklyReportDay'] ?? 1,
      weeklyReportTime: TimeOfDay(
        hour: json['weeklyReportHour'] ?? 10,
        minute: json['weeklyReportMinute'] ?? 0,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tournamentStart': tournamentStart,
      'tournamentEnd': tournamentEnd,
      'newCatch': newCatch,
      'leaderboardUpdates': leaderboardUpdates,
      'prizeAwards': prizeAwards,
      'invitations': invitations,
      'reminders': reminders,
      'verifications': verifications,
      'announcements': announcements,
      'tournamentStartReminderMinutes': tournamentStartReminder.inMinutes,
      'dailyDigest': dailyDigest,
      'dailyDigestHour': dailyDigestTime.hour,
      'dailyDigestMinute': dailyDigestTime.minute,
      'weeklyReport': weeklyReport,
      'weeklyReportDay': weeklyReportDay,
      'weeklyReportHour': weeklyReportTime.hour,
      'weeklyReportMinute': weeklyReportTime.minute,
    };
  }

  NotificationPreferences copyWith({
    bool? tournamentStart,
    bool? tournamentEnd,
    bool? newCatch,
    bool? leaderboardUpdates,
    bool? prizeAwards,
    bool? invitations,
    bool? reminders,
    bool? verifications,
    bool? announcements,
    Duration? tournamentStartReminder,
    bool? dailyDigest,
    TimeOfDay? dailyDigestTime,
    bool? weeklyReport,
    int? weeklyReportDay,
    TimeOfDay? weeklyReportTime,
  }) {
    return NotificationPreferences(
      tournamentStart: tournamentStart ?? this.tournamentStart,
      tournamentEnd: tournamentEnd ?? this.tournamentEnd,
      newCatch: newCatch ?? this.newCatch,
      leaderboardUpdates: leaderboardUpdates ?? this.leaderboardUpdates,
      prizeAwards: prizeAwards ?? this.prizeAwards,
      invitations: invitations ?? this.invitations,
      reminders: reminders ?? this.reminders,
      verifications: verifications ?? this.verifications,
      announcements: announcements ?? this.announcements,
      tournamentStartReminder: tournamentStartReminder ?? this.tournamentStartReminder,
      dailyDigest: dailyDigest ?? this.dailyDigest,
      dailyDigestTime: dailyDigestTime ?? this.dailyDigestTime,
      weeklyReport: weeklyReport ?? this.weeklyReport,
      weeklyReportDay: weeklyReportDay ?? this.weeklyReportDay,
      weeklyReportTime: weeklyReportTime ?? this.weeklyReportTime,
    );
  }
}
