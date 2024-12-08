class UserProfile {
  final String id;
  final String email;
  final String displayName;
  final String? photoUrl;
  final String? bio;
  final String? location;
  final UserStats stats;
  final DateTime createdAt;

  const UserProfile({
    required this.id,
    required this.email,
    required this.displayName,
    this.photoUrl,
    this.bio,
    this.location,
    required this.stats,
    required this.createdAt,
  });

  UserProfile copyWith({
    String? displayName,
    String? photoUrl,
    String? bio,
    String? location,
    UserStats? stats,
  }) {
    return UserProfile(
      id: id,
      email: email,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      bio: bio ?? this.bio,
      location: location ?? this.location,
      stats: stats ?? this.stats,
      createdAt: createdAt,
    );
  }
}

class UserStats {
  final int totalCatches;
  final double totalWeight;
  final int speciesCaught;
  final double biggestCatch;

  const UserStats({
    required this.totalCatches,
    required this.totalWeight,
    required this.speciesCaught,
    required this.biggestCatch,
  });

  UserStats copyWith({
    int? totalCatches,
    double? totalWeight,
    int? speciesCaught,
    double? biggestCatch,
  }) {
    return UserStats(
      totalCatches: totalCatches ?? this.totalCatches,
      totalWeight: totalWeight ?? this.totalWeight,
      speciesCaught: speciesCaught ?? this.speciesCaught,
      biggestCatch: biggestCatch ?? this.biggestCatch,
    );
  }
}
