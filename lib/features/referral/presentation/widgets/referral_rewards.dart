import 'package:flutter/material.dart';

class ReferralRewards extends StatelessWidget {
  const ReferralRewards({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Referral Program',
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Invite friends and earn premium rewards',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),
            const _RewardTier(
              title: 'For You',
              description: 'When your friend joins with your code',
              rewards: [
                _Reward(
                  icon: Icons.star,
                  title: '30 Days Premium',
                  description: 'Get a month of premium features',
                ),
                _Reward(
                  icon: Icons.catching_pokemon,
                  title: 'Special Badge',
                  description: 'Unlock the Referrer badge',
                ),
              ],
            ),
            const SizedBox(height: 24),
            const _RewardTier(
              title: 'For Your Friend',
              description: 'What they get when using your code',
              rewards: [
                _Reward(
                  icon: Icons.card_giftcard,
                  title: '7 Days Trial',
                  description: 'Free premium trial access',
                ),
                _Reward(
                  icon: Icons.workspace_premium,
                  title: 'Welcome Bonus',
                  description: 'Special features unlocked',
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'No limit on referrals',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: colorScheme.onPrimaryContainer,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Invite as many friends as you want and earn rewards for each successful referral',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onPrimaryContainer.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RewardTier extends StatelessWidget {
  final String title;
  final String description;
  final List<_Reward> rewards;

  const _RewardTier({
    required this.title,
    required this.description,
    required this.rewards,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 16),
        ...rewards.map((reward) => Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: colorScheme.secondaryContainer,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      reward.icon,
                      color: colorScheme.onSecondaryContainer,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          reward.title,
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          reward.description,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

class _Reward {
  final IconData icon;
  final String title;
  final String description;

  const _Reward({
    required this.icon,
    required this.title,
    required this.description,
  });
}
