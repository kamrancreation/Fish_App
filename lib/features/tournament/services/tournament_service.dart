import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/tournament_model.dart';
import '../../species/services/species_identification_service.dart';
import '../../../core/error/app_error.dart';
import '../../../core/services/analytics_service.dart';
import '../../../core/services/error_service.dart';
import '../../../core/services/notification_service.dart';

part 'tournament_service.g.dart';

class TournamentService {
  final FirebaseFirestore _firestore;
  final SpeciesIdentificationService _speciesService;
  final AnalyticsService _analytics;
  final ErrorService _errorService;
  final NotificationService _notifications;
  final String _collection = 'tournaments';

  TournamentService({
    FirebaseFirestore? firestore,
    SpeciesIdentificationService? speciesService,
    required AnalyticsService analytics,
    required ErrorService errorService,
    required NotificationService notifications,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _speciesService = speciesService ?? SpeciesIdentificationService(),
        _analytics = analytics,
        _errorService = errorService,
        _notifications = notifications;

  // Tournament Management
  Future<String> createTournament(Map<String, dynamic> tournamentData) async {
    try {
      final docRef = await _firestore.collection(_collection).add(tournamentData);
      await _firestore.collection(_collection).doc(docRef.id).update({
        'id': docRef.id,
        'status': TournamentStatus.upcoming.toString().split('.').last,
        'createdAt': FieldValue.serverTimestamp(),
      });
      _analytics.logEvent('create_tournament', {
        'tournament_id': docRef.id,
        'name': tournamentData['name'],
      });
      await _notifications.sendToTopic(
        topic: 'new_tournaments',
        title: 'New Tournament Available',
        body: 'Check out ${tournamentData['name']}!',
        data: {'tournament_id': docRef.id},
      );
      return docRef.id;
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

  Future<void> updateTournament(String id, Map<String, dynamic> updates) async {
    try {
      await _firestore.collection(_collection).doc(id).update(updates);
      _analytics.logEvent('update_tournament', {
        'tournament_id': id,
      });
      await _notifyParticipants(
        await getTournament(id),
        'Tournament Update',
        'The tournament has been updated',
      );
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'update-tournament-failed',
          message: 'Failed to update tournament',
          context: {'tournament_id': id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  // Participant Management
  Future<void> registerParticipant(String tournamentId, String userId) async {
    try {
      await _firestore.collection(_collection).doc(tournamentId).update({
        'participants': FieldValue.arrayUnion([userId]),
        'analytics.totalParticipants': FieldValue.increment(1),
      });
      _analytics.logEvent('join_tournament', {
        'tournament_id': tournamentId,
        'user_id': userId,
      });
      await _notifications.sendToUser(
        userId: userId,
        title: 'Welcome to the tournament',
        body: 'You have successfully joined the tournament',
        data: {'tournament_id': tournamentId},
      );
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'join-tournament-failed',
          message: 'Failed to join tournament',
          context: {
            'tournament_id': tournamentId,
            'user_id': userId,
            'error': e.toString(),
          },
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> withdrawParticipant(String tournamentId, String userId) async {
    try {
      await _firestore.collection(_collection).doc(tournamentId).update({
        'participants': FieldValue.arrayRemove([userId]),
        'analytics.totalParticipants': FieldValue.increment(-1),
      });
      _analytics.logEvent('leave_tournament', {
        'tournament_id': tournamentId,
        'user_id': userId,
      });
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'leave-tournament-failed',
          message: 'Failed to leave tournament',
          context: {
            'tournament_id': tournamentId,
            'user_id': userId,
            'error': e.toString(),
          },
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  // Catch Verification and Scoring
  Future<Map<String, dynamic>> verifyCatch(
    String tournamentId,
    String userId,
    Map<String, dynamic> catchData,
  ) async {
    try {
      // Verify the catch using species identification
      final verificationResult = await _speciesService.identifySpecies(
        catchData['image'],
        additionalInfo: {'includeSize': true},
      );

      // Check if catch meets tournament rules
      final tournament = await getTournament(tournamentId);
      if (!tournament.isCatchValid(catchData)) {
        throw Exception('Catch does not meet tournament rules');
      }

      // Store verified catch
      final catchRef = await _firestore
          .collection(_collection)
          .doc(tournamentId)
          .collection('catches')
          .add({
        ...catchData,
        'userId': userId,
        'verificationData': verificationResult,
        'timestamp': FieldValue.serverTimestamp(),
        'status': 'verified',
      });

      // Update leaderboard
      await _updateLeaderboard(tournamentId, userId);

      _analytics.logEvent('verify_catch', {
        'tournament_id': tournamentId,
        'user_id': userId,
        'catch_id': catchRef.id,
      });

      return {
        'catchId': catchRef.id,
        'verificationResult': verificationResult,
      };
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'verify-catch-failed',
          message: 'Failed to verify catch',
          context: {
            'tournament_id': tournamentId,
            'user_id': userId,
            'error': e.toString(),
          },
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> _updateLeaderboard(String tournamentId, String userId) async {
    try {
      // Get all verified catches for the user
      final catches = await _firestore
          .collection(_collection)
          .doc(tournamentId)
          .collection('catches')
          .where('userId', isEqualTo: userId)
          .where('status', isEqualTo: 'verified')
          .get();

      // Calculate score
      final tournament = await getTournament(tournamentId);
      final score = tournament.calculateScore(
        catches.docs.map((doc) => doc.data()).toList(),
      );

      // Update leaderboard
      await _firestore.collection(_collection).doc(tournamentId).update({
        'leaderboard.$userId': score,
      });
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'update-leaderboard-failed',
          message: 'Failed to update leaderboard',
          context: {
            'tournament_id': tournamentId,
            'user_id': userId,
            'error': e.toString(),
          },
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  // Tournament Status Management
  Future<void> startTournament(String tournamentId) async {
    try {
      await _firestore.collection(_collection).doc(tournamentId).update({
        'status': TournamentStatus.active.toString().split('.').last,
        'startedAt': FieldValue.serverTimestamp(),
      });
      _analytics.logEvent('start_tournament', {
        'tournament_id': tournamentId,
      });
      await _notifyParticipants(
        await getTournament(tournamentId),
        'Tournament Started',
        'The tournament has begun!',
      );
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'start-tournament-failed',
          message: 'Failed to start tournament',
          context: {'tournament_id': tournamentId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> endTournament(String tournamentId) async {
    try {
      // Update status
      await _firestore.collection(_collection).doc(tournamentId).update({
        'status': TournamentStatus.verification.toString().split('.').last,
        'endedAt': FieldValue.serverTimestamp(),
      });

      // Trigger final verification process
      await _verifyTournamentResults(tournamentId);

      _analytics.logEvent('end_tournament', {
        'tournament_id': tournamentId,
      });
      await _notifyParticipants(
        await getTournament(tournamentId),
        'Tournament Ended',
        'The tournament has ended. Check the results!',
      );
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'end-tournament-failed',
          message: 'Failed to end tournament',
          context: {'tournament_id': tournamentId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> _verifyTournamentResults(String tournamentId) async {
    try {
      // Verify all catches one final time
      final catches = await _firestore
          .collection(_collection)
          .doc(tournamentId)
          .collection('catches')
          .get();

      // Perform final verification checks
      // Update catch statuses
      // Calculate final scores
      // Determine winners
      // Update tournament status to completed
      await _firestore.collection(_collection).doc(tournamentId).update({
        'status': TournamentStatus.completed.toString().split('.').last,
        'verifiedAt': FieldValue.serverTimestamp(),
      });
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'verify-tournament-results-failed',
          message: 'Failed to verify tournament results',
          context: {'tournament_id': tournamentId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  // Prize Management
  Future<void> distributePrizes(String tournamentId) async {
    try {
      final tournament = await getTournament(tournamentId);
      final prizeDistribution = tournament.getPrizeDistribution();

      // Get final leaderboard
      final leaderboard = tournament.leaderboard;
      final sortedParticipants = leaderboard.entries.toList()
        ..sort((a, b) => b.value.compareTo(a.value));

      // Distribute prizes
      for (var i = 0; i < sortedParticipants.length; i++) {
        if (prizeDistribution.containsKey('place${i + 1}')) {
          final userId = sortedParticipants[i].key;
          final prizeAmount = prizeDistribution['place${i + 1}'];
          await _awardPrize(tournamentId, userId, prizeAmount);
        }
      }
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'distribute-prizes-failed',
          message: 'Failed to distribute prizes',
          context: {'tournament_id': tournamentId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> _awardPrize(
    String tournamentId,
    String userId,
    double amount,
  ) async {
    try {
      // Create prize award record
      await _firestore
          .collection(_collection)
          .doc(tournamentId)
          .collection('prizes')
          .add({
        'userId': userId,
        'amount': amount,
        'status': 'awarded',
        'timestamp': FieldValue.serverTimestamp(),
      });

      // Update user's prize history
      await _firestore.collection('users').doc(userId).update({
        'prizeHistory': FieldValue.arrayUnion([
          {
            'tournamentId': tournamentId,
            'amount': amount,
            'timestamp': FieldValue.serverTimestamp(),
          }
        ]),
      });
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'award-prize-failed',
          message: 'Failed to award prize',
          context: {
            'tournament_id': tournamentId,
            'user_id': userId,
            'error': e.toString(),
          },
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  // Analytics
  Future<Map<String, dynamic>> getTournamentAnalytics(String tournamentId) async {
    try {
      final tournament = await getTournament(tournamentId);
      final catches = await _firestore
          .collection(_collection)
          .doc(tournamentId)
          .collection('catches')
          .get();

      // Calculate analytics
      final analytics = {
        ...tournament.analytics,
        'catchesOverTime': _analyzeCatchesOverTime(catches.docs),
        'speciesDistribution': _analyzeSpeciesDistribution(catches.docs),
        'participantPerformance': _analyzeParticipantPerformance(catches.docs),
      };

      // Update tournament analytics
      await _firestore.collection(_collection).doc(tournamentId).update({
        'analytics': analytics,
      });

      return analytics;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-tournament-analytics-failed',
          message: 'Failed to get tournament analytics',
          context: {'tournament_id': tournamentId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Map<String, dynamic> _analyzeCatchesOverTime(List<QueryDocumentSnapshot> catches) {
    // Implement catch time analysis
    return {};
  }

  Map<String, dynamic> _analyzeSpeciesDistribution(List<QueryDocumentSnapshot> catches) {
    // Implement species distribution analysis
    return {};
  }

  Map<String, dynamic> _analyzeParticipantPerformance(List<QueryDocumentSnapshot> catches) {
    // Implement participant performance analysis
    return {};
  }

  // Queries
  Future<TournamentModel> getTournament(String id) async {
    try {
      final doc = await _firestore.collection(_collection).doc(id).get();
      if (!doc.exists) throw Exception('Tournament not found');
      return TournamentModel.fromJson(doc.data()!);
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-tournament-failed',
          message: 'Failed to get tournament',
          context: {'tournament_id': id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Stream<List<TournamentModel>> streamActiveTournaments() {
    return _firestore
        .collection(_collection)
        .where('status', isEqualTo: TournamentStatus.active.toString().split('.').last)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => TournamentModel.fromJson(doc.data()))
            .toList());
  }

  Stream<List<TournamentModel>> streamUserTournaments(String userId) {
    return _firestore
        .collection(_collection)
        .where('participants', arrayContains: userId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => TournamentModel.fromJson(doc.data()))
            .toList());
  }

  Stream<Map<String, dynamic>> streamLeaderboard(String tournamentId) {
    return _firestore
        .collection(_collection)
        .doc(tournamentId)
        .snapshots()
        .map((doc) => doc.data()?['leaderboard'] as Map<String, dynamic>? ?? {});
  }

  Future<void> _notifyParticipants(
    TournamentModel tournament,
    String title,
    String body,
  ) async {
    try {
      await Future.wait(
        tournament.participants.map((userId) => _notifications.sendToUser(
              userId: userId,
              title: title,
              body: body,
              data: {'tournament_id': tournament.id},
            )),
      );
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'notify-participants-failed',
          message: 'Failed to notify tournament participants',
          context: {
            'tournament_id': tournament.id,
            'error': e.toString(),
          },
        ),
        stackTrace,
      );
      // Don't rethrow as this is a non-critical operation
    }
  }
}

@riverpod
TournamentService tournamentService(TournamentServiceRef ref) {
  return TournamentService(
    analytics: ref.watch(analyticsServiceProvider),
    errorService: ref.watch(errorServiceProvider),
    notifications: ref.watch(notificationServiceProvider),
  );
}

@riverpod
Stream<List<TournamentModel>> activeTournaments(ActiveTournamentsRef ref) {
  return ref.watch(activeTournamentsStreamProvider);
}

@riverpod
Stream<List<TournamentModel>> upcomingTournaments(UpcomingTournamentsRef ref) {
  return ref.watch(upcomingTournamentsStreamProvider);
}
