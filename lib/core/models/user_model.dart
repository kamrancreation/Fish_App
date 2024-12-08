import 'package:cloud_firestore/cloud_firestore.dart';

enum SubscriptionTier { free, basic, pro }

class UserModel {
  final String id;
  final String email;
  final String displayName;
  final String? photoUrl;
  final String? location;
  final DateTime joinDate;
  final SubscriptionTier subscriptionTier;
  final List<String> emergencyContacts;
  final Map<String, dynamic> preferences;
  final List<String> achievements;
  final int totalCatches;
  final int tournamentsWon;
  final double totalPoints;
  final bool isVerified;

  UserModel({
    required this.id,
    required this.email,
    required this.displayName,
    this.photoUrl,
    this.location,
    required this.joinDate,
    this.subscriptionTier = SubscriptionTier.free,
    this.emergencyContacts = const [],
    this.preferences = const {},
    this.achievements = const [],
    this.totalCatches = 0,
    this.tournamentsWon = 0,
    this.totalPoints = 0,
    this.isVerified = false,
  });

  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserModel(
      id: doc.id,
      email: data['email'] ?? '',
      displayName: data['displayName'] ?? '',
      photoUrl: data['photoUrl'],
      location: data['location'],
      joinDate: (data['joinDate'] as Timestamp).toDate(),
      subscriptionTier: SubscriptionTier.values.firstWhere(
        (e) => e.toString() == 'SubscriptionTier.${data['subscriptionTier']}',
        orElse: () => SubscriptionTier.free,
      ),
      emergencyContacts: List<String>.from(data['emergencyContacts'] ?? []),
      preferences: Map<String, dynamic>.from(data['preferences'] ?? {}),
      achievements: List<String>.from(data['achievements'] ?? []),
      totalCatches: data['totalCatches'] ?? 0,
      tournamentsWon: data['tournamentsWon'] ?? 0,
      totalPoints: (data['totalPoints'] ?? 0).toDouble(),
      isVerified: data['isVerified'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'displayName': displayName,
      'photoUrl': photoUrl,
      'location': location,
      'joinDate': Timestamp.fromDate(joinDate),
      'subscriptionTier': subscriptionTier.toString().split('.').last,
      'emergencyContacts': emergencyContacts,
      'preferences': preferences,
      'achievements': achievements,
      'totalCatches': totalCatches,
      'tournamentsWon': tournamentsWon,
      'totalPoints': totalPoints,
      'isVerified': isVerified,
    };
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? displayName,
    String? photoUrl,
    String? location,
    DateTime? joinDate,
    SubscriptionTier? subscriptionTier,
    List<String>? emergencyContacts,
    Map<String, dynamic>? preferences,
    List<String>? achievements,
    int? totalCatches,
    int? tournamentsWon,
    double? totalPoints,
    bool? isVerified,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      location: location ?? this.location,
      joinDate: joinDate ?? this.joinDate,
      subscriptionTier: subscriptionTier ?? this.subscriptionTier,
      emergencyContacts: emergencyContacts ?? this.emergencyContacts,
      preferences: preferences ?? this.preferences,
      achievements: achievements ?? this.achievements,
      totalCatches: totalCatches ?? this.totalCatches,
      tournamentsWon: tournamentsWon ?? this.tournamentsWon,
      totalPoints: totalPoints ?? this.totalPoints,
      isVerified: isVerified ?? this.isVerified,
    );
  }
}
