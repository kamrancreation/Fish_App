class SpeciesModel {
  final String id;
  final String commonName;
  final String scientificName;
  final String description;
  final List<String> images;
  final Map<String, dynamic> characteristics;
  final Map<String, dynamic> habitat;
  final Map<String, dynamic> seasonalPatterns;
  final Map<String, dynamic> regulations;
  final String conservationStatus;
  final Map<String, dynamic> distribution;
  final Map<String, dynamic> catchLimits;

  SpeciesModel({
    required this.id,
    required this.commonName,
    required this.scientificName,
    required this.description,
    required this.images,
    required this.characteristics,
    required this.habitat,
    required this.seasonalPatterns,
    required this.regulations,
    required this.conservationStatus,
    required this.distribution,
    required this.catchLimits,
  });

  factory SpeciesModel.fromJson(Map<String, dynamic> json) {
    return SpeciesModel(
      id: json['id'] as String,
      commonName: json['commonName'] as String,
      scientificName: json['scientificName'] as String,
      description: json['description'] as String,
      images: List<String>.from(json['images'] as List),
      characteristics: json['characteristics'] as Map<String, dynamic>,
      habitat: json['habitat'] as Map<String, dynamic>,
      seasonalPatterns: json['seasonalPatterns'] as Map<String, dynamic>,
      regulations: json['regulations'] as Map<String, dynamic>,
      conservationStatus: json['conservationStatus'] as String,
      distribution: json['distribution'] as Map<String, dynamic>,
      catchLimits: json['catchLimits'] as Map<String, dynamic>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'commonName': commonName,
      'scientificName': scientificName,
      'description': description,
      'images': images,
      'characteristics': characteristics,
      'habitat': habitat,
      'seasonalPatterns': seasonalPatterns,
      'regulations': regulations,
      'conservationStatus': conservationStatus,
      'distribution': distribution,
      'catchLimits': catchLimits,
    };
  }

  // Helper method to get seasonal behavior for current time
  Map<String, dynamic> getCurrentSeasonalBehavior() {
    final now = DateTime.now();
    final month = now.month;
    final season = _getSeason(month);
    return seasonalPatterns[season] ?? {};
  }

  // Helper method to get current catch limits
  Map<String, dynamic> getCurrentCatchLimits(String location) {
    return catchLimits[location] ?? {};
  }

  // Helper method to check if fishing is allowed
  bool isFishingAllowed(String location, DateTime date) {
    final regionRegulations = regulations[location] as Map<String, dynamic>?;
    if (regionRegulations == null) return true;

    final closedSeasons = regionRegulations['closedSeasons'] as List?;
    if (closedSeasons == null) return true;

    final month = date.month;
    return !closedSeasons.contains(month);
  }

  // Helper method to determine season
  String _getSeason(int month) {
    if (month >= 3 && month <= 5) return 'spring';
    if (month >= 6 && month <= 8) return 'summer';
    if (month >= 9 && month <= 11) return 'fall';
    return 'winter';
  }

  // Helper method to get conservation recommendations
  List<String> getConservationRecommendations() {
    switch (conservationStatus.toLowerCase()) {
      case 'endangered':
        return [
          'Catch and release only',
          'Handle with extreme care',
          'Report sightings'
        ];
      case 'vulnerable':
        return ['Practice catch and release', 'Minimize handling time'];
      case 'near threatened':
        return ['Follow catch limits strictly', 'Consider catch and release'];
      default:
        return ['Follow local regulations', 'Practice sustainable fishing'];
    }
  }

  // Helper method to check if species is active
  bool isActiveTime(DateTime time) {
    final hour = time.hour;
    final activityPeriods = characteristics['activityPeriods'] as List?;
    if (activityPeriods == null) return true;

    for (final period in activityPeriods) {
      final start = period['start'] as int;
      final end = period['end'] as int;
      if (hour >= start && hour <= end) return true;
    }
    return false;
  }

  // Helper method to get habitat recommendations
  List<String> getHabitatRecommendations(Map<String, dynamic> conditions) {
    final recommendations = <String>[];
    final preferredDepth = habitat['preferredDepth'] as Map<String, dynamic>?;
    final waterTemp = conditions['waterTemperature'] as double?;
    final depth = conditions['depth'] as double?;

    if (preferredDepth != null && depth != null) {
      final minDepth = preferredDepth['min'] as double;
      final maxDepth = preferredDepth['max'] as double;
      if (depth < minDepth) {
        recommendations.add('Try fishing in deeper water');
      } else if (depth > maxDepth) {
        recommendations.add('Try fishing in shallower water');
      }
    }

    if (waterTemp != null) {
      final preferredTemp =
          habitat['preferredTemperature'] as Map<String, dynamic>?;
      if (preferredTemp != null) {
        final minTemp = preferredTemp['min'] as double;
        final maxTemp = preferredTemp['max'] as double;
        if (waterTemp < minTemp) {
          recommendations.add('Water might be too cold for optimal fishing');
        } else if (waterTemp > maxTemp) {
          recommendations.add('Water might be too warm for optimal fishing');
        }
      }
    }

    return recommendations;
  }
}
