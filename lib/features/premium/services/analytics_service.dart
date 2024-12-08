import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../catch/models/catch_entry.dart';
import '../../catch/repositories/catch_repository.dart';
import '../../weather/services/weather_service.dart';
import '../../location/services/location_service.dart';
import '../../species/repositories/species_repository.dart';
import 'package:ml_algo/ml_algo.dart';
import 'package:ml_preprocessing/ml_preprocessing.dart';

class AnalyticsService {
  final CatchRepository _catchRepository;
  final WeatherService _weatherService;
  final LocationService _locationService;
  final SpeciesRepository _speciesRepository;

  AnalyticsService(
    this._catchRepository,
    this._weatherService,
    this._locationService,
    this._speciesRepository,
  );

  Future<CatchPrediction> predictSuccessRate({
    required DateTime time,
    required Location location,
    String? species,
  }) async {
    final weather = await _weatherService.getForecast(location);
    final historicalCatches = await _catchRepository.getCatchesNearLocation(
      location,
      radius: 5000, // 5km radius
    );

    // Prepare training data
    final features = historicalCatches.map((catch_) => [
      catch_.timestamp.hour,
      catch_.timestamp.minute,
      catch_.weather.temperature,
      catch_.weather.pressure,
      catch_.weather.humidity,
      catch_.weather.windSpeed,
      catch_.weather.cloudCover,
    ]).toList();

    final labels = historicalCatches.map((catch_) => 
      catch_.status == CatchStatus.landed ? 1.0 : 0.0
    ).toList();

    // Train model
    final model = LogisticRegressor(
      iterationsLimit: 100,
      learningRate: 0.03,
      batchSize: 10,
    );

    await model.fit(features, labels);

    // Prepare prediction data
    final predictionFeatures = [
      time.hour,
      time.minute,
      weather.temperature,
      weather.pressure,
      weather.humidity,
      weather.windSpeed,
      weather.cloudCover,
    ];

    final probability = await model.predict([predictionFeatures]);

    return CatchPrediction(
      probability: probability[0],
      confidence: _calculateConfidence(features.length),
      contributingFactors: _analyzeContributingFactors(
        predictionFeatures,
        model.weights,
      ),
    );
  }

  Future<LocationAnalysis> analyzeLocation(Location location) async {
    final catches = await _catchRepository.getCatchesNearLocation(
      location,
      radius: 5000,
    );

    final speciesDistribution = _calculateSpeciesDistribution(catches);
    final timeDistribution = _calculateTimeDistribution(catches);
    final seasonalTrends = await _analyzeSeasonal(catches);
    final weatherCorrelation = _analyzeWeatherCorrelation(catches);

    return LocationAnalysis(
      totalCatches: catches.length,
      successRate: _calculateSuccessRate(catches),
      speciesDistribution: speciesDistribution,
      bestTimes: timeDistribution,
      seasonalTrends: seasonalTrends,
      weatherCorrelation: weatherCorrelation,
    );
  }

  Future<List<SpeciesMigration>> trackSpeciesMigration(
    String species,
    DateTime startDate,
    DateTime endDate,
  ) async {
    final catches = await _catchRepository.getCatchesBySpecies(
      species,
      startDate,
      endDate,
    );

    // Group catches by week
    final weeklyGroups = <DateTime, List<CatchEntry>>{};
    for (var catch_ in catches) {
      final weekStart = DateTime(
        catch_.timestamp.year,
        catch_.timestamp.month,
        catch_.timestamp.day - catch_.timestamp.weekday,
      );
      weeklyGroups.putIfAbsent(weekStart, () => []).add(catch_);
    }

    // Calculate weekly centroids
    return weeklyGroups.entries.map((entry) {
      final centroid = _calculateCentroid(entry.value);
      return SpeciesMigration(
        species: species,
        week: entry.key,
        location: centroid,
        catchCount: entry.value.length,
        averageWeight: _calculateAverageWeight(entry.value),
      );
    }).toList()
      ..sort((a, b) => a.week.compareTo(b.week));
  }

