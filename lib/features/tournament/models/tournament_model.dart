import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class TournamentModel extends Equatable {
  final String id;
  final String name;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final String location;
  final String organizerId;
  final List<String> participants;
  final String status;
  final Map<String, dynamic>? rules;
  final double? entryFee;
  final Map<String, dynamic>? prizes;
  final DateTime createdAt;
  final DateTime updatedAt;

  const TournamentModel({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.location,
    required this.organizerId,
    required this.participants,
    required this.status,
    this.rules,
    this.entryFee,
    this.prizes,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        startDate,
        endDate,
        location,
        organizerId,
        participants,
        status,
        rules,
        entryFee,
        prizes,
        createdAt,
        updatedAt,
      ];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'startDate': Timestamp.fromDate(startDate),
      'endDate': Timestamp.fromDate(endDate),
      'location': location,
      'organizerId': organizerId,
      'participants': participants,
      'status': status,
      'rules': rules,
      'entryFee': entryFee,
      'prizes': prizes,
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }

  factory TournamentModel.fromMap(Map<String, dynamic> map) {
    return TournamentModel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      startDate: (map['startDate'] as Timestamp).toDate(),
      endDate: (map['endDate'] as Timestamp).toDate(),
      location: map['location'] as String,
      organizerId: map['organizerId'] as String,
      participants: List<String>.from(map['participants'] as List),
      status: map['status'] as String,
      rules: map['rules'] as Map<String, dynamic>?,
      entryFee: map['entryFee'] as double?,
      prizes: map['prizes'] as Map<String, dynamic>?,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      updatedAt: (map['updatedAt'] as Timestamp).toDate(),
    );
  }

  TournamentModel copyWith({
    String? id,
    String? name,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    String? location,
    String? organizerId,
    List<String>? participants,
    String? status,
    Map<String, dynamic>? rules,
    double? entryFee,
    Map<String, dynamic>? prizes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return TournamentModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      location: location ?? this.location,
      organizerId: organizerId ?? this.organizerId,
      participants: participants ?? this.participants,
      status: status ?? this.status,
      rules: rules ?? this.rules,
      entryFee: entryFee ?? this.entryFee,
      prizes: prizes ?? this.prizes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  static TournamentModel empty() {
    return TournamentModel(
      id: '',
      name: '',
      description: '',
      startDate: DateTime.now(),
      endDate: DateTime.now().add(const Duration(days: 1)),
      location: '',
      organizerId: '',
      participants: const [],
      status: 'draft',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
