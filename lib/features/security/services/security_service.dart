import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import '../models/security_models.dart';
import '../repositories/security_repository.dart';

class SecurityService {
  final SecurityRepository _repository;
  late final encrypt.Encrypter _encrypter;
  late final encrypt.IV _iv;

  SecurityService(this._repository) {
    _initializeEncryption();
  }

  void _initializeEncryption() {
    final key = encrypt.Key.fromSecureRandom(32);
    _iv = encrypt.IV.fromSecureRandom(16);
    _encrypter = encrypt.Encrypter(encrypt.AES(key));
  }

  // End-to-end Encryption
  String encryptData(String data) {
    final encrypted = _encrypter.encrypt(data, iv: _iv);
    return encrypted.base64;
  }

  String decryptData(String encryptedData) {
    final encrypted = encrypt.Encrypted.fromBase64(encryptedData);
    return _encrypter.decrypt(encrypted, iv: _iv);
  }

  Future<EncryptionKey> generateEncryptionKey() async {
    final key = encrypt.Key.fromSecureRandom(32);
    return _repository.storeEncryptionKey(key.base64);
  }

  // Secure Storage
  Future<void> secureStore(String key, String value) async {
    final encryptedValue = encryptData(value);
    await _repository.secureStore(key, encryptedValue);
  }

  Future<String?> secureRetrieve(String key) async {
    final encryptedValue = await _repository.secureRetrieve(key);
    if (encryptedValue == null) return null;
    return decryptData(encryptedValue);
  }

  // Privacy Controls
  Future<PrivacySettings> getPrivacySettings(String userId) async {
    return _repository.getPrivacySettings(userId);
  }

  Future<void> updatePrivacySettings(String userId, PrivacySettings settings) async {
    await _repository.updatePrivacySettings(userId, settings);
  }

  Future<void> blockUser(String userId, String blockedUserId) async {
    await _repository.blockUser(userId, blockedUserId);
  }

  // Data Backup
  Future<DataBackup> createBackup(String userId, String backupType) async {
    final data = await _repository.getUserData(userId);
    final encryptedData = encryptData(json.encode(data));
    return _repository.storeBackup(userId, backupType, encryptedData);
  }

  Future<Map<String, dynamic>> restoreBackup(String backupId) async {
    final backup = await _repository.getBackup(backupId);
    if (!backup.isComplete) throw Exception('Backup is incomplete');
    final encryptedData = await _repository.getBackupData(backupId);
    final decryptedData = decryptData(encryptedData);
    return json.decode(decryptedData);
  }

  // Access Logging
  Future<void> logAccess({
    required String userId,
    required String accessType,
    required String resourceType,
    required String resourceId,
    required String ipAddress,
    required String deviceInfo,
    required bool isSuccessful,
  }) async {
    await _repository.createAccessLog(
      userId: userId,
      accessType: accessType,
      resourceType: resourceType,
      resourceId: resourceId,
      ipAddress: ipAddress,
      deviceInfo: deviceInfo,
      isSuccessful: isSuccessful,
    );
  }

  Future<List<AccessLog>> getAccessLogs({
    required String userId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getAccessLogs(
      userId: userId,
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Audit Trails
  Future<void> createAuditTrail({
    required String userId,
    required String action,
    required String resourceType,
    required String resourceId,
    required String ipAddress,
    required bool isAuthorized,
  }) async {
    await _repository.createAuditTrail(
      userId: userId,
      action: action,
      resourceType: resourceType,
      resourceId: resourceId,
      ipAddress: ipAddress,
      isAuthorized: isAuthorized,
    );
  }

  Future<List<SecurityAudit>> getAuditTrails({
    required String userId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getAuditTrails(
      userId: userId,
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Security Alerts
  Future<void> createSecurityAlert({
    required String alertType,
    required String severity,
    required String description,
    Map<String, dynamic>? metadata,
  }) async {
    await _repository.createSecurityAlert(
      alertType: alertType,
      severity: severity,
      description: description,
      metadata: metadata,
    );
  }

  Future<void> resolveSecurityAlert(
    String alertId,
    String resolution,
  ) async {
    await _repository.resolveSecurityAlert(alertId, resolution);
  }

  Future<List<SecurityAlert>> getActiveSecurityAlerts() async {
    return _repository.getActiveSecurityAlerts();
  }

  // Data Validation
  bool validateDataIntegrity(String data, String hash) {
    final computedHash = sha256.convert(utf8.encode(data)).toString();
    return computedHash == hash;
  }

  String generateDataHash(String data) {
    return sha256.convert(utf8.encode(data)).toString();
  }

  // Security Checks
  Future<bool> isUserBlocked(String userId, String targetUserId) async {
    final settings = await getPrivacySettings(userId);
    return settings.blockedUsers.contains(targetUserId);
  }

  Future<bool> hasAccessPermission(
    String userId,
    String resourceType,
    String resourceId,
  ) async {
    final settings = await getPrivacySettings(userId);
    // Implement your permission logic here
    return true; // Placeholder
  }
}
