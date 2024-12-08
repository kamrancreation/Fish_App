import 'package:cloud_firestore/cloud_firestore.dart';

class FishingClub {
  final String id;
  final String name;
  final String description;
  final String creatorId;
  final List<String> adminIds;
  final List<String> memberIds;
  final String? imageUrl;
  final bool isPrivate;
  final Map<String, dynamic> settings;
  final DateTime createdAt;
  final Map<String, dynamic> stats;

  FishingClub({
    required this.id,
    required this.name,
    required this.description,
    required this.creatorId,
    required this.adminIds,
    required this.memberIds,
    this.imageUrl,
    required this.isPrivate,
    required this.settings,
    required this.createdAt,
    required this.stats,
  });

  factory FishingClub.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return FishingClub(
      id: doc.id,
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      creatorId: data['creatorId'] ?? '',
      adminIds: List<String>.from(data['adminIds'] ?? []),
      memberIds: List<String>.from(data['memberIds'] ?? []),
      imageUrl: data['imageUrl'],
      isPrivate: data['isPrivate'] ?? true,
      settings: Map<String, dynamic>.from(data['settings'] ?? {}),
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      stats: Map<String, dynamic>.from(data['stats'] ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'creatorId': creatorId,
      'adminIds': adminIds,
      'memberIds': memberIds,
      'imageUrl': imageUrl,
      'isPrivate': isPrivate,
      'settings': settings,
      'createdAt': Timestamp.fromDate(createdAt),
      'stats': stats,
    };
  }
}

class FishingEvent {
  final String id;
  final String clubId;
  final String name;
  final String description;
  final String organizerId;
  final DateTime startDate;
  final DateTime endDate;
  final String location;
  final List<String> participantIds;
  final Map<String, dynamic> rules;
  final Map<String, dynamic> prizes;
  final bool isPrivate;
  final String status;
  final Map<String, dynamic> stats;

  FishingEvent({
    required this.id,
    required this.clubId,
    required this.name,
    required this.description,
    required this.organizerId,
    required this.startDate,
    required this.endDate,
    required this.location,
    required this.participantIds,
    required this.rules,
    required this.prizes,
    required this.isPrivate,
    required this.status,
    required this.stats,
  });

  factory FishingEvent.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return FishingEvent(
      id: doc.id,
      clubId: data['clubId'] ?? '',
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      organizerId: data['organizerId'] ?? '',
      startDate: (data['startDate'] as Timestamp).toDate(),
      endDate: (data['endDate'] as Timestamp).toDate(),
      location: data['location'] ?? '',
      participantIds: List<String>.from(data['participantIds'] ?? []),
      rules: Map<String, dynamic>.from(data['rules'] ?? {}),
      prizes: Map<String, dynamic>.from(data['prizes'] ?? {}),
      isPrivate: data['isPrivate'] ?? true,
      status: data['status'] ?? 'upcoming',
      stats: Map<String, dynamic>.from(data['stats'] ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'clubId': clubId,
      'name': name,
      'description': description,
      'organizerId': organizerId,
      'startDate': Timestamp.fromDate(startDate),
      'endDate': Timestamp.fromDate(endDate),
      'location': location,
      'participantIds': participantIds,
      'rules': rules,
      'prizes': prizes,
      'isPrivate': isPrivate,
      'status': status,
      'stats': stats,
    };
  }
}

class SocialPost {
  final String id;
  final String userId;
  final String? clubId;
  final String? eventId;
  final String content;
  final List<String> imageUrls;
  final Map<String, dynamic> catchDetails;
  final Map<String, dynamic> location;
  final bool isPrivate;
  final DateTime createdAt;
  final List<String> likeIds;
  final List<Comment> comments;
  final Map<String, dynamic> stats;

  SocialPost({
    required this.id,
    required this.userId,
    this.clubId,
    this.eventId,
    required this.content,
    required this.imageUrls,
    required this.catchDetails,
    required this.location,
    required this.isPrivate,
    required this.createdAt,
    required this.likeIds,
    required this.comments,
    required this.stats,
  });

  factory SocialPost.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return SocialPost(
      id: doc.id,
      userId: data['userId'] ?? '',
      clubId: data['clubId'],
      eventId: data['eventId'],
      content: data['content'] ?? '',
      imageUrls: List<String>.from(data['imageUrls'] ?? []),
      catchDetails: Map<String, dynamic>.from(data['catchDetails'] ?? {}),
      location: Map<String, dynamic>.from(data['location'] ?? {}),
      isPrivate: data['isPrivate'] ?? false,
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      likeIds: List<String>.from(data['likeIds'] ?? []),
      comments: (data['comments'] as List?)
          ?.map((comment) => Comment.fromMap(comment))
          .toList() ?? [],
      stats: Map<String, dynamic>.from(data['stats'] ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'clubId': clubId,
      'eventId': eventId,
      'content': content,
      'imageUrls': imageUrls,
      'catchDetails': catchDetails,
      'location': location,
      'isPrivate': isPrivate,
      'createdAt': Timestamp.fromDate(createdAt),
      'likeIds': likeIds,
      'comments': comments.map((comment) => comment.toMap()).toList(),
      'stats': stats,
    };
  }
}

class Comment {
  final String id;
  final String userId;
  final String content;
  final DateTime createdAt;
  final List<String> likeIds;

  Comment({
    required this.id,
    required this.userId,
    required this.content,
    required this.createdAt,
    required this.likeIds,
  });

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      content: map['content'] ?? '',
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      likeIds: List<String>.from(map['likeIds'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'content': content,
      'createdAt': Timestamp.fromDate(createdAt),
      'likeIds': likeIds,
    };
  }
}
