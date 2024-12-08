import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/tournament.dart';
import '../models/tournament_entry.dart';
import '../models/verification_result.dart';
import '../repositories/tournament_repository.dart';
import '../../ar/services/ar_service.dart';
import '../../media/services/streaming_service.dart';

final tournamentServiceProvider = Provider((ref) => TournamentService(ref));

class TournamentService {
  final Ref _ref;

  TournamentService(this._ref);

  Future<Tournament> createTournament({
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required List<String> rules,
    required Map<String, dynamic> prizes,
    List<String>? sponsors,
    required Map<String, dynamic> verificationRules,
  }) async {
    final repository = _ref.read(tournamentRepositoryProvider);
    
    final tournament = Tournament(
      name: name,
      startDate: startDate,
      endDate: endDate,
      rules: rules,
      prizes: prizes,
      sponsors: sponsors ?? [],
      verificationRules: verificationRules,
      status: TournamentStatus.upcoming,
      entries: [],
      streams: [],
    );

    return repository.createTournament(tournament);
  }

  Future<void> startTournament(String tournamentId) async {
    final repository = _ref.read(tournamentRepositoryProvider);
    await repository.updateTournamentStatus(
      tournamentId,
      TournamentStatus.active,
    );
  }

  Future<void> endTournament(String tournamentId) async {
    final repository = _ref.read(tournamentRepositoryProvider);
    await repository.updateTournamentStatus(
      tournamentId,
      TournamentStatus.completed,
    );
    await _certifyResults(tournamentId);
  }

  Future<VerificationResult> verifyEntry({
    required String tournamentId,
    required TournamentEntry entry,
  }) async {
    final arService = _ref.read(arServiceProvider);
    final repository = _ref.read(tournamentRepositoryProvider);

    // Verify measurements using AR
    final measurementVerification = await arService.verifyMeasurements(
      entry.fishMeasurements,
    );

    // Check for image manipulation
    final imageVerification = await _verifyImages(entry.images);

    // Verify GPS location
    final locationVerification = await _verifyLocation(
      entry.location,
      tournamentId,
    );

    // Verify timestamp
    final timeVerification = await _verifyTimestamp(
      entry.timestamp,
      tournamentId,
    );

    final result = VerificationResult(
      isValid: measurementVerification &&
          imageVerification &&
          locationVerification &&
          timeVerification,
      measurementVerified: measurementVerification,
      imageVerified: imageVerification,
      locationVerified: locationVerification,
      timeVerified: timeVerification,
      verificationTimestamp: DateTime.now(),
    );

    // Store verification result
    await repository.addVerificationResult(tournamentId, entry.id, result);

    return result;
  }

  Future<String> startLiveStream({
    required String tournamentId,
    required String userId,
    required String title,
    required bool enableChat,
  }) async {
    final streamingService = _ref.read(streamingServiceProvider);
    final repository = _ref.read(tournamentRepositoryProvider);

    // Start the stream
    final streamId = await streamingService.startStream(
      title: title,
      userId: userId,
      enableChat: enableChat,
    );

    // Add stream to tournament
    await repository.addStreamToTournament(
      tournamentId,
      streamId,
      userId,
    );

    return streamId;
  }

  Future<void> updatePrizeAllocation({
    required String tournamentId,
    required Map<String, dynamic> newPrizes,
  }) async {
    final repository = _ref.read(tournamentRepositoryProvider);
    await repository.updatePrizes(tournamentId, newPrizes);
  }

  Future<void> addSponsor({
    required String tournamentId,
    required String sponsorName,
    required String sponsorLogo,
    required Map<String, dynamic> sponsorDetails,
  }) async {
    final repository = _ref.read(tournamentRepositoryProvider);
    await repository.addSponsor(
      tournamentId,
      sponsorName,
      sponsorLogo,
      sponsorDetails,
    );
  }

  Future<bool> _verifyImages(List<String> images) async {
    // Implement image manipulation detection
    // - Check metadata
    // - Analyze image patterns
    // - Verify timestamps in EXIF data
    return true;
  }

  Future<bool> _verifyLocation(
    Map<String, dynamic> location,
    String tournamentId,
  ) async {
    // Verify if location is within tournament boundaries
    // Check for GPS spoofing
    return true;
  }

  Future<bool> _verifyTimestamp(
    DateTime timestamp,
    String tournamentId,
  ) async {
    final repository = _ref.read(tournamentRepositoryProvider);
    final tournament = await repository.getTournament(tournamentId);

    return timestamp.isAfter(tournament.startDate) &&
        timestamp.isBefore(tournament.endDate);
  }

  Future<void> _certifyResults(String tournamentId) async {
    final repository = _ref.read(tournamentRepositoryProvider);
    final tournament = await repository.getTournament(tournamentId);

    // Generate certification data
    final certificationData = {
      'tournamentId': tournamentId,
      'name': tournament.name,
      'startDate': tournament.startDate,
      'endDate': tournament.endDate,
      'entries': tournament.entries,
      'verificationResults': await repository.getAllVerificationResults(tournamentId),
      'timestamp': DateTime.now(),
      // Add blockchain or other certification data
    };

    // Store certification
    await repository.storeCertification(tournamentId, certificationData);
  }
}
