import 'package:cloud_firestore/cloud_firestore.dart';

enum GearCategory {
  rod,
  reel,
  line,
  lure,
  bait,
  hook,
  sinker,
  float,
  accessory,
  electronics,
  other
}

enum GearCondition { new_, excellent, good, fair, poor }

class GearModel {
  final String id;
  final String userId;
  final String name;
  final String brand;
  final String model;
  final GearCategory category;
  final Map<String, dynamic> specifications;
  final DateTime purchaseDate;
  final double purchasePrice;
  final GearCondition condition;
  final String? notes;
  final List<String> imageUrls;
  final Map<String, dynamic> maintenanceLog;
  final Map<String, dynamic> performanceStats;
  final bool isActive;
  final List<String> favoriteSpecies;
  final Map<String, dynamic> customAttributes;

  GearModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.brand,
    required this.model,
    required this.category,
    this.specifications = const {},
    required this.purchaseDate,
    required this.purchasePrice,
    this.condition = GearCondition.good,
    this.notes,
    this.imageUrls = const [],
    this.maintenanceLog = const {},
    this.performanceStats = const {},
    this.isActive = true,
    this.favoriteSpecies = const [],
    this.customAttributes = const {},
  });

  factory GearModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return GearModel(
      id: doc.id,
      userId: data['userId'] ?? '',
      name: data['name'] ?? '',
      brand: data['brand'] ?? '',
      model: data['model'] ?? '',
      category: GearCategory.values.firstWhere(
        (e) => e.toString() == 'GearCategory.${data['category']}',
        orElse: () => GearCategory.other,
      ),
      specifications: Map<String, dynamic>.from(data['specifications'] ?? {}),
      purchaseDate: (data['purchaseDate'] as Timestamp).toDate(),
      purchasePrice: (data['purchasePrice'] ?? 0).toDouble(),
      condition: GearCondition.values.firstWhere(
        (e) => e.toString() == 'GearCondition.${data['condition']}',
        orElse: () => GearCondition.good,
      ),
      notes: data['notes'],
      imageUrls: List<String>.from(data['imageUrls'] ?? []),
      maintenanceLog: Map<String, dynamic>.from(data['maintenanceLog'] ?? {}),
      performanceStats: Map<String, dynamic>.from(data['performanceStats'] ?? {}),
      isActive: data['isActive'] ?? true,
      favoriteSpecies: List<String>.from(data['favoriteSpecies'] ?? []),
      customAttributes: Map<String, dynamic>.from(data['customAttributes'] ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      'brand': brand,
      'model': model,
      'category': category.toString().split('.').last,
      'specifications': specifications,
      'purchaseDate': Timestamp.fromDate(purchaseDate),
      'purchasePrice': purchasePrice,
      'condition': condition.toString().split('.').last,
      'notes': notes,
      'imageUrls': imageUrls,
      'maintenanceLog': maintenanceLog,
      'performanceStats': performanceStats,
      'isActive': isActive,
      'favoriteSpecies': favoriteSpecies,
      'customAttributes': customAttributes,
    };
  }

  GearModel copyWith({
    String? id,
    String? userId,
    String? name,
    String? brand,
    String? model,
    GearCategory? category,
    Map<String, dynamic>? specifications,
    DateTime? purchaseDate,
    double? purchasePrice,
    GearCondition? condition,
    String? notes,
    List<String>? imageUrls,
    Map<String, dynamic>? maintenanceLog,
    Map<String, dynamic>? performanceStats,
    bool? isActive,
    List<String>? favoriteSpecies,
    Map<String, dynamic>? customAttributes,
  }) {
    return GearModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      brand: brand ?? this.brand,
      model: model ?? this.model,
      category: category ?? this.category,
      specifications: specifications ?? this.specifications,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      condition: condition ?? this.condition,
      notes: notes ?? this.notes,
      imageUrls: imageUrls ?? this.imageUrls,
      maintenanceLog: maintenanceLog ?? this.maintenanceLog,
      performanceStats: performanceStats ?? this.performanceStats,
      isActive: isActive ?? this.isActive,
      favoriteSpecies: favoriteSpecies ?? this.favoriteSpecies,
      customAttributes: customAttributes ?? this.customAttributes,
    );
  }
}
