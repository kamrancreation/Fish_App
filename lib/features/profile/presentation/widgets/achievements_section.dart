import 'package:flutter/material.dart';

class AchievementsSection extends StatelessWidget {
  const AchievementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // TODO: Get from provider
    final achievements = [
      const Achievement(
        id: '1',
        name: 'First Catch',
        description: 'Caught your first fish',
        icon: '🎣',
        progress: 1.0,
        isUnlocked: true,
      ),
      const Achievement(
        id: '2',
        name: 'Species Hunter',
        description: 'Catch 5 different species',
        icon: '🐟',
        progress: 0.6,
        isUnlocked: false,
      ),
      const Achievement(
        id: '3',
        name: 'Early Bird',
        description: 'Fish before sunrise',
        icon: '🌅',
        progress: 0.0,
        isUnlocked: false,
      ),
      const Achievement(
        id: '4',
        name: 'Social Butterfly',
        description: 'Share 10 catches',
        icon: '🦋',
        progress: 0.3,
        isUnlocked: false,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Achievements',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // TODO: Navigate to achievements
              },
              child: const Text('View All'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.5,
          ),
          itemCount: achievements.length,
          itemBuilder: (context, index) {
            final achievement = achievements[index];
            return Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: colorScheme.outlineVariant.withOpacity(0.2),
                ),
              ),
              child: InkWell(
                onTap: () {
                  // TODO: Show achievement details
                },
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            achievement.icon,
                            style: const TextStyle(fontSize: 24),
                          ),
                          const SizedBox(width: 8),
                          if (achievement.isUnlocked)
                            Icon(
                              Icons.check_circle,
                              color: colorScheme.primary,
                              size: 16,
                            ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        achievement.name,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        achievement.description,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: achievement.progress,
                          backgroundColor:
                              colorScheme.primaryContainer.withOpacity(0.2),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            achievement.isUnlocked
                                ? colorScheme.primary
                                : colorScheme.primary.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Achievement {
  final String id;
  final String name;
  final String description;
  final String icon;
  final double progress;
  final bool isUnlocked;

  const Achievement({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.progress,
    required this.isUnlocked,
  });
}
