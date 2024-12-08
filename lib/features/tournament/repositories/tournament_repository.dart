import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/error/app_error.dart';
import '../../../core/services/error_service.dart';
import '../models/tournament_model.dart';

part 'tournament_repository.g.dart';

class TournamentRepository {
  final FirebaseFirestore _firestore;
  final ErrorService _errorService;

  TournamentRepository({
    required FirebaseFirestore firestore,
    required ErrorService errorService,
  })  : _firestore = firestore,
        _errorService = errorService;

  CollectionReference<Map<String, dynamic>> get _tournamentsRef =>
      _firestore.collection('tournaments');

  Future<List<TournamentModel>> getAllTournaments() async {
    try {
      final snapshot = await _tournamentsRef.get();
      return snapshot.docs
          .map((doc) => TournamentModel.fromMap({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-tournaments-failed',
          message: 'Failed to fetch tournaments',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<List<TournamentModel>> getUpcomingTournaments() async {
    try {
      final now = DateTime.now();
      final snapshot = await _tournamentsRef
          .where('startDate', isGreaterThan: Timestamp.fromDate(now))
          .orderBy('startDate')
          .get();

      return snapshot.docs
          .map((doc) => TournamentModel.fromMap({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-upcoming-tournaments-failed',
          message: 'Failed to fetch upcoming tournaments',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<List<TournamentModel>> getActiveTournaments() async {
    try {
      final now = DateTime.now();
      final snapshot = await _tournamentsRef
          .where('startDate', isLessThanOrEqualTo: Timestamp.fromDate(now))
          .where('endDate', isGreaterThanOrEqualTo: Timestamp.fromDate(now))
          .where('status', isEqualTo: 'active')
          .get();

      return snapshot.docs
          .map((doc) => TournamentModel.fromMap({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-active-tournaments-failed',
          message: 'Failed to fetch active tournaments',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<TournamentModel?> getTournamentById(String id) async {
    try {
      final doc = await _tournamentsRef.doc(id).get();
      if (!doc.exists) return null;
      return TournamentModel.fromMap({...doc.data()!, 'id': doc.id});
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-tournament-failed',
          message: 'Failed to fetch tournament',
          context: {'tournamentId': id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<List<TournamentModel>> getTournamentsByUser(String userId) async {
    try {
      final snapshot = await _tournamentsRef
          .where('participants', arrayContains: userId)
          .get();

      return snapshot.docs
          .map((doc) => TournamentModel.fromMap({...doc.data(), 'id': doc.id}))
          .toList();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-user-tournaments-failed',
          message: 'Failed to fetch user tournaments',
          context: {'userId': userId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<TournamentModel> createTournament(TournamentModel tournament) async {
    try {
      final docRef = await _tournamentsRef.add(tournament.toMap());
      final newTournament = tournament.copyWith(id: docRef.id);
      await docRef.set(newTournament.toMap());
      return newTournament;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'create-tournament-failed',
          message: 'Failed to create tournament',
          context: {'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> updateTournament(TournamentModel tournament) async {
    try {
      await _tournamentsRef.doc(tournament.id).update(tournament.toMap());
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'update-tournament-failed',
          message: 'Failed to update tournament',
          context: {'tournamentId': tournament.id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> deleteTournament(String id) async {
    try {
      await _tournamentsRef.doc(id).delete();
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'delete-tournament-failed',
          message: 'Failed to delete tournament',
          context: {'tournamentId': id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> addParticipant(String tournamentId, String userId) async {
    try {
      await _tournamentsRef.doc(tournamentId).update({
        'participants': FieldValue.arrayUnion([userId]),
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'add-participant-failed',
          message: 'Failed to add participant',
          context: {
            'tournamentId': tournamentId,
            'userId': userId,
            'error': e.toString()
          },
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> removeParticipant(String tournamentId, String userId) async {
    try {
      await _tournamentsRef.doc(tournamentId).update({
        'participants': FieldValue.arrayRemove([userId]),
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'remove-participant-failed',
          message: 'Failed to remove participant',
          context: {
            'tournamentId': tournamentId,
            'userId': userId,
            'error': e.toString()
          },
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Stream<TournamentModel> tournamentStream(String id) {
    return _tournamentsRef.doc(id).snapshots().map((doc) {
      if (!doc.exists) {
        throw AppError(
          code: 'tournament-not-found',
          message: 'Tournament not found',
          context: {'tournamentId': id},
        );
      }
      return TournamentModel.fromMap({...doc.data()!, 'id': doc.id});
    });
  }
}

@riverpod
TournamentRepository tournamentRepository(TournamentRepositoryRef ref) {
  return TournamentRepository(
    firestore: FirebaseFirestore.instance,
    errorService: ref.watch(errorServiceProvider),
  );
}

@riverpod
Stream<List<TournamentModel>> activeTournamentsStream(
    ActiveTournamentsStreamRef ref) {
  final now = DateTime.now();
  return FirebaseFirestore.instance
      .collection('tournaments')
      .where('startDate', isLessThanOrEqualTo: Timestamp.fromDate(now))
      .where('endDate', isGreaterThanOrEqualTo: Timestamp.fromDate(now))
      .where('status', isEqualTo: 'active')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => TournamentModel.fromMap({...doc.data(), 'id': doc.id}))
          .toList());
}

@riverpod
Stream<List<TournamentModel>> upcomingTournamentsStream(
    UpcomingTournamentsStreamRef ref) {
  final now = DateTime.now();
  return FirebaseFirestore.instance
      .collection('tournaments')
      .where('startDate', isGreaterThan: Timestamp.fromDate(now))
      .orderBy('startDate')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => TournamentModel.fromMap({...doc.data(), 'id': doc.id}))
          .toList());
}
