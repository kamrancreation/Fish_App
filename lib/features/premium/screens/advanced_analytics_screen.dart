import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/analytics_service.dart';
import '../widgets/prediction_card.dart';
import '../widgets/location_analysis_card.dart';
import '../widgets/species_migration_card.dart';
import '../widgets/performance_report_card.dart';
import '../../location/models/location.dart';

class AdvancedAnalyticsScreen extends ConsumerStatefulWidget {
  const AdvancedAnalyticsScreen({super.key});

  @override
  ConsumerState<AdvancedAnalyticsScreen> createState() =>
      _AdvancedAnalyticsScreenState();
}

class _AdvancedAnalyticsScreenState
    extends ConsumerState<AdvancedAnalyticsScreen> {
  late DateTime _selectedDate;
  late Location _selectedLocation;
  String? _selectedSpecies;
  String _timeRange = '7d';

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    // Initialize with current location
    _selectedLocation = Location(latitude: 0, longitude: 0);
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    final location = await ref.read(locationServiceProvider).getCurrentLocation();
    setState(() {
      _selectedLocation = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Advanced Analytics'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Predictions'),
              Tab(text: 'Location'),
              Tab(text: 'Migration'),
              Tab(text: 'Performance'),
            ],
          ),
          actions: [
            PopupMenuButton<String>(
              initialValue: _timeRange,
              onSelected: (value) {
                setState(() {
                  _timeRange = value;
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
        body: TabBarView(
          children: [
            _buildPredictionsTab(),
            _buildLocationTab(),
            _buildMigrationTab(),
            _buildPerformanceTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildPredictionsTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Success Prediction',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Species (Optional)',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _selectedSpecies = value.isEmpty ? null : value;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () async {
                            final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: _selectedDate,
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now().add(
                                const Duration(days: 30),
                              ),
                            );
                            if (picked != null) {
                              setState(() {
                                _selectedDate = picked;
                              });
                            }
                          },
                          child: const Text('Select Date'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            FutureBuilder<CatchPrediction>(
              future: ref.watch(analyticsServiceProvider).predictSuccessRate(
                    time: _selectedDate,
                    location: _selectedLocation,
                    species: _selectedSpecies,
                  ),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                return PredictionCard(prediction: snapshot.data!);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder<LocationAnalysis>(
          future: ref
              .watch(analyticsServiceProvider)
              .analyzeLocation(_selectedLocation),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            return LocationAnalysisCard(analysis: snapshot.data!);
          },
        ),
      ),
    );
  }

  Widget _buildMigrationTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Species Migration Tracking',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Species',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _selectedSpecies = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            if (_selectedSpecies != null)
              FutureBuilder<List<SpeciesMigration>>(
                future: ref.watch(analyticsServiceProvider).trackSpeciesMigration(
                      _selectedSpecies!,
                      DateTime.now().subtract(const Duration(days: 30)),
                      DateTime.now(),
                    ),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  }

                  return SpeciesMigrationCard(migrations: snapshot.data!);
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPerformanceTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder<PerformanceReport>(
          future: ref.watch(analyticsServiceProvider).generatePerformanceReport(
                'current_user_id', // Replace with actual user ID
                DateTime.now().subtract(const Duration(days: 30)),
                DateTime.now(),
              ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            return PerformanceReportCard(report: snapshot.data!);
          },
        ),
      ),
    );
  }
}
