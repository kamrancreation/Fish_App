import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/models/achievement.dart';
import '../../domain/services/achievement_service.dart';

class AchievementProgress extends StatelessWidget {
  final Map<String, double> progress;

  const AchievementProgress({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Achievement>>(
      stream: context.read<AchievementService>().achievements,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox.shrink();

        final achievements = snapshot.data!
            .where((a) => !a.isUnlocked && !a.isSecret)
            .toList()
          ..sort((a, b) => b.progress.compareTo(a.progress));

        if (achievements.isEmpty) {
          return Center(
            child: Text(
              'No achievements in progress',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: achievements.length,
          itemBuilder: (context, index) {
            final achievement = achievements[index];
            return _ProgressItem(
              achievement: achievement,
              progress: progress[achievement.id] ?? 0.0,
            );
          },
        );
      },
    );
  }
}

class _ProgressItem extends StatelessWidget {
  final Achievement achievement;
  final double progress;

  const _ProgressItem({
    required this.achievement,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _getCategoryColor(context).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  achievement.displayIcon,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      achievement.title,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '${(progress * 100).toInt()}% Complete',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '${achievement.points} pts',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: colorScheme.surfaceContainerHighest,
              valueColor: AlwaysStoppedAnimation(
                _getCategoryColor(context),
              ),
              minHeight: 4,
            ),
          ),
        ],
      ),
    );
  }

  Color _getCategoryColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    switch (achievement.category) {
      case AchievementCategory.fishing:
        return Colors.blue;
      case AchievementCategory.social:
        return Colors.orange;
      case AchievementCategory.exploration:
        return Colors.green;
      case AchievementCategory.contribution:
        return Colors.purple;
      case AchievementCategory.collection:
        return Colors.amber;
      case AchievementCategory.skill:
        return Colors.red;
      case AchievementCategory.special:
        return colorScheme.primary;
    }
  }
}
