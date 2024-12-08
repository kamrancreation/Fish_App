import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import '../models/gear_model.dart';

class GearService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // Create new gear
  Future<GearModel> createGear(GearModel gear, List<File>? images) async {
    // Upload images if provided
    List<String> imageUrls = [];
    if (images != null && images.isNotEmpty) {
      imageUrls = await Future.wait(
        images.map((file) => _uploadGearImage(file, gear.userId)),
      );
    }

    // Create gear with image URLs
    final gearWithImages = GearModel(
      id: gear.id,
      userId: gear.userId,
      name: gear.name,
      brand: gear.brand,
      model: gear.model,
      category: gear.category,
      specifications: gear.specifications,
      purchaseDate: gear.purchaseDate,
      purchasePrice: gear.purchasePrice,
      condition: gear.condition,
      notes: gear.notes,
      imageUrls: imageUrls,
      maintenanceLog: gear.maintenanceLog,
      performanceStats: gear.performanceStats,
      isActive: gear.isActive,
      favoriteSpecies: gear.favoriteSpecies,
      customAttributes: gear.customAttributes,
    );

    final docRef = await _firestore.collection('gear').add(gearWithImages.toMap());
    return gearWithImages.copyWith(id: docRef.id);
  }

  // Get gear by ID
  Future<GearModel> getGearById(String gearId) async {
    final doc = await _firestore.collection('gear').doc(gearId).get();
    if (!doc.exists) {
      throw Exception('Gear not found');
    }
    return GearModel.fromFirestore(doc);
  }

  // Get user's gear
  Future<List<GearModel>> getUserGear(String userId) async {
    final querySnapshot = await _firestore
        .collection('gear')
        .where('userId', isEqualTo: userId)
        .get();

    return querySnapshot.docs
        .map((doc) => GearModel.fromFirestore(doc))
        .toList();
  }

  // Update gear
  Future<void> updateGear(String gearId, GearModel gear, {List<File>? newImages}) async {
    List<String> updatedImageUrls = List.from(gear.imageUrls);

    if (newImages != null && newImages.isNotEmpty) {
      final newImageUrls = await Future.wait(
        newImages.map((file) => _uploadGearImage(file, gear.userId)),
      );
      updatedImageUrls.addAll(newImageUrls);
    }

    final updatedGear = gear.copyWith(imageUrls: updatedImageUrls);
    await _firestore.collection('gear').doc(gearId).update(updatedGear.toMap());
  }

  // Delete gear
  Future<void> deleteGear(String gearId) async {
    final gear = await getGearById(gearId);
    
    // Delete images from storage
    for (final imageUrl in gear.imageUrls) {
      try {
        final ref = _storage.refFromURL(imageUrl);
        await ref.delete();
      } catch (e) {
        print('Error deleting image: $e');
      }
    }

    // Delete gear document
    await _firestore.collection('gear').doc(gearId).delete();
  }

  // Add maintenance log entry
  Future<void> addMaintenanceLog(
    String gearId,
    DateTime date,
    String description,
    double? cost,
  ) async {
    final logEntry = {
      'date': Timestamp.fromDate(date),
      'description': description,
      'cost': cost,
    };

    await _firestore.collection('gear').doc(gearId).update({
      'maintenanceLog.${date.millisecondsSinceEpoch}': logEntry,
    });
  }

  // Update performance stats
  Future<void> updatePerformanceStats(
    String gearId,
    Map<String, dynamic> stats,
  ) async {
    await _firestore.collection('gear').doc(gearId).update({
      'performanceStats': FieldValue.arrayUnion([stats]),
    });
  }

  // Toggle gear active status
  Future<void> toggleGearStatus(String gearId, bool isActive) async {
    await _firestore.collection('gear').doc(gearId).update({
      'isActive': isActive,
    });
  }

  // Get gear by category
  Future<List<GearModel>> getGearByCategory(
    String userId,
    GearCategory category,
  ) async {
    final querySnapshot = await _firestore
        .collection('gear')
        .where('userId', isEqualTo: userId)
        .where('category', isEqualTo: category.toString().split('.').last)
        .get();

    return querySnapshot.docs
        .map((doc) => GearModel.fromFirestore(doc))
        .toList();
  }

  // Get active gear
  Future<List<GearModel>> getActiveGear(String userId) async {
    final querySnapshot = await _firestore
        .collection('gear')
        .where('userId', isEqualTo: userId)
        .where('isActive', isEqualTo: true)
        .get();

    return querySnapshot.docs
        .map((doc) => GearModel.fromFirestore(doc))
        .toList();
  }

  // Get gear statistics
  Future<Map<String, dynamic>> getGearStatistics(String userId) async {
    final gear = await getUserGear(userId);
    
    return {
      'totalGear': gear.length,
      'activeGear': gear.where((g) => g.isActive).length,
      'totalValue': gear.fold(0.0, (sum, g) => sum + g.purchasePrice),
      'categoryDistribution': _getCategoryDistribution(gear),
      'conditionDistribution': _getConditionDistribution(gear),
      'maintenanceCosts': _calculateMaintenanceCosts(gear),
      'topPerformers': _getTopPerformers(gear),
    };
  }

  // Helper method to upload gear image
  Future<String> _uploadGearImage(File image, String userId) async {
    final path = 'gear/$userId/${DateTime.now().millisecondsSinceEpoch}';
    final ref = _storage.ref().child(path);
    await ref.putFile(image);
    return await ref.getDownloadURL();
  }

  // Helper method to get category distribution
  Map<String, int> _getCategoryDistribution(List<GearModel> gear) {
    final distribution = <String, int>{};
    for (final item in gear) {
      final category = item.category.toString().split('.').last;
      distribution[category] = (distribution[category] ?? 0) + 1;
    }
    return distribution;
  }

  // Helper method to get condition distribution
  Map<String, int> _getConditionDistribution(List<GearModel> gear) {
    final distribution = <String, int>{};
    for (final item in gear) {
      final condition = item.condition.toString().split('.').last;
      distribution[condition] = (distribution[condition] ?? 0) + 1;
    }
    return distribution;
  }

  // Helper method to calculate maintenance costs
  Map<String, double> _calculateMaintenanceCosts(List<GearModel> gear) {
    final costs = <String, double>{};
    for (final item in gear) {
      double totalCost = 0;
      for (final log in item.maintenanceLog.values) {
        if (log['cost'] != null) {
          totalCost += (log['cost'] as num).toDouble();
        }
      }
      costs[item.id] = totalCost;
    }
    return costs;
  }

  // Helper method to get top performing gear
  List<GearModel> _getTopPerformers(List<GearModel> gear) {
    final performers = List<GearModel>.from(gear);
    performers.sort((a, b) {
      final aScore = _calculatePerformanceScore(a);
      final bScore = _calculatePerformanceScore(b);
      return bScore.compareTo(aScore);
    });
    return performers.take(5).toList();
  }

  // Helper method to calculate performance score
  double _calculatePerformanceScore(GearModel gear) {
    double score = 0;
    final stats = gear.performanceStats;
    
    if (stats.containsKey('catches')) {
      score += (stats['catches'] as num).toDouble() * 2;
    }
    if (stats.containsKey('successRate')) {
      score += (stats['successRate'] as num).toDouble() * 5;
    }
    if (stats.containsKey('avgWeight')) {
      score += (stats['avgWeight'] as num).toDouble();
    }
    
    return score;
  }
}
