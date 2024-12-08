import 'package:flutter/material.dart';
import 'package:fishpro/features/species/models/fish_species.dart';
import 'package:fishpro/features/species/services/species_search_service.dart';
import 'package:fishpro/features/species/screens/species_detail_screen.dart';
import 'package:fishpro/features/location/services/location_service.dart';

class SpeciesSearchScreen extends StatefulWidget {
  final SpeciesSearchService searchService;
  final LocationService locationService;

  const SpeciesSearchScreen({
    super.key,
    required this.searchService,
    required this.locationService,
  });

  @override
  _SpeciesSearchScreenState createState() => _SpeciesSearchScreenState();
}

class _SpeciesSearchScreenState extends State<SpeciesSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String? _selectedWaterType;
  String? _selectedFamily;
  RangeValues _sizeRange = const RangeValues(0, 200);
  List<FishSpecies> _searchResults = [];
  List<FishSpecies> _recommendations = [];
  bool _showFilters = false;

  @override
  void initState() {
    super.initState();
    _loadRecommendations();
    _searchSpecies();
  }

  Future<void> _loadRecommendations() async {
    final recommendations = await widget.searchService.getLocalSpeciesRecommendations();
    setState(() {
      _recommendations = recommendations;
    });
  }

  void _searchSpecies() {
    final results = widget.searchService.searchSpecies(
      query: _searchController.text,
      waterType: _selectedWaterType,
      family: _selectedFamily,
      minSize: _sizeRange.start,
      maxSize: _sizeRange.end,
    );
    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Fish Species'),
        actions: [
          IconButton(
            icon: Icon(_showFilters ? Icons.filter_list_off : Icons.filter_list),
            onPressed: () {
              setState(() {
                _showFilters = !_showFilters;
              });
            },
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
              onChanged: (_) => _searchSpecies(),
            ),
          ),
          if (_showFilters) _buildFilters(),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    tabs: [
                      Tab(text: 'All Species'),
                      Tab(text: 'Recommended'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _buildSearchResults(),
                        _buildRecommendations(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilters() {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              value: _selectedWaterType,
              decoration: const InputDecoration(
                labelText: 'Water Type',
              ),
              items: const [
                DropdownMenuItem(value: null, child: Text('All')),
                DropdownMenuItem(value: 'freshwater', child: Text('Freshwater')),
                DropdownMenuItem(value: 'saltwater', child: Text('Saltwater')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedWaterType = value;
                  _searchSpecies();
                });
              },
            ),
            const SizedBox(height: 8),
            const Text('Size Range (inches)'),
            RangeSlider(
              values: _sizeRange,
              min: 0,
              max: 200,
              divisions: 20,
              labels: RangeLabels(
                _sizeRange.start.round().toString(),
                _sizeRange.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _sizeRange = values;
                  _searchSpecies();
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    return ListView.builder(
      itemCount: _searchResults.length,
      itemBuilder: (context, index) {
        return _buildSpeciesCard(_searchResults[index]);
      },
    );
  }

  Widget _buildRecommendations() {
    return ListView.builder(
      itemCount: _recommendations.length,
      itemBuilder: (context, index) {
        return _buildSpeciesCard(_recommendations[index], isRecommended: true);
      },
    );
  }

  Widget _buildSpeciesCard(FishSpecies species, {bool isRecommended = false}) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(species.imageUrl),
        ),
        title: Text(species.name),
        subtitle: Text(species.scientificName),
        trailing: isRecommended
            ? const Icon(Icons.recommend, color: Colors.blue)
            : null,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SpeciesDetailScreen(
                species: species,
                locationService: widget.locationService,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
