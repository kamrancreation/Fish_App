import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/catch_device_service.dart';
import '../models/catch_entry.dart';

class CatchChart extends ConsumerWidget {
  final String deviceId;
  final String timeRange;

  const CatchChart({
    super.key,
    required this.deviceId,
    required this.timeRange,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StreamBuilder<List<CatchEntry>>(
      stream: ref.watch(catchDeviceServiceProvider).getDeviceCatchHistory(deviceId),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final catches = snapshot.data!;
        if (catches.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        final filteredCatches = _filterCatches(catches, timeRange);
        final catchData = _processCatchData(filteredCatches);

        return LineChart(
          LineChartData(
            gridData: const FlGridData(show: true),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    return Text(value.toInt().toString());
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    final date = DateTime.fromMillisecondsSinceEpoch(
                      value.toInt(),
                    );
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        _formatDate(date, timeRange),
                        style: const TextStyle(fontSize: 10),
                      ),
                    );
                  },
                ),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            borderData: FlBorderData(show: true),
            lineBarsData: [
              // Bites line
              LineChartBarData(
                spots: catchData.biteSpots,
                isCurved: true,
                color: Colors.blue,
                barWidth: 2,
                isStrokeCapRound: true,
                dotData: const FlDotData(show: true),
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.blue.withOpacity(0.1),
                ),
              ),
              // Weight line
              LineChartBarData(
                spots: catchData.weightSpots,
                isCurved: true,
                color: Colors.green,
                barWidth: 2,
                isStrokeCapRound: true,
                dotData: const FlDotData(show: true),
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.green.withOpacity(0.1),
                ),
              ),
            ],
            lineTouchData: LineTouchData(
              touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
                getTooltipItems: (touchedSpots) {
                  return touchedSpots.map((spot) {
                    final isBite = spot.barIndex == 0;
                    return LineTooltipItem(
                      isBite
                          ? 'Bites: ${spot.y.toInt()}'
                          : 'Weight: ${spot.y.toStringAsFixed(1)} kg',
                      const TextStyle(color: Colors.white),
                    );
                  }).toList();
                },
              ),
            ),
          ),
        );
      },
    );
  }

  List<CatchEntry> _filterCatches(List<CatchEntry> catches, String timeRange) {
    final now = DateTime.now();
    final cutoff = switch (timeRange) {
      '24h' => now.subtract(const Duration(hours: 24)),
      '7d' => now.subtract(const Duration(days: 7)),
      '30d' => now.subtract(const Duration(days: 30)),
      String() => DateTime(1970), // All time
    };
    return catches.where((entry) => entry.timestamp.isAfter(cutoff)).toList();
  }

  String _formatDate(DateTime date, String timeRange) {
    return switch (timeRange) {
      '24h' => '${date.hour}:00',
      '7d' => '${date.day}/${date.month}',
      '30d' => '${date.day}/${date.month}',
      _ => '${date.month}/${date.year}',
    };
  }
}

class CatchChartData {
  final List<FlSpot> biteSpots;
  final List<FlSpot> weightSpots;

  CatchChartData({
    required this.biteSpots,
    required this.weightSpots,
  });
}

CatchChartData _processCatchData(List<CatchEntry> catches) {
  // Group catches by time period
  final Map<DateTime, int> bitesByDate = {};
  final Map<DateTime, double> weightsByDate = {};

  for (var catch_ in catches) {
    final date = DateTime(
      catch_.timestamp.year,
      catch_.timestamp.month,
      catch_.timestamp.day,
      catch_.timestamp.hour,
    );

    bitesByDate[date] = (bitesByDate[date] ?? 0) + 1;
    
    if (catch_.weight != null) {
      weightsByDate[date] = (weightsByDate[date] ?? 0) + catch_.weight!;
    }
  }

  // Convert to spots
  final biteSpots = bitesByDate.entries.map((entry) {
    return FlSpot(
      entry.key.millisecondsSinceEpoch.toDouble(),
      entry.value.toDouble(),
    );
  }).toList()
    ..sort((a, b) => a.x.compareTo(b.x));

  final weightSpots = weightsByDate.entries.map((entry) {
    return FlSpot(
      entry.key.millisecondsSinceEpoch.toDouble(),
      entry.value,
    );
  }).toList()
    ..sort((a, b) => a.x.compareTo(b.x));

  return CatchChartData(
    biteSpots: biteSpots,
    weightSpots: weightSpots,
  );
}
