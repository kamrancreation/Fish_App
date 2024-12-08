import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/tournament_model.dart';
import '../services/tournament_service.dart';

class TournamentAnalyticsDashboard extends StatelessWidget {
  final TournamentModel tournament;
  final TournamentService _tournamentService = TournamentService();

  TournamentAnalyticsDashboard({
    super.key,
    required this.tournament,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Map<String, dynamic>>(
      stream: _tournamentService.streamTournamentAnalytics(tournament.id),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final analytics = snapshot.data!;
        return SingleChildScrollView(
          child: Column(
            children: [
              _buildSummaryCards(context, analytics),
              const SizedBox(height: 24),
              _buildCatchDistributionChart(context, analytics),
              const SizedBox(height: 24),
              _buildLocationHeatmap(context, analytics),
              const SizedBox(height: 24),
              _buildSpeciesBreakdown(context, analytics),
              const SizedBox(height: 24),
              _buildTimeAnalysis(context, analytics),
              const SizedBox(height: 24),
              _buildParticipantStats(context, analytics),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSummaryCards(BuildContext context, Map<String, dynamic> analytics) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      padding: const EdgeInsets.all(16),
      children: [
        _buildSummaryCard(
          context,
          'Total Catches',
          analytics['totalCatches'].toString(),
          Icons.catching_pokemon,
          Colors.blue,
        ),
        _buildSummaryCard(
          context,
          'Active Participants',
          analytics['activeParticipants'].toString(),
          Icons.people,
          Colors.green,
        ),
        _buildSummaryCard(
          context,
          'Average Weight',
          '${analytics['averageWeight'].toStringAsFixed(2)} lbs',
          Icons.scale,
          Colors.orange,
        ),
        _buildSummaryCard(
          context,
          'Species Count',
          analytics['speciesCount'].toString(),
          Icons.pets,
          Colors.purple,
        ),
      ],
    );
  }

  Widget _buildSummaryCard(
    BuildContext context,
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 32),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCatchDistributionChart(
    BuildContext context,
    Map<String, dynamic> analytics,
  ) {
    final catchDistribution = analytics['catchDistribution'] as List<dynamic>;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Catch Distribution',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  // Implement bar chart data
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationHeatmap(
    BuildContext context,
    Map<String, dynamic> analytics,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Catch Locations',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: _buildHeatmapMap(analytics['catchLocations']),
          ),
        ],
      ),
    );
  }

  Widget _buildHeatmapMap(List<dynamic> locations) {
    // TODO: Implement heatmap using Google Maps or MapBox
    return Container(
      color: Colors.grey[200],
      child: const Center(
        child: Text('Heatmap Coming Soon'),
      ),
    );
  }

  Widget _buildSpeciesBreakdown(
    BuildContext context,
    Map<String, dynamic> analytics,
  ) {
    final speciesData = analytics['speciesBreakdown'] as Map<String, dynamic>;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Species Breakdown',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  // Implement pie chart data
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeAnalysis(
    BuildContext context,
    Map<String, dynamic> analytics,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Catch Time Analysis',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  // Implement line chart data
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildParticipantStats(
    BuildContext context,
    Map<String, dynamic> analytics,
  ) {
    final participantStats = analytics['participantStats'] as List<dynamic>;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Performers',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: participantStats.length,
              itemBuilder: (context, index) {
                final stat = participantStats[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(stat['profileImage']),
                  ),
                  title: Text(stat['name']),
                  subtitle: Text(
                    '${stat['catchCount']} catches · ${stat['totalWeight']} lbs',
                  ),
                  trailing: Text(
                    '#${index + 1}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
