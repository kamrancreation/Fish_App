import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/species_model.dart';

class SpeciesRepository {
  final FirebaseFirestore _firestore;
  final String _collection = 'species';

  SpeciesRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<List<SpeciesModel>> getAllSpecies() async {
    try {
      final snapshot = await _firestore.collection(_collection).get();
      return snapshot.docs
          .map((doc) => SpeciesModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to get species: $e');
    }
  }

  Future<SpeciesModel?> getSpeciesById(String id) async {
    try {
      final doc = await _firestore.collection(_collection).doc(id).get();
      if (!doc.exists) return null;
      return SpeciesModel.fromJson(doc.data()!);
    } catch (e) {
      throw Exception('Failed to get species by ID: $e');
    }
  }

  Future<List<SpeciesModel>> searchSpecies(String query) async {
    try {
      final snapshot = await _firestore
          .collection(_collection)
          .where('searchTerms', arrayContains: query.toLowerCase())
          .get();
      return snapshot.docs
          .map((doc) => SpeciesModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to search species: $e');
    }
  }

  Future<List<SpeciesModel>> getSpeciesByHabitat(String habitat) async {
    try {
      final snapshot = await _firestore
          .collection(_collection)
          .where('habitat.type', isEqualTo: habitat)
          .get();
      return snapshot.docs
          .map((doc) => SpeciesModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to get species by habitat: $e');
    }
  }

  Future<Map<String, dynamic>> getRegulations(
    String speciesId,
    String location,
  ) async {
    try {
      final doc = await _firestore
          .collection('regulations')
          .doc(location)
          .collection('species')
          .doc(speciesId)
          .get();
      
      if (!doc.exists) return {};
      return doc.data() ?? {};
    } catch (e) {
      throw Exception('Failed to get regulations: $e');
    }
  }

  Future<Map<String, dynamic>> getDistributionData(String speciesId) async {
    try {
      final doc = await _firestore
          .collection('distributions')
          .doc(speciesId)
          .get();
      
      if (!doc.exists) return {};
      return doc.data() ?? {};
    } catch (e) {
      throw Exception('Failed to get distribution data: $e');
    }
  }

  Future<List<SpeciesModel>> getEndangeredSpecies() async {
    try {
      final snapshot = await _firestore
          .collection(_collection)
          .where('conservationStatus', whereIn: ['endangered', 'critically endangered'])
          .get();
      return snapshot.docs
          .map((doc) => SpeciesModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to get endangered species: $e');
    }
  }

  Future<Map<String, dynamic>> getSeasonalPatterns(
    String speciesId,
    String location,
  ) async {
    try {
      final doc = await _firestore
          .collection('seasonal_patterns')
          .doc(location)
          .collection('species')
          .doc(speciesId)
          .get();
      
      if (!doc.exists) return {};
      return doc.data() ?? {};
    } catch (e) {
      throw Exception('Failed to get seasonal patterns: $e');
    }
  }

  Future<void> updateSpeciesData(SpeciesModel species) async {
    try {
      await _firestore
          .collection(_collection)
          .doc(species.id)
          .update(species.toJson());
    } catch (e) {
      throw Exception('Failed to update species data: $e');
    }
  }

  Stream<List<SpeciesModel>> streamLocalSpecies(String location) {
    return _firestore
        .collection(_collection)
        .where('distribution.regions', arrayContains: location)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => SpeciesModel.fromJson(doc.data()))
            .toList());
  }

  Future<List<Map<String, dynamic>>> getCatchLimits(
    String location,
    List<String> speciesIds,
  ) async {
    try {
      final limits = <Map<String, dynamic>>[];
      for (final id in speciesIds) {
        final doc = await _firestore
            .collection('catch_limits')
            .doc(location)
            .collection('species')
            .doc(id)
            .get();
        
        if (doc.exists) {
          limits.add({
            'speciesId': id,
            ...doc.data() ?? {},
          });
        }
      }
      return limits;
    } catch (e) {
      throw Exception('Failed to get catch limits: $e');
    }
  }
}
