import 'package:flutter/material.dart';
import 'package:fishpro/features/species/models/fish_species.dart';
import 'package:fishpro/features/location/services/location_service.dart';
import 'package:fl_chart/fl_chart.dart';

class SpeciesDetailScreen extends StatelessWidget {
  final FishSpecies species;
  final LocationService locationService;

  const SpeciesDetailScreen({
    super.key,
    required this.species,
    required this.locationService,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSpeciesHeader(),
                  const SizedBox(height: 16),
                  _buildDescriptionCard(),
                  const SizedBox(height: 16),
                  _buildHabitatCard(),
                  const SizedBox(height: 16),
                  _buildSeasonalActivityChart(),
                  const SizedBox(height: 16),
                  _buildFishingTechniquesCard(),
                  const SizedBox(height: 16),
                  _buildRegulationsCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(species.name),
        background: Image.asset(
          species.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildSpeciesHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          species.scientificName,
          style: const TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Family: ${species.family}',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildDescriptionCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(species.description),
            const SizedBox(height: 16),
            const Text(
              'Size Range',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Length: ${species.typicalSize['length_min']} - ${species.typicalSize['length_max']} inches\n'
              'Weight: ${species.typicalSize['weight_min']} - ${species.typicalSize['weight_max']} lbs',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHabitatCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Habitat & Behavior',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(species.habitat),
            const SizedBox(height: 16),
            Text(species.behavior),
          ],
        ),
      ),
    );
  }

  Widget _buildSeasonalActivityChart() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Seasonal Activity',
              style: TextStyle(
                fontSize: 20,
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
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          const titles = ['Spring', 'Summer', 'Fall', 'Winter'];
                          if (value >= 0 && value < titles.length) {
                            return Text(titles[value.toInt()]);
                          }
                          return const Text('');
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: _getActivitySpots(),
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 4,
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

  List<FlSpot> _getActivitySpots() {
    final seasons = ['spring', 'summer', 'fall', 'winter'];
    return List.generate(4, (index) {
      final season = seasons[index];
      final activity = species.seasonalPatterns[season] ?? '';
      double value = 0;
      if (activity.toLowerCase().contains('peak')) {
        value = 1.0;
      } else if (activity.toLowerCase().contains('active'))
        value = 0.8;
      else if (activity.toLowerCase().contains('good'))
        value = 0.6;
      else if (activity.toLowerCase().contains('less')) value = 0.3;
      return FlSpot(index.toDouble(), value);
    });
  }

  Widget _buildFishingTechniquesCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Fishing Techniques',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: species.techniques.map((technique) {
                return Chip(
                  label: Text(technique),
                  backgroundColor: Colors.blue.withOpacity(0.1),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            Text(
              'Best Bait: ${species.bestBait}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Best Time: ${species.bestTime}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRegulationsCard() {
    return FutureBuilder<Map<String, String>>(
      future: _getLocalRegulations(),
      builder: (context, snapshot) {
        final regulations = snapshot.data ?? species.regulations;
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Local Regulations',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text('Size Limit: ${regulations['size_limit']}'),
                const SizedBox(height: 8),
                Text('Bag Limit: ${regulations['bag_limit']}'),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<Map<String, String>> _getLocalRegulations() async {
    final location = await locationService.getCurrentLocation();
    // In a real app, you would fetch local regulations based on location
    // For now, return default regulations
    return species.regulations;
  }
}
