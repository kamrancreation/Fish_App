import 'package:flutter/material.dart';
import '../../../../core/analytics/fishing_analytics.dart';

class PremiumFeaturesPage extends StatefulWidget {
  const PremiumFeaturesPage({super.key});

  @override
  State<PremiumFeaturesPage> createState() => _PremiumFeaturesPageState();
}

class _PremiumFeaturesPageState extends State<PremiumFeaturesPage> {
  late final FishingAnalytics _analytics;
  final int _premiumPoints = 0;

  @override
  void initState() {
    super.initState();
    _analytics = FishingAnalytics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium Features'),
      ),
      body: ListView(
        children: [
          _buildPremiumPointsCard(),
          _buildFeaturesList(),
        ],
      ),
    );
  }

  Widget _buildPremiumPointsCard() {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Premium Points: $_premiumPoints',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Earn points to unlock premium features!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturesList() {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: const Text('Advanced Fish Tracking'),
            subtitle: const Text('Track more details about your catches'),
            trailing: Icon(
              _premiumPoints >= 100 ? Icons.lock_open : Icons.lock,
              color: _premiumPoints >= 100 ? Colors.green : Colors.grey,
            ),
          ),
          ListTile(
            title: const Text('Weather Forecast'),
            subtitle: const Text('Get detailed weather forecasts for fishing spots'),
            trailing: Icon(
              _premiumPoints >= 200 ? Icons.lock_open : Icons.lock,
              color: _premiumPoints >= 200 ? Colors.green : Colors.grey,
            ),
          ),
          ListTile(
            title: const Text('Fish Species Guide'),
            subtitle: const Text('Access comprehensive fish species information'),
            trailing: Icon(
              _premiumPoints >= 300 ? Icons.lock_open : Icons.lock,
              color: _premiumPoints >= 300 ? Colors.green : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
