enum SpotType {
  lake,
  river,
  ocean,
  pond,
  stream,
  other,
}

class SpotData {
  final String? id;
  final String name;
  final String description;
  final double latitude;
  final double longitude;
  final SpotType type;
  final List<String> features;
  final String bestTimeToFish;
  final List<String> commonSpecies;
  final List<String> photos;
  final List<String> newPhotos;
  final bool isPublic;
  final double rating;
  final int ratingCount;
  final String? userId;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const SpotData({
    this.id,
    required this.name,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.type,
    required this.features,
    required this.bestTimeToFish,
    required this.commonSpecies,
    required this.photos,
    this.newPhotos = const [],
    required this.isPublic,
    this.rating = 0.0,
    this.ratingCount = 0,
    this.userId,
    required this.createdAt,
    this.updatedAt,
  });

  SpotData copyWith({
    String? name,
    String? description,
    SpotType? type,
    List<String>? features,
    String? bestTimeToFish,
    List<String>? commonSpecies,
    List<String>? photos,
    List<String>? newPhotos,
    bool? isPublic,
    double? rating,
    int? ratingCount,
  }) {
    return SpotData(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      latitude: latitude,
      longitude: longitude,
      type: type ?? this.type,
      features: features ?? this.features,
      bestTimeToFish: bestTimeToFish ?? this.bestTimeToFish,
      commonSpecies: commonSpecies ?? this.commonSpecies,
      photos: photos ?? this.photos,
      newPhotos: newPhotos ?? this.newPhotos,
      isPublic: isPublic ?? this.isPublic,
      rating: rating ?? this.rating,
      ratingCount: ratingCount ?? this.ratingCount,
      userId: userId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
