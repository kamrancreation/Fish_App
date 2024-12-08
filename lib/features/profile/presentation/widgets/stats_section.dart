import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // TODO: Get from provider
    final stats = [
      const Stat(
        name: 'Total Weight',
        value: '156.2',
        unit: 'kg',
        icon: Icons.scale,
        trend: 0.12,
      ),
      const Stat(
        name: 'Biggest Catch',
        value: '12.5',
        unit: 'kg',
        icon: Icons.catching_pokemon,
        trend: 0.0,
      ),
      const Stat(
        name: 'Species Caught',
        value: '8',
        unit: '',
        icon: Icons.category,
        trend: 0.25,
      ),
      const Stat(
        name: 'Favorite Spot',
        value: 'Lake View',
        unit: '',
        icon: Icons.place,
        trend: null,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Statistics',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
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
          itemCount: stats.length,
          itemBuilder: (context, index) {
            final stat = stats[index];
            return Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: colorScheme.outlineVariant.withOpacity(0.2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          stat.icon,
                          color: colorScheme.primary,
                        ),
                        const Spacer(),
                        if (stat.trend != null) ...[
                          Icon(
                            stat.trend > 0
                                ? Icons.trending_up
                                : stat.trend < 0
                                    ? Icons.trending_down
                                    : Icons.trending_flat,
                            color: stat.trend > 0
                                ? Colors.green
                                : stat.trend < 0
                                    ? Colors.red
                                    : colorScheme.onSurfaceVariant,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${(stat.trend * 100).abs().toStringAsFixed(1)}%',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: stat.trend > 0
                                  ? Colors.green
                                  : stat.trend < 0
                                      ? Colors.red
                                      : colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ],
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          stat.value,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (stat.unit.isNotEmpty) ...[
                          const SizedBox(width: 4),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              stat.unit,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      stat.name,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Stat {
  final String name;
  final String value;
  final String unit;
  final IconData icon;
  final double? trend;

  const Stat({
    required this.name,
    required this.value,
    required this.unit,
    required this.icon,
    this.trend,
  });
}
