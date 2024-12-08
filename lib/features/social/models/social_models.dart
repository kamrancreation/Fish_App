import 'package:cloud_firestore/cloud_firestore.dart';

class SocialPost {
  final String id;
  final String userId;
  final String content;
  final DateTime createdAt;
  final List<String> likes;
  final List<Comment> comments;
  final Map<String, dynamic>? metadata;

  SocialPost({
    required this.id,
    required this.userId,
    required this.content,
    required this.createdAt,
    this.likes = const [],
    this.comments = const [],
    this.metadata,
  });

  factory SocialPost.fromMap(Map<String, dynamic> map) {
    return SocialPost(
      id: map['id'] as String,
      userId: map['userId'] as String,
      content: map['content'] as String,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      likes: List<String>.from(map['likes'] ?? []),
      comments: (map['comments'] as List?)?.map((c) => Comment.fromMap(c)).toList() ?? [],
      metadata: map['metadata'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'content': content,
      'createdAt': Timestamp.fromDate(createdAt),
      'likes': likes,
      'comments': comments.map((c) => c.toMap()).toList(),
      'metadata': metadata,
    };
  }

  SocialPost copyWith({
    String? id,
    String? userId,
    String? content,
    DateTime? createdAt,
    List<String>? likes,
    List<Comment>? comments,
    Map<String, dynamic>? metadata,
  }) {
    return SocialPost(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      metadata: metadata ?? this.metadata,
    );
  }
}

class Comment {
  final String id;
  final String userId;
  final String content;
  final DateTime createdAt;
  final List<Comment> replies;
  final List<String> likes;

  Comment({
    required this.id,
    required this.userId,
    required this.content,
    required this.createdAt,
    this.replies = const [],
    this.likes = const [],
  });

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      id: map['id'] as String,
      userId: map['userId'] as String,
      content: map['content'] as String,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      replies: (map['replies'] as List?)?.map((r) => Comment.fromMap(r)).toList() ?? [],
      likes: List<String>.from(map['likes'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'content': content,
      'createdAt': Timestamp.fromDate(createdAt),
      'replies': replies.map((r) => r.toMap()).toList(),
      'likes': likes,
    };
  }
}

class FishingClub {
  final String id;
  final String name;
  final String description;
  final String createdBy;
  final DateTime createdAt;
  final List<String> members;
  final Map<String, dynamic> settings;

  FishingClub({
    required this.id,
    required this.name,
    required this.description,
    required this.createdBy,
    required this.createdAt,
    this.members = const [],
    this.settings = const {},
  });

  factory FishingClub.fromMap(Map<String, dynamic> map) {
    return FishingClub(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      createdBy: map['createdBy'] as String,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      members: List<String>.from(map['members'] ?? []),
      settings: Map<String, dynamic>.from(map['settings'] ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'createdBy': createdBy,
      'createdAt': Timestamp.fromDate(createdAt),
      'members': members,
      'settings': settings,
    };
  }

  FishingClub copyWith({
    String? id,
    String? name,
    String? description,
    String? createdBy,
    DateTime? createdAt,
    List<String>? members,
    Map<String, dynamic>? settings,
  }) {
    return FishingClub(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      createdBy: createdBy ?? this.createdBy,
      createdAt: createdAt ?? this.createdAt,
      members: members ?? this.members,
      settings: settings ?? this.settings,
    );
  }
}
