import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/state/app_state.dart';
import '../../../core/widgets/common_widgets.dart';
import '../../../core/models/species_model.dart';

class SpeciesIdentificationScreen extends StatefulWidget {
  const SpeciesIdentificationScreen({super.key});

  @override
  State<SpeciesIdentificationScreen> createState() =>
      _SpeciesIdentificationScreenState();
}

class _SpeciesIdentificationScreenState extends State<SpeciesIdentificationScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<SpeciesModel> _searchResults = [];
  bool _isSearching = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _performSearch(String query) async {
    if (query.isEmpty) {
      setState(() {
        _searchResults = [];
        _isSearching = false;
      });
      return;
    }

    setState(() => _isSearching = true);

    try {
      final speciesService = context.read<AppState>();
      // TODO: Implement species search
      setState(() => _isSearching = false);
    } catch (e) {
      setState(() => _isSearching = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Species Identification'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search species...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          _performSearch('');
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: _performSearch,
            ),
          ),
          Expanded(
            child: _isSearching
                ? const Center(child: CircularProgressIndicator())
                : _searchResults.isEmpty
                    ? const EmptyStateWidget(
                        message: 'No species found',
                        icon: Icons.search_off,
                      )
                    : ListView.builder(
                        itemCount: _searchResults.length,
                        itemBuilder: (context, index) {
                          final species = _searchResults[index];
                          return FishProCard(
                            onTap: () {
                              // TODO: Navigate to species details
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: species.imageUrls.isNotEmpty
                                    ? NetworkImage(species.imageUrls.first)
                                    : null,
                                child: species.imageUrls.isEmpty
                                    ? const Icon(Icons.fish)
                                    : null,
                              ),
                              title: Text(species.commonName),
                              subtitle: Text(species.scientificName),
                              trailing: species.isProtected
                                  ? const Icon(
                                      Icons.warning,
                                      color: Colors.orange,
                                    )
                                  : null,
                            ),
                          );
                        },
                      ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement camera-based identification
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
