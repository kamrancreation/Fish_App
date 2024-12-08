import 'package:flutter/material.dart';
import '../services/analytics_service.dart';
import 'package:fl_chart/fl_chart.dart';

class LocationAnalysisCard extends StatelessWidget {
  final LocationAnalysis analysis;

  const LocationAnalysisCard({
    super.key,
    required this.analysis,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildOverviewCard(context),
        const SizedBox(height: 16),
        _buildSpeciesDistributionCard(context),
        const SizedBox(height: 16),
        _buildTimeAnalysisCard(context),
        const SizedBox(height: 16),
        _buildSeasonalTrendsCard(context),
        const SizedBox(height: 16),
        _buildWeatherCorrelationCard(context),
      ],
    );
  }

  Widget _buildOverviewCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location Overview',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatItem(
                  context,
                  'Total Catches',
                  analysis.totalCatches.toString(),
                  Icons.catching_pokemon,
                ),
                _buildStatItem(
                  context,
                  'Success Rate',
                  '${(analysis.successRate * 100).toStringAsFixed(1)}%',
                  Icons.check_circle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpeciesDistributionCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Species Distribution',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  sections: analysis.speciesDistribution.entries
                      .map(
                        (entry) => PieChartSectionData(
                          value: entry.value * 100,
                          title: '${entry.key}\n${(entry.value * 100).toStringAsFixed(1)}%',
                          radius: 100,
                          titleStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      )
                      .toList(),
                  sectionsSpace: 2,
                  centerSpaceRadius: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeAnalysisCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Best Times',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 1,
                  barGroups: analysis.bestTimes.entries
                      .map(
                        (entry) => BarChartGroupData(
                          x: entry.key,
                          barRods: [
                            BarChartRodData(
                              toY: entry.value,
                              color: Colors.blue,
                              width: 16,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                  titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text('${value.toInt()}:00');
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSeasonalTrendsCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Seasonal Trends',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: analysis.seasonalTrends.length,
              itemBuilder: (context, index) {
                final trend = analysis.seasonalTrends[index];
                return ListTile(
                  title: Text(
                    _getMonthName(trend.month),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Success Rate: ${(trend.successRate * 100).toStringAsFixed(1)}%',
                      ),
                      Text(
                        'Average Weight: ${trend.averageWeight.toStringAsFixed(2)} kg',
                      ),
                      Text('Dominant Species: ${trend.dominantSpecies}'),
                    ],
                  ),
                  trailing: Text(
                    trend.catchCount.toString(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherCorrelationCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Weather Impact',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            _buildCorrelationBar(
              context,
              'Temperature',
              analysis.weatherCorrelation.temperatureCorrelation,
            ),
            const SizedBox(height: 8),
            _buildCorrelationBar(
              context,
              'Pressure',
              analysis.weatherCorrelation.pressureCorrelation,
            ),
            const SizedBox(height: 8),
            _buildCorrelationBar(
              context,
              'Wind',
              analysis.weatherCorrelation.windCorrelation,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) {
    return Column(
      children: [
        Icon(icon, size: 32),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  Widget _buildCorrelationBar(
    BuildContext context,
    String label,
    double correlation,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: (correlation + 1) / 2, // Convert from [-1, 1] to [0, 1]
          backgroundColor: Colors.grey.withOpacity(0.2),
          valueColor: AlwaysStoppedAnimation(
            correlation >= 0 ? Colors.green : Colors.red,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${(correlation * 100).toStringAsFixed(1)}% correlation',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  String _getMonthName(int month) {
    return [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ][month - 1];
  }
}
