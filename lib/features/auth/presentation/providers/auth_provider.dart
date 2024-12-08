import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/models/app_user.dart';
import '../../../../core/error/app_error.dart';

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  verifying,
  needsVerification,
}

class AuthProvider with ChangeNotifier {
  final AuthRepository _authRepository;
  
  AuthStatus _status = AuthStatus.initial;
  AppUser? _user;
  String? _error;
  bool _isLoading = false;
  bool _is2FAEnabled = false;
  bool _isBiometricEnabled = false;

  AuthProvider({AuthRepository? authRepository})
      : _authRepository = authRepository ?? AuthRepository() {
    _init();
  }

  AuthStatus get status => _status;
  AppUser? get user => _user;
  String? get error => _error;
  bool get isLoading => _isLoading;
  bool get is2FAEnabled => _is2FAEnabled;
  bool get isBiometricEnabled => _isBiometricEnabled;

  Future<void> _init() async {
    _setLoading(true);
    try {
      // Check biometric status
      _isBiometricEnabled = await _authRepository.isBiometricAvailable();
      
      // Listen to auth state changes
      FirebaseAuth.instance.authStateChanges().listen((User? user) async {
        if (user == null) {
          _status = AuthStatus.unauthenticated;
          _user = null;
        } else {
          if (!user.emailVerified) {
            _status = AuthStatus.needsVerification;
          } else {
            _status = AuthStatus.authenticated;
            _user = AppUser(
              id: user.uid,
              email: user.email!,
              displayName: user.displayName ?? 'Angler',
              photoUrl: user.photoURL,
            );
          }
        }
        notifyListeners();
      });
    } catch (e) {
      _handleError(e);
    } finally {
      _setLoading(false);
    }
  }

  // Email & Password Authentication
  Future<void> signUpWithEmail(String email, String password) async {
    _setLoading(true);
    try {
      await _authRepository.signUpWithEmail(email, password);
      await sendEmailVerification();
      _status = AuthStatus.needsVerification;
    } catch (e) {
      _handleError(e);
    } finally {
      _setLoading(false);
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      await _authRepository.sendEmailVerification();
    } catch (e) {
      _handleError(e);
    }
  }

  Future<void> checkEmailVerification() async {
    _setLoading(true);
    try {
      final isVerified = await _authRepository.isEmailVerified();
      if (isVerified) {
        _status = AuthStatus.authenticated;
      }
    } catch (e) {
      _handleError(e);
    } finally {
      _setLoading(false);
    }
  }

  Future<void> resetPassword(String email) async {
    _setLoading(true);
    try {
      await _authRepository.sendPasswordResetEmail(email);
    } catch (e) {
      _handleError(e);
    } finally {
      _setLoading(false);
    }
  }

  // Social Authentication
  Future<void> signInWithGoogle() async {
    _setLoading(true);
    try {
      await _authRepository.signInWithGoogle();
    } catch (e) {
      _handleError(e);
    } finally {
      _setLoading(false);
    }
  }

  Future<void> signInWithApple() async {
    _setLoading(true);
    try {
      await _authRepository.signInWithApple();
    } catch (e) {
      _handleError(e);
    } finally {
      _setLoading(false);
    }
  }

  // Biometric Authentication
  Future<void> enableBiometric() async {
    _setLoading(true);
    try {
      await _authRepository.enableBiometric();
      _isBiometricEnabled = true;
    } catch (e) {
      _handleError(e);
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> authenticateWithBiometric() async {
    _setLoading(true);
    try {
      final result = await _authRepository.authenticateWithBiometric();
      return result;
    } catch (e) {
      _handleError(e);
      return false;
    } finally {
      _setLoading(false);
    }
  }

  // Two-Factor Authentication
  Future<void> enable2FA() async {
    _setLoading(true);
    try {
      await _authRepository.enable2FA();
      _is2FAEnabled = true;
    } catch (e) {
      _handleError(e);
    } finally {
      _setLoading(false);
    }
  }

  Future<bool> verify2FACode(String code) async {
    _setLoading(true);
    try {
      final isValid = await _authRepository.verify2FACode(code);
      if (!isValid) {
        _error = 'Invalid 2FA code';
        notifyListeners();
      }
      return isValid;
    } catch (e) {
      _handleError(e);
      return false;
    } finally {
      _setLoading(false);
    }
  }

  // Session Management
  Future<void> refreshSession() async {
    try {
      await _authRepository.refreshSession();
    } catch (e) {
      _handleError(e);
    }
  }

  Future<void> signOut() async {
    _setLoading(true);
    try {
      await _authRepository.signOut();
      _status = AuthStatus.unauthenticated;
      _user = null;
      _is2FAEnabled = false;
    } catch (e) {
      _handleError(e);
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void _handleError(dynamic e) {
    if (e is AppError) {
      _error = e.userFriendlyMessage;
    } else {
      _error = 'An unexpected error occurred';
    }
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
