import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/auth_user.dart';

class AuthRepository {
  final FirebaseFirestore _firestore;
  final String _usersCollection = 'users';
  final String _sessionsCollection = 'sessions';
  final String _mfaCollection = 'mfa_settings';
  final String _authEventsCollection = 'auth_events';

  AuthRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  // User Operations
  Future<void> createUser(AuthUser user) async {
    await _firestore
        .collection(_usersCollection)
        .doc(user.id)
        .set(user.toJson());
  }

  Future<void> createOrUpdateUser(AuthUser user) async {
    await _firestore
        .collection(_usersCollection)
        .doc(user.id)
        .set(user.toJson(), SetOptions(merge: true));
  }

  Future<AuthUser> getUser(String userId) async {
    final doc = await _firestore.collection(_usersCollection).doc(userId).get();
    if (!doc.exists) {
      throw Exception('User not found');
    }
    return AuthUser.fromJson(doc.data()!);
  }

  Future<void> updateUser(String userId, Map<String, dynamic> updates) async {
    await _firestore.collection(_usersCollection).doc(userId).update(updates);
  }

  Future<void> updateLastLogin(String userId) async {
    await _firestore.collection(_usersCollection).doc(userId).update({
      'lastLoginAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> deleteUser(String userId) async {
    await _firestore.collection(_usersCollection).doc(userId).delete();
  }

  // Session Management
  Future<AuthSession> createSession(AuthSession session) async {
    final doc =
        await _firestore.collection(_sessionsCollection).add(session.toJson());
    return session.copyWith(id: doc.id);
  }

  Future<void> invalidateSession(String sessionId) async {
    await _firestore
        .collection(_sessionsCollection)
        .doc(sessionId)
        .update({'isActive': false});
  }

  Future<void> invalidateAllUserSessions(String userId) async {
    final sessions = await _firestore
        .collection(_sessionsCollection)
        .where('userId', isEqualTo: userId)
        .where('isActive', isEqualTo: true)
        .get();

    final batch = _firestore.batch();
    for (var doc in sessions.docs) {
      batch.update(doc.reference, {'isActive': false});
    }
    await batch.commit();
  }

  Future<List<AuthSession>> getUserSessions(String userId) async {
    final snapshot = await _firestore
        .collection(_sessionsCollection)
        .where('userId', isEqualTo: userId)
        .where('isActive', isEqualTo: true)
        .get();

    return snapshot.docs
        .map((doc) => AuthSession.fromJson(doc.data()))
        .toList();
  }

  // MFA Settings
  Future<void> setMfaSettings(MfaSettings settings) async {
    await _firestore
        .collection(_mfaCollection)
        .doc(settings.userId)
        .set(settings.toJson());
  }

  Future<MfaSettings?> getMfaSettings(String userId) async {
    final doc = await _firestore.collection(_mfaCollection).doc(userId).get();
    if (!doc.exists) return null;
    return MfaSettings.fromJson(doc.data()!);
  }

  Future<void> updateMfaSettings(
      String userId, Map<String, dynamic> updates) async {
    await _firestore.collection(_mfaCollection).doc(userId).update(updates);
  }

  // Auth Events
  Future<void> logAuthEvent(AuthEvent event) async {
    await _firestore.collection(_authEventsCollection).add(event.toJson());
  }

  Future<List<AuthEvent>> getUserAuthEvents(String userId) async {
    final snapshot = await _firestore
        .collection(_authEventsCollection)
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true)
        .limit(100)
        .get();

    return snapshot.docs.map((doc) => AuthEvent.fromJson(doc.data())).toList();
  }

  // User Queries
  Future<List<AuthUser>> getUsersByRole(String role) async {
    final snapshot = await _firestore
        .collection(_usersCollection)
        .where('roles', arrayContains: role)
        .get();

    return snapshot.docs.map((doc) => AuthUser.fromJson(doc.data())).toList();
  }

  Future<List<AuthUser>> searchUsers(String searchTerm) async {
    final snapshot = await _firestore
        .collection(_usersCollection)
        .where('displayName', isGreaterThanOrEqualTo: searchTerm)
        .where('displayName', isLessThan: '${searchTerm}z')
        .get();

    return snapshot.docs.map((doc) => AuthUser.fromJson(doc.data())).toList();
  }

  // Bulk Operations
  Future<void> bulkUpdateUserRoles(
      List<String> userIds, String role, bool add) async {
    final batch = _firestore.batch();
    for (var userId in userIds) {
      final userRef = _firestore.collection(_usersCollection).doc(userId);
      if (add) {
        batch.update(userRef, {
          'roles': FieldValue.arrayUnion([role])
        });
      } else {
        batch.update(userRef, {
          'roles': FieldValue.arrayRemove([role])
        });
      }
    }
    await batch.commit();
  }

  Future<void> bulkUpdateUserPermissions(
    List<String> userIds,
    String permission,
    bool value,
  ) async {
    final batch = _firestore.batch();
    for (var userId in userIds) {
      final userRef = _firestore.collection(_usersCollection).doc(userId);
      batch.update(userRef, {
        'permissions.$permission': value,
      });
    }
    await batch.commit();
  }
}
