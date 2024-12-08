import 'dart:async';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:otp/otp.dart';
import '../../../../core/error/app_error.dart';

class AuthRepository {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final LocalAuthentication _localAuth;
  final FlutterSecureStorage _secureStorage;

  static const String _otpSecretKey = 'otp_secret_key';
  static const String _biometricEnabledKey = 'biometric_enabled';
  static const Duration _sessionTimeout = Duration(days: 7);

  AuthRepository({
    FirebaseAuth? auth,
    GoogleSignIn? googleSignIn,
    LocalAuthentication? localAuth,
    FlutterSecureStorage? secureStorage,
  })  : _auth = auth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _localAuth = localAuth ?? LocalAuthentication(),
        _secureStorage = secureStorage ?? const FlutterSecureStorage();

  // Email & Password Authentication
  Future<UserCredential> signUpWithEmail(String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await sendEmailVerification();
      return credential;
    } catch (e) {
      throw _handleFirebaseAuthError(e);
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } catch (e) {
      throw _handleFirebaseAuthError(e);
    }
  }

  Future<bool> isEmailVerified() async {
    await _auth.currentUser?.reload();
    return _auth.currentUser?.emailVerified ?? false;
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw _handleFirebaseAuthError(e);
    }
  }

  // Social Authentication
  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw const AppError(
          code: ErrorCode.cancelled,
          message: 'Google sign in was cancelled',
        );
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } catch (e) {
      throw _handleFirebaseAuthError(e);
    }
  }

  Future<UserCredential> signInWithApple() async {
    try {
      final rawNonce = _generateNonce();
      final nonce = _sha256ofString(rawNonce);

      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      return await _auth.signInWithCredential(oauthCredential);
    } catch (e) {
      throw _handleFirebaseAuthError(e);
    }
  }

  // Biometric Authentication
  Future<bool> isBiometricAvailable() async {
    try {
      return await _localAuth.canCheckBiometrics;
    } catch (e) {
      throw AppError(
        code: ErrorCode.precondition,
        message: 'Failed to check biometric availability',
        originalError: e,
      );
    }
  }

  Future<void> enableBiometric() async {
    try {
      final isAuthenticated = await _localAuth.authenticate(
        localizedReason: 'Please authenticate to enable biometric login',
        options: const AuthenticationOptions(biometricOnly: true),
      );

      if (isAuthenticated) {
        await _secureStorage.write(key: _biometricEnabledKey, value: 'true');
      } else {
        throw const AppError(
          code: ErrorCode.authentication,
          message: 'Biometric authentication failed',
        );
      }
    } catch (e) {
      throw _handleBiometricError(e);
    }
  }

  Future<bool> authenticateWithBiometric() async {
    try {
      final isBiometricEnabled =
          await _secureStorage.read(key: _biometricEnabledKey) == 'true';
      if (!isBiometricEnabled) return false;

      return await _localAuth.authenticate(
        localizedReason: 'Please authenticate to continue',
        options: const AuthenticationOptions(biometricOnly: true),
      );
    } catch (e) {
      throw _handleBiometricError(e);
    }
  }

  // Two-Factor Authentication
  Future<void> enable2FA() async {
    try {
      final secret = OTP.generateTOTPSecret();
      await _secureStorage.write(key: _otpSecretKey, value: secret);
    } catch (e) {
      throw AppError(
        code: ErrorCode.state,
        message: 'Failed to enable 2FA',
        originalError: e,
      );
    }
  }

  Future<bool> verify2FACode(String code) async {
    try {
      final secret = await _secureStorage.read(key: _otpSecretKey);
      if (secret == null) return false;

      return OTP
              .generateTOTPCode(secret, DateTime.now().millisecondsSinceEpoch)
              .toString() ==
          code;
    } catch (e) {
      throw AppError(
        code: ErrorCode.state,
        message: 'Failed to verify 2FA code',
        originalError: e,
      );
    }
  }

  // Session Management
  Future<void> refreshSession() async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw const AppError(
          code: ErrorCode.authentication,
          message: 'No active session',
        );
      }

      await user.getIdToken(true);
    } catch (e) {
      throw _handleFirebaseAuthError(e);
    }
  }

  Future<void> signOut() async {
    try {
      await Future.wait([
        _auth.signOut(),
        _googleSignIn.signOut(),
      ]);
      await _secureStorage.deleteAll();
    } catch (e) {
      throw _handleFirebaseAuthError(e);
    }
  }

  // Helper Methods
  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  AppError _handleFirebaseAuthError(dynamic error) {
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'email-already-in-use':
          return AppError(
            code: ErrorCode.duplicate,
            message: 'This email is already registered',
            originalError: error,
          );
        case 'invalid-email':
          return AppError(
            code: ErrorCode.format,
            message: 'Invalid email address',
            originalError: error,
          );
        case 'operation-not-allowed':
          return AppError(
            code: ErrorCode.permission,
            message: 'This operation is not allowed',
            originalError: error,
          );
        case 'weak-password':
          return AppError(
            code: ErrorCode.precondition,
            message: 'The password is too weak',
            originalError: error,
          );
        case 'user-disabled':
          return AppError(
            code: ErrorCode.permission,
            message: 'This account has been disabled',
            originalError: error,
          );
        case 'user-not-found':
          return AppError(
            code: ErrorCode.notFound,
            message: 'No user found with this email',
            originalError: error,
          );
        case 'wrong-password':
          return AppError(
            code: ErrorCode.authentication,
            message: 'Incorrect password',
            originalError: error,
          );
        default:
          return AppError(
            code: ErrorCode.unknown,
            message: error.message ?? 'An authentication error occurred',
            originalError: error,
          );
      }
    }
    return AppError(
      code: ErrorCode.unknown,
      message: 'An unexpected authentication error occurred',
      originalError: error,
    );
  }

  AppError _handleBiometricError(dynamic error) {
    return AppError(
      code: ErrorCode.authentication,
      message: 'Biometric authentication failed',
      originalError: error,
    );
  }
}
