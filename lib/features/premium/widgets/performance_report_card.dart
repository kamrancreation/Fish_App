import 'package:flutter/material.dart';
import '../services/analytics_service.dart';
import 'package:fl_chart/fl_chart.dart';

class PerformanceReportCard extends StatelessWidget {
  final PerformanceReport report;

  const PerformanceReportCard({
    super.key,
    required this.report,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildOverviewCard(context),
        const SizedBox(height: 16),
        _buildSpeciesBreakdownCard(context),
        const SizedBox(height: 16),
        _buildLocationPerformanceCard(context),
        const SizedBox(height: 16),
        _buildTimeAnalysisCard(context),
        const SizedBox(height: 16),
        _buildWeatherImpactCard(context),
        const SizedBox(height: 16),
        _buildEquipmentEfficiencyCard(context),
        const SizedBox(height: 16),
        _buildTrendsCard(context),
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
              'Performance Overview',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatItem(
                  context,
                  'Total Catches',
                  report.totalCatches.toString(),
                  Icons.catching_pokemon,
                ),
                _buildStatItem(
                  context,
                  'Success Rate',
                  '${(report.successRate * 100).toStringAsFixed(1)}%',
                  Icons.check_circle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpeciesBreakdownCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
                  sections: report.speciesBreakdown.entries
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

  Widget _buildLocationPerformanceCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location Performance',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: report.locationPerformance.length,
              itemBuilder: (context, index) {
                final entry = report.locationPerformance.entries.elementAt(index);
                return ListTile(
                  title: Text(
                    '${entry.key.latitude.toStringAsFixed(3)}, ${entry.key.longitude.toStringAsFixed(3)}',
                  ),
                  trailing: Text(
                    '${(entry.value * 100).toStringAsFixed(1)}%',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: LinearProgressIndicator(
                    value: entry.value,
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  ),
                );
              },
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
              'Time Analysis',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 1,
                  barGroups: report.timeAnalysis.entries
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

  Widget _buildWeatherImpactCard(BuildContext context) {
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
              report.weatherImpact.temperatureCorrelation,
            ),
            const SizedBox(height: 8),
            _buildCorrelationBar(
              context,
              'Pressure',
              report.weatherImpact.pressureCorrelation,
            ),
            const SizedBox(height: 8),
            _buildCorrelationBar(
              context,
              'Wind',
              report.weatherImpact.windCorrelation,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEquipmentEfficiencyCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Equipment Efficiency',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: report.equipmentEfficiency.length,
              itemBuilder: (context, index) {
                final entry = report.equipmentEfficiency.entries.elementAt(index);
                return ListTile(
                  title: Text('Device ${entry.key}'),
                  trailing: Text(
                    '${(entry.value * 100).toStringAsFixed(1)}%',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: LinearProgressIndicator(
                    value: entry.value,
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    valueColor: const AlwaysStoppedAnimation(Colors.green),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendsCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trends',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: report.trends.length,
              itemBuilder: (context, index) {
                final trend = report.trends[index];
                return ExpansionTile(
                  title: Text(trend.name),
                  leading: Icon(_getTrendIcon(trend.type)),
                  children: trend.value.entries.map((entry) {
                    return ListTile(
                      title: Text(entry.key.toString()),
                      trailing: Text(
                        '${(entry.value * 100).toStringAsFixed(1)}%',
                      ),
                    );
                  }).toList(),
                );
              },
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

  IconData _getTrendIcon(TrendType type) {
    return switch (type) {
      TrendType.time => Icons.access_time,
      TrendType.species => Icons.pets,
      TrendType.location => Icons.location_on,
      TrendType.weather => Icons.wb_sunny,
      TrendType.equipment => Icons.build,
    };
  }
}
