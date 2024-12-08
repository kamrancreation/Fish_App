import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class CatchModel extends Equatable {
  final String id;
  final String userId;
  final String? tournamentId;
  final String species;
  final double weight;
  final double length;
  final GeoPoint location;
  final DateTime timestamp;
  final List<String> imageUrls;
  final String? verificationStatus;
  final Map<String, dynamic>? metadata;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CatchModel({
    required this.id,
    required this.userId,
    this.tournamentId,
    required this.species,
    required this.weight,
    required this.length,
    required this.location,
    required this.timestamp,
    required this.imageUrls,
    this.verificationStatus,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        tournamentId,
        species,
        weight,
        length,
        location,
        timestamp,
        imageUrls,
        verificationStatus,
        metadata,
        createdAt,
        updatedAt,
      ];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'tournamentId': tournamentId,
      'species': species,
      'weight': weight,
      'length': length,
      'location': location,
      'timestamp': Timestamp.fromDate(timestamp),
      'imageUrls': imageUrls,
      'verificationStatus': verificationStatus,
      'metadata': metadata,
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }

  factory CatchModel.fromMap(Map<String, dynamic> map) {
    return CatchModel(
      id: map['id'] as String,
      userId: map['userId'] as String,
      tournamentId: map['tournamentId'] as String?,
      species: map['species'] as String,
      weight: (map['weight'] as num).toDouble(),
      length: (map['length'] as num).toDouble(),
      location: map['location'] as GeoPoint,
      timestamp: (map['timestamp'] as Timestamp).toDate(),
      imageUrls: List<String>.from(map['imageUrls'] as List),
      verificationStatus: map['verificationStatus'] as String?,
      metadata: map['metadata'] as Map<String, dynamic>?,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      updatedAt: (map['updatedAt'] as Timestamp).toDate(),
    );
  }

  CatchModel copyWith({
    String? id,
    String? userId,
    String? tournamentId,
    String? species,
    double? weight,
    double? length,
    GeoPoint? location,
    DateTime? timestamp,
    List<String>? imageUrls,
    String? verificationStatus,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CatchModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      tournamentId: tournamentId ?? this.tournamentId,
      species: species ?? this.species,
      weight: weight ?? this.weight,
      length: length ?? this.length,
      location: location ?? this.location,
      timestamp: timestamp ?? this.timestamp,
      imageUrls: imageUrls ?? this.imageUrls,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      metadata: metadata ?? this.metadata,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  static CatchModel empty() {
    return CatchModel(
      id: '',
      userId: '',
      species: '',
      weight: 0.0,
      length: 0.0,
      location: const GeoPoint(0, 0),
      timestamp: DateTime.now(),
      imageUrls: const [],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
