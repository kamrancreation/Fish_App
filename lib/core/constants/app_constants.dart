class AppConstants {
  static const String appName = 'FishPro';
  static const String appVersion = '1.0.0';
  
  // API Keys and Endpoints
  static const String weatherApiKey = 'YOUR_WEATHER_API_KEY';
  static const String mapApiKey = 'YOUR_GOOGLE_MAPS_API_KEY';
  
  // Feature Flags
  static const bool enableARFeatures = true;
  static const bool enableBluetooth = true;
  static const bool enableWeather = true;
  static const bool enableTournaments = true;
  
  // Cache Configuration
  static const int maxCacheSize = 100 * 1024 * 1024; // 100 MB
  static const Duration cacheDuration = Duration(days: 7);
  
  // Measurement Configuration
  static const double minFishLength = 1.0; // cm
  static const double maxFishLength = 300.0; // cm
  static const double measurementConfidenceThreshold = 0.8;
}
