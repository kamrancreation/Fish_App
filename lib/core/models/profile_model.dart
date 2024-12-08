import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile {
  final String id;
  final String displayName;
  final String? photoURL;
  final String? bio;
  final String? location;
  final Map<String, dynamic> preferences;
  final Map<String, dynamic> stats;
  final List<String> badges;
  final List<String> following;
  final List<String> followers;
  final DateTime createdAt;
  final DateTime lastActive;
  final Map<String, dynamic> settings;

  UserProfile({
    required this.id,
    required this.displayName,
    this.photoURL,
    this.bio,
    this.location,
    required this.preferences,
    required this.stats,
    required this.badges,
    required this.following,
    required this.followers,
    required this.createdAt,
    required this.lastActive,
    required this.settings,
  });

  factory UserProfile.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserProfile(
      id: doc.id,
      displayName: data['displayName'] ?? '',
      photoURL: data['photoURL'],
      bio: data['bio'],
      location: data['location'],
      preferences: Map<String, dynamic>.from(data['preferences'] ?? {}),
      stats: Map<String, dynamic>.from(data['stats'] ?? {}),
      badges: List<String>.from(data['badges'] ?? []),
      following: List<String>.from(data['following'] ?? []),
      followers: List<String>.from(data['followers'] ?? []),
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      lastActive: (data['lastActive'] as Timestamp).toDate(),
      settings: Map<String, dynamic>.from(data['settings'] ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'displayName': displayName,
      'photoURL': photoURL,
      'bio': bio,
      'location': location,
      'preferences': preferences,
      'stats': stats,
      'badges': badges,
      'following': following,
      'followers': followers,
      'createdAt': Timestamp.fromDate(createdAt),
      'lastActive': Timestamp.fromDate(lastActive),
      'settings': settings,
    };
  }

  UserProfile copyWith({
    String? displayName,
    String? photoURL,
    String? bio,
    String? location,
    Map<String, dynamic>? preferences,
    Map<String, dynamic>? stats,
    List<String>? badges,
    List<String>? following,
    List<String>? followers,
    DateTime? lastActive,
    Map<String, dynamic>? settings,
  }) {
    return UserProfile(
      id: id,
      displayName: displayName ?? this.displayName,
      photoURL: photoURL ?? this.photoURL,
      bio: bio ?? this.bio,
      location: location ?? this.location,
      preferences: preferences ?? this.preferences,
      stats: stats ?? this.stats,
      badges: badges ?? this.badges,
      following: following ?? this.following,
      followers: followers ?? this.followers,
      createdAt: createdAt,
      lastActive: lastActive ?? this.lastActive,
      settings: settings ?? this.settings,
    );
  }

  // Helper methods for profile statistics
  int get totalCatches => stats['totalCatches'] ?? 0;
  int get totalPosts => stats['totalPosts'] ?? 0;
  int get totalEvents => stats['totalEvents'] ?? 0;
  int get totalClubs => stats['totalClubs'] ?? 0;
  double get averageRating => stats['averageRating'] ?? 0.0;
  
  // Helper methods for preferences
  List<String> get favoriteSpecies => 
      List<String>.from(preferences['favoriteSpecies'] ?? []);
  List<String> get preferredLocations => 
      List<String>.from(preferences['preferredLocations'] ?? []);
  List<String> get favoriteGear => 
      List<String>.from(preferences['favoriteGear'] ?? []);
  
  // Helper methods for settings
  bool get isPrivateProfile => settings['isPrivateProfile'] ?? false;
  bool get showLocation => settings['showLocation'] ?? true;
  bool get allowMessages => settings['allowMessages'] ?? true;
  bool get notifyNewFollowers => settings['notifyNewFollowers'] ?? true;
}
