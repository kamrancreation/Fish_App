import 'package:flutter/foundation.dart';

enum NotificationType {
  tournamentStart,
  tournamentEnd,
  newCatch,
  leaderboardUpdate,
  prizeAwarded,
  disqualification,
  invitation,
  reminder,
  verification,
  announcement,
}

class TournamentNotification {
  final String id;
  final String tournamentId;
  final String? userId;
  final NotificationType type;
  final String title;
  final String message;
  final Map<String, dynamic>? data;
  final DateTime timestamp;
  final bool isRead;
  final String? imageUrl;
  final String? actionUrl;

  const TournamentNotification({
    required this.id,
    required this.tournamentId,
    this.userId,
    required this.type,
    required this.title,
    required this.message,
    this.data,
    required this.timestamp,
    this.isRead = false,
    this.imageUrl,
    this.actionUrl,
  });

  factory TournamentNotification.fromJson(Map<String, dynamic> json) {
    return TournamentNotification(
      id: json['id'] as String,
      tournamentId: json['tournamentId'] as String,
      userId: json['userId'] as String?,
      type: NotificationType.values.firstWhere(
        (e) => e.toString() == 'NotificationType.${json['type']}',
      ),
      title: json['title'] as String,
      message: json['message'] as String,
      data: json['data'] as Map<String, dynamic>?,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isRead: json['isRead'] as bool? ?? false,
      imageUrl: json['imageUrl'] as String?,
      actionUrl: json['actionUrl'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tournamentId': tournamentId,
      'userId': userId,
      'type': type.toString().split('.').last,
      'title': title,
      'message': message,
      'data': data,
      'timestamp': timestamp.toIso8601String(),
      'isRead': isRead,
      'imageUrl': imageUrl,
      'actionUrl': actionUrl,
    };
  }

  TournamentNotification copyWith({
    String? id,
    String? tournamentId,
    String? userId,
    NotificationType? type,
    String? title,
    String? message,
    Map<String, dynamic>? data,
    DateTime? timestamp,
    bool? isRead,
    String? imageUrl,
    String? actionUrl,
  }) {
    return TournamentNotification(
      id: id ?? this.id,
      tournamentId: tournamentId ?? this.tournamentId,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      title: title ?? this.title,
      message: message ?? this.message,
      data: data ?? this.data,
      timestamp: timestamp ?? this.timestamp,
      isRead: isRead ?? this.isRead,
      imageUrl: imageUrl ?? this.imageUrl,
      actionUrl: actionUrl ?? this.actionUrl,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TournamentNotification &&
        other.id == id &&
        other.tournamentId == tournamentId &&
        other.userId == userId &&
        other.type == type &&
        other.title == title &&
        other.message == message &&
        mapEquals(other.data, data) &&
        other.timestamp == timestamp &&
        other.isRead == isRead &&
        other.imageUrl == imageUrl &&
        other.actionUrl == actionUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        tournamentId.hashCode ^
        userId.hashCode ^
        type.hashCode ^
        title.hashCode ^
        message.hashCode ^
        data.hashCode ^
        timestamp.hashCode ^
        isRead.hashCode ^
        imageUrl.hashCode ^
        actionUrl.hashCode;
  }
}
