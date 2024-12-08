import 'package:fishpro/features/species/data/fish_database.dart';
import 'package:fishpro/features/species/models/fish_species.dart';
import 'package:fishpro/features/location/services/location_service.dart';
import 'package:fishpro/features/weather/services/weather_service.dart';

class SpeciesSearchService {
  final LocationService _locationService;
  final WeatherService _weatherService;

  SpeciesSearchService(this._locationService, this._weatherService);

  List<FishSpecies> searchSpecies({
    String? query,
    String? waterType,
    String? family,
    double? minSize,
    double? maxSize,
    String? habitat,
    String? technique,
  }) {
    List<FishSpecies> results = [...freshwaterSpecies, ...saltwaterSpecies];

    if (query != null && query.isNotEmpty) {
      results = results.where((species) {
        return species.name.toLowerCase().contains(query.toLowerCase()) ||
            species.scientificName.toLowerCase().contains(query.toLowerCase()) ||
            species.description.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }

    if (waterType != null) {
      results = results.where((species) => species.category == waterType).toList();
    }

    if (family != null) {
      results = results.where((species) => species.family == family).toList();
    }

    if (minSize != null) {
      results = results.where((species) => 
        species.typicalSize['length_max'] >= minSize).toList();
    }

    if (maxSize != null) {
      results = results.where((species) => 
        species.typicalSize['length_min'] <= maxSize).toList();
    }

    if (habitat != null) {
      results = results.where((species) => 
        species.habitat.toLowerCase().contains(habitat.toLowerCase())).toList();
    }

    if (technique != null) {
      results = results.where((species) => 
        species.techniques.any((t) => t.toLowerCase().contains(technique.toLowerCase()))).toList();
    }

    return results;
  }

  Future<List<FishSpecies>> getLocalSpeciesRecommendations() async {
    final location = await _locationService.getCurrentLocation();
    final weather = await _weatherService.getCurrentWeather();
    final season = _getCurrentSeason();
    
    List<FishSpecies> allSpecies = [...freshwaterSpecies, ...saltwaterSpecies];
    
    return allSpecies.where((species) {
      // Check if species is active in current season
      bool seasonallyActive = species.seasonalPatterns[season.toLowerCase()]
          ?.toLowerCase()
          .contains('active') ?? false;
          
      // Check if weather conditions are favorable
      bool weatherFavorable = _isWeatherFavorable(species, weather);
      
      // Check if species is found in current location
      bool locationMatch = _isSpeciesInLocation(species, location);
      
      return seasonallyActive && weatherFavorable && locationMatch;
    }).toList();
  }

  String _getCurrentSeason() {
    final month = DateTime.now().month;
    if (month >= 3 && month <= 5) return 'Spring';
    if (month >= 6 && month <= 8) return 'Summer';
    if (month >= 9 && month <= 11) return 'Fall';
    return 'Winter';
  }

  bool _isWeatherFavorable(FishSpecies species, WeatherData weather) {
    // Implement weather-based activity prediction
    // This is a simplified example - expand based on species preferences
    if (species.category == 'freshwater') {
      return weather.temperature >= 45 && weather.temperature <= 85;
    } else {
      return weather.temperature >= 60 && weather.temperature <= 90;
    }
  }

  bool _isSpeciesInLocation(FishSpecies species, LocationData location) {
    // Implement location-based filtering
    // This is a simplified example - expand based on geographical data
    return species.commonLocations.any((loc) =>
        location.nearbyWaterBodies.contains(loc) ||
        location.waterType == species.category);
  }
}
