import 'freshwater_species.dart';
import 'saltwater_species.dart';

class FishSpecies {
  final String id;
  final String name;
  final String scientificName;
  final String description;
  final String habitat;
  final String behavior;
  final String bestBait;
  final String bestTime;
  final String imageUrl;
  final Map<String, String> regulations;
  final List<String> commonLocations;
  final Map<String, double> typicalSize;
  final Map<String, String> seasonalPatterns;
  final String category; // 'freshwater' or 'saltwater'
  final String family;   // e.g., 'bass', 'trout', 'tuna'
  final List<String> techniques; // fishing techniques that work well

  FishSpecies({
    required this.id,
    required this.name,
    required this.scientificName,
    required this.description,
    required this.habitat,
    required this.behavior,
    required this.bestBait,
    required this.bestTime,
    required this.imageUrl,
    required this.regulations,
    required this.commonLocations,
    required this.typicalSize,
    required this.seasonalPatterns,
    required this.category,
    required this.family,
    required this.techniques,
  });

  factory FishSpecies.fromJson(Map<String, dynamic> json) {
    return FishSpecies(
      id: json['id'],
      name: json['name'],
      scientificName: json['scientificName'],
      description: json['description'],
      habitat: json['habitat'],
      behavior: json['behavior'],
      bestBait: json['bestBait'],
      bestTime: json['bestTime'],
      imageUrl: json['imageUrl'],
      regulations: Map<String, String>.from(json['regulations']),
      commonLocations: List<String>.from(json['commonLocations']),
      typicalSize: Map<String, double>.from(json['typicalSize']),
      seasonalPatterns: Map<String, String>.from(json['seasonalPatterns']),
      category: json['category'],
      family: json['family'],
      techniques: List<String>.from(json['techniques']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'scientificName': scientificName,
      'description': description,
      'habitat': habitat,
      'behavior': behavior,
      'bestBait': bestBait,
      'bestTime': bestTime,
      'imageUrl': imageUrl,
      'regulations': regulations,
      'commonLocations': commonLocations,
      'typicalSize': typicalSize,
      'seasonalPatterns': seasonalPatterns,
      'category': category,
      'family': family,
      'techniques': techniques,
    };
  }

  bool isFreshwater() => category == 'freshwater';
  bool isSaltwater() => category == 'saltwater';

  static List<FishSpecies> getByFamily(String familyName) {
    return allSpecies.where((species) => species.family == familyName).toList();
  }

  static List<FishSpecies> getByTechnique(String technique) {
    return allSpecies.where((species) => species.techniques.contains(technique)).toList();
  }
}

final List<FishSpecies> allSpecies = [
  ...freshwaterSpecies,
  ...saltwaterSpecies,
];

final List<String> fishingTechniques = [
  'Casting',
  'Trolling',
  'Fly Fishing',
  'Bottom Fishing',
  'Jigging',
  'Drift Fishing',
  'Surf Fishing',
  'Ice Fishing',
  'Topwater',
  'Drop Shot',
  'Carolina Rig',
  'Texas Rig',
  'Vertical Jigging',
  'Sight Fishing',
  'Noodling',
  'Spearfishing',
];

final List<String> fishFamilies = [
  'Bass',
  'Trout',
  'Pike',
  'Panfish',
  'Catfish',
  'Tuna',
  'Grouper',
  'Snapper',
  'Mackerel',
  'Flounder',
  'Salmon',
  'Carp',
  'Walleye',
  'Perch',
  'Drum',
];
