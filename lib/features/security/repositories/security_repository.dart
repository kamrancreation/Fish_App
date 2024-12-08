import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/security_models.dart';
import '../models/mfa_settings.dart';
import '../models/security_event.dart';
import '../models/security_audit.dart';
import '../models/access_log.dart';

class SecurityRepository {
  String _dateToString(DateTime date) => date.toIso8601String();

  // Collection references
  final _encryptionKeysCollection = FirebaseFirestore.instance.collection('encryption_keys');
  final _secureStorageCollection = FirebaseFirestore.instance.collection('secure_storage');
  final _privacySettingsCollection = FirebaseFirestore.instance.collection('privacy_settings');
  final _backupCollection = FirebaseFirestore.instance.collection('backups');
  final _accessLogsCollection = FirebaseFirestore.instance.collection('access_logs');
  final _mfaSettingsCollection = FirebaseFirestore.instance.collection('mfa_settings');
  final _securityEventsCollection = FirebaseFirestore.instance.collection('security_events');
  final _auditTrailsCollection = FirebaseFirestore.instance.collection('audit_trails');

  // Encryption Key Management
  Future<EncryptionKey> storeEncryptionKey(String keyValue) async {
    final now = DateTime.now();
    final expiresAt = now.add(const Duration(days: 90));
    
    final doc = await _encryptionKeysCollection.add({
      'key': keyValue,
      'createdAt': _dateToString(now),
      'expiresAt': _dateToString(expiresAt),
      'isActive': true,
      'metadata': {},
    });

    return EncryptionKey.fromJson({
      'id': doc.id,
      'key': keyValue,
      'createdAt': _dateToString(now),
      'expiresAt': _dateToString(expiresAt),
      'isActive': true,
      'metadata': {},
    });
  }

