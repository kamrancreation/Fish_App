import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/measurement_model.dart';

class MeasurementRepository {
  final FirebaseFirestore _firestore;
  final String _collection = 'measurements';

  MeasurementRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<void> saveMeasurement(MeasurementModel measurement) async {
    try {
      await _firestore
          .collection(_collection)
          .doc(measurement.id)
          .set(measurement.toJson());
    } catch (e) {
      throw Exception('Failed to save measurement: $e');
    }
  }

  Future<List<MeasurementModel>> getUserMeasurements(String userId) async {
    try {
      final snapshot = await _firestore
          .collection(_collection)
          .where('userId', isEqualTo: userId)
          .orderBy('timestamp', descending: true)
          .get();

      return snapshot.docs
          .map((doc) => MeasurementModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to get user measurements: $e');
    }
  }

  Future<MeasurementModel?> getMeasurement(String id) async {
    try {
      final doc = await _firestore.collection(_collection).doc(id).get();
      if (!doc.exists) return null;
      return MeasurementModel.fromJson(doc.data()!);
    } catch (e) {
      throw Exception('Failed to get measurement: $e');
    }
  }

  Future<void> deleteMeasurement(String id) async {
    try {
      await _firestore.collection(_collection).doc(id).delete();
    } catch (e) {
      throw Exception('Failed to delete measurement: $e');
    }
  }

  Future<List<MeasurementModel>> getMeasurementsByDateRange(
    String userId,
    DateTime startDate,
    DateTime endDate,
  ) async {
    try {
      final snapshot = await _firestore
          .collection(_collection)
          .where('userId', isEqualTo: userId)
          .where('timestamp',
              isGreaterThanOrEqualTo: Timestamp.fromDate(startDate))
          .where('timestamp', isLessThanOrEqualTo: Timestamp.fromDate(endDate))
          .orderBy('timestamp', descending: true)
          .get();

      return snapshot.docs
          .map((doc) => MeasurementModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      throw Exception('Failed to get measurements by date range: $e');
    }
  }

  Future<Map<String, dynamic>> getMeasurementStatistics(String userId) async {
    try {
      final measurements = await getUserMeasurements(userId);
      
      if (measurements.isEmpty) {
        return {
          'totalCount': 0,
          'averageLength': 0.0,
          'averageWeight': 0.0,
          'maxLength': 0.0,
          'maxWeight': 0.0,
          'averageConfidence': 0.0,
        };
      }

      final lengths = measurements.map((m) => m.length).toList();
      final weights = measurements.map((m) => m.weight).toList();
      final confidences = measurements.map((m) => m.confidenceScore).toList();

      return {
        'totalCount': measurements.length,
        'averageLength': _calculateAverage(lengths),
        'averageWeight': _calculateAverage(weights),
        'maxLength': lengths.reduce((a, b) => a > b ? a : b),
        'maxWeight': weights.reduce((a, b) => a > b ? a : b),
        'averageConfidence': _calculateAverage(confidences),
      };
    } catch (e) {
      throw Exception('Failed to get measurement statistics: $e');
    }
  }

  double _calculateAverage(List<double> values) {
    if (values.isEmpty) return 0.0;
    return values.reduce((a, b) => a + b) / values.length;
  }

  Stream<List<MeasurementModel>> streamUserMeasurements(String userId) {
    return _firestore
        .collection(_collection)
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => MeasurementModel.fromJson(doc.data()))
            .toList());
  }

  Future<void> updateMeasurement(MeasurementModel measurement) async {
    try {
      await _firestore
          .collection(_collection)
          .doc(measurement.id)
          .update(measurement.toJson());
    } catch (e) {
      throw Exception('Failed to update measurement: $e');
    }
  }

  Future<void> batchSaveMeasurements(List<MeasurementModel> measurements) async {
    try {
      final batch = _firestore.batch();
      for (final measurement in measurements) {
        final docRef = _firestore.collection(_collection).doc(measurement.id);
        batch.set(docRef, measurement.toJson());
      }
      await batch.commit();
    } catch (e) {
      throw Exception('Failed to batch save measurements: $e');
    }
  }
}
