import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/safety_model.dart';

class SafetyRepository {
  final FirebaseFirestore _firestore;
  final String _collection = 'safety';

  SafetyRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<SafetyModel?> getById(String id) async {
    final doc = await _firestore.collection(_collection).doc(id).get();
    if (!doc.exists) return null;
    return SafetyModel.fromMap(doc.data()!);
  }

  Future<SafetyModel> add(Map<String, dynamic> data) async {
    final docRef = await _firestore.collection(_collection).add(data);
    final doc = await docRef.get();
    return SafetyModel.fromMap(doc.data()!);
  }

  Future<void> update(String id, Map<String, dynamic> data) async {
    await _firestore.collection(_collection).doc(id).update(data);
  }

  Future<void> delete(String id) async {
    await _firestore.collection(_collection).doc(id).delete();
  }

  Stream<List<SafetyAlert>> getActiveAlerts(String userId) {
    return _firestore
        .collection(_collection)
        .doc(userId)
        .snapshots()
        .map((doc) {
          if (!doc.exists) return [];
          final data = doc.data()!;
          final alerts = data['activeAlerts'] as List<dynamic>?;
          if (alerts == null) return [];
          return alerts
              .map((alert) => SafetyAlert.fromMap(alert as Map<String, dynamic>))
              .toList();
        });
  }

  Future<void> addAlert(String userId, SafetyAlert alert) async {
    await _firestore.collection(_collection).doc(userId).update({
      'activeAlerts': FieldValue.arrayUnion([alert.toMap()])
    });
  }

  Future<void> removeAlert(String userId, SafetyAlert alert) async {
    await _firestore.collection(_collection).doc(userId).update({
      'activeAlerts': FieldValue.arrayRemove([alert.toMap()])
    });
  }

  Future<void> updateCheckIn(String id, DateTime checkInTime) async {
    await _firestore.collection(_collection).doc(id).update({
      'lastCheckIn': checkInTime.toIso8601String(),
    });
  }

  Future<bool> isCheckInRequired(SafetyModel? safetyData) async {
    if (safetyData == null) return false;
    
    final lastCheckIn = safetyData.lastCheckIn;
    if (lastCheckIn == null) return true;
    
    final checkInInterval = safetyData.checkInInterval;
    
    final now = DateTime.now();
    final timeSinceLastCheckIn = now.difference(lastCheckIn);
    return timeSinceLastCheckIn.inMinutes >= checkInInterval;
  }

  Future<List<SafetyModel>> getOverdueCheckIns() async {
    final now = DateTime.now();
    final snapshot = await _firestore
        .collection(_collection)
        .where('isCheckInEnabled', isEqualTo: true)
        .get();

    return snapshot.docs
        .map((doc) => SafetyModel.fromMap(doc.data()))
        .where((safety) {
          if (safety.lastCheckIn == null) return false;
          final nextCheckIn = safety.lastCheckIn!
              .add(Duration(minutes: safety.checkInInterval ?? 0));
          return now.isAfter(nextCheckIn);
        })
        .toList();
  }
}
