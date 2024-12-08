import 'package:firebase_auth/firebase_auth.dart';
import 'package:otp/otp.dart';
import '../repositories/security_repository.dart';
import '../models/mfa_settings.dart';

class MfaService {
  final FirebaseAuth _firebaseAuth;
  final SecurityRepository _securityRepository;

  MfaService({
    FirebaseAuth? firebaseAuth,
    SecurityRepository? securityRepository,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _securityRepository = securityRepository ?? SecurityRepository();

  // Initialize MFA for a user
  Future<MfaSettings> initializeMFA(String userId) async {
    final secret = OTP.generateTOTPSecret();
    
    final settings = MfaSettings(
      userId: userId,
      secret: secret,
      enabled: false,
      backupCodes: [],
      metadata: {
        'createdAt': DateTime.now().toIso8601String(),
        'lastUpdatedAt': DateTime.now().toIso8601String(),
      },
    );

    await _securityRepository.saveMfaSettings(userId, settings);
    return settings;
  }

  // Enable MFA for a user
  Future<void> enableMFA(String userId, String verificationCode) async {
    final settings = await _securityRepository.getMfaSettings(userId);
    if (settings == null) {
      throw Exception('MFA not initialized for user');
    }

    // Verify the code
    final isValid = verifyTOTP(settings.secret, verificationCode);
    if (!isValid) {
      throw Exception('Invalid verification code');
    }

    // Update settings
    final updatedSettings = settings.copyWith(
      enabled: true,
      metadata: {
        ...settings.metadata,
        'lastUpdatedAt': DateTime.now().toIso8601String(),
      },
    );

    await _securityRepository.saveMfaSettings(userId, updatedSettings);
  }

  // Verify MFA code
  bool verifyTOTP(String secret, String code) {
    if (secret.isEmpty || code.isEmpty) return false;
    return OTP.generateTOTPCode(secret, DateTime.now().millisecondsSinceEpoch) == code;
  }

  // Check if MFA is required for a user
  Future<bool> isMfaRequired(String userId) async {
    final settings = await _securityRepository.getMfaSettings(userId);
    return settings?.enabled ?? false;
  }

  // Generate backup codes
  Future<List<String>> generateBackupCodes(String userId) async {
    final settings = await _securityRepository.getMfaSettings(userId);
    if (settings == null) {
      throw Exception('MFA not initialized for user');
    }

    // Generate 10 random backup codes
    final backupCodes = List.generate(10, (_) => _generateBackupCode());
    
    // Update settings with new backup codes
    final updatedSettings = settings.copyWith(
      backupCodes: backupCodes,
      metadata: {
        ...settings.metadata,
        'lastUpdatedAt': DateTime.now().toIso8601String(),
      },
    );

    await _securityRepository.saveMfaSettings(userId, updatedSettings);
    return backupCodes;
  }

  // Verify backup code
  Future<bool> verifyBackupCode(String userId, String code) async {
    final settings = await _securityRepository.getMfaSettings(userId);
    if (settings == null) {
      throw Exception('MFA not initialized for user');
    }

    if (settings.backupCodes.contains(code)) {
      // Remove used backup code
      final updatedSettings = settings.copyWith(
        backupCodes: settings.backupCodes.where((c) => c != code).toList(),
        metadata: {
          ...settings.metadata,
          'lastUpdatedAt': DateTime.now().toIso8601String(),
        },
      );

      await _securityRepository.saveMfaSettings(userId, updatedSettings);
      return true;
    }

    return false;
  }

  // Generate a random backup code
  String _generateBackupCode() {
    final random = List.generate(8, (_) => '0123456789'[DateTime.now().microsecond % 10]);
    return random.join();
  }
}
