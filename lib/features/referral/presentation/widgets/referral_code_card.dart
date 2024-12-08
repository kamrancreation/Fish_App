import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../domain/models/referral.dart';

class ReferralCodeCard extends StatelessWidget {
  final Referral referral;
  final VoidCallback onShare;

  const ReferralCodeCard({
    super.key,
    required this.referral,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorScheme.primary,
              colorScheme.tertiary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Referral Code',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: colorScheme.onPrimary.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            referral.code,
                            style: theme.textTheme.headlineMedium?.copyWith(
                              color: colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: Icon(
                              Icons.copy,
                              color: colorScheme.onPrimary,
                              size: 20,
                            ),
                            onPressed: () {
                              Clipboard.setData(
                                ClipboardData(text: referral.code),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Code copied to clipboard'),
                                ),
                              );
                            },
                            tooltip: 'Copy code',
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton.filled(
                    onPressed: onShare,
                    icon: const Icon(Icons.share),
                    style: IconButton.styleFrom(
                      backgroundColor: colorScheme.onPrimary.withOpacity(0.2),
                      foregroundColor: colorScheme.onPrimary,
                    ),
                    tooltip: 'Share code',
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildRewardInfo(
                    context,
                    'Referrer Reward',
                    referral.rewards['referrer']?['value']?.toString() ?? '0',
                    'days premium',
                  ),
                  _buildRewardInfo(
                    context,
                    'Friend\'s Reward',
                    referral.rewards['referee']?['value']?.toString() ?? '0',
                    'days trial',
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(
                    Icons.timer_outlined,
                    color: colorScheme.onPrimary.withOpacity(0.8),
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Expires in ${referral.timeLeft.inDays} days',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onPrimary.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRewardInfo(
    BuildContext context,
    String title,
    String value,
    String unit,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.labelMedium?.copyWith(
            color: colorScheme.onPrimary.withOpacity(0.8),
          ),
        ),
        const SizedBox(height: 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              value,
              style: theme.textTheme.headlineSmall?.copyWith(
                color: colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              unit,
              style: theme.textTheme.labelMedium?.copyWith(
                color: colorScheme.onPrimary.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
