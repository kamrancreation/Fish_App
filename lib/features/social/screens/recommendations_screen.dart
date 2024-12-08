import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/models/profile_model.dart';
import '../../../core/models/social_model.dart';
import '../../../core/services/recommendation_service.dart';
import '../../../core/services/auth_service.dart';
import '../widgets/profile_card.dart';
import '../widgets/event_card.dart';

class RecommendationsScreen extends StatefulWidget {
  const RecommendationsScreen({super.key});

  @override
  State<RecommendationsScreen> createState() => _RecommendationsScreenState();
}

class _RecommendationsScreenState extends State<RecommendationsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late RecommendationService _recommendationService;
  late AuthService _authService;
  bool _isLoading = true;
  List<UserProfile> _recommendedUsers = [];
  List<Map<String, dynamic>> _recommendedSpots = [];
  List<FishingEvent> _recommendedEvents = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _recommendationService =
        Provider.of<RecommendationService>(context, listen: false);
    _authService = Provider.of<AuthService>(context, listen: false);
    _loadRecommendations();
  }

  Future<void> _loadRecommendations() async {
    setState(() => _isLoading = true);
    try {
      final userId = _authService.currentUser.uid;
      if (userId == null) throw Exception('User not logged in');

      final futures = await Future.wait([
        _recommendationService.getRecommendedUsers(userId),
        _recommendationService.getRecommendedSpots(userId),
        _recommendationService.getRecommendedEvents(userId),
      ]);

      setState(() {
        _recommendedUsers = futures[0] as List<UserProfile>;
        _recommendedSpots = futures[1] as List<Map<String, dynamic>>;
        _recommendedEvents = futures[2] as List<FishingEvent>;
        _isLoading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading recommendations: $e')),
      );
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended for You'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Anglers'),
            Tab(text: 'Spots'),
            Tab(text: 'Events'),
          ],
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabController,
              children: [
                _AnglersTab(users: _recommendedUsers),
                _SpotsTab(spots: _recommendedSpots),
                _EventsTab(events: _recommendedEvents),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadRecommendations,
        child: const Icon(Icons.refresh),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class _AnglersTab extends StatelessWidget {
  final List<UserProfile> users;

  const _AnglersTab({required this.users});

  @override
  Widget build(BuildContext context) {
    if (users.isEmpty) {
      return const Center(
        child: Text('No recommended anglers at the moment'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ProfileCard(profile: user);
      },
    );
  }
}

class _SpotsTab extends StatelessWidget {
  final List<Map<String, dynamic>> spots;

  const _SpotsTab({required this.spots});

  @override
  Widget build(BuildContext context) {
    if (spots.isEmpty) {
      return const Center(
        child: Text('No recommended spots at the moment'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: spots.length,
      itemBuilder: (context, index) {
        final spot = spots[index];
        final stats = spot['stats'] as Map<String, dynamic>;
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 32),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            spot['location'] as String,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Score: ${(spot['score'] as double).toStringAsFixed(1)}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(height: 24),
                _StatRow(
                  label: 'Total Catches',
                  value: '${stats['totalCatches']}',
                ),
                _StatRow(
                  label: 'Average Weight',
                  value:
                      '${(stats['averageWeight'] as double).toStringAsFixed(2)} kg',
                ),
                _StatRow(
                  label: 'Recent Activity',
                  value: '${stats['recentActivity']} catches in 30 days',
                ),
                _StatRow(
                  label: 'Species Variety',
                  value: '${(stats['species'] as Set<String>).length} species',
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: (stats['species'] as Set<String>).map((species) {
                    return Chip(
                      avatar: const Icon(Icons.fish, size: 16),
                      label: Text(species),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _EventsTab extends StatelessWidget {
  final List<FishingEvent> events;

  const _EventsTab({required this.events});

  @override
  Widget build(BuildContext context) {
    if (events.isEmpty) {
      return const Center(
        child: Text('No recommended events at the moment'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: events.length,
      itemBuilder: (context, index) {
        return EventCard(event: events[index]);
      },
    );
  }
}

class _StatRow extends StatelessWidget {
  final String label;
  final String value;

  const _StatRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