  // Secure Storage
  Future<void> secureStore(String key, String encryptedValue) async {
    await _secureStorageCollection.doc(key).set({
      'value': encryptedValue,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<String?> secureRetrieve(String key) async {
    final doc = await _secureStorageCollection.doc(key).get();
    if (!doc.exists) return null;
    final data = doc.data();
    return data?['value'] as String?;
  }

  // Privacy Settings
  Future<PrivacySettings> getPrivacySettings(String userId) async {
    final doc = await _privacySettingsCollection.doc(userId).get();
    if (!doc.exists) {
      return PrivacySettings(
        userId: userId,
        isProfilePublic: true,
        showLocation: false,
        blockedUsers: const [],
        settings: const {},
      );
    }
    final data = doc.data()!;
    return PrivacySettings.fromJson({
      'userId': userId,
      'isProfilePublic': data['isProfilePublic'] ?? true,
      'showLocation': data['showLocation'] ?? false,
      'blockedUsers': List<String>.from(data['blockedUsers'] ?? []),
      'settings': Map<String, dynamic>.from(data['settings'] ?? {}),
    });
  }

  Future<void> updatePrivacySettings(String userId, PrivacySettings settings) async {
    await _privacySettingsCollection.doc(userId).set(settings.toJson());
  }

  Future<void> blockUser(String userId, String blockedUserId) async {
    await _privacySettingsCollection.doc(userId).update({
      'blockedUsers': FieldValue.arrayUnion([blockedUserId]),
    });
  }

  // Backup Management
  Future<DataBackup> storeBackup(String userId, String location) async {
    final now = DateTime.now();
    
    final doc = await _backupCollection.add({
      'userId': userId,
      'timestamp': _dateToString(now),
      'location': location,
      'size': 0,
      'isComplete': false,
      'metadata': {},
    });

    return DataBackup.fromJson({
      'id': doc.id,
      'userId': userId,
      'timestamp': _dateToString(now),
      'location': location,
      'size': 0,
      'isComplete': false,
      'metadata': {},
    });
  }

  Future<DataBackup?> getBackup(String backupId) async {
    final doc = await _backupCollection.doc(backupId).get();
    if (!doc.exists) return null;
    final data = doc.data()!;
    return DataBackup.fromJson({
      'id': backupId,
      'userId': data['userId'],
      'timestamp': data['timestamp'],
      'location': data['location'],
      'size': data['size'] ?? 0,
      'isComplete': data['isComplete'] ?? false,
      'metadata': Map<String, dynamic>.from(data['metadata'] ?? {}),
    });
  }

  // Access Logging
  Future<AccessLog> createAccessLog({
    required String userId,
    required String resource,
    required String action,
    required String ipAddress,
    required String userAgent,
  }) async {
    final now = DateTime.now();
    
    final doc = await _accessLogsCollection.add({
      'userId': userId,
      'resource': resource,
      'action': action,
      'timestamp': _dateToString(now),
      'ipAddress': ipAddress,
      'userAgent': userAgent,
      'metadata': {},
    });

    return AccessLog.fromJson({
      'id': doc.id,
      'userId': userId,
      'resource': resource,
      'action': action,
      'timestamp': _dateToString(now),
      'ipAddress': ipAddress,
      'userAgent': userAgent,
      'metadata': {},
    });
  }

  // MFA Settings
  Future<void> saveMfaSettings(String userId, MfaSettings settings) async {
    await _mfaSettingsCollection.doc(userId).set(settings.toJson());
  }

  Future<MfaSettings?> getMfaSettings(String userId) async {
    final doc = await _mfaSettingsCollection.doc(userId).get();
    if (!doc.exists) {
      return MfaSettings(
        userId: userId,
        enabled: false,
        backupCodes: [],
        metadata: {},
      );
    }
    return MfaSettings.fromJson({
      ...doc.data()!,
      'userId': userId,
    });
  }

  // Security Events
  Future<void> logSecurityEvent(SecurityEvent event) async {
    await _securityEventsCollection.doc(event.id).set(event.toJson());
  }

  Future<List<SecurityEvent>> getUserSecurityEvents(
    String userId, {
    DateTime? startDate,
    DateTime? endDate,
    String? severity,
    String? eventType,
    int limit = 100,
  }) async {
    var query = _securityEventsCollection.where('userId', isEqualTo: userId);

    if (startDate != null) {
      query = query.where('timestamp', isGreaterThanOrEqualTo: _dateToString(startDate));
    }
    if (endDate != null) {
      query = query.where('timestamp', isLessThanOrEqualTo: _dateToString(endDate));
    }
    if (severity != null) {
      query = query.where('severity', isEqualTo: severity);
    }
    if (eventType != null) {
      query = query.where('eventType', isEqualTo: eventType);
    }

    final snapshot = await query
        .orderBy('timestamp', descending: true)
        .limit(limit)
        .get();
    
    return snapshot.docs
        .map((doc) => SecurityEvent.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  Future<List<SecurityEvent>> getSecurityEventsByType(
    String eventType, {
    DateTime? startDate,
    DateTime? endDate,
    String? severity,
    int limit = 100,
  }) async {
    var query = _securityEventsCollection.where('eventType', isEqualTo: eventType);

    if (startDate != null) {
      query = query.where('timestamp', isGreaterThanOrEqualTo: _dateToString(startDate));
    }
    if (endDate != null) {
      query = query.where('timestamp', isLessThanOrEqualTo: _dateToString(endDate));
    }
    if (severity != null) {
      query = query.where('severity', isEqualTo: severity);
    }

    final snapshot = await query
        .orderBy('timestamp', descending: true)
        .limit(limit)
        .get();
    
    return snapshot.docs
        .map((doc) => SecurityEvent.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  Future<List<SecurityEvent>> getSecurityEventsBySeverity(
    String severity, {
    DateTime? startDate,
    DateTime? endDate,
    String? eventType,
    int limit = 100,
  }) async {
    var query = _securityEventsCollection.where('severity', isEqualTo: severity);

    if (startDate != null) {
      query = query.where('timestamp', isGreaterThanOrEqualTo: _dateToString(startDate));
    }
    if (endDate != null) {
      query = query.where('timestamp', isLessThanOrEqualTo: _dateToString(endDate));
    }
    if (eventType != null) {
      query = query.where('eventType', isEqualTo: eventType);
    }

    final snapshot = await query
        .orderBy('timestamp', descending: true)
        .limit(limit)
        .get();
    
    return snapshot.docs
        .map((doc) => SecurityEvent.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  // Security Audits
  Future<void> createSecurityAudit(SecurityAudit audit) async {
    await _auditTrailsCollection.doc(audit.id).set(audit.toJson());
  }

  Future<void> updateSecurityAudit(String auditId, Map<String, dynamic> updates) async {
    await _auditTrailsCollection.doc(auditId).update(updates);
  }

  Future<SecurityAudit?> getSecurityAudit(String auditId) async {
    final doc = await _auditTrailsCollection.doc(auditId).get();
    if (!doc.exists) return null;
    return SecurityAudit.fromJson({...doc.data()!, 'id': doc.id});
  }

  Future<List<SecurityAudit>> getSecurityAudits({
    String? type,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    int limit = 100,
  }) async {
    var query = _auditTrailsCollection;

    if (type != null) {
      query = query.where('type', isEqualTo: type);
    }
    if (status != null) {
      query = query.where('status', isEqualTo: status);
    }
    if (startDate != null) {
      query = query.where('startTime', isGreaterThanOrEqualTo: _dateToString(startDate));
    }
    if (endDate != null) {
      query = query.where('startTime', isLessThanOrEqualTo: _dateToString(endDate));
    }

    final snapshot = await query
        .orderBy('startTime', descending: true)
        .limit(limit)
        .get();
    
    return snapshot.docs
        .map((doc) => SecurityAudit.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }

  // Access Logs
  Future<void> logAccess(AccessLog log) async {
    await _accessLogsCollection.doc(log.id).set(log.toJson());
  }

  Future<List<AccessLog>> getAccessLogs({
    String? userId,
    String? resource,
    String? action,
    bool? success,
    DateTime? startDate,
    DateTime? endDate,
    int limit = 100,
  }) async {
    var query = _accessLogsCollection;

    if (userId != null) {
      query = query.where('userId', isEqualTo: userId);
    }
    if (resource != null) {
      query = query.where('resource', isEqualTo: resource);
    }
    if (action != null) {
      query = query.where('action', isEqualTo: action);
    }
    if (success != null) {
      query = query.where('success', isEqualTo: success);
    }
    if (startDate != null) {
      query = query.where('timestamp', isGreaterThanOrEqualTo: _dateToString(startDate));
    }
    if (endDate != null) {
      query = query.where('timestamp', isLessThanOrEqualTo: _dateToString(endDate));
    }

    final snapshot = await query
        .orderBy('timestamp', descending: true)
        .limit(limit)
        .get();
    
    return snapshot.docs
        .map((doc) => AccessLog.fromJson({...doc.data(), 'id': doc.id}))
        .toList();
  }
}
