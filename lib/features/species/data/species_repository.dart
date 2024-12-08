import 'package:cloud_firestore/cloud_firestore.dart';
import 'fish_database.dart';

class SpeciesRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collection = 'fish_species';

  // Get all species
  Future<List<FishSpecies>> getAllSpecies() async {
    try {
      final snapshot = await _firestore.collection(_collection).get();
      return snapshot.docs
          .map((doc) => FishSpecies.fromJson({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e) {
      // Fallback to local database if offline or error
      return commonFishSpecies;
    }
  }

  // Get species by ID
  Future<FishSpecies?> getSpeciesById(String id) async {
    try {
      final doc = await _firestore.collection(_collection).doc(id).get();
      if (doc.exists) {
        return FishSpecies.fromJson({...doc.data()!, 'id': doc.id});
      }
      return null;
    } catch (e) {
      // Fallback to local database
      return commonFishSpecies.firstWhere(
        (species) => species.id == id,
        orElse: () => throw Exception('Species not found'),
      );
    }
  }

  // Search species by name
  Future<List<FishSpecies>> searchSpecies(String query) async {
    try {
      final snapshot = await _firestore
          .collection(_collection)
          .where('name', isGreaterThanOrEqualTo: query)
          .where('name', isLessThan: '${query}z')
          .get();

      return snapshot.docs
          .map((doc) => FishSpecies.fromJson({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e) {
      // Fallback to local search
      final lowercaseQuery = query.toLowerCase();
      return commonFishSpecies
          .where((species) =>
              species.name.toLowerCase().contains(lowercaseQuery) ||
              species.scientificName.toLowerCase().contains(lowercaseQuery))
          .toList();
    }
  }

  // Get species by habitat
  Future<List<FishSpecies>> getSpeciesByHabitat(String habitat) async {
    try {
      final snapshot = await _firestore
          .collection(_collection)
          .where('habitat', arrayContains: habitat)
          .get();

      return snapshot.docs
          .map((doc) => FishSpecies.fromJson({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e) {
      // Fallback to local filtering
      return commonFishSpecies
          .where((species) =>
              species.habitat.toLowerCase().contains(habitat.toLowerCase()))
          .toList();
    }
  }

  // Get seasonal recommendations
  Future<List<FishSpecies>> getSeasonalRecommendations() async {
    final currentSeason = _getCurrentSeason();
    try {
      final snapshot = await _firestore
          .collection(_collection)
          .where('seasonalPatterns.$currentSeason', isNull: false)
          .get();

      return snapshot.docs
          .map((doc) => FishSpecies.fromJson({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e) {
      // Fallback to local seasonal recommendations
      return commonFishSpecies
          .where(
              (species) => species.seasonalPatterns.containsKey(currentSeason))
          .toList();
    }
  }

  String _getCurrentSeason() {
    final month = DateTime.now().month;
    if (month >= 3 && month <= 5) return 'spring';
    if (month >= 6 && month <= 8) return 'summer';
    if (month >= 9 && month <= 11) return 'fall';
    return 'winter';
  }
}
