import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../core/services/statistics_service.dart';

class StatisticsScreen extends StatefulWidget {
  final String userId;

  const StatisticsScreen({super.key, required this.userId});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late StatisticsService _statisticsService;
  bool _isLoading = true;
  Map<String, dynamic>? _catchStats;
  Map<String, dynamic>? _socialStats;
  Map<String, dynamic>? _achievementStats;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _statisticsService = Provider.of<StatisticsService>(context, listen: false);
    _loadStatistics();
  }

  Future<void> _loadStatistics() async {
    setState(() => _isLoading = true);
    try {
      final futures = await Future.wait([
        _statisticsService.getCatchStatistics(widget.userId),
        _statisticsService.getSocialStatistics(widget.userId),
        _statisticsService.getAchievementStatistics(widget.userId),
      ]);

      setState(() {
        _catchStats = futures[0];
        _socialStats = futures[1];
        _achievementStats = futures[2];
        _isLoading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading statistics: $e')),
      );
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fishing Statistics'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Catches'),
            Tab(text: 'Social'),
            Tab(text: 'Achievements'),
          ],
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabController,
              children: [
                _CatchStatisticsTab(stats: _catchStats!),
                _SocialStatisticsTab(stats: _socialStats!),
                _AchievementStatisticsTab(stats: _achievementStats!),
              ],
            ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class _CatchStatisticsTab extends StatelessWidget {
  final Map<String, dynamic> stats;

  const _CatchStatisticsTab({required this.stats});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StatCard(
            title: 'Total Catches',
            value: '${stats['totalCatches']}',
            icon: Icons.catching_pokemon,
          ),
          const SizedBox(height: 16),
          _buildSpeciesChart(),
          const SizedBox(height: 24),
          _buildTimeDistributionChart(),
          const SizedBox(height: 24),
          _buildWeightStats(),
          const SizedBox(height: 24),
          _buildBestLocations(),
        ],
      ),
    );
  }

  Widget _buildSpeciesChart() {
    final speciesData = Map<String, int>.from(stats['speciesDistribution']);
    if (speciesData.isEmpty) return const SizedBox();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Species Distribution',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  sections: speciesData.entries.map((entry) {
                    return PieChartSectionData(
                      value: entry.value.toDouble(),
                      title: '${entry.key}\n${entry.value}',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeDistributionChart() {
    final hourlyData = Map<int, int>.from(stats['hourlyDistribution']);
    if (hourlyData.isEmpty) return const SizedBox();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Catch Time Distribution',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: false),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text('${value.toInt()}:00');
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: true),
                  lineBarsData: [
                    LineChartBarData(
                      spots: hourlyData.entries.map((entry) {
                        return FlSpot(
                          entry.key.toDouble(),
                          entry.value.toDouble(),
                        );
                      }).toList(),
                      isCurved: true,
                      dotData: const FlDotData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeightStats() {
    final weightStats = stats['weightStats'];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Weight Statistics',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _StatRow(
              label: 'Largest Catch',
              value: '${weightStats['max']} kg',
            ),
            _StatRow(
              label: 'Average Weight',
              value: '${weightStats['average'].toStringAsFixed(2)} kg',
            ),
            _StatRow(
              label: 'Smallest Catch',
              value: '${weightStats['min']} kg',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBestLocations() {
    final locations = List<String>.from(stats['bestLocations']);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Best Fishing Spots',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ...locations.map((location) => ListTile(
                  leading: const Icon(Icons.location_on),
                  title: Text(location),
                )),
          ],
        ),
      ),
    );
  }
}

class _SocialStatisticsTab extends StatelessWidget {
  final Map<String, dynamic> stats;

  const _SocialStatisticsTab({required this.stats});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _StatCard(
            title: 'Total Posts',
            value: '${stats['postsCount']}',
            icon: Icons.post_add,
          ),
          const SizedBox(height: 16),
          _StatCard(
            title: 'Events Created',
            value: '${stats['eventsCreated']}',
            icon: Icons.event,
          ),
          const SizedBox(height: 16),
          _StatCard(
            title: 'Clubs Created',
            value: '${stats['clubsCreated']}',
            icon: Icons.group,
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Engagement',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _StatRow(
                    label: 'Total Likes',
                    value: '${stats['totalLikes']}',
                  ),
                  _StatRow(
                    label: 'Total Comments',
                    value: '${stats['totalComments']}',
                  ),
                  _StatRow(
                    label: 'Engagement Rate',
                    value:
                        '${(stats['engagementRate'] * 100).toStringAsFixed(1)}%',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Network',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _StatRow(
                    label: 'Followers',
                    value: '${stats['followersCount']}',
                  ),
                  _StatRow(
                    label: 'Following',
                    value: '${stats['followingCount']}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AchievementStatisticsTab extends StatelessWidget {
  final Map<String, dynamic> stats;

  const _AchievementStatisticsTab({required this.stats});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _StatCard(
            title: 'Total Badges',
            value: '${stats['totalBadges']}',
            icon: Icons.military_tech,
          ),
          const SizedBox(height: 16),
          if (stats['largestCatch'] != null)
            _StatCard(
              title: 'Largest Catch',
              value: '${stats['largestCatch']} kg',
              subtitle: stats['largestSpecies'],
              icon: Icons.catching_pokemon,
            ),
          const SizedBox(height: 16),
          _StatCard(
            title: 'Days Active',
            value: '${stats['daysActive']}',
            icon: Icons.calendar_today,
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String? subtitle;
  final IconData icon;

  const _StatCard({
    required this.title,
    required this.value,
    this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 48),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodySmall?.color,
                      ),
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

class _StatRow extends StatelessWidget {
  final String label;
  final String value;

  const _StatRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
