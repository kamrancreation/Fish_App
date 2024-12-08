import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../models/tournament_notification.dart';

class NotificationTile extends StatelessWidget {
  final TournamentNotification notification;
  final VoidCallback onTap;
  final VoidCallback onDismiss;

  const NotificationTile({
    super.key,
    required this.notification,
    required this.onTap,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(notification.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16),
        color: Colors.red,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      onDismissed: (_) => onDismiss(),
      child: Material(
        color: notification.isRead
            ? null
            : Theme.of(context).colorScheme.primary.withOpacity(0.1),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIcon(context),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notification.title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight:
                              notification.isRead ? FontWeight.normal : FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        notification.message,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        timeago.format(notification.timestamp),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    IconData icon;
    Color color;

    switch (notification.type) {
      case NotificationType.tournamentStart:
        icon = Icons.play_circle;
        color = Colors.green;
        break;
      case NotificationType.tournamentEnd:
        icon = Icons.stop_circle;
        color = Colors.red;
        break;
      case NotificationType.newCatch:
        icon = Icons.catching_pokemon;
        color = Colors.blue;
        break;
      case NotificationType.leaderboardUpdate:
        icon = Icons.leaderboard;
        color = Colors.orange;
        break;
      case NotificationType.prizeAwarded:
        icon = Icons.emoji_events;
        color = Colors.amber;
        break;
      case NotificationType.disqualification:
        icon = Icons.gavel;
        color = Colors.red;
        break;
      case NotificationType.invitation:
        icon = Icons.mail;
        color = Colors.purple;
        break;
      case NotificationType.reminder:
        icon = Icons.alarm;
        color = Colors.blue;
        break;
      case NotificationType.verification:
        icon = Icons.verified;
        color = Colors.green;
        break;
      case NotificationType.announcement:
        icon = Icons.campaign;
        color = Colors.orange;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: color,
        size: 24,
      ),
    );
  }
}
