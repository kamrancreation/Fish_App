import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/presentation/responsive/responsive_layout.dart';
import '../../../../core/presentation/widgets/loading_state.dart';
import '../../../../core/presentation/widgets/error_state.dart';
import '../../domain/models/subscription_plan.dart';
import '../../domain/services/subscription_service.dart';
import '../widgets/subscription_card.dart';
import '../widgets/premium_features_grid.dart';
import '../widgets/current_plan_banner.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  late Future<List<SubscriptionPlan>> _plansFuture;

  @override
  void initState() {
    super.initState();
    _plansFuture = _loadPlans();
  }

  Future<List<SubscriptionPlan>> _loadPlans() async {
    final service = context.read<SubscriptionService>();
    return service.getAvailablePlans();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium Features'),
        actions: [
          IconButton(
            icon: const Icon(Icons.restore),
            onPressed: () {
              final service = context.read<SubscriptionService>();
              service.restorePurchases();
            },
            tooltip: 'Restore Purchases',
          ),
        ],
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
            const CurrentPlanBanner(),
            const SizedBox(height: 24),
            _buildPlansSection(),
            const SizedBox(height: 32),
            const PremiumFeaturesGrid(
              crossAxisCount: 2,
              spacing: 16,
            ),
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
            const CurrentPlanBanner(),
            const SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: _buildPlansSection(),
                ),
                const SizedBox(width: 24),
                const Expanded(
                  flex: 2,
                  child: PremiumFeaturesGrid(
                    crossAxisCount: 2,
                    spacing: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const CurrentPlanBanner(),
            const SizedBox(height: 48),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 2,
                  child: PremiumFeaturesGrid(
                    crossAxisCount: 2,
                    spacing: 24,
                  ),
                ),
                const SizedBox(width: 48),
                Expanded(
                  flex: 3,
                  child: _buildPlansSection(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlansSection() {
    return FutureBuilder<List<SubscriptionPlan>>(
      future: _plansFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingState(
            message: 'Loading subscription plans...',
          );
        }

        if (snapshot.hasError) {
          return ErrorState(
            message: 'Failed to load subscription plans',
            onRetry: () {
              setState(() {
                _plansFuture = _loadPlans();
              });
            },
          );
        }

        final plans = snapshot.data!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Choose Your Plan',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ...plans.map((plan) => Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: SubscriptionCard(
                    plan: plan,
                    onSubscribe: () {
                      final service = context.read<SubscriptionService>();
                      service.startSubscription(plan);
                    },
                  ),
                )),
          ],
        );
      },
    );
  }
}
