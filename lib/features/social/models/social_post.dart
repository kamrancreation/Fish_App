import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

enum PostPrivacy {
  public,
  friends,
  clubMembers,
  private,
}

enum PostType {
  text,
  photo,
  video,
  @JsonValue('catch')
  fishCatch,
  event,
  achievement,
  location,
  multiMedia,
}

@immutable
class SocialPost {
  final String id;
  final String userId;
  final String? clubId;
  final PostType type;
  final PostPrivacy privacy;
  final String content;
  final List<String> mediaUrls;
  final Map<String, dynamic>? metadata;
  final List<String> hashtags;
  final List<String> mentions;
  final GeoPoint? location;
  final bool locationVisible;
  final Map<String, dynamic> stats;
  final DateTime createdAt;
  final DateTime? editedAt;

  const SocialPost({
    required this.id,
    required this.userId,
    this.clubId,
    required this.type,
    required this.privacy,
    required this.content,
    required this.mediaUrls,
    this.metadata,
    required this.hashtags,
    required this.mentions,
    this.location,
    required this.locationVisible,
    required this.stats,
    required this.createdAt,
    this.editedAt,
  });

  factory SocialPost.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return SocialPost(
      id: doc.id,
      userId: data['userId'] as String,
      clubId: data['clubId'] as String?,
      type: PostType.values.firstWhere(
        (e) => e.toString() == 'PostType.${data['type']}',
      ),
      privacy: PostPrivacy.values.firstWhere(
        (e) => e.toString() == 'PostPrivacy.${data['privacy']}',
      ),
      content: data['content'] as String,
      mediaUrls: List<String>.from(data['mediaUrls'] as List),
      metadata: data['metadata'] != null
          ? Map<String, dynamic>.from(data['metadata'] as Map)
          : null,
      hashtags: List<String>.from(data['hashtags'] as List),
      mentions: List<String>.from(data['mentions'] as List),
      location: data['location'] as GeoPoint?,
      locationVisible: data['locationVisible'] as bool,
      stats: Map<String, dynamic>.from(data['stats'] as Map),
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      editedAt: data['editedAt'] != null
          ? (data['editedAt'] as Timestamp).toDate()
          : null,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'userId': userId,
      'clubId': clubId,
      'type': type.toString().split('.').last,
      'privacy': privacy.toString().split('.').last,
      'content': content,
      'mediaUrls': mediaUrls,
      'metadata': metadata,
      'hashtags': hashtags,
      'mentions': mentions,
      'location': location,
      'locationVisible': locationVisible,
      'stats': stats,
      'createdAt': Timestamp.fromDate(createdAt),
      'editedAt': editedAt != null ? Timestamp.fromDate(editedAt!) : null,
    };
  }

  SocialPost copyWith({
    String? id,
    String? userId,
    String? clubId,
    PostType? type,
    PostPrivacy? privacy,
    String? content,
    List<String>? mediaUrls,
    Map<String, dynamic>? metadata,
    List<String>? hashtags,
    List<String>? mentions,
    GeoPoint? location,
    bool? locationVisible,
    Map<String, dynamic>? stats,
    DateTime? createdAt,
    DateTime? editedAt,
  }) {
    return SocialPost(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      clubId: clubId ?? this.clubId,
      type: type ?? this.type,
      privacy: privacy ?? this.privacy,
      content: content ?? this.content,
      mediaUrls: mediaUrls ?? this.mediaUrls,
      metadata: metadata ?? this.metadata,
      hashtags: hashtags ?? this.hashtags,
      mentions: mentions ?? this.mentions,
      location: location ?? this.location,
      locationVisible: locationVisible ?? this.locationVisible,
      stats: stats ?? this.stats,
      createdAt: createdAt ?? this.createdAt,
      editedAt: editedAt ?? this.editedAt,
    );
  }

  bool isEdited() => editedAt != null;

  bool hasMedia() => mediaUrls.isNotEmpty;

  bool hasCatchDetails() =>
      type == PostType.fishCatch && metadata != null && metadata!.containsKey('catch');

  bool hasEventDetails() =>
      type == PostType.event && metadata != null && metadata!.containsKey('event');

  bool hasAchievement() =>
      type == PostType.achievement &&
      metadata != null &&
      metadata!.containsKey('achievement');

  String getDisplayLocation() {
    if (!locationVisible || location == null) return '';
    return metadata?['locationName'] ?? 'Unknown Location';
  }

  List<String> getMentionedUserIds() {
    if (mentions.isEmpty) return [];
    return mentions
        .where((mention) => mention.startsWith('@'))
        .map((mention) => mention.substring(1))
        .toList();
  }

  Map<String, dynamic> getEngagementStats() {
    return {
      'likes': stats['likes'] ?? 0,
      'comments': stats['comments'] ?? 0,
      'shares': stats['shares'] ?? 0,
      'saves': stats['saves'] ?? 0,
    };
  }
}

@immutable
class PostComment {
  final String id;
  final String postId;
  final String userId;
  final String content;
  final List<String> mentions;
  final Map<String, dynamic> stats;
  final DateTime createdAt;
  final DateTime? editedAt;

  const PostComment({
    required this.id,
    required this.postId,
    required this.userId,
    required this.content,
    required this.mentions,
    required this.stats,
    required this.createdAt,
    this.editedAt,
  });

  factory PostComment.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return PostComment(
      id: doc.id,
      postId: data['postId'] as String,
      userId: data['userId'] as String,
      content: data['content'] as String,
      mentions: List<String>.from(data['mentions'] as List),
      stats: Map<String, dynamic>.from(data['stats'] as Map),
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      editedAt: data['editedAt'] != null
          ? (data['editedAt'] as Timestamp).toDate()
          : null,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'postId': postId,
      'userId': userId,
      'content': content,
      'mentions': mentions,
      'stats': stats,
      'createdAt': Timestamp.fromDate(createdAt),
      'editedAt': editedAt != null ? Timestamp.fromDate(editedAt!) : null,
    };
  }

  bool isEdited() => editedAt != null;

  List<String> getMentionedUserIds() {
    if (mentions.isEmpty) return [];
    return mentions
        .where((mention) => mention.startsWith('@'))
        .map((mention) => mention.substring(1))
        .toList();
  }
}
