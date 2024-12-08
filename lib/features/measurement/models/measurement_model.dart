import 'package:cloud_firestore/cloud_firestore.dart';

class MeasurementModel {
  final String id;
  final String userId;
  final double length;
  final double weight;
  final double confidenceScore;
  final String referenceObject;
  final String imageUrl;
  final DateTime timestamp;
  final Map<String, dynamic>? metadata;

  MeasurementModel({
    required this.id,
    required this.userId,
    required this.length,
    required this.weight,
    required this.confidenceScore,
    required this.referenceObject,
    required this.imageUrl,
    required this.timestamp,
    this.metadata,
  });

  factory MeasurementModel.fromJson(Map<String, dynamic> json) {
    return MeasurementModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      length: (json['length'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      confidenceScore: (json['confidenceScore'] as num).toDouble(),
      referenceObject: json['referenceObject'] as String,
      imageUrl: json['imageUrl'] as String,
      timestamp: (json['timestamp'] as Timestamp).toDate(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'length': length,
      'weight': weight,
      'confidenceScore': confidenceScore,
      'referenceObject': referenceObject,
      'imageUrl': imageUrl,
      'timestamp': Timestamp.fromDate(timestamp),
      'metadata': metadata,
    };
  }

  MeasurementModel copyWith({
    String? id,
    String? userId,
    double? length,
    double? weight,
    double? confidenceScore,
    String? referenceObject,
    String? imageUrl,
    DateTime? timestamp,
    Map<String, dynamic>? metadata,
  }) {
    return MeasurementModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      length: length ?? this.length,
      weight: weight ?? this.weight,
      confidenceScore: confidenceScore ?? this.confidenceScore,
      referenceObject: referenceObject ?? this.referenceObject,
      imageUrl: imageUrl ?? this.imageUrl,
      timestamp: timestamp ?? this.timestamp,
      metadata: metadata ?? this.metadata,
    );
  }
}
