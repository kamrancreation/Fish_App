import 'package:flutter/material.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final actions = [
      ProfileAction(
        icon: Icons.edit,
        label: 'Edit Profile',
        onTap: () {
          // TODO: Navigate to edit profile
        },
      ),
      ProfileAction(
        icon: Icons.settings,
        label: 'Settings',
        onTap: () {
          // TODO: Navigate to settings
        },
      ),
      ProfileAction(
        icon: Icons.share,
        label: 'Share Profile',
        onTap: () {
          // TODO: Share profile
        },
      ),
      ProfileAction(
        icon: Icons.help,
        label: 'Help',
        onTap: () {
          // TODO: Navigate to help
        },
      ),
    ];

    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: actions.map((action) {
        return InkWell(
          onTap: action.onTap,
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            width: 80,
            child: Column(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    action.icon,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  action.label,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

class ProfileAction {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ProfileAction({
    required this.icon,
    required this.label,
    required this.onTap,
  });
}
