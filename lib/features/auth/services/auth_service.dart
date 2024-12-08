import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import '../models/auth_user.dart';
import '../repositories/auth_repository.dart';
import '../../security/services/security_service.dart';
import '../../security/services/mfa_service.dart';

enum SocialProvider { google, apple }

class AuthService {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final AuthRepository _authRepository;
  final SecurityService _securityService;
  final FlutterSecureStorage _secureStorage;
  final MfaService _mfaService;

  AuthService({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    AuthRepository? authRepository,
    SecurityService? securityService,
    FlutterSecureStorage? secureStorage,
    MfaService? mfaService,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _authRepository = authRepository ?? AuthRepository(),
        _securityService = securityService ?? SecurityService(),
        _secureStorage = secureStorage ?? const FlutterSecureStorage(),
        _mfaService = mfaService ?? MfaService();

  // Email & Password Sign Up
  Future<AuthUser> signUpWithEmail({
    required String email,
    required String password,
    required String displayName,
  }) async {
    try {
      // Validate password strength
      _securityService.validatePasswordStrength(password);

      // Create Firebase user
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user == null) {
        throw Exception('Failed to create user');
      }

      // Update display name
      await userCredential.user!.updateDisplayName(displayName);

      // Create user profile in database
      final authUser = AuthUser(
        id: userCredential.user!.uid,
        email: email,
        displayName: displayName,
        photoUrl: userCredential.user!.photoURL,
        emailVerified: userCredential.user!.emailVerified,
        phoneNumber: userCredential.user!.phoneNumber,
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
      );

      await _authRepository.createUser(authUser);

      // Send verification email
      await userCredential.user!.sendEmailVerification();

      return authUser;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Email & Password Sign In
  Future<AuthUser> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user == null) {
        throw Exception('Failed to sign in');
      }

      // Update last login
      final authUser = await _authRepository.getUser(userCredential.user!.uid);
      await _authRepository.updateLastLogin(userCredential.user!.uid);

      // Log authentication event
      await _securityService.logAuthEvent(
        userId: userCredential.user!.uid,
        event: 'email_sign_in',
        metadata: {'email': email},
      );

      return authUser;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Google Sign In
  Future<AuthUser> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) throw Exception('Google sign in aborted');

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _firebaseAuth.signInWithCredential(credential);
      if (userCredential.user == null) throw Exception('Failed to sign in with Google');

      // Create or update user profile
      final authUser = AuthUser(
        id: userCredential.user!.uid,
        email: userCredential.user!.email!,
        displayName: userCredential.user!.displayName ?? '',
        photoUrl: userCredential.user!.photoURL,
        emailVerified: userCredential.user!.emailVerified,
        phoneNumber: userCredential.user!.phoneNumber,
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
      );

      await _authRepository.createOrUpdateUser(authUser);

      // Log authentication event
      await _securityService.logAuthEvent(
        userId: userCredential.user!.uid,
        event: 'google_sign_in',
        metadata: {'email': userCredential.user!.email},
      );

      return authUser;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Apple Sign In
  Future<AuthUser> signInWithApple() async {
    try {
      // Generate nonce for secure auth
      final rawNonce = generateNonce();
      final nonce = sha256ofString(rawNonce);

      // Request Apple credentials
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      // Create OAuthCredential
      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      // Sign in with Firebase
      final userCredential = await _firebaseAuth.signInWithCredential(oauthCredential);
      if (userCredential.user == null) {
        throw Exception('Failed to sign in with Apple');
      }

      // Create or update user profile
      final authUser = AuthUser(
        id: userCredential.user!.uid,
        email: userCredential.user!.email ?? '',
        displayName: '${appleCredential.givenName ?? ''} ${appleCredential.familyName ?? ''}'.trim(),
        photoUrl: userCredential.user!.photoURL,
        emailVerified: userCredential.user!.emailVerified,
        phoneNumber: userCredential.user!.phoneNumber,
        createdAt: DateTime.now(),
        lastLoginAt: DateTime.now(),
      );

      await _authRepository.createOrUpdateUser(authUser);

      // Log authentication event
      await _securityService.logAuthEvent(
        userId: userCredential.user!.uid,
        event: 'apple_sign_in',
        metadata: {'email': userCredential.user!.email},
      );

      return authUser;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Social Authentication Flow
  Future<AuthUser> signInWithSocialProvider(SocialProvider provider) async {
    try {
      late final AuthUser authUser;

      switch (provider) {
        case SocialProvider.google:
          authUser = await signInWithGoogle();
          break;
        case SocialProvider.apple:
          authUser = await signInWithApple();
          break;
        default:
          throw Exception('Unsupported social provider');
      }

      // Check if MFA is required
      final mfaRequired = await _authRepository.isMFARequired(authUser.id);
      if (mfaRequired) {
        await _mfaService.initiateMFAFlow(authUser.id);
      }

      // Update last login
      await _authRepository.updateLastLogin(authUser.id);

      // Create or update user profile
      await _authRepository.createOrUpdateUser(authUser);

      // Log authentication event
      await _securityService.logAuthEvent(
        userId: authUser.id,
        event: '${provider.toString().toLowerCase()}_sign_in_completed',
        metadata: {
          'email': authUser.email,
          'mfa_required': mfaRequired,
        },
      );

      return authUser;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Link Social Provider
  Future<void> linkSocialProvider(SocialProvider provider) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) throw Exception('No user signed in');

      late final AuthCredential credential;

      switch (provider) {
        case SocialProvider.google:
          final googleUser = await _googleSignIn.signIn();
          if (googleUser == null) throw Exception('Google sign in aborted');
          
          final googleAuth = await googleUser.authentication;
          credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          );
          break;

        case SocialProvider.apple:
          final rawNonce = generateNonce();
          final nonce = sha256ofString(rawNonce);

          final appleCredential = await SignInWithApple.getAppleIDCredential(
            scopes: [
              AppleIDAuthorizationScopes.email,
              AppleIDAuthorizationScopes.fullName,
            ],
            nonce: nonce,
          );

          credential = OAuthProvider('apple.com').credential(
            idToken: appleCredential.identityToken,
            rawNonce: rawNonce,
          );
          break;

        default:
          throw Exception('Unsupported social provider');
      }

      await user.linkWithCredential(credential);

      // Log event
      await _securityService.logAuthEvent(
        userId: user.uid,
        event: 'social_provider_linked',
        metadata: {
          'provider': provider.toString().toLowerCase(),
          'email': user.email,
        },
      );
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Unlink Social Provider
  Future<void> unlinkSocialProvider(SocialProvider provider) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) throw Exception('No user signed in');

      String providerId;
      switch (provider) {
        case SocialProvider.google:
          providerId = 'google.com';
          break;
        case SocialProvider.apple:
          providerId = 'apple.com';
          break;
        default:
          throw Exception('Unsupported social provider');
      }

      await user.unlink(providerId);

      // Log event
      await _securityService.logAuthEvent(
        userId: user.uid,
        event: 'social_provider_unlinked',
        metadata: {
          'provider': provider.toString().toLowerCase(),
          'email': user.email,
        },
      );
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // MFA Methods
  Future<MfaSettings> initializeMFA(String userId) async {
    try {
      return await _mfaService.initializeMFA(userId);
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Future<void> enableMFA({
    required String userId,
    required String verificationCode,
  }) async {
    try {
      await _mfaService.enableMFA(userId, verificationCode);
      await _securityService.logAuthEvent(
        userId: userId,
        event: 'mfa_enabled',
        metadata: {'timestamp': DateTime.now().toIso8601String()},
      );
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Future<void> disableMFA({
    required String userId,
    required String verificationCode,
  }) async {
    try {
      await _mfaService.disableMFA(userId, verificationCode);
      await _securityService.logAuthEvent(
        userId: userId,
        event: 'mfa_disabled',
        metadata: {'timestamp': DateTime.now().toIso8601String()},
      );
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Future<void> verifyMFA({
    required String userId,
    required String verificationCode,
  }) async {
    try {
      final settings = await _mfaService.getMfaSettings(userId);
      if (settings == null) {
        throw Exception('MFA not set up for this user');
      }

      final isValid = _mfaService.verifyTOTP(settings.secret, verificationCode);
      if (!isValid) {
        throw Exception('Invalid verification code');
      }

      await _securityService.logAuthEvent(
        userId: userId,
        event: 'mfa_verified',
        metadata: {'timestamp': DateTime.now().toIso8601String()},
      );
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Helper methods for Apple Sign In
  String generateNonce([int length = 32]) {
    const charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
  }

  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  // Sign Out
  Future<void> signOut() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user != null) {
        await _securityService.logAuthEvent(
          userId: user.uid,
          event: 'sign_out',
          metadata: {'email': user.email},
        );
      }

      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);

      await _secureStorage.deleteAll();
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Password Reset
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      await _securityService.logAuthEvent(
        userId: 'unknown',
        event: 'password_reset_requested',
        metadata: {'email': email},
      );
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Password Reset
  Future<void> resetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      await _securityService.logAuthEvent(
        userId: 'unknown',
        event: 'password_reset_requested',
        metadata: {'email': email},
      );
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Verify Password Reset Code
  Future<void> verifyPasswordResetCode(String code) async {
    try {
      await _firebaseAuth.verifyPasswordResetCode(code);
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Confirm Password Reset
  Future<void> confirmPasswordReset({
    required String code,
    required String newPassword,
  }) async {
    try {
      // Validate password strength
      _securityService.validatePasswordStrength(newPassword);
      
      await _firebaseAuth.confirmPasswordReset(
        code: code,
        newPassword: newPassword,
      );
      
      await _securityService.logAuthEvent(
        userId: 'unknown',
        event: 'password_reset_completed',
        metadata: {'timestamp': DateTime.now().toIso8601String()},
      );
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Email Verification
  Future<void> sendEmailVerification() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) throw Exception('No user signed in');
      await user.sendEmailVerification();
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Get Current User
  Future<AuthUser?> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return null;
    return _authRepository.getUser(user.uid);
  }

  // Update User Profile
  Future<void> updateProfile({
    String? displayName,
    String? photoUrl,
    String? phoneNumber,
  }) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) throw Exception('No user signed in');

      if (displayName != null) {
        await user.updateDisplayName(displayName);
      }
      if (photoUrl != null) {
        await user.updatePhotoURL(photoUrl);
      }

      await _authRepository.updateUser(
        user.uid,
        {
          if (displayName != null) 'displayName': displayName,
          if (photoUrl != null) 'photoUrl': photoUrl,
          if (phoneNumber != null) 'phoneNumber': phoneNumber,
        },
      );
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  // Error Handling
  Exception _handleAuthError(dynamic error) {
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'weak-password':
          return Exception('The password provided is too weak.');
        case 'email-already-in-use':
          return Exception('An account already exists for that email.');
        case 'invalid-email':
          return Exception('The email address is not valid.');
        case 'operation-not-allowed':
          return Exception('Email/password accounts are not enabled.');
        case 'user-disabled':
          return Exception('This user has been disabled.');
        case 'user-not-found':
          return Exception('No user found for that email.');
        case 'wrong-password':
          return Exception('Wrong password provided.');
        default:
          return Exception(error.message ?? 'An unknown error occurred.');
      }
    }
    return Exception('An unexpected error occurred.');
  }
}
