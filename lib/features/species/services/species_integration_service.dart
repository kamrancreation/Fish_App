import 'dart:io';
import 'package:fishpro/features/species/models/fish_species.dart';
import 'package:fishpro/features/species/services/species_ai_service.dart';
import 'package:fishpro/features/species/services/species_storage_service.dart';
import 'package:fishpro/features/catch/services/catch_service.dart';
import 'package:fishpro/features/weather/services/weather_service.dart';
import 'package:fishpro/features/spots/services/fishing_spot_service.dart';
import 'package:fishpro/features/location/services/location_service.dart';

class SpeciesIntegrationService {
  final SpeciesAIService _aiService;
  final SpeciesStorageService _storageService;
  final CatchService _catchService;
  final WeatherService _weatherService;
  final FishingSpotService _spotService;
  final LocationService _locationService;

  SpeciesIntegrationService({
    required SpeciesAIService aiService,
    required SpeciesStorageService storageService,
    required CatchService catchService,
    required WeatherService weatherService,
    required FishingSpotService spotService,
    required LocationService locationService,
  })  : _aiService = aiService,
        _storageService = storageService,
        _catchService = catchService,
        _weatherService = weatherService,
        _spotService = spotService,
        _locationService = locationService;

  Future<void> initialize() async {
    await _storageService.initialize();
    await _aiService.initialize();
    await _syncData();
  }

  Future<void> _syncData() async {
    await _storageService.syncWithServer();
  }

  Future<SpeciesIdentificationResult> identifyFish(File imageFile) async {
    final result = await _aiService.identifySpecies(imageFile);
    
    // Enhance result with catch history
    final catchHistory = await _catchService.getCatchesForSpecies(result.species.id);
    final enhancedInfo = {
      ...result.additionalInfo,
      'catchHistory': {
        'totalCaught': catchHistory.length,
        'averageSize': _calculateAverageSize(catchHistory),
        'bestSpots': await _findBestSpots(result.species.id),
      },
    };

    return SpeciesIdentificationResult(
      species: result.species,
      confidence: result.confidence,
      additionalInfo: enhancedInfo,
    );
  }

  double _calculateAverageSize(List<CatchRecord> catches) {
    if (catches.isEmpty) return 0;
    final totalLength = catches.fold<double>(
      0,
      (sum, catch_) => sum + (catch_.length ?? 0),
    );
    return totalLength / catches.length;
  }

  Future<List<FishingSpot>> _findBestSpots(String speciesId) async {
    final catches = await _catchService.getCatchesForSpecies(speciesId);
    final spotCounts = <String, int>{};
    
    for (final catch_ in catches) {
      spotCounts[catch_.spotId] = (spotCounts[catch_.spotId] ?? 0) + 1;
    }

    final sortedSpots = spotCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    final bestSpotIds = sortedSpots.take(3).map((e) => e.key).toList();
    return await _spotService.getSpotsByIds(bestSpotIds);
  }

  Future<Map<String, dynamic>> getSpeciesInsights(String speciesId) async {
    final species = await _storageService.getSpeciesById(speciesId);
    if (species == null) throw Exception('Species not found');

    final location = await _locationService.getCurrentLocation();
    final weather = await _weatherService.getCurrentWeather();
    final catches = await _catchService.getCatchesForSpecies(speciesId);
    final nearbySpots = await _spotService.getNearbySpots(
      location.latitude,
      location.longitude,
    );

    return {
      'weather': {
        'current': weather,
        'isFavorable': _isWeatherFavorable(species, weather),
        'forecast': await _weatherService.getForecast(),
      },
      'location': {
        'nearbySpots': nearbySpots,
        'bestSpots': await _findBestSpots(speciesId),
        'currentRegulations': await _getLocalRegulations(species, location),
      },
      'catches': {
        'history': catches,
        'statistics': _calculateCatchStatistics(catches),
        'patterns': _analyzeCatchPatterns(catches),
      },
      'recommendations': await _generateRecommendations(
        species,
        weather,
        catches,
        nearbySpots,
      ),
    };
  }

  bool _isWeatherFavorable(FishSpecies species, WeatherData weather) {
    // Implement weather favorability check
    final temp = weather.temperature;
    final pressure = weather.pressure;
    final wind = weather.windSpeed;

    // Basic weather favorability rules
    if (species.category == 'freshwater') {
      return temp >= 45 && temp <= 85 && wind < 15;
    } else {
      return temp >= 60 && temp <= 90 && wind < 20;
    }
  }

