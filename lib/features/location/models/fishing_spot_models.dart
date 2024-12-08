import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

enum SpotType {
  lake,
  river,
  ocean,
  pond,
  stream,
  dock,
  pier,
  beach,
  reef,
  other
}

enum WaterCondition { clear, murky, choppy, calm, rough, unknown }

enum AccessType { public, private, membersOnly, permitRequired, restricted }

class FishingSpot extends Equatable {
  final String id;
  final String name;
  final LatLng location;
  final SpotType type;
  final String createdBy;
  final DateTime createdAt;
  final bool isPublic;
  final SpotMetadata metadata;
  final List<String> images;
  final List<String> tags;
  final double rating;
  final int reviewCount;
  final SpotStatistics statistics;
  final List<String> bestSeasons;
  final AccessType accessType;
  final SpotRegulations regulations;

  const FishingSpot({
    required this.id,
    required this.name,
    required this.location,
    required this.type,
    required this.createdBy,
    required this.createdAt,
    required this.isPublic,
    required this.metadata,
    this.images = const [],
    this.tags = const [],
    this.rating = 0.0,
    this.reviewCount = 0,
    required this.statistics,
    this.bestSeasons = const [],
    required this.accessType,
    required this.regulations,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        location,
        type,
        createdBy,
        createdAt,
        isPublic,
        metadata,
        images,
        tags,
        rating,
        reviewCount,
        statistics,
        bestSeasons,
        accessType,
        regulations,
      ];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'location': {
        'latitude': location.latitude,
        'longitude': location.longitude,
      },
      'type': type.toString(),
      'createdBy': createdBy,
      'createdAt': createdAt.toIso8601String(),
      'isPublic': isPublic,
      'metadata': metadata.toJson(),
      'images': images,
      'tags': tags,
      'rating': rating,
      'reviewCount': reviewCount,
      'statistics': statistics.toJson(),
      'bestSeasons': bestSeasons,
      'accessType': accessType.toString(),
      'regulations': regulations.toJson(),
    };
  }

  factory FishingSpot.fromJson(Map<String, dynamic> json) {
    return FishingSpot(
      id: json['id'] as String,
      name: json['name'] as String,
      location: LatLng(
        json['location']['latitude'] as double,
        json['location']['longitude'] as double,
      ),
      type: SpotType.values.firstWhere(
        (e) => e.toString() == json['type'],
      ),
      createdBy: json['createdBy'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isPublic: json['isPublic'] as bool,
      metadata: SpotMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      images: List<String>.from(json['images'] as List),
      tags: List<String>.from(json['tags'] as List),
      rating: json['rating'] as double,
      reviewCount: json['reviewCount'] as int,
      statistics:
          SpotStatistics.fromJson(json['statistics'] as Map<String, dynamic>),
      bestSeasons: List<String>.from(json['bestSeasons'] as List),
      accessType: AccessType.values.firstWhere(
        (e) => e.toString() == json['accessType'],
      ),
      regulations:
          SpotRegulations.fromJson(json['regulations'] as Map<String, dynamic>),
    );
  }

  FishingSpot copyWith({
    String? id,
    String? name,
    LatLng? location,
    SpotType? type,
    String? createdBy,
    DateTime? createdAt,
    bool? isPublic,
    SpotMetadata? metadata,
    List<String>? images,
    List<String>? tags,
    double? rating,
    int? reviewCount,
    SpotStatistics? statistics,
    List<String>? bestSeasons,
    AccessType? accessType,
    SpotRegulations? regulations,
  }) {
    return FishingSpot(
      id: id ?? this.id,
      name: name ?? this.name,
      location: location ?? this.location,
      type: type ?? this.type,
      createdBy: createdBy ?? this.createdBy,
      createdAt: createdAt ?? this.createdAt,
      isPublic: isPublic ?? this.isPublic,
      metadata: metadata ?? this.metadata,
      images: images ?? this.images,
      tags: tags ?? this.tags,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      statistics: statistics ?? this.statistics,
      bestSeasons: bestSeasons ?? this.bestSeasons,
      accessType: accessType ?? this.accessType,
      regulations: regulations ?? this.regulations,
    );
  }
}

class SpotMetadata extends Equatable {
  final double depth;
  final WaterCondition waterCondition;
  final List<String> commonSpecies;
  final List<String> techniques;
  final String? bottomStructure;
  final Map<String, dynamic> waterParameters;
  final String? notes;
  final List<String> amenities;
  final bool hasBoatLaunch;
  final bool hasDock;
  final bool hasParking;
  final bool isWadeable;

  const SpotMetadata({
    required this.depth,
    required this.waterCondition,
    this.commonSpecies = const [],
    this.techniques = const [],
    this.bottomStructure,
    this.waterParameters = const {},
    this.notes,
    this.amenities = const [],
    this.hasBoatLaunch = false,
    this.hasDock = false,
    this.hasParking = false,
    this.isWadeable = false,
  });

  @override
  List<Object?> get props => [
        depth,
        waterCondition,
        commonSpecies,
        techniques,
        bottomStructure,
        waterParameters,
        notes,
        amenities,
        hasBoatLaunch,
        hasDock,
        hasParking,
        isWadeable,
      ];

