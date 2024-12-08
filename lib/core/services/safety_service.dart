import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart' hide Position;
import 'package:weather/weather.dart';
import '../models/safety_model.dart';
import '../config/app_config.dart';
import './notification_service.dart';
import './auth_service.dart';

class SafetyService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final WeatherFactory _weatherFactory = WeatherFactory(AppConfig.openWeatherMapApiKey);
  final NotificationService _notificationService;
  final AuthService _authService;
  Timer? _checkInTimer;
  StreamSubscription<Position>? _locationSubscription;

  SafetyService({
    required NotificationService notificationService,
    required AuthService authService,
  }) : _notificationService = notificationService,
       _authService = authService;

  // Initialize safety monitoring
  Future<void> initializeSafety(String userId) async {
    final safety = await getSafetySettings(userId);
    if (safety.isCheckInEnabled) {
      _startCheckInMonitoring(userId, safety.checkInInterval);
    }
    _startLocationTracking(userId);
  }

  // Get safety settings
  Future<SafetyModel> getSafetySettings(String userId) async {
    final doc = await _firestore.collection('safety').doc(userId).get();
    if (!doc.exists) {
      // Create default safety settings
      final defaultSettings = SafetyModel(
        id: userId,
        userId: userId,
        emergencyContacts: [],
        isCheckInEnabled: false,
        checkInInterval: 30,
        activeAlerts: [],
        safetyPreferences: {
          'weatherAlerts': true,
          'locationSharing': true,
          'autoCheckIn': false,
        },
      );
      await _firestore.collection('safety').doc(userId).set(defaultSettings.toMap());
      return defaultSettings;
    }
    return SafetyModel.fromFirestore(doc);
  }

  // Update safety settings
  Future<void> updateSafetySettings(SafetyModel settings) async {
    await _firestore.collection('safety').doc(settings.id).update(settings.toMap());
    
    // Update monitoring based on new settings
    if (settings.isCheckInEnabled) {
      _startCheckInMonitoring(settings.userId, settings.checkInInterval);
    } else {
      _stopCheckInMonitoring();
    }
  }

  // Add emergency contact
  Future<void> addEmergencyContact(String userId, String contactInfo) async {
    await _firestore.collection('safety').doc(userId).update({
      'emergencyContacts': FieldValue.arrayUnion([contactInfo])
    });
  }

  // Remove emergency contact
  Future<void> removeEmergencyContact(String userId, String contactInfo) async {
    await _firestore.collection('safety').doc(userId).update({
      'emergencyContacts': FieldValue.arrayRemove([contactInfo])
    });
  }

  // Check-in
  Future<void> checkIn(String userId) async {
    final position = await Geolocator.getCurrentPosition();
    await _firestore.collection('safety').doc(userId).update({
      'lastCheckIn': DateTime.now(),
      'lastKnownLocation': Position(
        latitude: position.latitude,
        longitude: position.longitude,
        accuracy: position.accuracy,
        altitude: position.altitude,
        heading: position.heading,
        speed: position.speed,
        timestamp: DateTime.now(),
      ).toJson(),
    });
  }

  // Create safety alert
  Future<void> createAlert(
    String userId,
    String type,
    String message,
    Map<String, dynamic> metadata,
  ) async {
    try {
      final user = await _authService.currentUser;
      if (user == null) throw Exception('No user signed in');

      final settings = await getSafetySettings(userId);
      
      await _notificationService.sendEmergencyAlert(
        userId: userId,
        contacts: settings.emergencyContacts,
        message: message,
        location: metadata['location'],
      );

      final alert = SafetyAlert(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        type: type,
        message: message,
        timestamp: DateTime.now(),
        metadata: metadata,
      );

      await _firestore.collection('safety').doc(userId).update({
        'activeAlerts': FieldValue.arrayUnion([alert.toMap()])
      });
    } catch (e) {
      throw Exception('Failed to create alert: ${e.toString()}');
    }
  }

  // Acknowledge alert
  Future<void> acknowledgeAlert(String userId, String alertId) async {
    final doc = await _firestore.collection('safety').doc(userId).get();
    final safety = SafetyModel.fromFirestore(doc);
    
    final updatedAlerts = safety.activeAlerts.map((alert) {
      if (alert.id == alertId) {
        return SafetyAlert(
          id: alert.id,
          type: alert.type,
          message: alert.message,
          timestamp: alert.timestamp,
          metadata: alert.metadata,
          isAcknowledged: true,
        );
      }
      return alert;
    }).toList();

    await _firestore.collection('safety').doc(userId).update({
      'activeAlerts': updatedAlerts.map((alert) => alert.toMap()).toList()
    });
  }

  // Get weather alerts
  Future<List<SafetyAlert>> getWeatherAlerts(double latitude, double longitude) async {
    try {
      final weather = await _weatherFactory.currentWeatherByLocation(latitude, longitude);
      final List<SafetyAlert> alerts = [];
      
      if (weather.weatherMain != null) {
        alerts.add(SafetyAlert(
          type: 'weather',
          message: '${weather.weatherMain}: ${weather.weatherDescription}',
          severity: _getWeatherSeverity(weather.weatherMain!),
          timestamp: DateTime.now(),
        ));
      }

      return alerts;
    } catch (e) {
      throw Exception('Failed to fetch weather alerts: ${e.toString()}');
    }
  }

  // Start check-in monitoring
  void _startCheckInMonitoring(String userId, int intervalMinutes) {
    _checkInTimer?.cancel();
    _checkInTimer = Timer.periodic(Duration(minutes: intervalMinutes), (_) async {
      final safety = await getSafetySettings(userId);
      final lastCheckIn = safety.lastCheckIn;
      
      if (lastCheckIn != null) {
        final timeSinceLastCheckIn = DateTime.now().difference(lastCheckIn);
        if (timeSinceLastCheckIn.inMinutes > intervalMinutes) {
          await createAlert(
            userId,
            'missed_checkin',
            'Missed scheduled check-in',
            {'lastCheckIn': lastCheckIn.millisecondsSinceEpoch},
          );
        }
      }
    });
  }

  // Stop check-in monitoring
  void _stopCheckInMonitoring() {
    _checkInTimer?.cancel();
    _checkInTimer = null;
  }

  // Start location tracking
  Future<void> _startLocationTracking(String userId) async {
    // Request location permissions
    final permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      return;
    }

    // Start tracking location
    _locationSubscription?.cancel();
    _locationSubscription = Geolocator.getPositionStream().listen((position) async {
      // Update location in Firestore
      await _firestore.collection('safety').doc(userId).update({
        'lastKnownLocation': Position(
          latitude: position.latitude,
          longitude: position.longitude,
          accuracy: position.accuracy,
          altitude: position.altitude,
          heading: position.heading,
          speed: position.speed,
          timestamp: DateTime.now(),
        ).toJson(),
      });

      // Check for weather alerts
      final alerts = await getWeatherAlerts(position.latitude, position.longitude);
      for (final alert in alerts) {
        await createAlert(
          userId,
          alert.type,
          alert.message,
          alert.metadata,
        );
      }
    });
  }

  // Notify emergency contacts
  Future<void> _notifyEmergencyContacts(String userId) async {
    final safety = await getSafetySettings(userId);
    for (final contact in safety.emergencyContacts) {
      // TODO: Implement actual notification (SMS, email, push notification)
      print('Notifying emergency contact: $contact');
    }
  }

  // Dispose
  void dispose() {
    _checkInTimer?.cancel();
    _locationSubscription?.cancel();
  }

  String _getWeatherSeverity(String condition) {
    switch (condition.toLowerCase()) {
      case 'thunderstorm':
      case 'tornado':
      case 'hurricane':
        return 'severe';
      case 'rain':
      case 'snow':
      case 'drizzle':
        return 'moderate';
      default:
        return 'low';
    }
  }
}
