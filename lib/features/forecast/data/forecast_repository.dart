import 'package:weather/weather.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ForecastRepository {
  final WeatherFactory _weatherFactory =
      WeatherFactory(dotenv.env['OPENWEATHER_API_KEY'] ?? '');

  Future<Map<String, dynamic>> getFishingForecast(
      double latitude, double longitude) async {
    final weather =
        await _weatherFactory.currentWeatherByLocation(latitude, longitude);

    // Calculate fishing conditions score based on weather parameters
    double fishingScore = _calculateFishingScore(
      weather.temperature?.celsius ?? 20,
      weather.pressure?.toDouble() ?? 1013,
      weather.humidity?.toDouble() ?? 50,
      weather.windSpeed ?? 5,
    );

    return {
      'weather': weather,
      'fishingScore': fishingScore,
      'bestTimeToFish': _getBestTimeToFish(weather.sunrise, weather.sunset),
      'recommendedBait':
          _getRecommendedBait(weather.temperature?.celsius ?? 20),
    };
  }

  double _calculateFishingScore(
      double temp, double pressure, double humidity, double windSpeed) {
    // Ideal conditions: temp 15-22°C, pressure 1013-1015 hPa, humidity 45-55%, wind 5-15 km/h
    double tempScore = 100 - (((temp - 18.5).abs() / 18.5) * 100);
    double pressureScore = 100 - (((pressure - 1014).abs() / 1014) * 100);
    double humidityScore = 100 - (((humidity - 50).abs() / 50) * 100);
    double windScore = 100 - (((windSpeed - 10).abs() / 10) * 100);

    return (tempScore + pressureScore + humidityScore + windScore) / 4;
  }

  String _getBestTimeToFish(DateTime? sunrise, DateTime? sunset) {
    if (sunrise == null || sunset == null) return "Dawn and Dusk";

    final dawnPeriod =
        "${sunrise.hour}:${sunrise.minute.toString().padLeft(2, '0')} - ${sunrise.add(const Duration(hours: 2)).hour}:${sunrise.minute.toString().padLeft(2, '0')}";
    final duskPeriod =
        "${sunset.subtract(const Duration(hours: 2)).hour}:${sunset.minute.toString().padLeft(2, '0')} - ${sunset.hour}:${sunset.minute.toString().padLeft(2, '0')}";

    return "Dawn: $dawnPeriod\nDusk: $duskPeriod";
  }

  String _getRecommendedBait(double temperature) {
    if (temperature < 10) {
      return "Slow-moving baits like jigs and soft plastics";
    } else if (temperature < 20) {
      return "Versatile baits like crankbaits and spinners";
    } else {
      return "Fast-moving baits like topwater lures";
    }
  }
}
