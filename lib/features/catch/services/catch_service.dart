import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/error/app_error.dart';
import '../../../core/services/analytics_service.dart';
import '../../../core/services/error_service.dart';
import '../../../core/services/notification_service.dart';
import '../../../core/services/storage_service.dart';
import '../models/catch_model.dart';
import '../repositories/catch_repository.dart';
import '../../species/services/species_identification_service.dart';

part 'catch_service.g.dart';

class CatchService {
  final CatchRepository _repository;
  final AnalyticsService _analytics;
  final ErrorService _errorService;
  final NotificationService _notifications;
  final StorageService _storage;
  final SpeciesIdentificationService _speciesService;

  CatchService({
    required CatchRepository repository,
    required AnalyticsService analytics,
    required ErrorService errorService,
    required NotificationService notifications,
    required StorageService storage,
    required SpeciesIdentificationService speciesService,
  })  : _repository = repository,
        _analytics = analytics,
        _errorService = errorService,
        _notifications = notifications,
        _storage = storage,
        _speciesService = speciesService;

  Future<CatchModel> createCatch(CatchModel catch_, List<String> imagePaths) async {
    try {
      // First identify the species
      final speciesResult = await _speciesService.identifySpecies(imagePaths.first);
      final catchWithSpecies = catch_.copyWith(
        species: speciesResult.species,
        metadata: {
          ...catch_.metadata ?? {},
          'speciesConfidence': speciesResult.confidence,
          'identificationMethod': 'ai',
        },
      );

      final newCatch = await _repository.createCatch(catchWithSpecies, imagePaths);
      
      _analytics.logEvent('create_catch', {
        'catch_id': newCatch.id,
        'user_id': newCatch.userId,
        'tournament_id': newCatch.tournamentId,
        'species': newCatch.species,
      });

      // If this is a tournament catch, notify tournament organizers
      if (newCatch.tournamentId != null) {
        await _notifications.sendToTopic(
          topic: 'tournament_${newCatch.tournamentId}',
          title: 'New Catch Submitted',
          body: 'A new ${newCatch.species} has been caught!',
          data: {
            'catch_id': newCatch.id,
            'tournament_id': newCatch.tournamentId!,
          },
        );
      }

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

  Future<void> updateCatch(CatchModel catch_) async {
    try {
      await _repository.updateCatch(catch_);
      
      _analytics.logEvent('update_catch', {
        'catch_id': catch_.id,
        'user_id': catch_.userId,
      });
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'update-catch-failed',
          message: 'Failed to update catch',
          context: {'catch_id': catch_.id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> deleteCatch(String id) async {
    try {
      final catch_ = await _repository.getCatchById(id);
      if (catch_ == null) return;

      // Delete the catch and its images
      await _repository.deleteCatch(id);
      
      _analytics.logEvent('delete_catch', {
        'catch_id': id,
        'user_id': catch_.userId,
      });

      // If this was a tournament catch, notify organizers
      if (catch_.tournamentId != null) {
        await _notifications.sendToTopic(
          topic: 'tournament_${catch_.tournamentId}',
          title: 'Catch Deleted',
          body: 'A catch has been removed from the tournament',
          data: {
            'catch_id': id,
            'tournament_id': catch_.tournamentId!,
          },
        );
      }
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'delete-catch-failed',
          message: 'Failed to delete catch',
          context: {'catch_id': id, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<void> verifyCatch(String id, String status) async {
    try {
      await _repository.verifyCatch(id, status);
      
      final catch_ = await _repository.getCatchById(id);
      if (catch_ == null) return;

      _analytics.logEvent('verify_catch', {
        'catch_id': id,
        'user_id': catch_.userId,
        'status': status,
      });

      // Notify the user of verification result
      await _notifications.sendToUser(
        userId: catch_.userId,
        title: 'Catch Verification Update',
        body: 'Your catch has been ${status.toLowerCase()}',
        data: {
          'catch_id': id,
          'verification_status': status,
        },
      );
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'verify-catch-failed',
          message: 'Failed to verify catch',
          context: {'catch_id': id, 'status': status, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<List<CatchModel>> getUserCatches(String userId) async {
    try {
      final catches = await _repository.getCatchesByUser(userId);
      
      _analytics.logEvent('view_user_catches', {
        'user_id': userId,
        'count': catches.length,
      });

      return catches;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-user-catches-failed',
          message: 'Failed to get user catches',
          context: {'user_id': userId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Future<List<CatchModel>> getTournamentCatches(String tournamentId) async {
    try {
      final catches = await _repository.getCatchesByTournament(tournamentId);
      
      _analytics.logEvent('view_tournament_catches', {
        'tournament_id': tournamentId,
        'count': catches.length,
      });

      return catches;
    } catch (e, stackTrace) {
      _errorService.logError(
        AppError(
          code: 'get-tournament-catches-failed',
          message: 'Failed to get tournament catches',
          context: {'tournament_id': tournamentId, 'error': e.toString()},
        ),
        stackTrace,
      );
      rethrow;
    }
  }

  Stream<List<CatchModel>> watchUserCatches(String userId) {
    return _repository.userCatchesStream(userId);
  }

  Stream<List<CatchModel>> watchTournamentCatches(String tournamentId) {
    return _repository.tournamentCatchesStream(tournamentId);
  }
}

@riverpod
CatchService catchService(CatchServiceRef ref) {
  return CatchService(
    repository: ref.watch(catchRepositoryProvider),
    analytics: ref.watch(analyticsServiceProvider),
    errorService: ref.watch(errorServiceProvider),
    notifications: ref.watch(notificationServiceProvider),
    storage: ref.watch(storageServiceProvider),
    speciesService: ref.watch(speciesIdentificationServiceProvider),
  );
}

@riverpod
Stream<List<CatchModel>> userCatches(UserCatchesRef ref, String userId) {
  return ref.watch(catchServiceProvider).watchUserCatches(userId);
}

@riverpod
Stream<List<CatchModel>> tournamentCatches(
    TournamentCatchesRef ref, String tournamentId) {
  return ref.watch(catchServiceProvider).watchTournamentCatches(tournamentId);
}
