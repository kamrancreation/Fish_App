import '../models/weather_model.dart';

class WeatherUtils {
  static bool isSafeToFish(WeatherModel weather) {
    // Check for dangerous conditions
    if (weather.hasDangerousConditions) return false;

    // Check wind speed (above 15 m/s is dangerous)
    if (weather.windSpeed > 15) return false;

    // Check visibility (less than 1km is dangerous)
    if (weather.visibility < 1000) return false;

    // Check for extreme temperatures
    if (weather.temperature < -10 || weather.temperature > 40) return false;

    return true;
  }

  static String getWeatherWarning(WeatherModel weather) {
    final List<String> warnings = [];

    if (weather.condition.toLowerCase().contains('thunderstorm')) {
      warnings.add('Thunderstorm warning: Seek shelter immediately');
    }

    if (weather.windSpeed > 15) {
      warnings.add('High wind warning: ${weather.windSpeed.round()} m/s');
    }

    if (weather.visibility < 1000) {
      warnings.add('Low visibility warning: ${(weather.visibility / 1000).toStringAsFixed(1)} km');
    }

    if (weather.temperature < -10) {
      warnings.add('Extreme cold warning: ${weather.temperature.round()}°C');
    }

    if (weather.temperature > 40) {
      warnings.add('Extreme heat warning: ${weather.temperature.round()}°C');
    }

    return warnings.isEmpty ? '' : warnings.join('\n');
  }

  static String getWindDescription(double windSpeed) {
    if (windSpeed < 0.5) return 'Calm';
    if (windSpeed < 1.5) return 'Light air';
    if (windSpeed < 3.3) return 'Light breeze';
    if (windSpeed < 5.5) return 'Gentle breeze';
    if (windSpeed < 7.9) return 'Moderate breeze';
    if (windSpeed < 10.7) return 'Fresh breeze';
    if (windSpeed < 13.8) return 'Strong breeze';
    if (windSpeed < 17.1) return 'High wind';
    if (windSpeed < 20.7) return 'Gale';
    if (windSpeed < 24.4) return 'Strong gale';
    if (windSpeed < 28.4) return 'Storm';
    if (windSpeed < 32.6) return 'Violent storm';
    return 'Hurricane force';
  }

  static String getVisibilityDescription(int visibilityMeters) {
    final visibilityKm = visibilityMeters / 1000;
    if (visibilityKm < 0.05) return 'Dense fog';
    if (visibilityKm < 0.2) return 'Thick fog';
    if (visibilityKm < 1.0) return 'Fog';
    if (visibilityKm < 2.0) return 'Mist';
    if (visibilityKm < 5.0) return 'Poor visibility';
    if (visibilityKm < 10.0) return 'Moderate visibility';
    return 'Good visibility';
  }

  static String getTemperatureDescription(double temperature) {
    if (temperature < -10) return 'Extremely cold';
    if (temperature < 0) return 'Very cold';
    if (temperature < 10) return 'Cold';
    if (temperature < 20) return 'Cool';
    if (temperature < 25) return 'Mild';
    if (temperature < 30) return 'Warm';
    if (temperature < 35) return 'Hot';
    if (temperature < 40) return 'Very hot';
    return 'Extremely hot';
  }

  static bool shouldSendWeatherAlert(WeatherModel weather) {
    return weather.hasDangerousConditions ||
           weather.windSpeed > 15 ||
           weather.visibility < 1000 ||
           weather.temperature < -10 ||
           weather.temperature > 40;
  }

  static String getFishingConditionAdvice(WeatherModel weather) {
    if (!isSafeToFish(weather)) {
      return 'Fishing is not recommended due to dangerous weather conditions.';
    }

    final List<String> advice = [];

    // Wind conditions
    if (weather.windSpeed < 3.3) {
      advice.add('Light winds are ideal for fishing.');
    } else if (weather.windSpeed < 7.9) {
      advice.add('Moderate winds may affect casting accuracy.');
    } else {
      advice.add('Strong winds may make fishing challenging.');
    }

    // Temperature impact
    if (weather.temperature < 10) {
      advice.add('Cold temperatures may slow fish activity.');
    } else if (weather.temperature > 30) {
      advice.add('Fish may be less active in high temperatures.');
    } else {
      advice.add('Temperature is favorable for fishing.');
    }

    // Cloud cover
    if (weather.cloudiness < 30) {
      advice.add('Clear skies might make fish more cautious.');
    } else if (weather.cloudiness > 70) {
      advice.add('Overcast conditions can increase fish activity.');
    }

    return advice.join(' ');
  }
}