  Future<PerformanceReport> generatePerformanceReport(
    String userId,
    DateTime startDate,
    DateTime endDate,
  ) async {
    final catches = await _catchRepository.getUserCatches(
      userId,
      startDate,
      endDate,
    );

    return PerformanceReport(
      totalCatches: catches.length,
      successRate: _calculateSuccessRate(catches),
      speciesBreakdown: _calculateSpeciesDistribution(catches),
      locationPerformance: await _analyzeLocationPerformance(catches),
      timeAnalysis: _calculateTimeDistribution(catches),
      weatherImpact: _analyzeWeatherCorrelation(catches),
      equipmentEfficiency: await _analyzeEquipmentEfficiency(catches),
      trends: _analyzeTrends(catches),
    );
  }

  double _calculateConfidence(int sampleSize) {
    // Basic confidence calculation based on sample size
    return (1 - (1 / (sampleSize + 1))).clamp(0.0, 1.0);
  }

  List<ContributingFactor> _analyzeContributingFactors(
    List<double> features,
    List<double> weights,
  ) {
    final factors = <ContributingFactor>[];
    final featureNames = [
      'Time of Day',
      'Minute',
      'Temperature',
      'Pressure',
      'Humidity',
      'Wind Speed',
      'Cloud Cover',
    ];

    for (var i = 0; i < features.length; i++) {
      factors.add(ContributingFactor(
        name: featureNames[i],
        impact: (features[i] * weights[i]).abs(),
        positive: weights[i] > 0,
      ));
    }

    return factors..sort((a, b) => b.impact.compareTo(a.impact));
  }

  Map<String, double> _calculateSpeciesDistribution(List<CatchEntry> catches) {
    final distribution = <String, int>{};
    for (var catch_ in catches) {
      if (catch_.species != null) {
        distribution[catch_.species!] = (distribution[catch_.species!] ?? 0) + 1;
      }
    }

    final total = catches.length;
    return distribution.map(
      (k, v) => MapEntry(k, v / total),
    );
  }

  Map<int, double> _calculateTimeDistribution(List<CatchEntry> catches) {
    final distribution = <int, int>{};
    for (var catch_ in catches) {
      distribution[catch_.timestamp.hour] = 
          (distribution[catch_.timestamp.hour] ?? 0) + 1;
    }

    final total = catches.length;
    return distribution.map(
      (k, v) => MapEntry(k, v / total),
    );
  }

  Future<List<SeasonalTrend>> _analyzeSeasonal(List<CatchEntry> catches) async {
    final seasonalGroups = <int, List<CatchEntry>>{};
    for (var catch_ in catches) {
      seasonalGroups.putIfAbsent(catch_.timestamp.month, () => []).add(catch_);
    }

    return seasonalGroups.entries.map((entry) {
      return SeasonalTrend(
        month: entry.key,
        catchCount: entry.value.length,
        successRate: _calculateSuccessRate(entry.value),
        averageWeight: _calculateAverageWeight(entry.value),
        dominantSpecies: _findDominantSpecies(entry.value),
      );
    }).toList();
  }

  WeatherCorrelation _analyzeWeatherCorrelation(List<CatchEntry> catches) {
    final temperatureImpact = _calculateCorrelation(
      catches.map((c) => c.weather.temperature).toList(),
      catches.map((c) => c.status == CatchStatus.landed ? 1.0 : 0.0).toList(),
    );

    final pressureImpact = _calculateCorrelation(
      catches.map((c) => c.weather.pressure).toList(),
      catches.map((c) => c.status == CatchStatus.landed ? 1.0 : 0.0).toList(),
    );

    final windImpact = _calculateCorrelation(
      catches.map((c) => c.weather.windSpeed).toList(),
      catches.map((c) => c.status == CatchStatus.landed ? 1.0 : 0.0).toList(),
    );

    return WeatherCorrelation(
      temperatureCorrelation: temperatureImpact,
      pressureCorrelation: pressureImpact,
      windCorrelation: windImpact,
    );
  }

