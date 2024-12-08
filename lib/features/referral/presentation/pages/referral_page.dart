import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/presentation/responsive/responsive_layout.dart';
import '../../../../core/presentation/widgets/loading_state.dart';
import '../../../../core/presentation/widgets/error_state.dart';
import '../../domain/models/referral.dart';
import '../../domain/services/referral_service.dart';
import '../widgets/referral_code_card.dart';
import '../widgets/referral_history.dart';
import '../widgets/referral_rewards.dart';

class ReferralPage extends StatefulWidget {
  const ReferralPage({super.key});

  @override
  State<ReferralPage> createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
  late ReferralService _referralService;
  final _codeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _referralService = context.read<ReferralService>();
    _referralService.initialize();
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  Future<void> _createReferralCode() async {
    final referral = await _referralService.createReferralCode();
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('New referral code created: ${referral.code}'),
          action: SnackBarAction(
            label: 'Share',
            onPressed: () => _referralService.shareReferralCode(referral),
          ),
        ),
      );
    }
  }

  Future<void> _applyReferralCode() async {
    final code = _codeController.text.trim();
    if (code.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a referral code')),
      );
      return;
    }

    final success = await _referralService.applyReferralCode(code);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success
                ? 'Referral code applied successfully!'
                : 'Invalid or expired referral code',
          ),
        ),
      );
      if (success) {
        _codeController.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Referral Program'),
      ),
      body: ResponsiveLayout(
        mobile: _buildMobileLayout(),
        tablet: _buildTabletLayout(),
        desktop: _buildDesktopLayout(),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildReferralCodeInput(),
            const SizedBox(height: 24),
            _buildActiveReferrals(),
            const SizedBox(height: 24),
            const ReferralRewards(),
            const SizedBox(height: 24),
            const ReferralHistory(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      _buildReferralCodeInput(),
                      const SizedBox(height: 24),
                      _buildActiveReferrals(),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                const Expanded(
                  flex: 2,
                  child: ReferralRewards(),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const ReferralHistory(),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                _buildReferralCodeInput(),
                const SizedBox(height: 32),
                _buildActiveReferrals(),
                const SizedBox(height: 32),
                const ReferralHistory(),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 2,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: ReferralRewards(),
          ),
        ),
      ],
    );
  }

  Widget _buildReferralCodeInput() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Have a referral code?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _codeController,
              decoration: InputDecoration(
                labelText: 'Enter referral code',
                hintText: 'e.g., ABC123XY',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.check_circle),
                  onPressed: _applyReferralCode,
                  tooltip: 'Apply code',
                ),
              ),
              textCapitalization: TextCapitalization.characters,
              onSubmitted: (_) => _applyReferralCode(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActiveReferrals() {
    return StreamBuilder<List<Referral>>(
      stream: _referralService.referrals,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingState(
            message: 'Loading referrals...',
          );
        }

        if (snapshot.hasError) {
          return ErrorState(
            message: 'Failed to load referrals',
            onRetry: () => _referralService.initialize(),
          );
        }

        final activeReferrals = snapshot.data!
            .where((r) => !r.isExpired && !r.isCompleted)
            .toList();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Active Referrals',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton.icon(
                  onPressed: _createReferralCode,
                  icon: const Icon(Icons.add),
                  label: const Text('Create New'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (activeReferrals.isEmpty)
              Center(
                child: Text(
                  'No active referrals',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              )
            else
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: activeReferrals.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ReferralCodeCard(
                      referral: activeReferrals[index],
                      onShare: () => _referralService.shareReferralCode(
                        activeReferrals[index],
                      ),
                    ),
                  );
                },
              ),
          ],
        );
      },
    );
  }
}
