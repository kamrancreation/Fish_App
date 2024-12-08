import 'package:flutter/material.dart';
import '../services/analytics_service.dart';
import 'package:fl_chart/fl_chart.dart';

class PredictionCard extends StatelessWidget {
  final CatchPrediction prediction;

  const PredictionCard({
    super.key,
    required this.prediction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                      'Success Probability',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '${(prediction.probability * 100).toStringAsFixed(1)}%',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: _getProbabilityColor(prediction.probability),
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    children: [
                      PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(
                              value: prediction.probability * 100,
                              color: _getProbabilityColor(prediction.probability),
                              radius: 40,
                              showTitle: false,
                            ),
                            PieChartSectionData(
                              value: (1 - prediction.probability) * 100,
                              color: Colors.grey.withOpacity(0.2),
                              radius: 40,
                              showTitle: false,
                            ),
                          ],
                          sectionsSpace: 0,
                          centerSpaceRadius: 30,
                        ),
                      ),
                      Center(
                        child: Text(
                          '${(prediction.confidence * 100).toStringAsFixed(0)}%\nconfidence',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Contributing Factors',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: prediction.contributingFactors.length,
              itemBuilder: (context, index) {
                final factor = prediction.contributingFactors[index];
                return ListTile(
                  leading: Icon(
                    factor.positive ? Icons.arrow_upward : Icons.arrow_downward,
                    color: factor.positive ? Colors.green : Colors.red,
                  ),
                  title: Text(factor.name),
                  trailing: LinearProgressIndicator(
                    value: factor.impact,
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    valueColor: AlwaysStoppedAnimation(
                      factor.positive ? Colors.green : Colors.red,
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

  Color _getProbabilityColor(double probability) {
    if (probability >= 0.7) return Colors.green;
    if (probability >= 0.4) return Colors.orange;
    return Colors.red;
  }
}
