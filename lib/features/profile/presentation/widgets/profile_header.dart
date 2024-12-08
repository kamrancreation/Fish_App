import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorScheme.primary,
            colorScheme.primaryContainer,
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: colorScheme.surface,
              child: Icon(
                Icons.person,
                size: 50,
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'John Doe',
              style: theme.textTheme.headlineMedium?.copyWith(
                color: colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Pro Angler',
              style: theme.textTheme.titleMedium?.copyWith(
                color: colorScheme.onPrimary.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStat(
                  context: context,
                  label: 'Followers',
                  value: '1.2K',
                ),
                const SizedBox(width: 24),
                _buildStat(
                  context: context,
                  label: 'Following',
                  value: '843',
                ),
                const SizedBox(width: 24),
                _buildStat(
                  context: context,
                  label: 'Catches',
                  value: '156',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStat({
    required BuildContext context,
    required String label,
    required String value,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(
            color: colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onPrimary.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
