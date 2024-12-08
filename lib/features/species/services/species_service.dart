import 'package:geolocator/geolocator.dart';
import '../data/species_repository.dart';
import '../data/fish_database.dart';

class SpeciesService {
  final SpeciesRepository _repository;

  SpeciesService({SpeciesRepository? repository})
      : _repository = repository ?? SpeciesRepository();

  // Get all fish species
  Future<List<FishSpecies>> getAllSpecies() {
    return _repository.getAllSpecies();
  }

  // Get species details by ID
  Future<FishSpecies?> getSpeciesDetails(String id) {
    return _repository.getSpeciesById(id);
  }

  // Search species by name or scientific name
  Future<List<FishSpecies>> searchSpecies(String query) {
    return _repository.searchSpecies(query);
  }

  // Get species recommendations based on location and season
  Future<List<FishSpecies>> getRecommendations() async {
    try {
      // Get current location
      final position = await Geolocator.getCurrentPosition();
      
      // Get seasonal recommendations
      final seasonalSpecies = await _repository.getSeasonalRecommendations();
      
      // Filter by location suitability (you would need to implement location-based logic)
      final locationFiltered = seasonalSpecies.where((species) {
        // This is a simplified example - you would want to implement more sophisticated
        // location-based filtering based on your specific requirements
        return true;
      }).toList();

      return locationFiltered;
    } catch (e) {
      // If location services fail, just return seasonal recommendations
      return _repository.getSeasonalRecommendations();
    }
  }

  // Get species by habitat type
  Future<List<FishSpecies>> getSpeciesByHabitat(String habitat) {
    return _repository.getSpeciesByHabitat(habitat);
  }

  // Get fishing regulations for a species in the current location
  Future<Map<String, String>> getRegulations(String speciesId) async {
    final species = await _repository.getSpeciesById(speciesId);
    if (species == null) {
      throw Exception('Species not found');
    }

    try {
      // Get current location
      final position = await Geolocator.getCurrentPosition();
      
      // In a real app, you would fetch location-specific regulations from a regulations API
      // For now, return the default regulations stored with the species
      return species.regulations;
    } catch (e) {
      // If location services fail, return default regulations
      return species.regulations;
    }
  }

  // Get best fishing times for a species based on current conditions
  Future<String> getBestFishingTime(String speciesId) async {
    final species = await _repository.getSpeciesById(speciesId);
    if (species == null) {
      throw Exception('Species not found');
    }

    // In a real app, you would consider:
    // - Current weather conditions
    // - Moon phase
    // - Tide information (for saltwater species)
    // - Time of year
    // For now, return the default best time stored with the species
    return species.bestTime;
  }

  // Get recommended bait for a species based on current conditions
  Future<String> getRecommendedBait(String speciesId) async {
    final species = await _repository.getSpeciesById(speciesId);
    if (species == null) {
      throw Exception('Species not found');
    }

    // In a real app, you would consider:
    // - Current weather conditions
    // - Season
    // - Water conditions
    // For now, return the default best bait stored with the species
    return species.bestBait;
  }
}
