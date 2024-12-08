import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../models/user_model.dart';
import '../repositories/repositories.dart';

enum AuthProvider { email, google, apple }

class AuthService {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final UserRepository _userRepository;

  AuthService({
    FirebaseAuth? auth,
    GoogleSignIn? googleSignIn,
    required UserRepository userRepository,
  })  : _auth = auth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _userRepository = userRepository;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<UserModel?> get currentUser async {
    final user = _auth.currentUser;
    if (user == null) return null;
    return await _userRepository.getUserById(user.uid);
  }

  Future<UserModel> signInWithEmail(String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      if (credential.user == null) {
        throw Exception('Sign in failed');
      }

      var user = await _userRepository.getUserById(credential.user!.uid);
      if (user == null) {
        // Create new user profile if first time signing in
        user = UserModel(
          id: credential.user!.uid,
          email: email,
          displayName: credential.user!.displayName ?? email.split('@')[0],
          photoUrl: credential.user!.photoURL,
          createdAt: DateTime.now(),
        );
        await _userRepository.add(user.toMap());
      }
      return user;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Future<UserModel> signUpWithEmail(
      String email, String password, String displayName) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        throw Exception('Sign up failed');
      }

      await credential.user!.updateDisplayName(displayName);

      final user = UserModel(
        id: credential.user!.uid,
        email: email,
        displayName: displayName,
        photoUrl: credential.user!.photoURL,
        createdAt: DateTime.now(),
      );

      await _userRepository.add(user.toMap());
      return user;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Future<UserModel> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) throw Exception('Google sign in cancelled');

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);
      if (userCredential.user == null) throw Exception('Google sign in failed');

      var user = await _userRepository.getUserById(userCredential.user!.uid);
      if (user == null) {
        user = UserModel(
          id: userCredential.user!.uid,
          email: userCredential.user!.email!,
          displayName: userCredential.user!.displayName!,
          photoUrl: userCredential.user!.photoURL,
          createdAt: DateTime.now(),
        );
        await _userRepository.add(user.toMap());
      }
      return user;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Future<UserModel> signInWithApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );

      final userCredential = await _auth.signInWithCredential(oauthCredential);
      if (userCredential.user == null) throw Exception('Apple sign in failed');

      var user = await _userRepository.getUserById(userCredential.user!.uid);
      if (user == null) {
        final displayName = credential.givenName != null && credential.familyName != null
            ? '${credential.givenName} ${credential.familyName}'
            : 'Apple User';

        user = UserModel(
          id: userCredential.user!.uid,
          email: credential.email ?? userCredential.user!.email!,
          displayName: displayName,
          photoUrl: userCredential.user!.photoURL,
          createdAt: DateTime.now(),
        );
        await _userRepository.add(user.toMap());
      }
      return user;
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Future<void> updateProfile({
    String? displayName,
    String? photoUrl,
  }) async {
    try {
      final user = _auth.currentUser;
      if (user == null) throw Exception('No user signed in');

      if (displayName != null) {
        await user.updateDisplayName(displayName);
      }

      if (photoUrl != null) {
        await user.updatePhotoURL(photoUrl);
      }

      await _userRepository.update(user.uid, {
        if (displayName != null) 'displayName': displayName,
        if (photoUrl != null) 'photoUrl': photoUrl,
      });
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Future<void> signOut() async {
    try {
      await Future.wait([
        _auth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } catch (e) {
      throw _handleAuthError(e);
    }
  }

  Exception _handleAuthError(dynamic e) {
    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'user-not-found':
          return Exception('No user found with this email');
        case 'wrong-password':
          return Exception('Incorrect password');
        case 'email-already-in-use':
          return Exception('Email is already registered');
        case 'invalid-email':
          return Exception('Invalid email address');
        case 'weak-password':
          return Exception('Password is too weak');
        case 'operation-not-allowed':
          return Exception('Operation not allowed');
        case 'user-disabled':
          return Exception('User account has been disabled');
        default:
          return Exception(e.message ?? 'Authentication failed');
      }
    }
    return Exception('Authentication failed: ${e.toString()}');
  }
}
