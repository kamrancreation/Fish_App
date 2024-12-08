import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // TODO: Get from provider
    final activities = [
      Activity(
        id: '1',
        type: ActivityType.catch_logged,
        title: 'Caught a Bass',
        description: 'Caught a 5.2kg Bass at Lake View',
        timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        imageUrl: 'https://example.com/bass.jpg',
      ),
      Activity(
        id: '2',
        type: ActivityType.achievement_unlocked,
        title: 'New Achievement',
        description: 'Unlocked "Early Bird" achievement',
        timestamp: DateTime.now().subtract(const Duration(days: 1)),
        imageUrl: null,
      ),
      Activity(
        id: '3',
        type: ActivityType.spot_discovered,
        title: 'New Spot',
        description: 'Discovered River Bend',
        timestamp: DateTime.now().subtract(const Duration(days: 2)),
        imageUrl: 'https://example.com/spot.jpg',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Activity',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // TODO: Navigate to activity history
              },
              child: const Text('View All'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: colorScheme.outlineVariant.withOpacity(0.2),
            ),
          ),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: activities.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final activity = activities[index];
              return ListTile(
                leading: _buildActivityIcon(activity.type, colorScheme),
                title: Text(
                  activity.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(activity.description),
                    const SizedBox(height: 4),
                    Text(
                      _formatTimestamp(activity.timestamp),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                trailing: activity.imageUrl != null
                    ? Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(activity.imageUrl!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : null,
                onTap: () {
                  // TODO: Navigate to activity details
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildActivityIcon(ActivityType type, ColorScheme colorScheme) {
    IconData icon;
    Color color;

    switch (type) {
      case ActivityType.catch_logged:
        icon = Icons.catching_pokemon;
        color = Colors.blue;
        break;
      case ActivityType.achievement_unlocked:
        icon = Icons.emoji_events;
        color = Colors.amber;
        break;
      case ActivityType.spot_discovered:
        icon = Icons.place;
        color = Colors.green;
        break;
    }

    return CircleAvatar(
      backgroundColor: color.withOpacity(0.1),
      child: Icon(
        icon,
        color: color,
        size: 20,
      ),
    );
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }
}

enum ActivityType {
  catch_logged,
  achievement_unlocked,
  spot_discovered,
}

class Activity {
  final String id;
  final ActivityType type;
  final String title;
  final String description;
  final DateTime timestamp;
  final String? imageUrl;

  const Activity({
    required this.id,
    required this.type,
    required this.title,
    required this.description,
    required this.timestamp,
    this.imageUrl,
  });
}