  Future<Map<String, String>> _getLocalRegulations(
    FishSpecies species,
    LocationData location,
  ) async {
    // In a real app, fetch from regulations API
    return species.regulations;
  }

  Map<String, dynamic> _calculateCatchStatistics(List<CatchRecord> catches) {
    if (catches.isEmpty) {
      return {
        'totalCatches': 0,
        'averageSize': 0,
        'bestTime': 'N/A',
        'successRate': 0,
      };
    }

    final totalCatches = catches.length;
    final averageSize = _calculateAverageSize(catches);
    final catchTimes = catches.map((c) => c.timestamp.hour).toList();
    final bestTime = _findMostFrequent(catchTimes);

    return {
      'totalCatches': totalCatches,
      'averageSize': averageSize,
      'bestTime': '$bestTime:00',
      'successRate': totalCatches / catches.length,
    };
  }

  Map<String, dynamic> _analyzeCatchPatterns(List<CatchRecord> catches) {
    final patterns = {
      'timeOfDay': _analyzeTimePatterns(catches),
      'seasonal': _analyzeSeasonalPatterns(catches),
      'weather': _analyzeWeatherPatterns(catches),
      'location': _analyzeLocationPatterns(catches),
    };

    return patterns;
  }

  Map<String, int> _analyzeTimePatterns(List<CatchRecord> catches) {
    final hourCounts = <String, int>{};
    for (final catch_ in catches) {
      final hour = catch_.timestamp.hour;
      final timeSlot = _getTimeSlot(hour);
      hourCounts[timeSlot] = (hourCounts[timeSlot] ?? 0) + 1;
    }
    return hourCounts;
  }

  String _getTimeSlot(int hour) {
    if (hour >= 5 && hour < 10) return 'Early Morning';
    if (hour >= 10 && hour < 14) return 'Late Morning';
    if (hour >= 14 && hour < 17) return 'Afternoon';
    if (hour >= 17 && hour < 21) return 'Evening';
    return 'Night';
  }

  Map<String, int> _analyzeSeasonalPatterns(List<CatchRecord> catches) {
    final seasonCounts = <String, int>{};
    for (final catch_ in catches) {
      final season = _getSeason(catch_.timestamp.month);
      seasonCounts[season] = (seasonCounts[season] ?? 0) + 1;
    }
    return seasonCounts;
  }

  String _getSeason(int month) {
    if (month >= 3 && month <= 5) return 'Spring';
    if (month >= 6 && month <= 8) return 'Summer';
    if (month >= 9 && month <= 11) return 'Fall';
    return 'Winter';
  }

  Map<String, int> _analyzeWeatherPatterns(List<CatchRecord> catches) {
    final weatherCounts = <String, int>{};
    for (final catch_ in catches) {
      final weather = catch_.weather ?? 'Unknown';
      weatherCounts[weather] = (weatherCounts[weather] ?? 0) + 1;
    }
    return weatherCounts;
  }

  Map<String, int> _analyzeLocationPatterns(List<CatchRecord> catches) {
    final locationCounts = <String, int>{};
    for (final catch_ in catches) {
      final location = catch_.spotId;
      locationCounts[location] = (locationCounts[location] ?? 0) + 1;
    }
    return locationCounts;
  }

  Future<Map<String, dynamic>> _generateRecommendations(
    FishSpecies species,
    WeatherData weather,
    List<CatchRecord> catches,
    List<FishingSpot> nearbySpots,
  ) async {
    final timePatterns = _analyzeTimePatterns(catches);
    final seasonalPatterns = _analyzeSeasonalPatterns(catches);
    final weatherPatterns = _analyzeWeatherPatterns(catches);
    
    final bestTimeSlot = _findMostFrequent(timePatterns.keys.toList());
    final bestSeason = _findMostFrequent(seasonalPatterns.keys.toList());
    final bestWeather = _findMostFrequent(weatherPatterns.keys.toList());

    return {
      'bestTime': bestTimeSlot,
      'bestSeason': bestSeason,
      'idealWeather': bestWeather,
      'recommendedSpots': nearbySpots.take(3).toList(),
      'techniques': species.techniques,
      'bait': species.bestBait,
    };
  }

  T _findMostFrequent<T>(List<T> items) {
    if (items.isEmpty) throw Exception('Empty list');
    
    final counts = <T, int>{};
    for (final item in items) {
      counts[item] = (counts[item] ?? 0) + 1;
    }
    
    return counts.entries
        .reduce((a, b) => a.value > b.value ? a : b)
        .key;
  }
}
