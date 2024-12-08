import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

enum EventType {
  fishing,
  competition,
  workshop,
  meetup,
  cleanup,
  other,
}

enum EventPrivacy {
  public,
  membersOnly,
  inviteOnly,
}

@immutable
class ClubEvent {
  final String id;
  final String clubId;
  final String organizerId;
  final String title;
  final String description;
  final DateTime startTime;
  final DateTime endTime;
  final String location;
  final GeoPoint? coordinates;
  final EventType type;
  final EventPrivacy privacy;
  final int maxParticipants;
  final List<String> participantIds;
  final List<String> invitedIds;
  final Map<String, dynamic> requirements;
  final Map<String, dynamic> equipment;
  final String? imageUrl;
  final Map<String, dynamic> stats;
  final DateTime createdAt;

  const ClubEvent({
    required this.id,
    required this.clubId,
    required this.organizerId,
    required this.title,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.location,
    this.coordinates,
    required this.type,
    required this.privacy,
    required this.maxParticipants,
    required this.participantIds,
    required this.invitedIds,
    required this.requirements,
    required this.equipment,
    this.imageUrl,
    required this.stats,
    required this.createdAt,
  });

  factory ClubEvent.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ClubEvent(
      id: doc.id,
      clubId: data['clubId'] as String,
      organizerId: data['organizerId'] as String,
      title: data['title'] as String,
      description: data['description'] as String,
      startTime: (data['startTime'] as Timestamp).toDate(),
      endTime: (data['endTime'] as Timestamp).toDate(),
      location: data['location'] as String,
      coordinates: data['coordinates'] as GeoPoint?,
      type: EventType.values.firstWhere(
        (e) => e.toString() == 'EventType.${data['type']}',
      ),
      privacy: EventPrivacy.values.firstWhere(
        (e) => e.toString() == 'EventPrivacy.${data['privacy']}',
      ),
      maxParticipants: data['maxParticipants'] as int,
      participantIds: List<String>.from(data['participantIds'] as List),
      invitedIds: List<String>.from(data['invitedIds'] as List),
      requirements: Map<String, dynamic>.from(data['requirements'] as Map),
      equipment: Map<String, dynamic>.from(data['equipment'] as Map),
      imageUrl: data['imageUrl'] as String?,
      stats: Map<String, dynamic>.from(data['stats'] as Map),
      createdAt: (data['createdAt'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'clubId': clubId,
      'organizerId': organizerId,
      'title': title,
      'description': description,
      'startTime': Timestamp.fromDate(startTime),
      'endTime': Timestamp.fromDate(endTime),
      'location': location,
      'coordinates': coordinates,
      'type': type.toString().split('.').last,
      'privacy': privacy.toString().split('.').last,
      'maxParticipants': maxParticipants,
      'participantIds': participantIds,
      'invitedIds': invitedIds,
      'requirements': requirements,
      'equipment': equipment,
      'imageUrl': imageUrl,
      'stats': stats,
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }

  ClubEvent copyWith({
    String? id,
    String? clubId,
    String? organizerId,
    String? title,
    String? description,
    DateTime? startTime,
    DateTime? endTime,
    String? location,
    GeoPoint? coordinates,
    EventType? type,
    EventPrivacy? privacy,
    int? maxParticipants,
    List<String>? participantIds,
    List<String>? invitedIds,
    Map<String, dynamic>? requirements,
    Map<String, dynamic>? equipment,
    String? imageUrl,
    Map<String, dynamic>? stats,
    DateTime? createdAt,
  }) {
    return ClubEvent(
      id: id ?? this.id,
      clubId: clubId ?? this.clubId,
      organizerId: organizerId ?? this.organizerId,
      title: title ?? this.title,
      description: description ?? this.description,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      location: location ?? this.location,
      coordinates: coordinates ?? this.coordinates,
      type: type ?? this.type,
      privacy: privacy ?? this.privacy,
      maxParticipants: maxParticipants ?? this.maxParticipants,
      participantIds: participantIds ?? this.participantIds,
      invitedIds: invitedIds ?? this.invitedIds,
      requirements: requirements ?? this.requirements,
      equipment: equipment ?? this.equipment,
      imageUrl: imageUrl ?? this.imageUrl,
      stats: stats ?? this.stats,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  bool canJoin(String userId) {
    if (participantIds.contains(userId)) return false;
    if (participantIds.length >= maxParticipants) return false;
    if (privacy == EventPrivacy.inviteOnly && !invitedIds.contains(userId)) {
      return false;
    }
    return true;
  }

  bool isUpcoming() {
    return startTime.isAfter(DateTime.now());
  }

  bool isOngoing() {
    final now = DateTime.now();
    return startTime.isBefore(now) && endTime.isAfter(now);
  }

  bool isCompleted() {
    return endTime.isBefore(DateTime.now());
  }
}
