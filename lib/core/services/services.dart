import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../repositories/repositories.dart';
import '../models/user_model.dart';
import '../models/catch_model.dart';
import '../models/tournament_model.dart';
import '../models/species_model.dart';
import '../models/gear_model.dart';

class UserService {
  final UserRepository _repository;

  UserService(this._repository);

  Future<UserModel?> getCurrentUser(String userId) async {
    return await _repository.getUserById(userId);
  }

  Future<void> updateUserProfile(UserModel user) async {
    await _repository.update(user.id, user.toMap());
  }

  Stream<UserModel?> getUserStream(String userId) {
    return _repository.getUserStream(userId);
  }
}

class CatchService {
  final CatchRepository _repository;
  final SpeciesRepository _speciesRepository;

  CatchService(this._repository, this._speciesRepository);

  Future<String> recordCatch(CatchModel catch_) async {
    // Verify species exists and get confidence threshold
    final species = await _speciesRepository.get(catch_.speciesId);
    if (species == null) {
      throw Exception('Species not found');
    }

    final speciesModel = SpeciesModel.fromFirestore(
      await _speciesRepository.collection.doc(catch_.speciesId).get()
    );

    // Verify measurement confidence meets species threshold
    if (catch_.measurementConfidence < speciesModel.confidenceThreshold) {
      throw Exception('Measurement confidence too low');
    }

    return await _repository.add(catch_.toMap());
  }

  Future<List<CatchModel>> getUserCatchHistory(String userId) async {
    return await _repository.getUserCatches(userId);
  }

  Future<List<CatchModel>> getTournamentCatches(String tournamentId) async {
    return await _repository.getTournamentCatches(tournamentId);
  }
}

class TournamentService {
  final TournamentRepository _repository;
  final CatchRepository _catchRepository;

  TournamentService(this._repository, this._catchRepository);

  Future<String> createTournament(TournamentModel tournament) async {
    if (tournament.startDate.isBefore(DateTime.now())) {
      throw Exception('Tournament cannot start in the past');
    }
    return await _repository.add(tournament.toMap());
  }

  Future<void> joinTournament(String tournamentId, String userId) async {
    final tournament = await _repository.get(tournamentId);
    if (tournament == null) {
      throw Exception('Tournament not found');
    }

    final participants = List<String>.from(tournament['participants'] ?? []);
    if (participants.length >= tournament['maxParticipants']) {
      throw Exception('Tournament is full');
    }

    if (!participants.contains(userId)) {
      participants.add(userId);
      await _repository.update(tournamentId, {'participants': participants});
    }
  }

  Future<Map<String, int>> getLeaderboard(String tournamentId) async {
    final catches = await _catchRepository.getTournamentCatches(tournamentId);
    final leaderboard = <String, int>{};
    
    for (final catch_ in catches) {
      leaderboard[catch_.userId] = 
          (leaderboard[catch_.userId] ?? 0) + catch_.weight.toInt();
    }

    return Map.fromEntries(
      leaderboard.entries.toList()
        ..sort((a, b) => b.value.compareTo(a.value))
    );
  }
}

class SpeciesService {
  final SpeciesRepository _repository;

  SpeciesService(this._repository);

  Future<List<SpeciesModel>> searchSpecies(String query) async {
    return await _repository.searchSpecies(query);
  }

  Future<List<SpeciesModel>> getProtectedSpecies() async {
    return await _repository.getProtectedSpecies();
  }

  Future<bool> verifySpeciesIdentification(
      String speciesId, double confidence) async {
    final species = await _repository.get(speciesId);
    if (species == null) return false;

    final speciesModel = SpeciesModel.fromFirestore(
      await _repository.collection.doc(speciesId).get()
    );
    return confidence >= speciesModel.confidenceThreshold;
  }
}

class GearService {
  final GearRepository _repository;

  GearService(this._repository);

  Future<List<GearModel>> getUserGear(String userId) async {
    return await _repository.getUserGear(userId);
  }

  Future<List<GearModel>> getGearByCategory(
      String userId, GearCategory category) async {
    return await _repository.getGearByCategory(userId, category);
  }

  Future<void> updateGearCondition(
      String gearId, GearCondition newCondition) async {
    await _repository.update(gearId, {'condition': newCondition.toString()});
  }

  Future<void> logMaintenance(
      String gearId, String description) async {
    final now = DateTime.now();
    final maintenanceLog = {
      now.toIso8601String(): {
        'description': description,
        'timestamp': Timestamp.fromDate(now),
      }
    };
    await _repository.update(gearId, {'maintenanceLog': maintenanceLog});
  }
}
