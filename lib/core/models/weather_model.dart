class WeatherModel {
  final double temperature;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;
  final String condition;
  final String description;
  final String icon;
  final double windSpeed;
  final int windDegree;
  final double? windGust;
  final int visibility;
  final int cloudiness;
  final DateTime timestamp;
  final String? warning;

  WeatherModel({
    required this.temperature,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.condition,
    required this.description,
    required this.icon,
    required this.windSpeed,
    required this.windDegree,
    this.windGust,
    required this.visibility,
    required this.cloudiness,
    required this.timestamp,
    this.warning,
  });

  Map<String, dynamic> toMap() {
    return {
      'temperature': temperature,
      'feelsLike': feelsLike,
      'tempMin': tempMin,
      'tempMax': tempMax,
      'pressure': pressure,
      'humidity': humidity,
      'condition': condition,
      'description': description,
      'icon': icon,
      'windSpeed': windSpeed,
      'windDegree': windDegree,
      'windGust': windGust,
      'visibility': visibility,
      'cloudiness': cloudiness,
      'timestamp': timestamp.toIso8601String(),
      'warning': warning,
    };
  }

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    return WeatherModel(
      temperature: (map['temperature'] as num).toDouble(),
      feelsLike: (map['feelsLike'] as num).toDouble(),
      tempMin: (map['tempMin'] as num).toDouble(),
      tempMax: (map['tempMax'] as num).toDouble(),
      pressure: map['pressure'] as int,
      humidity: map['humidity'] as int,
      condition: map['condition'] as String,
      description: map['description'] as String,
      icon: map['icon'] as String,
      windSpeed: (map['windSpeed'] as num).toDouble(),
      windDegree: map['windDegree'] as int,
      windGust: map['windGust'] != null ? (map['windGust'] as num).toDouble() : null,
      visibility: map['visibility'] as int,
      cloudiness: map['cloudiness'] as int,
      timestamp: DateTime.parse(map['timestamp'] as String),
      warning: map['warning'] as String?,
    );
  }

  bool get hasDangerousConditions {
    final lowVisibility = visibility < 1000;
    final highWinds = windSpeed > 15;
    final severeConditions = condition.toLowerCase().contains('thunderstorm') ||
        condition.toLowerCase().contains('tornado') ||
        condition.toLowerCase().contains('hurricane');

    return lowVisibility || highWinds || severeConditions;
  }

  String get weatherIcon {
    return 'https://openweathermap.org/img/wn/$icon@2x.png';
  }

  String get temperatureString {
    return '${temperature.round()}°C';
  }

  String get windSpeedString {
    return '${windSpeed.round()} m/s';
  }

  String get visibilityString {
    return '${(visibility / 1000).toStringAsFixed(1)} km';
  }
}
