import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../premium/domain/services/subscription_service.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Drawer(
      child: Column(
        children: [
          _buildHeader(context),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildMainSection(context),
                const Divider(),
                _buildPremiumSection(context),
                const Divider(),
                _buildSocialSection(context),
                const Divider(),
                _buildSettingsSection(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        child: Icon(
          Icons.person,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          size: 32,
        ),
      ),
      accountName: const Text('John Doe'), // Get from auth service
      accountEmail: const Text('john.doe@example.com'), // Get from auth service
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.tertiary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }

  Widget _buildMainSection(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.map),
          title: const Text('Map'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to map
          },
        ),
        ListTile(
          leading: const Icon(Icons.place),
          title: const Text('Spots'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to spots
          },
        ),
        ListTile(
          leading: const Icon(Icons.catching_pokemon),
          title: const Text('My Catches'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to catches
          },
        ),
        ListTile(
          leading: const Icon(Icons.analytics),
          title: const Text('Statistics'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to statistics
          },
        ),
      ],
    );
  }

  Widget _buildPremiumSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            'PREMIUM',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        StreamBuilder(
          stream: context.read<SubscriptionService>().statusStream,
          builder: (context, snapshot) {
            final isPremium = snapshot.data?.tier.isPremium ?? false;

            return ListTile(
              leading: const Icon(Icons.star),
              title:
                  Text(isPremium ? 'Premium Features' : 'Upgrade to Premium'),
              trailing: isPremium
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    )
                  : null,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/subscription');
              },
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.offline_pin),
          title: const Text('Offline Maps'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to offline maps
          },
        ),
        ListTile(
          leading: const Icon(Icons.workspace_premium),
          title: const Text('Premium Spots'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to premium spots
          },
        ),
      ],
    );
  }

  Widget _buildSocialSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            'SOCIAL',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.emoji_events),
          title: const Text('Achievements'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/achievements');
          },
        ),
        ListTile(
          leading: const Icon(Icons.group_add),
          title: const Text('Invite Friends'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/referral');
          },
        ),
        ListTile(
          leading: const Icon(Icons.forum),
          title: const Text('Community'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to community
          },
        ),
      ],
    );
  }

  Widget _buildSettingsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            'SETTINGS',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/settings');
          },
        ),
        ListTile(
          leading: const Icon(Icons.help),
          title: const Text('Help & Support'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to help
          },
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('About'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to about
          },
        ),
      ],
    );
  }
}
