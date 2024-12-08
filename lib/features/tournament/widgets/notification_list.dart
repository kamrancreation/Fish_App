import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/tournament_notification.dart';
import 'notification_tile.dart';

class NotificationList extends ConsumerWidget {
  final String? tournamentId;

  const NotificationList({
    super.key,
    this.tournamentId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationsStream = tournamentId != null
        ? ref.watch(tournamentNotificationsProvider(tournamentId!))
        : ref.watch(userNotificationsProvider);

    return notificationsStream.when(
      data: (notifications) {
        if (notifications.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.notifications_none,
                  size: 64,
                  color: Theme.of(context).disabledColor,
                ),
                const SizedBox(height: 16),
                Text(
                  'No notifications',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).disabledColor,
                      ),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return NotificationTile(
              notification: notification,
              onTap: () => _handleNotificationTap(context, notification),
              onDismiss: () => _dismissNotification(ref, notification),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Text('Error: $error'),
      ),
    );
  }

  void _handleNotificationTap(
    BuildContext context,
    TournamentNotification notification,
  ) {
    // Mark as read
    // Navigate based on notification type and data
    switch (notification.type) {
      case NotificationType.tournamentStart:
      case NotificationType.tournamentEnd:
        _navigateToTournament(context, notification.tournamentId);
        break;
      case NotificationType.newCatch:
        _navigateToCatch(
          context,
          notification.tournamentId,
          notification.data?['catchId'],
        );
        break;
      case NotificationType.leaderboardUpdate:
        _navigateToLeaderboard(context, notification.tournamentId);
        break;
      case NotificationType.prizeAwarded:
        _navigateToPrizes(context, notification.tournamentId);
        break;
      case NotificationType.invitation:
        _navigateToInvitation(context, notification);
        break;
      default:
        _navigateToTournament(context, notification.tournamentId);
    }
  }

  void _navigateToTournament(BuildContext context, String tournamentId) {
    Navigator.pushNamed(
      context,
      '/tournament/$tournamentId',
    );
  }

  void _navigateToCatch(
    BuildContext context,
    String tournamentId,
    String? catchId,
  ) {
    Navigator.pushNamed(
      context,
      '/tournament/$tournamentId/catch/$catchId',
    );
  }

  void _navigateToLeaderboard(BuildContext context, String tournamentId) {
    Navigator.pushNamed(
      context,
      '/tournament/$tournamentId/leaderboard',
    );
  }

  void _navigateToPrizes(BuildContext context, String tournamentId) {
    Navigator.pushNamed(
      context,
      '/tournament/$tournamentId/prizes',
    );
  }

  void _navigateToInvitation(
    BuildContext context,
    TournamentNotification notification,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Tournament Invitation'),
        content: Text(notification.message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Decline'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _navigateToTournament(context, notification.tournamentId);
            },
            child: const Text('Accept'),
          ),
        ],
      ),
    );
  }

  Future<void> _dismissNotification(
    WidgetRef ref,
    TournamentNotification notification,
  ) async {
    // Delete notification
    await ref
        .read(notificationServiceProvider)
        .deleteNotification(notification.id);
  }
}
