import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/error/app_error.dart';
import '../../../core/services/error_service.dart';
import '../models/user_model.dart';

part 'user_repository.g.dart';

class UserRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final ErrorService _errorService;

  UserRepository({
    required FirebaseAuth auth,
    required FirebaseFirestore firestore,
    required ErrorService errorService,
  })  : _auth = auth,
        _firestore = firestore,
        _errorService = errorService;

  CollectionReference<Map<String, dynamic>> get _usersRef =>
      _firestore.collection('users');

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<UserModel?> getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user == null) return null;
      return getUserById(user.uid);
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-current-user-failed',
          message: 'Failed to get current user',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<UserModel?> getUserById(String id) async {
    try {
      final doc = await _usersRef.doc(id).get();
      if (!doc.exists) return null;
      return UserModel.fromMap({...doc.data()!, 'id': doc.id});
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-user-failed',
          message: 'Failed to get user',
          context: {'userId': id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String displayName,
  }) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        displayName: displayName,
        tournaments: const [],
        catches: const [],
        isVerified: false,
        role: 'user',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      await _usersRef.doc(user.id).set(user.toMap());
      return user;
    } on FirebaseAuthException catch (e, stackTrace) {
      final error = _handleAuthError(e);
      _errorService.logError(error, stackTrace);
      throw error;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'signup-failed',
          message: 'Failed to sign up',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = await getUserById(userCredential.user!.uid);
      if (user == null) {
        throw AppError(
          code: 'user-not-found',
          message: 'User not found after sign in',
        );
      }
      return user;
    } on FirebaseAuthException catch (e, stackTrace) {
      final error = _handleAuthError(e);
      _errorService.logError(error, stackTrace);
      throw error;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'signin-failed',
          message: 'Failed to sign in',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'signout-failed',
          message: 'Failed to sign out',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> updateUser(UserModel user) async {
    try {
      await _usersRef.doc(user.id).update(user.toMap());
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'update-user-failed',
          message: 'Failed to update user',
          context: {'userId': user.id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> updatePassword(String newPassword) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw AppError(
          code: 'no-user',
          message: 'No user is currently signed in',
        );
      }
      await user.updatePassword(newPassword);
    } on FirebaseAuthException catch (e, stackTrace) {
      final error = _handleAuthError(e);
      _errorService.logError(error, stackTrace);
      throw error;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'update-password-failed',
          message: 'Failed to update password',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e, stackTrace) {
      final error = _handleAuthError(e);
      _errorService.logError(error, stackTrace);
      throw error;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'password-reset-failed',
          message: 'Failed to send password reset email',
          context: {'email': email, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> deleteAccount() async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        throw AppError(
          code: 'no-user',
          message: 'No user is currently signed in',
        );
      }

      // Delete user data from Firestore
      await _usersRef.doc(user.uid).delete();

      // Delete user authentication
      await user.delete();
    } on FirebaseAuthException catch (e, stackTrace) {
      final error = _handleAuthError(e);
      _errorService.logError(error, stackTrace);
      throw error;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'delete-account-failed',
          message: 'Failed to delete account',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  AppError _handleAuthError(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return AppError(
          code: 'user-not-found',
          message: 'No user found with this email',
        );
      case 'wrong-password':
        return AppError(
          code: 'wrong-password',
          message: 'Incorrect password',
        );
      case 'email-already-in-use':
        return AppError(
          code: 'email-in-use',
          message: 'Email is already registered',
        );
      case 'weak-password':
        return AppError(
          code: 'weak-password',
          message: 'Password is too weak',
        );
      case 'invalid-email':
        return AppError(
          code: 'invalid-email',
          message: 'Invalid email address',
        );
      case 'requires-recent-login':
        return AppError(
          code: 'requires-recent-login',
          message: 'Please sign in again to complete this action',
        );
      default:
        return AppError(
          code: 'auth-error',
          message: e.message ?? 'Authentication error occurred',
          context: {'code': e.code},
        );
    }
  }

  Stream<UserModel?> userStream(String id) {
    return _usersRef.doc(id).snapshots().map((doc) {
      if (!doc.exists) return null;
      return UserModel.fromMap({...doc.data()!, 'id': doc.id});
    });
  }
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepository(
    auth: FirebaseAuth.instance,
    firestore: FirebaseFirestore.instance,
    errorService: ref.watch(errorServiceProvider),
  );
}

@riverpod
Stream<User?> authStateChanges(AuthStateChangesRef ref) {
  return ref.watch(userRepositoryProvider).authStateChanges;
}

@riverpod
Stream<UserModel?> userStream(UserStreamRef ref, String id) {
  return ref.watch(userRepositoryProvider).userStream(id);
}