  double _calculateCorrelation(List<double> x, List<double> y) {
    if (x.isEmpty || y.isEmpty || x.length != y.length) return 0.0;

    final n = x.length;
    final xMean = x.reduce((a, b) => a + b) / n;
    final yMean = y.reduce((a, b) => a + b) / n;

    var numerator = 0.0;
    var xDenominator = 0.0;
    var yDenominator = 0.0;

    for (var i = 0; i < n; i++) {
      final xDiff = x[i] - xMean;
      final yDiff = y[i] - yMean;
      numerator += xDiff * yDiff;
      xDenominator += xDiff * xDiff;
      yDenominator += yDiff * yDiff;
    }

    if (xDenominator == 0 || yDenominator == 0) return 0.0;
    return numerator / (sqrt(xDenominator) * sqrt(yDenominator));
  }

  Location _calculateCentroid(List<CatchEntry> catches) {
    var lat = 0.0;
    var lng = 0.0;

    for (var catch_ in catches) {
      lat += catch_.location.latitude;
      lng += catch_.location.longitude;
    }

    return Location(
      latitude: lat / catches.length,
      longitude: lng / catches.length,
    );
  }

  double _calculateAverageWeight(List<CatchEntry> catches) {
    final weights = catches
        .where((c) => c.weight != null)
        .map((c) => c.weight!)
        .toList();
    
    if (weights.isEmpty) return 0.0;
    return weights.reduce((a, b) => a + b) / weights.length;
  }

  double _calculateSuccessRate(List<CatchEntry> catches) {
    if (catches.isEmpty) return 0.0;
    final landed = catches.where((c) => c.status == CatchStatus.landed).length;
    return landed / catches.length;
  }

  String _findDominantSpecies(List<CatchEntry> catches) {
    final distribution = <String, int>{};
    for (var catch_ in catches) {
      if (catch_.species != null) {
        distribution[catch_.species!] = (distribution[catch_.species!] ?? 0) + 1;
      }
    }

    if (distribution.isEmpty) return 'Unknown';
    return distribution.entries
        .reduce((a, b) => a.value > b.value ? a : b)
        .key;
  }

  Future<Map<Location, double>> _analyzeLocationPerformance(
    List<CatchEntry> catches,
  ) async {
    final locationGroups = <String, List<CatchEntry>>{};
    
    // Group catches by location grid
    for (var catch_ in catches) {
      final gridKey = '${catch_.location.latitude.toStringAsFixed(3)},${catch_.location.longitude.toStringAsFixed(3)}';
      locationGroups.putIfAbsent(gridKey, () => []).add(catch_);
    }

    return locationGroups.map((key, catches) {
      final coords = key.split(',');
      return MapEntry(
        Location(
          latitude: double.parse(coords[0]),
          longitude: double.parse(coords[1]),
        ),
        _calculateSuccessRate(catches),
      );
    });
  }

  Future<Map<String, double>> _analyzeEquipmentEfficiency(
    List<CatchEntry> catches,
  ) async {
    final equipmentPerformance = <String, List<bool>>{};
    
    for (var catch_ in catches) {
      if (catch_.deviceId != null) {
        equipmentPerformance.putIfAbsent(catch_.deviceId!, () => []).add(
          catch_.status == CatchStatus.landed,
        );
      }
    }

    return equipmentPerformance.map((deviceId, results) {
      final success = results.where((r) => r).length;
      return MapEntry(deviceId, success / results.length);
    });
  }

  List<Trend> _analyzeTrends(List<CatchEntry> catches) {
    final trends = <Trend>[];
    
    // Analyze time-based trends
    final timeSuccess = _analyzeTimeSuccess(catches);
    trends.add(Trend(
      type: TrendType.time,
      name: 'Best Fishing Hours',
      value: timeSuccess,
    ));

    // Analyze species trends
    final speciesSuccess = _analyzeSpeciesSuccess(catches);
    trends.add(Trend(
      type: TrendType.species,
      name: 'Most Successful Species',
      value: speciesSuccess,
    ));

    // Analyze location trends
    final locationSuccess = _analyzeLocationSuccess(catches);
    trends.add(Trend(
      type: TrendType.location,
      name: 'Best Locations',
      value: locationSuccess,
    ));

    return trends;
  }

  Map<int, double> _analyzeTimeSuccess(List<CatchEntry> catches) {
    final hourlySuccess = <int, List<bool>>{};
    
    for (var catch_ in catches) {
      hourlySuccess.putIfAbsent(catch_.timestamp.hour, () => []).add(
        catch_.status == CatchStatus.landed,
      );
    }

    return hourlySuccess.map((hour, results) {
      final success = results.where((r) => r).length;
      return MapEntry(hour, success / results.length);
    });
  }

