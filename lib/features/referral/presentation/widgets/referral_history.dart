import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/models/referral.dart';
import '../../domain/services/referral_service.dart';

class ReferralHistory extends StatelessWidget {
  const ReferralHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Referral>>(
      stream: context.read<ReferralService>().referrals,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox.shrink();

        final completedReferrals = snapshot.data!
            .where((r) => r.isCompleted)
            .toList()
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Referral History',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                if (completedReferrals.isEmpty)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.history,
                            size: 48,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'No completed referrals yet',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Share your referral code with friends to earn rewards',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: completedReferrals.length,
                    itemBuilder: (context, index) {
                      return _ReferralHistoryItem(
                        referral: completedReferrals[index],
                      );
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ReferralHistoryItem extends StatelessWidget {
  final Referral referral;

  const _ReferralHistoryItem({
    required this.referral,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.person_add,
          color: colorScheme.onPrimaryContainer,
        ),
      ),
      title: Text(
        'Code: ${referral.code}',
        style: theme.textTheme.titleMedium,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Completed on ${_formatDate(referral.createdAt)}',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          if (referral.isReferrerRewarded)
            Text(
              'Reward claimed',
              style: theme.textTheme.labelSmall?.copyWith(
                color: Colors.green,
              ),
            ),
        ],
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          '${referral.rewards['referrer']?['value'] ?? 0} days',
          style: theme.textTheme.labelMedium?.copyWith(
            color: colorScheme.onSecondaryContainer,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
}
