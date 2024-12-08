import 'package:cloud_firestore/cloud_firestore.dart';

class SpeciesModel {
  final String id;
  final String commonName;
  final String scientificName;
  final String family;
  final List<String> imageUrls;
  final Map<String, String> localNames;
  final String description;
  final Map<String, dynamic> identificationFeatures;
  final Map<String, dynamic> habitatInfo;
  final Map<String, double> typicalSize;
  final Map<String, dynamic> regulations;
  final Map<String, List<String>> seasonalPatterns;
  final Map<String, dynamic> baitPreferences;
  final double confidenceThreshold;
  final bool isProtected;
  final List<String> similarSpecies;

  SpeciesModel({
    required this.id,
    required this.commonName,
    required this.scientificName,
    required this.family,
    this.imageUrls = const [],
    this.localNames = const {},
    required this.description,
    this.identificationFeatures = const {},
    this.habitatInfo = const {},
    this.typicalSize = const {},
    this.regulations = const {},
    this.seasonalPatterns = const {},
    this.baitPreferences = const {},
    this.confidenceThreshold = 0.85,
    this.isProtected = false,
    this.similarSpecies = const [],
  });

  factory SpeciesModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return SpeciesModel(
      id: doc.id,
      commonName: data['commonName'] ?? '',
      scientificName: data['scientificName'] ?? '',
      family: data['family'] ?? '',
      imageUrls: List<String>.from(data['imageUrls'] ?? []),
      localNames: Map<String, String>.from(data['localNames'] ?? {}),
      description: data['description'] ?? '',
      identificationFeatures: Map<String, dynamic>.from(data['identificationFeatures'] ?? {}),
      habitatInfo: Map<String, dynamic>.from(data['habitatInfo'] ?? {}),
      typicalSize: Map<String, double>.from(data['typicalSize'] ?? {}),
      regulations: Map<String, dynamic>.from(data['regulations'] ?? {}),
      seasonalPatterns: Map<String, List<String>>.from(
        (data['seasonalPatterns'] ?? {}).map(
          (key, value) => MapEntry(key, List<String>.from(value ?? [])),
        ),
      ),
      baitPreferences: Map<String, dynamic>.from(data['baitPreferences'] ?? {}),
      confidenceThreshold: (data['confidenceThreshold'] ?? 0.85).toDouble(),
      isProtected: data['isProtected'] ?? false,
      similarSpecies: List<String>.from(data['similarSpecies'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'commonName': commonName,
      'scientificName': scientificName,
      'family': family,
      'imageUrls': imageUrls,
      'localNames': localNames,
      'description': description,
      'identificationFeatures': identificationFeatures,
      'habitatInfo': habitatInfo,
      'typicalSize': typicalSize,
      'regulations': regulations,
      'seasonalPatterns': seasonalPatterns,
      'baitPreferences': baitPreferences,
      'confidenceThreshold': confidenceThreshold,
      'isProtected': isProtected,
      'similarSpecies': similarSpecies,
    };
  }

  SpeciesModel copyWith({
    String? id,
    String? commonName,
    String? scientificName,
    String? family,
    List<String>? imageUrls,
    Map<String, String>? localNames,
    String? description,
    Map<String, dynamic>? identificationFeatures,
    Map<String, dynamic>? habitatInfo,
    Map<String, double>? typicalSize,
    Map<String, dynamic>? regulations,
    Map<String, List<String>>? seasonalPatterns,
    Map<String, dynamic>? baitPreferences,
    double? confidenceThreshold,
    bool? isProtected,
    List<String>? similarSpecies,
  }) {
    return SpeciesModel(
      id: id ?? this.id,
      commonName: commonName ?? this.commonName,
      scientificName: scientificName ?? this.scientificName,
      family: family ?? this.family,
      imageUrls: imageUrls ?? this.imageUrls,
      localNames: localNames ?? this.localNames,
      description: description ?? this.description,
      identificationFeatures: identificationFeatures ?? this.identificationFeatures,
      habitatInfo: habitatInfo ?? this.habitatInfo,
      typicalSize: typicalSize ?? this.typicalSize,
      regulations: regulations ?? this.regulations,
      seasonalPatterns: seasonalPatterns ?? this.seasonalPatterns,
      baitPreferences: baitPreferences ?? this.baitPreferences,
      confidenceThreshold: confidenceThreshold ?? this.confidenceThreshold,
      isProtected: isProtected ?? this.isProtected,
      similarSpecies: similarSpecies ?? this.similarSpecies,
    );
  }
}
