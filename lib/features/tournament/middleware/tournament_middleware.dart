import '../models/tournament_model.dart';
import '../services/tournament_service.dart';
import '../services/fraud_detection_service.dart';
import '../../auth/services/auth_service.dart';

class TournamentMiddleware {
  final TournamentService _tournamentService;
  final FraudDetectionService _fraudService;
  final AuthService _authService;

  TournamentMiddleware(
    this._tournamentService,
    this._fraudService,
    this._authService,
  );

  Future<bool> canCreateTournament() async {
    final user = _authService.currentUser;
    if (user == null) return false;
    return user.isPro;
  }

  Future<bool> canJoinTournament(String tournamentId) async {
    final user = _authService.currentUser;
    if (user == null) return false;

    final tournament = await _tournamentService.getTournament(tournamentId);
    
    // Check if tournament is full
    if (tournament.maxParticipants != null &&
        tournament.participants.length >= tournament.maxParticipants!) {
      return false;
    }

    // Check if tournament is private
    if (tournament.isPrivate &&
        !tournament.invitedUsers.contains(user.id)) {
      return false;
    }

    // Check if tournament has started
    if (tournament.status == TournamentStatus.completed) {
      return false;
    }

    // Check if user is banned
    if (tournament.bannedUsers.contains(user.id)) {
      return false;
    }

    return true;
  }

  Future<bool> canSubmitCatch(String tournamentId) async {
    final user = _authService.currentUser;
    if (user == null) return false;

    final tournament = await _tournamentService.getTournament(tournamentId);
    
    // Check if tournament is active
    if (tournament.status != TournamentStatus.active) {
      return false;
    }

    // Check if user is participant
    if (!tournament.participants.contains(user.id)) {
      return false;
    }

    // Check if user has reached catch limit
    final userCatches = await _tournamentService.getUserCatches(
      tournamentId,
      user.id,
    );
    if (tournament.catchLimit != null &&
        userCatches.length >= tournament.catchLimit!) {
      return false;
    }

    return true;
  }

  Future<Map<String, dynamic>> validateCatch({
    required String tournamentId,
    required Map<String, dynamic> catchData,
  }) async {
    final user = _authService.currentUser;
    if (user == null) {
      return {
        'isValid': false,
        'error': 'User not authenticated',
      };
    }

    // Validate catch with fraud detection service
    final fraudCheck = await _fraudService.validateCatch(
      tournamentId: tournamentId,
      userId: user.id,
      catchData: catchData,
      location: catchData['location'],
    );

    if (!fraudCheck['isValid']) {
      return {
        'isValid': false,
        'error': fraudCheck['error'],
      };
    }

    // Validate catch against tournament rules
    final tournament = await _tournamentService.getTournament(tournamentId);
    
    // Check size limits
    final length = catchData['length'] as double;
    if (tournament.minimumSize != null && length < tournament.minimumSize!) {
      return {
        'isValid': false,
        'error': 'Catch is below minimum size',
      };
    }
    if (tournament.maximumSize != null && length > tournament.maximumSize!) {
      return {
        'isValid': false,
        'error': 'Catch exceeds maximum size',
      };
    }

    // Check location boundaries
    final location = catchData['location'];
    if (!_isWithinBoundaries(location, tournament.boundaries)) {
      return {
        'isValid': false,
        'error': 'Catch location is outside tournament boundaries',
      };
    }

    // Check species restrictions
    final species = catchData['species'] as String;
    if (tournament.restrictedSpecies.contains(species)) {
      return {
        'isValid': false,
        'error': 'This species is not allowed in this tournament',
      };
    }

    return {
      'isValid': true,
    };
  }

  bool _isWithinBoundaries(Map<String, dynamic> location, List<dynamic> boundaries) {
    // TODO: Implement polygon containment check
    return true;
  }

  Future<void> processTournamentEnd(String tournamentId) async {
    final tournament = await _tournamentService.getTournament(tournamentId);
    
    // Calculate final standings
    final leaderboard = await _tournamentService.getLeaderboard(tournamentId);
    
    // Distribute prizes
    await _distributePrizes(tournament, leaderboard);
    
    // Update tournament status
    await _tournamentService.updateTournamentStatus(
      tournamentId,
      TournamentStatus.completed,
    );
    
    // Generate and store tournament statistics
    await _generateTournamentStats(tournamentId);
  }

  Future<void> _distributePrizes(
    TournamentModel tournament,
    Map<String, dynamic> leaderboard,
  ) async {
    final prizeDistribution = tournament.getPrizeDistribution();
    
    for (final entry in prizeDistribution.entries) {
      final rank = int.parse(entry.key.replaceAll('place', ''));
      final prize = entry.value;
      
      if (rank <= leaderboard.length) {
        final userId = leaderboard.keys.elementAt(rank - 1);
        await _tournamentService.awardPrize(
          tournamentId: tournament.id,
          userId: userId,
          amount: prize,
          rank: rank,
        );
      }
    }
  }

  Future<void> _generateTournamentStats(String tournamentId) async {
    final catches = await _tournamentService.getTournamentCatches(tournamentId);
    final participants = await _tournamentService.getTournamentParticipants(tournamentId);
    
    final stats = {
      'totalCatches': catches.length,
      'participantCount': participants.length,
      'speciesCount': _countUniqueSpecies(catches),
      'averageWeight': _calculateAverageWeight(catches),
      'biggestCatch': _findBiggestCatch(catches),
      'catchDistribution': _generateCatchDistribution(catches),
      'locationHeatmap': _generateLocationHeatmap(catches),
      'timeAnalysis': _generateTimeAnalysis(catches),
    };
    
    await _tournamentService.saveTournamentStats(tournamentId, stats);
  }

  int _countUniqueSpecies(List<Map<String, dynamic>> catches) {
    return catches.map((c) => c['species']).toSet().length;
  }

  double _calculateAverageWeight(List<Map<String, dynamic>> catches) {
    if (catches.isEmpty) return 0;
    final totalWeight = catches.fold<double>(
      0,
      (sum, c) => sum + (c['weight'] as double),
    );
    return totalWeight / catches.length;
  }

  Map<String, dynamic> _findBiggestCatch(List<Map<String, dynamic>> catches) {
    if (catches.isEmpty) return {};
    return catches.reduce((curr, next) =>
        (curr['weight'] as double) > (next['weight'] as double) ? curr : next);
  }

  Map<String, int> _generateCatchDistribution(List<Map<String, dynamic>> catches) {
    final distribution = <String, int>{};
    for (final catch_ in catches) {
      final species = catch_['species'] as String;
      distribution[species] = (distribution[species] ?? 0) + 1;
    }
    return distribution;
  }

  List<Map<String, dynamic>> _generateLocationHeatmap(
    List<Map<String, dynamic>> catches,
  ) {
    return catches.map((c) => {
      'latitude': c['location']['latitude'],
      'longitude': c['location']['longitude'],
      'weight': 1,
    }).toList();
  }

  Map<String, int> _generateTimeAnalysis(List<Map<String, dynamic>> catches) {
    final hourlyDistribution = <String, int>{};
    for (final catch_ in catches) {
      final timestamp = catch_['timestamp'] as DateTime;
      final hour = timestamp.hour.toString().padLeft(2, '0');
      hourlyDistribution[hour] = (hourlyDistribution[hour] ?? 0) + 1;
    }
    return hourlyDistribution;
  }
}
