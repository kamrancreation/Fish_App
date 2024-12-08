import 'package:cloud_firestore/cloud_firestore.dart';

class CatchModel {
  final String id;
  final String userId;
  final String speciesId;
  final String? tournamentId;
  final DateTime timestamp;
  final double length;
  final double weight;
  final double measurementConfidence;
  final GeoPoint location;
  final List<String> photoUrls;
  final Map<String, dynamic> weatherData;
  final String? notes;
  final bool isVerified;
  final bool isReleased;
  final Map<String, dynamic> gearUsed;

  CatchModel({
    required this.id,
    required this.userId,
    required this.speciesId,
    this.tournamentId,
    required this.timestamp,
    required this.length,
    required this.weight,
    required this.measurementConfidence,
    required this.location,
    this.photoUrls = const [],
    this.weatherData = const {},
    this.notes,
    this.isVerified = false,
    this.isReleased = true,
    this.gearUsed = const {},
  });

  factory CatchModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return CatchModel(
      id: doc.id,
      userId: data['userId'] ?? '',
      speciesId: data['speciesId'] ?? '',
      tournamentId: data['tournamentId'],
      timestamp: (data['timestamp'] as Timestamp).toDate(),
      length: (data['length'] ?? 0).toDouble(),
      weight: (data['weight'] ?? 0).toDouble(),
      measurementConfidence: (data['measurementConfidence'] ?? 0).toDouble(),
      location: data['location'] as GeoPoint,
      photoUrls: List<String>.from(data['photoUrls'] ?? []),
      weatherData: Map<String, dynamic>.from(data['weatherData'] ?? {}),
      notes: data['notes'],
      isVerified: data['isVerified'] ?? false,
      isReleased: data['isReleased'] ?? true,
      gearUsed: Map<String, dynamic>.from(data['gearUsed'] ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'speciesId': speciesId,
      'tournamentId': tournamentId,
      'timestamp': Timestamp.fromDate(timestamp),
      'length': length,
      'weight': weight,
      'measurementConfidence': measurementConfidence,
      'location': location,
      'photoUrls': photoUrls,
      'weatherData': weatherData,
      'notes': notes,
      'isVerified': isVerified,
      'isReleased': isReleased,
      'gearUsed': gearUsed,
    };
  }

  CatchModel copyWith({
    String? id,
    String? userId,
    String? speciesId,
    String? tournamentId,
    DateTime? timestamp,
    double? length,
    double? weight,
    double? measurementConfidence,
    GeoPoint? location,
    List<String>? photoUrls,
    Map<String, dynamic>? weatherData,
    String? notes,
    bool? isVerified,
    bool? isReleased,
    Map<String, dynamic>? gearUsed,
  }) {
    return CatchModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      speciesId: speciesId ?? this.speciesId,
      tournamentId: tournamentId ?? this.tournamentId,
      timestamp: timestamp ?? this.timestamp,
      length: length ?? this.length,
      weight: weight ?? this.weight,
      measurementConfidence: measurementConfidence ?? this.measurementConfidence,
      location: location ?? this.location,
      photoUrls: photoUrls ?? this.photoUrls,
      weatherData: weatherData ?? this.weatherData,
      notes: notes ?? this.notes,
      isVerified: isVerified ?? this.isVerified,
      isReleased: isReleased ?? this.isReleased,
      gearUsed: gearUsed ?? this.gearUsed,
    );
  }
}
