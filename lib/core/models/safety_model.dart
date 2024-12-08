import 'package:cloud_firestore/cloud_firestore.dart';

class SafetyModel {
  final String id;
  final String userId;
  final List<String> emergencyContacts;
  final bool isCheckInEnabled;
  final int checkInInterval; // in minutes
  final DateTime? lastCheckIn;
  final Position? lastKnownLocation;
  final List<SafetyAlert> activeAlerts;
  final Map<String, dynamic> safetyPreferences;

  SafetyModel({
    required this.id,
    required this.userId,
    required this.emergencyContacts,
    required this.isCheckInEnabled,
    required this.checkInInterval,
    this.lastCheckIn,
    this.lastKnownLocation,
    required this.activeAlerts,
    required this.safetyPreferences,
  });

  factory SafetyModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return SafetyModel(
      id: doc.id,
      userId: data['userId'] ?? '',
      emergencyContacts: List<String>.from(data['emergencyContacts'] ?? []),
      isCheckInEnabled: data['isCheckInEnabled'] ?? false,
      checkInInterval: data['checkInInterval'] ?? 30,
      lastCheckIn: data['lastCheckIn']?.toDate(),
      lastKnownLocation: data['lastKnownLocation'] != null
          ? Position.fromMap(data['lastKnownLocation'])
          : null,
      activeAlerts: (data['activeAlerts'] as List?)
          ?.map((alert) => SafetyAlert.fromMap(alert))
          .toList() ?? [],
      safetyPreferences: Map<String, dynamic>.from(data['safetyPreferences'] ?? {}),
    );
  }

  factory SafetyModel.fromMap(Map<String, dynamic> map) {
    return SafetyModel(
      id: map['id'] as String,
      userId: map['userId'] as String,
      emergencyContacts: List<String>.from(map['emergencyContacts'] ?? []),
      isCheckInEnabled: map['isCheckInEnabled'] as bool,
      checkInInterval: map['checkInInterval'] as int,
      lastCheckIn: map['lastCheckIn'] != null ? (map['lastCheckIn'] as Timestamp).toDate() : null,
      lastKnownLocation: map['lastKnownLocation'] != null
          ? Position.fromMap(map['lastKnownLocation'])
          : null,
      activeAlerts: (map['activeAlerts'] as List?)
          ?.map((alert) => SafetyAlert.fromMap(alert))
          .toList() ?? [],
      safetyPreferences: Map<String, dynamic>.from(map['safetyPreferences'] ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'emergencyContacts': emergencyContacts,
      'isCheckInEnabled': isCheckInEnabled,
      'checkInInterval': checkInInterval,
      'lastCheckIn': lastCheckIn != null ? Timestamp.fromDate(lastCheckIn!) : null,
      'lastKnownLocation': lastKnownLocation?.toJson(),
      'activeAlerts': activeAlerts.map((alert) => alert.toMap()).toList(),
      'safetyPreferences': safetyPreferences,
    };
  }
}

class Position {
  final double latitude;
  final double longitude;
  final double? accuracy;
  final double? altitude;
  final double? heading;
  final double? speed;
  final DateTime timestamp;

  Position({
    required this.latitude,
    required this.longitude,
    this.accuracy,
    this.altitude,
    this.heading,
    this.speed,
    required this.timestamp,
  });

  factory Position.fromMap(Map<String, dynamic> map) {
    return Position(
      latitude: map['latitude'] ?? 0.0,
      longitude: map['longitude'] ?? 0.0,
      accuracy: map['accuracy'],
      altitude: map['altitude'],
      heading: map['heading'],
      speed: map['speed'],
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] ?? 0),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'accuracy': accuracy,
      'altitude': altitude,
      'heading': heading,
      'speed': speed,
      'timestamp': timestamp.millisecondsSinceEpoch,
    };
  }
}

class SafetyAlert {
  final String id;
  final String type;
  final String message;
  final DateTime timestamp;
  final Map<String, dynamic> metadata;
  final bool isAcknowledged;

  SafetyAlert({
    required this.id,
    required this.type,
    required this.message,
    required this.timestamp,
    required this.metadata,
    this.isAcknowledged = false,
  });

  factory SafetyAlert.fromMap(Map<String, dynamic> map) {
    return SafetyAlert(
      id: map['id'] ?? '',
      type: map['type'] ?? '',
      message: map['message'] ?? '',
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] ?? 0),
      metadata: Map<String, dynamic>.from(map['metadata'] ?? {}),
      isAcknowledged: map['isAcknowledged'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'message': message,
      'timestamp': timestamp.millisecondsSinceEpoch,
      'metadata': metadata,
      'isAcknowledged': isAcknowledged,
    };
  }
}
