import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../bluetooth/models/device_reading.dart';
import '../../bluetooth/models/fishing_device.dart';
import '../models/catch_entry.dart';
import '../repositories/catch_repository.dart';
import '../../location/services/location_service.dart';
import '../../weather/services/weather_service.dart';

class CatchDeviceService {
  final CatchRepository _catchRepository;
  final LocationService _locationService;
  final WeatherService _weatherService;

  CatchDeviceService(
    this._catchRepository,
    this._locationService,
    this._weatherService,
  );

  Future<void> processBiteAlarm(BiteReading reading) async {
    // Record bite detection in catch history
    final location = await _locationService.getCurrentLocation();
    final weather = await _weatherService.getCurrentWeather(location);

    final catchEntry = CatchEntry(
      id: DateTime.now().toIso8601String(),
      timestamp: reading.timestamp,
      location: location,
      weather: weather,
      deviceId: reading.deviceId,
      deviceType: DeviceType.biteAlarm,
      biteIntensity: reading.intensity,
      biteDuration: reading.duration,
      biteDirection: reading.direction,
      status: CatchStatus.detected, // Initial status when bite is detected
    );

    await _catchRepository.addCatchEntry(catchEntry);
  }

  Future<void> processWeightReading(WeightReading reading) async {
    // Find the most recent unweighed catch for this device
    final recentCatch = await _catchRepository.getMostRecentUnweighedCatch(
      reading.deviceId,
    );

    if (recentCatch != null) {
      // Update the catch with the weight
      final updatedCatch = recentCatch.copyWith(
        weight: reading.weight,
        weightUnit: reading.unit,
        status: CatchStatus.landed,
        temperature: reading.temperature,
      );

      await _catchRepository.updateCatchEntry(updatedCatch);
    }
  }

  Future<void> updateCatchStatus(String catchId, CatchStatus status) async {
    final catchEntry = await _catchRepository.getCatchEntry(catchId);
    if (catchEntry != null) {
      final updatedCatch = catchEntry.copyWith(status: status);
      await _catchRepository.updateCatchEntry(updatedCatch);
    }
  }

  Stream<List<CatchEntry>> getDeviceCatchHistory(String deviceId) {
    return _catchRepository.getCatchesByDevice(deviceId);
  }

  Stream<CatchStatistics> getDeviceStatistics(String deviceId) {
    return _catchRepository.getCatchesByDevice(deviceId).map((catches) {
      final totalBites = catches.length;
      final landedCatches = catches.where((c) => c.status == CatchStatus.landed).length;
      final totalWeight = catches
          .where((c) => c.weight != null)
          .fold(0.0, (sum, c) => sum + (c.weight ?? 0));
      
      final successRate = totalBites > 0 ? (landedCatches / totalBites) * 100 : 0;

      return CatchStatistics(
        totalBites: totalBites,
        landedCatches: landedCatches,
        totalWeight: totalWeight,
        successRate: successRate,
        averageWeight: landedCatches > 0 ? totalWeight / landedCatches : 0,
      );
    });
  }

  Future<Map<String, List<TimeOfDay>>> getOptimalBiteTimes(String deviceId) async {
    final catches = await _catchRepository.getCatchesByDevice(deviceId).first;
    
    // Group catches by hour and analyze patterns
    final hourlyDistribution = <int, int>{};
    for (var catch_ in catches) {
      final hour = catch_.timestamp.hour;
      hourlyDistribution[hour] = (hourlyDistribution[hour] ?? 0) + 1;
    }

    // Find peak hours (hours with above-average catch rates)
    final averageCatchesPerHour = catches.length / 24;
    final peakHours = hourlyDistribution.entries
        .where((entry) => entry.value > averageCatchesPerHour)
        .map((entry) => entry.key)
        .toList();

    // Convert peak hours to time ranges
    final optimalTimes = <String, List<TimeOfDay>>{
      'peak': peakHours
          .map((hour) => TimeOfDay(hour: hour, minute: 0))
          .toList(),
      'recommended': _expandTimeRanges(peakHours)
          .map((hour) => TimeOfDay(hour: hour, minute: 0))
          .toList(),
    };

    return optimalTimes;
  }

  List<int> _expandTimeRanges(List<int> peakHours) {
    // Add hours before and after peak hours to create wider recommended ranges
    final expanded = <int>{};
    for (var hour in peakHours) {
      expanded.add(hour);
      expanded.add((hour - 1) % 24);
      expanded.add((hour + 1) % 24);
    }
    return expanded.toList()..sort();
  }
}

class CatchStatistics {
  final int totalBites;
  final int landedCatches;
  final double totalWeight;
  final double successRate;
  final double averageWeight;

  const CatchStatistics({
    required this.totalBites,
    required this.landedCatches,
    required this.totalWeight,
    required this.successRate,
    required this.averageWeight,
  });
}

final catchDeviceServiceProvider = Provider<CatchDeviceService>((ref) {
  final catchRepository = ref.watch(catchRepositoryProvider);
  final locationService = ref.watch(locationServiceProvider);
  final weatherService = ref.watch(weatherServiceProvider);
  
  return CatchDeviceService(
    catchRepository,
    locationService,
    weatherService,
  );
});
