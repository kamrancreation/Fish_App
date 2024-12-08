import 'package:flutter/material.dart';

class SpeciesScreen extends StatefulWidget {
  const SpeciesScreen({super.key});

  @override
  State<SpeciesScreen> createState() => _SpeciesScreenState();
}

class _SpeciesScreenState extends State<SpeciesScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<FishSpecies> _species = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSpecies();
  }

  Future<void> _loadSpecies() async {
    // TODO: Load species from database
    setState(() {
      _species = [
        FishSpecies(
          name: 'Largemouth Bass',
          scientificName: 'Micropterus salmoides',
          description: 'Popular freshwater game fish',
          conservationStatus: 'Least Concern',
          averageSize: '40-50 cm',
          habitat: 'Freshwater lakes and rivers',
          seasonalPatterns: 'Most active in spring and fall',
        ),
        // Add more species
      ];
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Species Identification'),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: _startImageIdentification,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search species...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: _filterSpecies,
            ),
          ),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: _species.length,
                    itemBuilder: (context, index) {
                      final species = _species[index];
                      return SpeciesCard(species: species);
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showRegulationsDialog,
        child: const Icon(Icons.info_outline),
      ),
    );
  }

  void _filterSpecies(String query) {
    // TODO: Implement species filtering
  }

  Future<void> _startImageIdentification() async {
    // TODO: Implement camera-based species identification
  }

  void _showRegulationsDialog() {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Fishing Regulations'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Current Season: Spring'),
              SizedBox(height: 8),
              Text('• Catch limits apply'),
              Text('• Check local regulations'),
              Text('• Practice catch and release'),
            ],
          ),
        ),
      ),
    );
  }
}

class FishSpecies {
  final String name;
  final String scientificName;
  final String description;
  final String conservationStatus;
  final String averageSize;
  final String habitat;
  final String seasonalPatterns;

  FishSpecies({
    required this.name,
    required this.scientificName,
    required this.description,
    required this.conservationStatus,
    required this.averageSize,
    required this.habitat,
    required this.seasonalPatterns,
  });
}

class SpeciesCard extends StatelessWidget {
  final FishSpecies species;

  const SpeciesCard({super.key, required this.species});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ExpansionTile(
        title: Text(species.name),
        subtitle: Text(species.scientificName),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Description: ${species.description}'),
                const SizedBox(height: 8),
                Text('Conservation Status: ${species.conservationStatus}'),
                const SizedBox(height: 8),
                Text('Average Size: ${species.averageSize}'),
                const SizedBox(height: 8),
                Text('Habitat: ${species.habitat}'),
                const SizedBox(height: 8),
                Text('Seasonal Patterns: ${species.seasonalPatterns}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
