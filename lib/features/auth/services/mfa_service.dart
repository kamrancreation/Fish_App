import 'package:firebase_auth/firebase_auth.dart';
import '../models/mfa_models.dart';
import '../../core/error/error_handler.dart';
import '../../core/services/secure_storage.dart';

class MFAService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final SecureStorage _secureStorage;
  final ErrorHandler _errorHandler;

  MFAService({
    SecureStorage? secureStorage,
    ErrorHandler? errorHandler,
  })  : _secureStorage = secureStorage ?? SecureStorage(),
        _errorHandler = errorHandler ?? ErrorHandler();

  Future<MFAEnrollmentStatus> checkMFAStatus(String userId) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      final enrollmentData = await _secureStorage.read('mfa_enrollment_$userId');
      return MFAEnrollmentStatus(
        isEnrolled: enrollmentData != null,
        methods: enrollmentData?.split(',') ?? [],
      );
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'MFA status check',
      );
    }
  }

  Future<void> enrollMFA(MFAMethod method) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      switch (method) {
        case MFAMethod.authenticator:
          await _enrollAuthenticator(user);
          break;
        case MFAMethod.sms:
          await _enrollSMS(user);
          break;
        case MFAMethod.email:
          await _enrollEmail(user);
          break;
        case MFAMethod.biometric:
          await _enrollBiometric(user);
          break;
      }

      await _updateMFAEnrollment(user.uid, method);
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'MFA enrollment',
      );
    }
  }

  Future<void> verifyMFA(String code, MFAMethod method) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      switch (method) {
        case MFAMethod.authenticator:
          await _verifyAuthenticator(code);
          break;
        case MFAMethod.sms:
          await _verifySMS(code);
          break;
        case MFAMethod.email:
          await _verifyEmail(code);
          break;
        case MFAMethod.biometric:
          await _verifyBiometric();
          break;
      }
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'MFA verification',
      );
    }
  }

  Future<void> disableMFA(MFAMethod method) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw Exception('User not authenticated');
      }

      await _removeMFAMethod(user.uid, method);
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'MFA disable',
      );
    }
  }

  Future<void> _enrollAuthenticator(User user) async {
    // Implementation for authenticator app enrollment
  }

  Future<void> _enrollSMS(User user) async {
    // Implementation for SMS enrollment
  }

  Future<void> _enrollEmail(User user) async {
    // Implementation for email enrollment
  }

  Future<void> _enrollBiometric(User user) async {
    // Implementation for biometric enrollment
  }

  Future<void> _verifyAuthenticator(String code) async {
    // Implementation for authenticator verification
  }

  Future<void> _verifySMS(String code) async {
    // Implementation for SMS verification
  }

  Future<void> _verifyEmail(String code) async {
    // Implementation for email verification
  }

  Future<void> _verifyBiometric() async {
    // Implementation for biometric verification
  }

  Future<void> _updateMFAEnrollment(String userId, MFAMethod method) async {
    final currentMethods = await _getMFAMethods(userId);
    currentMethods.add(method.toString());
    await _secureStorage.write(
      'mfa_enrollment_$userId',
      currentMethods.join(','),
    );
  }

  Future<void> _removeMFAMethod(String userId, MFAMethod method) async {
    final currentMethods = await _getMFAMethods(userId);
    currentMethods.remove(method.toString());
    await _secureStorage.write(
      'mfa_enrollment_$userId',
      currentMethods.join(','),
    );
  }

  Future<Set<String>> _getMFAMethods(String userId) async {
    final data = await _secureStorage.read('mfa_enrollment_$userId');
    return data?.split(',').toSet() ?? {};
  }
}
