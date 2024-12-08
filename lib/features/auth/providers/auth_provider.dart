import 'package:flutter/foundation.dart';
import '../models/auth_user.dart';
import '../services/auth_service.dart';
import '../../security/models/mfa_settings.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService;
  AuthUser? _currentUser;
  bool _isLoading = false;
  String? _error;

  AuthProvider({AuthService? authService})
      : _authService = authService ?? AuthService();

  AuthUser? get currentUser => _currentUser;
  bool get isLoading => _isLoading;
  String? get error => _error;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void _setError(String? value) {
    _error = value;
    notifyListeners();
  }

  void _setUser(AuthUser? user) {
    _currentUser = user;
    notifyListeners();
  }

  // Sign Up
  Future<void> signUp({
    required String email,
    required String password,
    required String displayName,
  }) async {
    _setLoading(true);
    _setError(null);

    try {
      final user = await _authService.signUpWithEmail(
        email: email,
        password: password,
        displayName: displayName,
      );
      _setUser(user);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Sign In with Email
  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    _setLoading(true);
    _setError(null);

    try {
      final user = await _authService.signInWithEmail(
        email: email,
        password: password,
      );
      _setUser(user);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Sign In with Google
  Future<void> signInWithGoogle() async {
    _setLoading(true);
    _setError(null);

    try {
      final user = await _authService.signInWithGoogle();
      _setUser(user);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Sign In with Apple
  Future<void> signInWithApple() async {
    _setLoading(true);
    _setError(null);

    try {
      final user = await _authService.signInWithApple();
      _setUser(user);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Sign Out
  Future<void> signOut() async {
    _setLoading(true);
    _setError(null);

    try {
      await _authService.signOut();
      _setUser(null);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Password Reset
  Future<void> resetPassword(String email) async {
    _setLoading(true);
    _setError(null);

    try {
      await _authService.resetPassword(email);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Verify Password Reset Code
  Future<void> verifyPasswordResetCode(String code) async {
    _setLoading(true);
    _setError(null);

    try {
      await _authService.verifyPasswordResetCode(code);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Confirm Password Reset
  Future<void> confirmPasswordReset({
    required String code,
    required String newPassword,
  }) async {
    _setLoading(true);
    _setError(null);

    try {
      await _authService.confirmPasswordReset(
        code: code,
        newPassword: newPassword,
      );
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // MFA Methods
  Future<MfaSettings> initializeMFA() async {
    _setLoading(true);
    _setError(null);

    try {
      if (_currentUser == null) {
        throw Exception('No user signed in');
      }
      return await _authService.initializeMFA(_currentUser!.id);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> enableMFA(String verificationCode) async {
    _setLoading(true);
    _setError(null);

    try {
      if (_currentUser == null) {
        throw Exception('No user signed in');
      }
      await _authService.enableMFA(
        userId: _currentUser!.id,
        verificationCode: verificationCode,
      );
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> disableMFA(String verificationCode) async {
    _setLoading(true);
    _setError(null);

    try {
      if (_currentUser == null) {
        throw Exception('No user signed in');
      }
      await _authService.disableMFA(
        userId: _currentUser!.id,
        verificationCode: verificationCode,
      );
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> verifyMFA({
    required String userId,
    required String code,
  }) async {
    _setLoading(true);
    _setError(null);

    try {
      await _authService.verifyMFA(
        userId: userId,
        verificationCode: code,
      );
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Social Provider Methods
  Future<void> linkSocialProvider(SocialProvider provider) async {
    _setLoading(true);
    _setError(null);

    try {
      await _authService.linkSocialProvider(provider);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> unlinkSocialProvider(SocialProvider provider) async {
    _setLoading(true);
    _setError(null);

    try {
      await _authService.unlinkSocialProvider(provider);
    } catch (e) {
      _setError(e.toString());
      rethrow;
    } finally {
      _setLoading(false);
    }
  }
}
