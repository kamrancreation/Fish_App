import 'package:flutter/material.dart';

class Config {
  // App Information
  static const String appName = 'FishPro';
  static const String appVersion = '1.0.0';
  static const String appBuildNumber = '1';

  // API Endpoints
  static const String apiBaseUrl = 'https://api.fishpro.com';
  static const String weatherApiBaseUrl = 'https://api.openweathermap.org/data/2.5';

  // Feature Flags
  static const bool enablePushNotifications = true;
  static const bool enableLocationTracking = true;
  static const bool enableWeatherAlerts = true;
  static const bool enableSafetyCheckins = true;

  // Timeouts and Intervals
  static const Duration apiTimeout = Duration(seconds: 30);
  static const Duration locationUpdateInterval = Duration(minutes: 5);
  static const Duration weatherUpdateInterval = Duration(minutes: 30);
  static const Duration defaultCheckInInterval = Duration(minutes: 30);

  // Cache Configuration
  static const Duration cacheDuration = Duration(hours: 24);
  static const int maxCacheSize = 100 * 1024 * 1024; // 100MB

  // UI Configuration
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 8.0;
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);

  // Safety Configuration
  static const int maxEmergencyContacts = 5;
  static const Duration sosTimeout = Duration(minutes: 5);
  static const Duration checkInGracePeriod = Duration(minutes: 15);

  // Weather Configuration
  static const List<String> severeWeatherConditions = [
    'thunderstorm',
    'tornado',
    'hurricane',
    'tropical storm',
    'blizzard',
  ];

  // Social Configuration
  static const int maxPostLength = 500;
  static const int maxCommentLength = 200;
  static const Duration postCooldown = Duration(minutes: 5);

  // Image Configuration
  static const double maxImageSize = 5 * 1024 * 1024; // 5MB
  static const List<String> supportedImageFormats = ['jpg', 'jpeg', 'png'];
  static const double defaultImageQuality = 0.8;

  // Error Messages
  static const String defaultErrorMessage = 'An unexpected error occurred';
  static const String networkErrorMessage = 'Please check your internet connection';
  static const String locationErrorMessage = 'Unable to access location services';
  static const String weatherErrorMessage = 'Unable to fetch weather data';

  // Theme Configuration
  static const Color primaryColor = Color(0xFF2196F3);
  static const Color secondaryColor = Color(0xFF4CAF50);
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color warningColor = Color(0xFFFFA000);
  static const Color successColor = Color(0xFF388E3C);

  // Validation Rules
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 32;
  static const int minUsernameLength = 3;
  static const int maxUsernameLength = 20;
  static final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
  );
  static final RegExp passwordRegex = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );
}
