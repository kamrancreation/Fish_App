import 'package:flutter/material.dart';

class PremiumFeature {
  final String title;
  final String description;
  final IconData icon;
  final Color? color;

  const PremiumFeature({
    required this.title,
    required this.description,
    required this.icon,
    this.color,
  });
}

class PremiumFeaturesGrid extends StatelessWidget {
  final int crossAxisCount;
  final double spacing;

  static const _features = [
    PremiumFeature(
      title: 'Advanced Maps',
      description: 'Access detailed offline maps and satellite imagery',
      icon: Icons.map,
    ),
    PremiumFeature(
      title: 'Weather Insights',
      description: 'Get detailed weather forecasts and fishing conditions',
      icon: Icons.wb_sunny,
    ),
    PremiumFeature(
      title: 'Premium Spots',
      description: 'Discover exclusive fishing locations',
      icon: Icons.location_on,
    ),
    PremiumFeature(
      title: 'Advanced Stats',
      description: 'Track your progress with detailed statistics',
      icon: Icons.bar_chart,
    ),
    PremiumFeature(
      title: 'Fish Recognition',
      description: 'Identify fish species with AI technology',
      icon: Icons.camera,
    ),
    PremiumFeature(
      title: 'Community Access',
      description: 'Join premium fishing communities',
      icon: Icons.group,
    ),
  ];

  const PremiumFeaturesGrid({
    super.key,
    required this.crossAxisCount,
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: spacing,
        mainAxisSpacing: spacing,
        childAspectRatio: 1.2,
      ),
      itemCount: _features.length,
      itemBuilder: (context, index) {
        final feature = _features[index];
        return _FeatureCard(feature: feature);
      },
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final PremiumFeature feature;

  const _FeatureCard({
    required this.feature,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: (feature.color ?? colorScheme.primary).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                feature.icon,
                color: feature.color ?? colorScheme.primary,
                size: 32,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              feature.title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              feature.description,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
