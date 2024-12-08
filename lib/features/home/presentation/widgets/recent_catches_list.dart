import 'package:flutter/material.dart';

class RecentCatchesList extends StatelessWidget {
  const RecentCatchesList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // TODO: Replace with actual catches from provider
    final catches = List.generate(
      3,
      (index) => Catch(
        id: 'catch_$index',
        species: 'Bass',
        weight: 2.5 + index,
        length: 30.0 + index,
        location: 'Lake View Point',
        timestamp: DateTime.now().subtract(Duration(days: index)),
        imageUrl: 'https://example.com/catch$index.jpg',
        weather: 'Sunny',
        temperature: 24.0,
      ),
    );

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: catches.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final fishCatch = catches[index];
        return _CatchCard(fishCatch: fishCatch);
      },
    );
  }
}

class _CatchCard extends StatelessWidget {
  final Catch fishCatch;

  const _CatchCard({required this.fishCatch});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: colorScheme.outlineVariant.withOpacity(0.2),
        ),
      ),
      child: InkWell(
        onTap: () {
          // Navigate to catch details
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.photo_camera,
                  size: 48,
                  color: colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.catching_pokemon,
                        size: 20,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        fishCatch.species,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        _formatTimestamp(fishCatch.timestamp),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _CatchStat(
                        icon: Icons.monitor_weight,
                        value: '${fishCatch.weight} kg',
                        label: 'Weight',
                        colorScheme: colorScheme,
                      ),
                      _CatchStat(
                        icon: Icons.straighten,
                        value: '${fishCatch.length} cm',
                        label: 'Length',
                        colorScheme: colorScheme,
                      ),
                      _CatchStat(
                        icon: Icons.thermostat,
                        value: '${fishCatch.temperature}°C',
                        label: 'Temp',
                        colorScheme: colorScheme,
                      ),
                      _CatchStat(
                        icon: Icons.wb_sunny,
                        value: fishCatch.weather,
                        label: 'Weather',
                        colorScheme: colorScheme,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.place,
                        size: 16,
                        color: colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        fishCatch.location,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          // Share catch
                        },
                        style: TextButton.styleFrom(
                          visualDensity: VisualDensity.compact,
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.share, size: 16),
                            SizedBox(width: 4),
                            Text('Share'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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

class _CatchStat extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final ColorScheme colorScheme;

  const _CatchStat({
    required this.icon,
    required this.value,
    required this.label,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 20,
          color: colorScheme.primary,
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
        ),
      ],
    );
  }
}

class Catch {
  final String id;
  final String species;
  final double weight;
  final double length;
  final String location;
  final DateTime timestamp;
  final String imageUrl;
  final String weather;
  final double temperature;

  const Catch({
    required this.id,
    required this.species,
    required this.weight,
    required this.length,
    required this.location,
    required this.timestamp,
    required this.imageUrl,
    required this.weather,
    required this.temperature,
  });
}
