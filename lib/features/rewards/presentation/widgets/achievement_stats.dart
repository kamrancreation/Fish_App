import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/models/achievement.dart';
import '../../domain/services/achievement_service.dart';

class AchievementStats extends StatelessWidget {
  const AchievementStats({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Achievement>>(
      stream: context.read<AchievementService>().achievements,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox.shrink();

        final achievements = snapshot.data!;
        final unlockedCount = achievements.where((a) => a.isUnlocked).length;
        final totalPoints = achievements
            .where((a) => a.isUnlocked)
            .fold(0, (sum, a) => sum + a.points);
        final progress =
            achievements.isEmpty ? 0.0 : unlockedCount / achievements.length;

        return Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _StatItem(
                      icon: Icons.emoji_events,
                      value: unlockedCount.toString(),
                      label: 'Unlocked',
                      color: Colors.amber,
                    ),
                    _StatItem(
                      icon: Icons.stars,
                      value: totalPoints.toString(),
                      label: 'Points',
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    _StatItem(
                      icon: Icons.timeline,
                      value: '${(progress * 100).toInt()}%',
                      label: 'Complete',
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                    valueColor: AlwaysStoppedAnimation(
                      Theme.of(context).colorScheme.primary,
                    ),
                    minHeight: 8,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _StatItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  const _StatItem({
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
