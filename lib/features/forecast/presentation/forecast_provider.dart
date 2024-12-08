import 'package:flutter/foundation.dart';
import '../data/forecast_repository.dart';
import 'package:geolocator/geolocator.dart';

class ForecastProvider extends ChangeNotifier {
  final ForecastRepository _repository = ForecastRepository();
  
  Map<String, dynamic>? forecastData;
  bool isLoading = false;
  String? error;

  Future<void> loadForecast() async {
    try {
      isLoading = true;
      error = null;
      notifyListeners();

      final position = await Geolocator.getCurrentPosition();
      forecastData = await _repository.getFishingForecast(
        position.latitude,
        position.longitude,
      );
    } catch (e) {
      error = 'Failed to load forecast: $e';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
