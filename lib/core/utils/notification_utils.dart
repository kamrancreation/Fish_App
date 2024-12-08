import '../models/notification_model.dart';
import 'date_utils.dart';

class NotificationUtils {
  static String getNotificationTitle(NotificationModel notification) {
    switch (notification.type) {
      case 'emergency':
        return 'Emergency Alert';
      case 'check_in':
        return 'Check-in Reminder';
      case 'weather':
        return 'Weather Alert';
      case 'social':
        return 'Social Update';
      default:
        return notification.title;
    }
  }

  static String getNotificationDescription(NotificationModel notification) {
    final timeAgo = DateUtils.formatTimeAgo(notification.timestamp);
    return '${notification.message} • $timeAgo';
  }

  static String getPriorityLevel(NotificationModel notification) {
    switch (notification.type) {
      case 'emergency':
        return 'high';
      case 'weather':
        final severity = notification.metadata?['severity'] as String? ?? 'low';
        return severity;
      case 'check_in':
        final isOverdue = notification.metadata?['isOverdue'] as bool? ?? false;
        return isOverdue ? 'high' : 'medium';
      default:
        return 'low';
    }
  }

  static bool shouldShowNotification(NotificationModel notification) {
    // Don't show outdated notifications
    if (notification.type == 'weather' &&
        notification.timestamp.isBefore(
          DateTime.now().subtract(const Duration(hours: 6)),
        )) {
      return false;
    }

    // Don't show resolved emergencies
    if (notification.type == 'emergency' &&
        notification.metadata?['resolved'] == true) {
      return false;
    }

    // Don't show completed check-ins
    if (notification.type == 'check_in' &&
        notification.metadata?['completed'] == true) {
      return false;
    }

    return true;
  }

  static String getActionText(NotificationModel notification) {
    switch (notification.type) {
      case 'emergency':
        return 'View Details';
      case 'check_in':
        return 'Check In Now';
      case 'weather':
        return 'View Forecast';
      case 'social':
        return 'View';
      default:
        return 'Open';
    }
  }

  static String? getNotificationSound(NotificationModel notification) {
    switch (getPriorityLevel(notification)) {
      case 'high':
        return 'emergency_alert.mp3';
      case 'medium':
        return 'notification.mp3';
      default:
        return null;
    }
  }

  static bool shouldVibrate(NotificationModel notification) {
    return getPriorityLevel(notification) == 'high';
  }

  static Duration getNotificationTimeout(NotificationModel notification) {
    switch (notification.type) {
      case 'emergency':
        return const Duration(hours: 24);
      case 'weather':
        return const Duration(hours: 6);
      case 'check_in':
        return const Duration(hours: 1);
      default:
        return const Duration(days: 7);
    }
  }

  static Map<String, dynamic> getNotificationPayload(NotificationModel notification) {
    return {
      'id': notification.id,
      'type': notification.type,
      'priority': getPriorityLevel(notification),
      'timestamp': notification.timestamp.toIso8601String(),
      ...?notification.metadata,
    };
  }

  static List<NotificationModel> filterNotifications(
    List<NotificationModel> notifications,
    {
      String? type,
      String? priority,
      bool? isRead,
      Duration? since,
    }
  ) {
    return notifications.where((notification) {
      if (type != null && notification.type != type) return false;
      if (priority != null && getPriorityLevel(notification) != priority) return false;
      if (isRead != null && notification.isRead != isRead) return false;
      if (since != null && 
          notification.timestamp.isBefore(DateTime.now().subtract(since))) {
        return false;
      }
      return true;
    }).toList();
  }
}
