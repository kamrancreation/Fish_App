import 'package:weather/weather.dart';
import 'package:geolocator/geolocator.dart';

class WeatherService {
  final WeatherFactory _weatherFactory;
  static const String _apiKey = 'YOUR_API_KEY'; // Replace with your OpenWeatherMap API key

  WeatherService() : _weatherFactory = WeatherFactory(_apiKey);

  Future<Weather> getCurrentWeather(Position position) async {
    try {
      return await _weatherFactory.currentWeatherByLocation(
        position.latitude,
        position.longitude,
      );
    } catch (e) {
      throw Exception('Failed to get weather data: $e');
    }
  }

  Future<List<Weather>> getForecast(Position position) async {
    try {
      return await _weatherFactory.fiveDayForecastByLocation(
        position.latitude,
        position.longitude,
      );
    } catch (e) {
      throw Exception('Failed to get forecast data: $e');
    }
  }

  double calculateFishingConditionScore(Weather weather) {
    double score = 0;
    
    // Temperature score (ideal range 15-25°C)
    final temp = weather.temperature?.celsius ?? 0;
    if (temp >= 15 && temp <= 25) {
      score += 30;
    } else if (temp >= 10 && temp <= 30) {
      score += 15;
    }

    // Pressure score (ideal range 1010-1020 hPa)
    final pressure = weather.pressure ?? 0;
    if (pressure >= 1010 && pressure <= 1020) {
      score += 20;
    } else if (pressure >= 1000 && pressure <= 1030) {
      score += 10;
    }

    // Wind score (ideal range 5-15 km/h)
    final windSpeed = weather.windSpeed ?? 0;
    if (windSpeed >= 5 && windSpeed <= 15) {
      score += 20;
    } else if (windSpeed < 25) {
      score += 10;
    }

    // Cloud coverage score (ideal range 30-70%)
    final clouds = weather.cloudiness ?? 0;
    if (clouds >= 30 && clouds <= 70) {
      score += 20;
    } else if (clouds >= 10 && clouds <= 90) {
      score += 10;
    }

    // Precipitation penalty
    final rain = weather.rainLastHour ?? 0;
    if (rain > 0) {
      score -= rain * 5;
    }

    return score.clamp(0, 100);
  }

  String getFishingConditionDescription(double score) {
    if (score >= 80) return 'Excellent fishing conditions!';
    if (score >= 60) return 'Good fishing conditions';
    if (score >= 40) return 'Fair fishing conditions';
    if (score >= 20) return 'Poor fishing conditions';
    return 'Very poor fishing conditions';
  }

  List<String> getFishingTips(Weather weather) {
    final tips = <String>[];
    final temp = weather.temperature?.celsius ?? 0;
    final windSpeed = weather.windSpeed ?? 0;
    final clouds = weather.cloudiness ?? 0;

    if (temp < 10) {
      tips.add('Fish deeper waters where temperature is more stable');
      tips.add('Use slower retrieval techniques as fish are less active');
    } else if (temp > 25) {
      tips.add('Focus on early morning or evening fishing');
      tips.add('Look for shaded areas where fish might seek refuge');
    }

    if (windSpeed > 20) {
      tips.add('Fish the downwind side of structures');
      tips.add('Use heavier lures to combat wind');
    }

    if (clouds < 30) {
      tips.add('Fish deeper as bright conditions may push fish down');
      tips.add('Use natural colored lures');
    }

    return tips;
  }
}
