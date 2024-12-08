import 'package:flutter/material.dart';
import '../models/species_model.dart';
import 'species_map_widget.dart';

class SpeciesDetailsSheet extends StatefulWidget {
  final SpeciesModel species;
  final Map<String, dynamic> distributionData;
  final VoidCallback? onClose;

  const SpeciesDetailsSheet({
    super.key,
    required this.species,
    required this.distributionData,
    this.onClose,
  });

  @override
  State<SpeciesDetailsSheet> createState() => _SpeciesDetailsSheetState();
}

class _SpeciesDetailsSheetState extends State<SpeciesDetailsSheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.2,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Column(
            children: [
              _buildHeader(context),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                tabs: const [
                  Tab(text: 'Overview'),
                  Tab(text: 'Habitat'),
                  Tab(text: 'Regulations'),
                  Tab(text: 'Tips'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildOverviewTab(),
                    _buildHabitatTab(),
                    _buildRegulationsTab(),
                    _buildTipsTab(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.species.commonName,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      widget.species.scientificName,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: widget.onClose,
              ),
            ],
          ),
          const SizedBox(height: 8),
          _buildConservationBadge(context),
        ],
      ),
    );
  }

  Widget _buildConservationBadge(BuildContext context) {
    final status = widget.species.conservationStatus;
    final color = _getStatusColor(status);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color),
      ),
      child: Text(
        status.toUpperCase(),
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'extinct':
        return Colors.black;
      case 'critically endangered':
        return Colors.red;
      case 'endangered':
        return Colors.orange;
      case 'vulnerable':
        return Colors.yellow[700]!;
      case 'near threatened':
        return Colors.blue;
      default:
        return Colors.green;
    }
  }

  Widget _buildOverviewTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(widget.species.description),
        const SizedBox(height: 16),
        _buildCharacteristicsSection(),
      ],
    );
  }

  Widget _buildCharacteristicsSection() {
    final characteristics = widget.species.characteristics;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Characteristics',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: characteristics.entries.map((entry) {
            return Chip(
              label: Text('${entry.key}: ${entry.value}'),
              visualDensity: VisualDensity.compact,
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildHabitatTab() {
    return Column(
      children: [
        Expanded(
          child: SpeciesMapWidget(
            species: widget.species,
            distributionData: widget.distributionData,
            initialPosition: const LatLng(0, 0), // Replace with actual position
          ),
        ),
        _buildHabitatInfo(),
      ],
    );
  }

  Widget _buildHabitatInfo() {
    final habitat = widget.species.habitat;
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Habitat Information',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text('Type: ${habitat['type']}'),
            Text('Depth Range: ${habitat['depthRange']}'),
            Text('Water Type: ${habitat['waterType']}'),
            if (habitat['notes'] != null) Text('Notes: ${habitat['notes']}'),
          ],
        ),
      ),
    );
  }

  Widget _buildRegulationsTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildRegulationCard(
          'Catch Limits',
          widget.species.catchLimits,
        ),
        const SizedBox(height: 16),
        _buildRegulationCard(
          'Seasonal Restrictions',
          widget.species.seasonalPatterns,
        ),
        const SizedBox(height: 16),
        _buildConservationRecommendations(),
      ],
    );
  }

  Widget _buildRegulationCard(String title, Map<String, dynamic> data) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ...data.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text('${entry.key}: ${entry.value}'),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildConservationRecommendations() {
    final recommendations = widget.species.getConservationRecommendations();
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Conservation Recommendations',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ...recommendations.map((rec) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    const Icon(Icons.eco, size: 16),
                    const SizedBox(width: 8),
                    Expanded(child: Text(rec)),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildTipsTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildTipsCard(
          'Best Fishing Times',
          widget.species.characteristics['activityPeriods'] ?? [],
        ),
        const SizedBox(height: 16),
        _buildTipsCard(
          'Recommended Gear',
          widget.species.characteristics['recommendedGear'] ?? [],
        ),
        const SizedBox(height: 16),
        _buildTipsCard(
          'Fishing Techniques',
          widget.species.characteristics['fishingTechniques'] ?? [],
        ),
      ],
    );
  }

  Widget _buildTipsCard(String title, List<dynamic> tips) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ...tips.map((tip) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    const Icon(Icons.tips_and_updates, size: 16),
                    const SizedBox(width: 8),
                    Expanded(child: Text(tip.toString())),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
