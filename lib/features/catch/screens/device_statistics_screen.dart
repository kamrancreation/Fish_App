import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/catch_device_service.dart';
import '../models/catch_entry.dart';
import '../widgets/catch_chart.dart';
import '../../bluetooth/models/fishing_device.dart';

class DeviceStatisticsScreen extends ConsumerStatefulWidget {
  final FishingDevice device;

  const DeviceStatisticsScreen({
    super.key,
    required this.device,
  });

  @override
  ConsumerState<DeviceStatisticsScreen> createState() =>
      _DeviceStatisticsScreenState();
}

class _DeviceStatisticsScreenState extends ConsumerState<DeviceStatisticsScreen> {
  String _selectedTimeRange = '7d';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.device.name} Statistics'),
        actions: [
          PopupMenuButton<String>(
            initialValue: _selectedTimeRange,
            onSelected: (value) {
              setState(() {
                _selectedTimeRange = value;
              });
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: '24h',
                child: Text('Last 24 Hours'),
              ),
              const PopupMenuItem(
                value: '7d',
                child: Text('Last 7 Days'),
              ),
              const PopupMenuItem(
                value: '30d',
                child: Text('Last 30 Days'),
              ),
              const PopupMenuItem(
                value: 'all',
                child: Text('All Time'),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildStatisticsCard(),
            const SizedBox(height: 16),
            _buildCatchChart(),
            const SizedBox(height: 16),
            _buildOptimalTimesCard(),
            const SizedBox(height: 16),
            _buildRecentCatchesList(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticsCard() {
    return StreamBuilder<CatchStatistics>(
      stream: ref
          .watch(catchDeviceServiceProvider)
          .getDeviceStatistics(widget.device.id),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Error: ${snapshot.error}'),
            ),
          );
        }

        if (!snapshot.hasData) {
          return const Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }

        final stats = snapshot.data!;
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Performance Statistics',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatItem(
                      'Total Bites',
                      stats.totalBites.toString(),
                      Icons.fishing,
                    ),
                    _buildStatItem(
                      'Success Rate',
                      '${stats.successRate.toStringAsFixed(1)}%',
                      Icons.check_circle,
                    ),
                    _buildStatItem(
                      'Total Weight',
                      '${stats.totalWeight.toStringAsFixed(1)} kg',
                      Icons.scale,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatItem(
                      'Landed',
                      stats.landedCatches.toString(),
                      Icons.catching_pokemon,
                    ),
                    _buildStatItem(
                      'Avg Weight',
                      '${stats.averageWeight.toStringAsFixed(1)} kg',
                      Icons.monitor_weight,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildStatItem(String label, String value, IconData icon) {
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

  Widget _buildCatchChart() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Catch History',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: CatchChart(
                deviceId: widget.device.id,
                timeRange: _selectedTimeRange,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptimalTimesCard() {
    return FutureBuilder<Map<String, List<TimeOfDay>>>(
      future: ref
          .read(catchDeviceServiceProvider)
          .getOptimalBiteTimes(widget.device.id),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }

        final times = snapshot.data!;
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Optimal Fishing Times',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                _buildTimeList('Peak Hours', times['peak'] ?? []),
                const SizedBox(height: 8),
                _buildTimeList('Recommended', times['recommended'] ?? []),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTimeList(String label, List<TimeOfDay> times) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Wrap(
          spacing: 8,
          children: times
              .map(
                (time) => Chip(
                  label: Text(
                    '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}',
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  Widget _buildRecentCatchesList() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Catches',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            StreamBuilder<List<CatchEntry>>(
              stream: ref
                  .watch(catchDeviceServiceProvider)
                  .getDeviceCatchHistory(widget.device.id),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                final catches = snapshot.data!;
                if (catches.isEmpty) {
                  return const Center(
                    child: Text('No catches recorded yet'),
                  );
                }

                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: catches.length.clamp(0, 5),
                  itemBuilder: (context, index) {
                    final catch_ = catches[index];
                    return ListTile(
                      leading: Icon(
                        catch_.status == CatchStatus.landed
                            ? Icons.check_circle
                            : Icons.fishing,
                      ),
                      title: Text(
                        catch_.weight != null
                            ? '${catch_.weight!.toStringAsFixed(2)} ${catch_.weightUnit}'
                            : 'Bite Detected',
                      ),
                      subtitle: Text(
                        '${catch_.timestamp.toString()} • ${catch_.status.name}',
                      ),
                      trailing: catch_.biteIntensity != null
                          ? Chip(
                              label: Text(
                                'Intensity: ${catch_.biteIntensity!.toStringAsFixed(1)}',
                              ),
                            )
                          : null,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
