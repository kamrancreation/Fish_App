import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String displayName;
  final String? photoUrl;
  final String? phoneNumber;
  final Map<String, dynamic>? preferences;
  final List<String> tournaments;
  final List<String> catches;
  final Map<String, dynamic>? stats;
  final Map<String, dynamic>? achievements;
  final bool isVerified;
  final String role;
  final DateTime createdAt;
  final DateTime updatedAt;

  const UserModel({
    required this.id,
    required this.email,
    required this.displayName,
    this.photoUrl,
    this.phoneNumber,
    this.preferences,
    required this.tournaments,
    required this.catches,
    this.stats,
    this.achievements,
    required this.isVerified,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        email,
        displayName,
        photoUrl,
        phoneNumber,
        preferences,
        tournaments,
        catches,
        stats,
        achievements,
        isVerified,
        role,
        createdAt,
        updatedAt,
      ];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'displayName': displayName,
      'photoUrl': photoUrl,
      'phoneNumber': phoneNumber,
      'preferences': preferences,
      'tournaments': tournaments,
      'catches': catches,
      'stats': stats,
      'achievements': achievements,
      'isVerified': isVerified,
      'role': role,
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      email: map['email'] as String,
      displayName: map['displayName'] as String,
      photoUrl: map['photoUrl'] as String?,
      phoneNumber: map['phoneNumber'] as String?,
      preferences: map['preferences'] as Map<String, dynamic>?,
      tournaments: List<String>.from(map['tournaments'] as List),
      catches: List<String>.from(map['catches'] as List),
      stats: map['stats'] as Map<String, dynamic>?,
      achievements: map['achievements'] as Map<String, dynamic>?,
      isVerified: map['isVerified'] as bool,
      role: map['role'] as String,
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      updatedAt: (map['updatedAt'] as Timestamp).toDate(),
    );
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? displayName,
    String? photoUrl,
    String? phoneNumber,
    Map<String, dynamic>? preferences,
    List<String>? tournaments,
    List<String>? catches,
    Map<String, dynamic>? stats,
    Map<String, dynamic>? achievements,
    bool? isVerified,
    String? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      preferences: preferences ?? this.preferences,
      tournaments: tournaments ?? this.tournaments,
      catches: catches ?? this.catches,
      stats: stats ?? this.stats,
      achievements: achievements ?? this.achievements,
      isVerified: isVerified ?? this.isVerified,
      role: role ?? this.role,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  static UserModel empty() {
    return UserModel(
      id: '',
      email: '',
      displayName: '',
      tournaments: const [],
      catches: const [],
      isVerified: false,
      role: 'user',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  bool get isAdmin => role == 'admin';
  bool get isModerator => role == 'moderator';
  bool get isBasicUser => role == 'user';
}
