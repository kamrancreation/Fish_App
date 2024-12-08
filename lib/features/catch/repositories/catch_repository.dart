import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/error/app_error.dart';
import '../../../core/services/error_service.dart';
import '../../../core/services/storage_service.dart';
import '../models/catch_model.dart';

part 'catch_repository.g.dart';

class CatchRepository {
  final FirebaseFirestore _firestore;
  final StorageService _storageService;
  final ErrorService _errorService;

  CatchRepository({
    required FirebaseFirestore firestore,
    required StorageService storageService,
    required ErrorService errorService,
  })  : _firestore = firestore,
        _storageService = storageService,
        _errorService = errorService;

  CollectionReference<Map<String, dynamic>> get _catchesRef =>
      _firestore.collection('catches');

  Future<List<CatchModel>> getAllCatches() async {
    try {
      final snapshot = await _catchesRef.orderBy('timestamp', descending: true).get();
      return snapshot.docs
          .map((doc) => CatchModel.fromMap({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-catches-failed',
          message: 'Failed to fetch catches',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<List<CatchModel>> getCatchesByUser(String userId) async {
    try {
      final snapshot = await _catchesRef
          .where('userId', isEqualTo: userId)
          .orderBy('timestamp', descending: true)
          .get();

      return snapshot.docs
          .map((doc) => CatchModel.fromMap({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-user-catches-failed',
          message: 'Failed to fetch user catches',
          context: {'userId': userId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<List<CatchModel>> getCatchesByTournament(String tournamentId) async {
    try {
      final snapshot = await _catchesRef
          .where('tournamentId', isEqualTo: tournamentId)
          .orderBy('timestamp', descending: true)
          .get();

      return snapshot.docs
          .map((doc) => CatchModel.fromMap({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-tournament-catches-failed',
          message: 'Failed to fetch tournament catches',
          context: {'tournamentId': tournamentId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<CatchModel?> getCatchById(String id) async {
    try {
      final doc = await _catchesRef.doc(id).get();
      if (!doc.exists) return null;
      return CatchModel.fromMap({...doc.data()!, 'id': doc.id});
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-catch-failed',
          message: 'Failed to fetch catch',
          context: {'catchId': id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<CatchModel> createCatch(CatchModel catchModel, List<String> imagePaths) async {
    try {
      // Upload images first
      final imageUrls = await Future.wait(
        imagePaths.map((path) => _storageService.uploadFile(
              path,
              'catches/${catchModel.userId}/${DateTime.now().millisecondsSinceEpoch}',
            )),
      );

      // Create catch with image URLs
      final catchWithImages = catchModel.copyWith(imageUrls: imageUrls);
      final docRef = await _catchesRef.add(catchWithImages.toMap());
      final newCatch = catchWithImages.copyWith(id: docRef.id);
      await docRef.set(newCatch.toMap());
      return newCatch;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'create-catch-failed',
          message: 'Failed to create catch',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> updateCatch(CatchModel catchModel) async {
    try {
      await _catchesRef.doc(catchModel.id).update(catchModel.toMap());
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'update-catch-failed',
          message: 'Failed to update catch',
          context: {'catchId': catchModel.id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> deleteCatch(String id) async {
    try {
      final catch_ = await getCatchById(id);
      if (catch_ == null) return;

      // Delete images from storage
      await Future.wait(
        catch_.imageUrls.map((url) => _storageService.deleteFile(url)),
      );

      // Delete catch document
      await _catchesRef.doc(id).delete();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'delete-catch-failed',
          message: 'Failed to delete catch',
          context: {'catchId': id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> verifyCatch(String id, String status) async {
    try {
      await _catchesRef.doc(id).update({
        'verificationStatus': status,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'verify-catch-failed',
          message: 'Failed to verify catch',
          context: {'catchId': id, 'status': status, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Stream<CatchModel> catchStream(String id) {
    return _catchesRef.doc(id).snapshots().map((doc) {
      if (!doc.exists) {
        throw AppError(
          code: 'catch-not-found',
          message: 'Catch not found',
          context: {'catchId': id},
        );
      }
      return CatchModel.fromMap({...doc.data()!, 'id': doc.id});
    });
  }

  Stream<List<CatchModel>> userCatchesStream(String userId) {
    return _catchesRef
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => CatchModel.fromMap({...doc.data(), 'id': doc.id}))
            .toList());
  }

  Stream<List<CatchModel>> tournamentCatchesStream(String tournamentId) {
    return _catchesRef
        .where('tournamentId', isEqualTo: tournamentId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => CatchModel.fromMap({...doc.data(), 'id': doc.id}))
            .toList());
  }
}

@riverpod
CatchRepository catchRepository(CatchRepositoryRef ref) {
  return CatchRepository(
    firestore: FirebaseFirestore.instance,
    storageService: ref.watch(storageServiceProvider),
    errorService: ref.watch(errorServiceProvider),
  );
}

@riverpod
Stream<List<CatchModel>> userCatchesStream(UserCatchesStreamRef ref, String userId) {
  final repository = ref.watch(catchRepositoryProvider);
  return repository.userCatchesStream(userId);
}

@riverpod
Stream<List<CatchModel>> tournamentCatchesStream(
    TournamentCatchesStreamRef ref, String tournamentId) {
  final repository = ref.watch(catchRepositoryProvider);
  return repository.tournamentCatchesStream(tournamentId);
}
