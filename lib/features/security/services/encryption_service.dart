import 'dart:convert';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:crypto/crypto.dart';
import '../models/security_models.dart';
import '../repositories/security_repository.dart';

class EncryptionService {
  final SecurityRepository _securityRepository;
  late final encrypt.Encrypter _encrypter;
  late final encrypt.IV _iv;

  EncryptionService({SecurityRepository? securityRepository})
      : _securityRepository = securityRepository ?? SecurityRepository() {
    _initializeEncryption();
  }

  Future<void> _initializeEncryption() async {
    final encryptionKey = await _securityRepository.getEncryptionKey();
    if (encryptionKey == null) {
      await _generateAndStoreNewKey();
    } else {
      _setupEncrypter(encryptionKey.key);
    }
  }

  Future<void> _generateAndStoreNewKey() async {
    final key = encrypt.Key.fromSecureRandom(32);
    final encryptionKey = EncryptionKey(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      key: base64.encode(key.bytes),
      createdAt: DateTime.now(),
      isActive: true,
    );
    await _securityRepository.storeEncryptionKey(encryptionKey);
    _setupEncrypter(encryptionKey.key);
  }

  void _setupEncrypter(String base64Key) {
    final keyBytes = base64.decode(base64Key);
    final key = encrypt.Key(keyBytes);
    _iv = encrypt.IV.fromSecureRandom(16);
    _encrypter = encrypt.Encrypter(encrypt.AES(key));
  }

  // Encrypt data
  Future<String> encryptData(String data) async {
    await _ensureInitialized();
    final encrypted = _encrypter.encrypt(data, iv: _iv);
    return base64.encode(encrypted.bytes);
  }

  // Decrypt data
  Future<String> decryptData(String encryptedData) async {
    await _ensureInitialized();
    final encrypted = encrypt.Encrypted(base64.decode(encryptedData));
    return _encrypter.decrypt(encrypted, iv: _iv);
  }

  // Hash data (one-way encryption)
  String hashData(String data) {
    final bytes = utf8.encode(data);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  // Verify hash
  bool verifyHash(String data, String hash) {
    final computedHash = hashData(data);
    return computedHash == hash;
  }

  // Generate secure random string
  String generateSecureRandomString(int length) {
    final random = encrypt.SecureRandom(length);
    return base64.encode(random.bytes).substring(0, length);
  }

  // Rotate encryption key
  Future<void> rotateEncryptionKey() async {
    // Generate new key
    final newKey = encrypt.Key.fromSecureRandom(32);
    final newEncryptionKey = EncryptionKey(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      key: base64.encode(newKey.bytes),
      createdAt: DateTime.now(),
      isActive: true,
    );

    // Deactivate old key
    final oldKey = await _securityRepository.getEncryptionKey();
    if (oldKey != null) {
      await _securityRepository.deactivateEncryptionKey(oldKey.id);
    }

    // Store new key
    await _securityRepository.storeEncryptionKey(newEncryptionKey);
    _setupEncrypter(newEncryptionKey.key);
  }

  // Re-encrypt data with new key
  Future<String> reencryptData(String encryptedData, String oldKeyId) async {
    // Get old key
    final oldKey = await _securityRepository.getEncryptionKeyById(oldKeyId);
    if (oldKey == null) {
      throw Exception('Old encryption key not found');
    }

    // Setup temporary encrypter with old key
    final oldKeyBytes = base64.decode(oldKey.key);
    final oldEncrypter =
        encrypt.Encrypter(encrypt.AES(encrypt.Key(oldKeyBytes)));

    // Decrypt with old key
    final encrypted = encrypt.Encrypted(base64.decode(encryptedData));
    final decrypted = oldEncrypter.decrypt(encrypted, iv: _iv);

    // Encrypt with new key
    return encryptData(decrypted);
  }

  // Ensure encryption is initialized
  Future<void> _ensureInitialized() async {}

  // Generate secure password
  String generateSecurePassword({
    int length = 16,
    bool includeUppercase = true,
    bool includeLowercase = true,
    bool includeNumbers = true,
    bool includeSpecialChars = true,
  }) {
    const lowercase = 'abcdefghijklmnopqrstuvwxyz';
    const uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const numbers = '0123456789';
    const special = '!@#\$%^&*()_+-=[]{}|;:,.<>?';

    String chars = '';
    if (includeLowercase) chars += lowercase;
    if (includeUppercase) chars += uppercase;
    if (includeNumbers) chars += numbers;
    if (includeSpecialChars) chars += special;

    return List.generate(length, (index) {
      final randomIndex = encrypt.SecureRandom(1).nextInt(chars.length);
      return chars[randomIndex];
    }).join();
  }

  // Validate password strength
  bool validatePasswordStrength(String password) {
    if (password.length < 8) return false;
    if (!password.contains(RegExp(r'[A-Z]'))) return false;
    if (!password.contains(RegExp(r'[a-z]'))) return false;
    if (!password.contains(RegExp(r'[0-9]'))) return false;
    if (!password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) return false;
    return true;
  }

  // Clean up resources
  Future<void> dispose() async {
    // Cleanup any resources if needed
  }
}
