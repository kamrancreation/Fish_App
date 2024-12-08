import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/auth_models.dart';

class AuthRepository {
  final _userAuthCollection = FirebaseFirestore.instance.collection('user_auth');
  final _mfaMethodCollection = FirebaseFirestore.instance.collection('mfa_methods');
  final _sessionCollection = FirebaseFirestore.instance.collection('user_sessions');
  final _passwordPolicyCollection = FirebaseFirestore.instance.collection('password_policies');
  final _recoveryOptionCollection = FirebaseFirestore.instance.collection('recovery_options');
  final _loginAttemptCollection = FirebaseFirestore.instance.collection('login_attempts');

  // User Authentication
  Future<UserAuth> getUserAuth(String userId) async {
    final doc = await _userAuthCollection.doc(userId).get();
    return UserAuth.fromJson(doc.data()!);
  }

  Future<void> updateUserAuth(String userId, Map<String, dynamic> data) async {
    await _userAuthCollection.doc(userId).update(data);
  }

  // Multi-factor Authentication
  Future<MfaMethod> createMfaMethod(String userId, String type) async {
    final doc = await _mfaMethodCollection.add({
      'userId': userId,
      'type': type,
      'isEnabled': true,
      'createdAt': FieldValue.serverTimestamp(),
      'lastUsed': null,
      'metadata': {},
    });

    return MfaMethod(
      id: doc.id,
      userId: userId,
      type: type,
      isEnabled: true,
      createdAt: DateTime.now(),
      lastUsed: DateTime.now(),
      metadata: {},
    );
  }

  Future<MfaMethod> getMfaMethod(String userId, String type) async {
    final snapshot = await _mfaMethodCollection
        .where('userId', isEqualTo: userId)
        .where('type', isEqualTo: type)
        .limit(1)
        .get();

    return MfaMethod.fromJson(snapshot.docs.first.data());
  }

  // Social Login
  Future<UserAuth> linkSocialAccount(
    String userId,
    String platform,
    String email,
  ) async {
    await _userAuthCollection.doc(userId).update({
      'linkedSocialAccounts': FieldValue.arrayUnion([platform]),
      'metadata.${platform}Email': email,
    });

    final doc = await _userAuthCollection.doc(userId).get();
    return UserAuth.fromJson(doc.data()!);
  }

  // Session Management
  Future<UserSession> createSession(String userId, String deviceId) async {
    final doc = await _sessionCollection.add({
      'userId': userId,
      'deviceId': deviceId,
      'ipAddress': '0.0.0.0', // Replace with actual IP
      'createdAt': FieldValue.serverTimestamp(),
      'expiresAt': DateTime.now().add(const Duration(days: 7)).toIso8601String(),
      'isActive': true,
      'metadata': {},
    });

    return UserSession(
      id: doc.id,
      userId: userId,
      deviceId: deviceId,
      ipAddress: '0.0.0.0',
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().add(const Duration(days: 7)),
      isActive: true,
      metadata: {},
    );
  }

  Future<void> invalidateSession(String sessionId) async {
    await _sessionCollection.doc(sessionId).update({
      'isActive': false,
    });
  }

  Future<List<UserSession>> getActiveSessions(String userId) async {
    final snapshot = await _sessionCollection
        .where('userId', isEqualTo: userId)
        .where('isActive', isEqualTo: true)
        .get();

    return snapshot.docs.map((doc) => UserSession.fromJson(doc.data())).toList();
  }

  // Password Policies
  Future<PasswordPolicy> getPasswordPolicy() async {
    final doc = await _passwordPolicyCollection.doc('default').get();
    return PasswordPolicy.fromJson(doc.data()!);
  }

  Future<void> recordPasswordChange(String userId) async {
    await _userAuthCollection.doc(userId).update({
      'metadata.lastPasswordChange': FieldValue.serverTimestamp(),
    });
  }

  // Account Recovery
  Future<RecoveryOption> createRecoveryOption(
    String userId,
    String type,
    String value,
  ) async {
    final doc = await _recoveryOptionCollection.add({
      'userId': userId,
      'type': type,
      'value': value,
      'isVerified': false,
      'createdAt': FieldValue.serverTimestamp(),
      'lastUsed': null,
      'metadata': {},
    });

    return RecoveryOption(
      id: doc.id,
      userId: userId,
      type: type,
      value: value,
      isVerified: false,
      createdAt: DateTime.now(),
      lastUsed: null,
      metadata: {},
    );
  }

  Future<RecoveryOption> getRecoveryOption(String userId, String type) async {
    final snapshot = await _recoveryOptionCollection
        .where('userId', isEqualTo: userId)
        .where('type', isEqualTo: type)
        .limit(1)
        .get();

    return RecoveryOption.fromJson(snapshot.docs.first.data());
  }

  // Login Monitoring
  Future<void> createLoginAttempt({
    required String userId,
    required String ipAddress,
    required String deviceInfo,
    required bool isSuccessful,
    required String failureReason,
  }) async {
    await _loginAttemptCollection.add({
      'userId': userId,
      'ipAddress': ipAddress,
      'deviceInfo': deviceInfo,
      'isSuccessful': isSuccessful,
      'failureReason': failureReason,
      'timestamp': FieldValue.serverTimestamp(),
      'metadata': {},
    });
  }

  Future<List<LoginAttempt>> getLoginAttempts({
    required String userId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    var query = _loginAttemptCollection
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true);

    if (startDate != null) {
      query = query.where('timestamp', isGreaterThanOrEqualTo: startDate);
    }
    if (endDate != null) {
      query = query.where('timestamp', isLessThanOrEqualTo: endDate);
    }

    final snapshot = await query.get();
    return snapshot.docs.map((doc) => LoginAttempt.fromJson(doc.data())).toList();
  }
}