  Map<String, dynamic> toJson() {
    return {
      'depth': depth,
      'waterCondition': waterCondition.toString(),
      'commonSpecies': commonSpecies,
      'techniques': techniques,
      'bottomStructure': bottomStructure,
      'waterParameters': waterParameters,
      'notes': notes,
      'amenities': amenities,
      'hasBoatLaunch': hasBoatLaunch,
      'hasDock': hasDock,
      'hasParking': hasParking,
      'isWadeable': isWadeable,
    };
  }

  factory SpotMetadata.fromJson(Map<String, dynamic> json) {
    return SpotMetadata(
      depth: json['depth'] as double,
      waterCondition: WaterCondition.values.firstWhere(
        (e) => e.toString() == json['waterCondition'],
      ),
      commonSpecies: List<String>.from(json['commonSpecies'] as List),
      techniques: List<String>.from(json['techniques'] as List),
      bottomStructure: json['bottomStructure'] as String?,
      waterParameters: json['waterParameters'] as Map<String, dynamic>,
      notes: json['notes'] as String?,
      amenities: List<String>.from(json['amenities'] as List),
      hasBoatLaunch: json['hasBoatLaunch'] as bool,
      hasDock: json['hasDock'] as bool,
      hasParking: json['hasParking'] as bool,
      isWadeable: json['isWadeable'] as bool,
    );
  }
}

class SpotStatistics extends Equatable {
  final Map<String, int> catchesBySpecies;
  final Map<String, double> averageSizeBySpecies;
  final Map<String, List<String>> bestTimesBySpecies;
  final Map<String, List<String>> bestConditionsBySpecies;
  final int totalCatches;
  final int totalVisits;
  final DateTime? lastCatchDate;
  final DateTime? lastVisitDate;

  const SpotStatistics({
    this.catchesBySpecies = const {},
    this.averageSizeBySpecies = const {},
    this.bestTimesBySpecies = const {},
    this.bestConditionsBySpecies = const {},
    this.totalCatches = 0,
    this.totalVisits = 0,
    this.lastCatchDate,
    this.lastVisitDate,
  });

  @override
  List<Object?> get props => [
        catchesBySpecies,
        averageSizeBySpecies,
        bestTimesBySpecies,
        bestConditionsBySpecies,
        totalCatches,
        totalVisits,
        lastCatchDate,
        lastVisitDate,
      ];

  Map<String, dynamic> toJson() {
    return {
      'catchesBySpecies': catchesBySpecies,
      'averageSizeBySpecies': averageSizeBySpecies,
      'bestTimesBySpecies': bestTimesBySpecies,
      'bestConditionsBySpecies': bestConditionsBySpecies,
      'totalCatches': totalCatches,
      'totalVisits': totalVisits,
      'lastCatchDate': lastCatchDate?.toIso8601String(),
      'lastVisitDate': lastVisitDate?.toIso8601String(),
    };
  }

  factory SpotStatistics.fromJson(Map<String, dynamic> json) {
    return SpotStatistics(
      catchesBySpecies: Map<String, int>.from(json['catchesBySpecies'] as Map),
      averageSizeBySpecies:
          Map<String, double>.from(json['averageSizeBySpecies'] as Map),
      bestTimesBySpecies: Map<String, List<String>>.from(
        (json['bestTimesBySpecies'] as Map).map(
          (key, value) => MapEntry(key, List<String>.from(value as List)),
        ),
      ),
      bestConditionsBySpecies: Map<String, List<String>>.from(
        (json['bestConditionsBySpecies'] as Map).map(
          (key, value) => MapEntry(key, List<String>.from(value as List)),
        ),
      ),
      totalCatches: json['totalCatches'] as int,
      totalVisits: json['totalVisits'] as int,
      lastCatchDate: json['lastCatchDate'] != null
          ? DateTime.parse(json['lastCatchDate'] as String)
          : null,
      lastVisitDate: json['lastVisitDate'] != null
          ? DateTime.parse(json['lastVisitDate'] as String)
          : null,
    );
  }
}

class SpotRegulations extends Equatable {
  final List<String> licenses;
  final List<String> permits;
  final Map<String, String> seasonalRestrictions;
  final Map<String, List<String>> speciesRestrictions;
  final List<String> methodRestrictions;
  final String? specialNotes;

  const SpotRegulations({
    this.licenses = const [],
    this.permits = const [],
    this.seasonalRestrictions = const {},
    this.speciesRestrictions = const {},
    this.methodRestrictions = const [],
    this.specialNotes,
  });

  @override
  List<Object?> get props => [
        licenses,
        permits,
        seasonalRestrictions,
        speciesRestrictions,
        methodRestrictions,
        specialNotes,
      ];

  Map<String, dynamic> toJson() {
    return {
      'licenses': licenses,
      'permits': permits,
      'seasonalRestrictions': seasonalRestrictions,
      'speciesRestrictions': speciesRestrictions,
      'methodRestrictions': methodRestrictions,
      'specialNotes': specialNotes,
    };
  }

  factory SpotRegulations.fromJson(Map<String, dynamic> json) {
    return SpotRegulations(
      licenses: List<String>.from(json['licenses'] as List),
      permits: List<String>.from(json['permits'] as List),
      seasonalRestrictions:
          Map<String, String>.from(json['seasonalRestrictions'] as Map),
      speciesRestrictions: Map<String, List<String>>.from(
        (json['speciesRestrictions'] as Map).map(
          (key, value) => MapEntry(key, List<String>.from(value as List)),
        ),
      ),
      methodRestrictions: List<String>.from(json['methodRestrictions'] as List),
      specialNotes: json['specialNotes'] as String?,
    );
  }
}
