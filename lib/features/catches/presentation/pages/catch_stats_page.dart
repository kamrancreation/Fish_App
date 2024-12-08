import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/catch_provider.dart';
import 'package:fl_chart/fl_chart.dart';

class CatchStatsPage extends StatefulWidget {
  const CatchStatsPage({super.key});

  @override
  State<CatchStatsPage> createState() => _CatchStatsPageState();
}

class _CatchStatsPageState extends State<CatchStatsPage> {
  String _timeRange = 'all';
  bool _isLoading = false;
  Map<String, dynamic>? _stats;

  @override
  void initState() {
    super.initState();
    _loadStats();
  }

  Future<void> _loadStats() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final catchProvider = context.read<CatchProvider>();
      DateTime? startDate;
      
      switch (_timeRange) {
        case 'week':
          startDate = DateTime.now().subtract(const Duration(days: 7));
          break;
        case 'month':
          startDate = DateTime.now().subtract(const Duration(days: 30));
          break;
        case 'year':
          startDate = DateTime.now().subtract(const Duration(days: 365));
          break;
      }

      final stats = await catchProvider.getCatchStatistics(
        startDate: startDate,
      );
      
      setState(() {
        _stats = stats;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading statistics: $e')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catch Statistics'),
        actions: [
          PopupMenuButton<String>(
            initialValue: _timeRange,
            onSelected: (value) {
              setState(() {
                _timeRange = value;
              });
              _loadStats();
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'all',
                child: Text('All Time'),
              ),
              const PopupMenuItem(
                value: 'year',
                child: Text('Past Year'),
              ),
              const PopupMenuItem(
                value: 'month',
                child: Text('Past Month'),
              ),
              const PopupMenuItem(
                value: 'week',
                child: Text('Past Week'),
              ),
            ],
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _stats == null
              ? const Center(child: Text('No statistics available'))
              : ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    // Overview Card
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Overview',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            _buildStatRow(
                              'Total Catches',
                              _stats!['totalCatches'].toString(),
                              Icons.catching_pokemon,
                            ),
                            const Divider(),
                            _buildStatRow(
                              'Most Caught Species',
                              _stats!['mostCaughtSpecies']?.toString() ?? 'N/A',
                              Icons.stars,
                            ),
                            const Divider(),
                            _buildStatRow(
                              'Average Weight',
                              '${_stats!['averageWeight'].toStringAsFixed(2)} kg',
                              Icons.scale,
                            ),
                            const Divider(),
                            _buildStatRow(
                              'Average Length',
                              '${_stats!['averageLength'].toStringAsFixed(2)} cm',
                              Icons.straighten,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Species Distribution Chart
                    if (_stats!['speciesCounts'] != null &&
                        (_stats!['speciesCounts'] as Map).isNotEmpty)
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Species Distribution',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                height: 200,
                                child: PieChart(
                                  PieChartData(
                                    sections: _buildPieChartSections(),
                                    sectionsSpace: 2,
                                    centerSpaceRadius: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: _buildLegendItems(),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
    );
  }

  Widget _buildStatRow(String label, String value, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 24, color: Theme.of(context).primaryColor),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> _buildPieChartSections() {
    final speciesCounts = Map<String, int>.from(_stats!['speciesCounts']);
    final total = speciesCounts.values.fold<int>(0, (a, b) => a + b);
    final colors = [
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.purple,
      Colors.orange,
    ];

    return speciesCounts.entries.toList().asMap().entries.map((entry) {
      final species = entry.value.key;
      final count = entry.value.value;
      final percentage = count / total * 100;
      final color = colors[entry.key % colors.length];

      return PieChartSectionData(
        color: color,
        value: percentage,
        title: '${percentage.toStringAsFixed(1)}%',
        radius: 100,
        titleStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
    }).toList();
  }

  List<Widget> _buildLegendItems() {
    final speciesCounts = Map<String, int>.from(_stats!['speciesCounts']);
    final colors = [
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.purple,
      Colors.orange,
    ];

    return speciesCounts.entries.toList().asMap().entries.map((entry) {
      final species = entry.value.key;
      final count = entry.value.value;
      final color = colors[entry.key % colors.length];

      return Chip(
        avatar: CircleAvatar(
          backgroundColor: color,
          radius: 8,
        ),
        label: Text('$species ($count)'),
      );
    }).toList();
  }
}