  Map<String, double> _analyzeSpeciesSuccess(List<CatchEntry> catches) {
    final speciesSuccess = <String, List<bool>>{};
    
    for (var catch_ in catches) {
      if (catch_.species != null) {
        speciesSuccess.putIfAbsent(catch_.species!, () => []).add(
          catch_.status == CatchStatus.landed,
        );
      }
    }

    return speciesSuccess.map((species, results) {
      final success = results.where((r) => r).length;
      return MapEntry(species, success / results.length);
    });
  }

  Map<String, double> _analyzeLocationSuccess(List<CatchEntry> catches) {
    final locationSuccess = <String, List<bool>>{};
    
    for (var catch_ in catches) {
      final locationKey = '${catch_.location.latitude.toStringAsFixed(3)},${catch_.location.longitude.toStringAsFixed(3)}';
      locationSuccess.putIfAbsent(locationKey, () => []).add(
        catch_.status == CatchStatus.landed,
      );
    }

    return locationSuccess.map((location, results) {
      final success = results.where((r) => r).length;
      return MapEntry(location, success / results.length);
    });
  }
}

final analyticsServiceProvider = Provider<AnalyticsService>((ref) {
  return AnalyticsService(
    ref.watch(catchRepositoryProvider),
    ref.watch(weatherServiceProvider),
    ref.watch(locationServiceProvider),
    ref.watch(speciesRepositoryProvider),
  );
});

class CatchPrediction {
  final double probability;
  final double confidence;
  final List<ContributingFactor> contributingFactors;

  CatchPrediction({
    required this.probability,
    required this.confidence,
    required this.contributingFactors,
  });
}

class ContributingFactor {
  final String name;
  final double impact;
  final bool positive;

  ContributingFactor({
    required this.name,
    required this.impact,
    required this.positive,
  });
}

class LocationAnalysis {
  final int totalCatches;
  final double successRate;
  final Map<String, double> speciesDistribution;
  final Map<int, double> bestTimes;
  final List<SeasonalTrend> seasonalTrends;
  final WeatherCorrelation weatherCorrelation;

  LocationAnalysis({
    required this.totalCatches,
    required this.successRate,
    required this.speciesDistribution,
    required this.bestTimes,
    required this.seasonalTrends,
    required this.weatherCorrelation,
  });
}

class SeasonalTrend {
  final int month;
  final int catchCount;
  final double successRate;
  final double averageWeight;
  final String dominantSpecies;

  SeasonalTrend({
    required this.month,
    required this.catchCount,
    required this.successRate,
    required this.averageWeight,
    required this.dominantSpecies,
  });
}

class WeatherCorrelation {
  final double temperatureCorrelation;
  final double pressureCorrelation;
  final double windCorrelation;

  WeatherCorrelation({
    required this.temperatureCorrelation,
    required this.pressureCorrelation,
    required this.windCorrelation,
  });
}

class SpeciesMigration {
  final String species;
  final DateTime week;
  final Location location;
  final int catchCount;
  final double averageWeight;

  SpeciesMigration({
    required this.species,
    required this.week,
    required this.location,
    required this.catchCount,
    required this.averageWeight,
  });
}

class PerformanceReport {
  final int totalCatches;
  final double successRate;
  final Map<String, double> speciesBreakdown;
  final Map<Location, double> locationPerformance;
  final Map<int, double> timeAnalysis;
  final WeatherCorrelation weatherImpact;
  final Map<String, double> equipmentEfficiency;
  final List<Trend> trends;

  PerformanceReport({
    required this.totalCatches,
    required this.successRate,
    required this.speciesBreakdown,
    required this.locationPerformance,
    required this.timeAnalysis,
    required this.weatherImpact,
    required this.equipmentEfficiency,
    required this.trends,
  });
}

class Trend {
  final TrendType type;
  final String name;
  final Map<dynamic, double> value;

  Trend({
    required this.type,
    required this.name,
    required this.value,
  });
}

enum TrendType {
  time,
  species,
  location,
  weather,
  equipment,
}
