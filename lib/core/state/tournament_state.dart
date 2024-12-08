import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show TimeOfDay;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/tournament/models/tournament_model.dart';
import '../../features/tournament/services/tournament_service.dart';

final tournamentServiceProvider = Provider<TournamentService>((ref) {
  return TournamentService();
});

final tournamentsProvider = StreamProvider<List<TournamentModel>>((ref) {
  final service = ref.watch(tournamentServiceProvider);
  return service.streamAllTournaments();
});

final activeTournamentsProvider = StreamProvider<List<TournamentModel>>((ref) {
  final service = ref.watch(tournamentServiceProvider);
  return service.streamActiveTournaments();
});

final upcomingTournamentsProvider = StreamProvider<List<TournamentModel>>((ref) {
  final service = ref.watch(tournamentServiceProvider);
  return service.streamUpcomingTournaments();
});

final completedTournamentsProvider = StreamProvider<List<TournamentModel>>((ref) {
  final service = ref.watch(tournamentServiceProvider);
  return service.streamCompletedTournaments();
});

final userTournamentsProvider = StreamProvider.family<List<TournamentModel>, String>((ref, userId) {
  final service = ref.watch(tournamentServiceProvider);
  return service.streamUserTournaments(userId);
});

final tournamentDetailsProvider = StreamProvider.family<TournamentModel, String>((ref, tournamentId) {
  final service = ref.watch(tournamentServiceProvider);
  return service.streamTournamentDetails(tournamentId);
});

final tournamentLeaderboardProvider = StreamProvider.family<Map<String, dynamic>, String>((ref, tournamentId) {
  final service = ref.watch(tournamentServiceProvider);
  return service.streamLeaderboard(tournamentId);
});

final tournamentAnalyticsProvider = StreamProvider.family<Map<String, dynamic>, String>((ref, tournamentId) {
  final service = ref.watch(tournamentServiceProvider);
  return service.streamTournamentAnalytics(tournamentId);
});

class TournamentFilterState extends StateNotifier<String> {
  TournamentFilterState() : super('all');

  void setFilter(String filter) {
    state = filter;
  }
}

final tournamentFilterProvider = StateNotifierProvider<TournamentFilterState, String>((ref) {
  return TournamentFilterState();
});

final filteredTournamentsProvider = Provider<AsyncValue<List<TournamentModel>>>((ref) {
  final filter = ref.watch(tournamentFilterProvider);
  
  switch (filter) {
    case 'active':
      return ref.watch(activeTournamentsProvider);
    case 'upcoming':
      return ref.watch(upcomingTournamentsProvider);
    case 'completed':
      return ref.watch(completedTournamentsProvider);
    default:
      return ref.watch(tournamentsProvider);
  }
});

class TournamentCreationState extends ChangeNotifier {
  bool _isPrivate = false;
  bool _isCreating = false;
  DateTime? _startDate;
  DateTime? _endDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;
  Set<dynamic> _boundaries = {};
  ScoringType _scoringType = ScoringType.totalWeight;

  bool get isPrivate => _isPrivate;
  bool get isCreating => _isCreating;
  DateTime? get startDate => _startDate;
  DateTime? get endDate => _endDate;
  TimeOfDay? get startTime => _startTime;
  TimeOfDay? get endTime => _endTime;
  Set<dynamic> get boundaries => _boundaries;
  ScoringType get scoringType => _scoringType;

  void setPrivate(bool value) {
    _isPrivate = value;
    notifyListeners();
  }

  void setCreating(bool value) {
    _isCreating = value;
    notifyListeners();
  }

  void setStartDate(DateTime date) {
    _startDate = date;
    notifyListeners();
  }

  void setEndDate(DateTime date) {
    _endDate = date;
    notifyListeners();
  }

  void setStartTime(TimeOfDay time) {
    _startTime = time;
    notifyListeners();
  }

  void setEndTime(TimeOfDay time) {
    _endTime = time;
    notifyListeners();
  }

  void setBoundaries(Set<dynamic> boundaries) {
    _boundaries = boundaries;
    notifyListeners();
  }

  void setScoringType(ScoringType type) {
    _scoringType = type;
    notifyListeners();
  }

  void reset() {
    _isPrivate = false;
    _isCreating = false;
    _startDate = null;
    _endDate = null;
    _startTime = null;
    _endTime = null;
    _boundaries = {};
    _scoringType = ScoringType.totalWeight;
    notifyListeners();
  }
}

final tournamentCreationProvider = ChangeNotifierProvider<TournamentCreationState>((ref) {
  return TournamentCreationState();
});
