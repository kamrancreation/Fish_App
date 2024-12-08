import 'package:flutter/foundation.dart';
import '../models/user_model.dart';
import '../models/catch_model.dart';
import '../models/tournament_model.dart';
import '../models/gear_model.dart';
import '../services/services.dart';

class AppState extends ChangeNotifier {
  final UserService _userService;
  final CatchService _catchService;
  final TournamentService _tournamentService;
  final SpeciesService _speciesService;
  final GearService _gearService;

  UserModel? _currentUser;
  List<CatchModel> _userCatches = [];
  List<TournamentModel> _activeTournaments = [];
  List<GearModel> _userGear = [];
  bool _isLoading = false;
  String? _error;

  AppState({
    required UserService userService,
    required CatchService catchService,
    required TournamentService tournamentService,
    required SpeciesService speciesService,
    required GearService gearService,
  })  : _userService = userService,
        _catchService = catchService,
        _tournamentService = tournamentService,
        _speciesService = speciesService,
        _gearService = gearService;

  UserModel? get currentUser => _currentUser;
  List<CatchModel> get userCatches => _userCatches;
  List<TournamentModel> get activeTournaments => _activeTournaments;
  List<GearModel> get userGear => _userGear;
  bool get isLoading => _isLoading;
  String? get error => _error;

  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _setError(String? error) {
    _error = error;
    notifyListeners();
  }

  Future<void> initializeApp(String userId) async {
    _setLoading(true);
    try {
      _currentUser = await _userService.getCurrentUser(userId);
      await Future.wait([
        loadUserCatches(userId),
        loadActiveTournaments(),
        loadUserGear(userId),
      ]);
    } catch (e) {
      _setError(e.toString());
    } finally {
      _setLoading(false);
    }
  }

  Future<void> loadUserCatches(String userId) async {
    try {
      _userCatches = await _catchService.getUserCatchHistory(userId);
      notifyListeners();
    } catch (e) {
      _setError('Failed to load catches: ${e.toString()}');
    }
  }

  Future<void> loadActiveTournaments() async {
    try {
      _activeTournaments = await _tournamentService.getActiveTournaments();
      notifyListeners();
    } catch (e) {
      _setError('Failed to load tournaments: ${e.toString()}');
    }
  }

  Future<void> loadUserGear(String userId) async {
    try {
      _userGear = await _gearService.getUserGear(userId);
      notifyListeners();
    } catch (e) {
      _setError('Failed to load gear: ${e.toString()}');
    }
  }

  Future<void> recordCatch(CatchModel catch_) async {
    _setLoading(true);
    try {
      await _catchService.recordCatch(catch_);
      await loadUserCatches(_currentUser!.id);
    } catch (e) {
      _setError('Failed to record catch: ${e.toString()}');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> joinTournament(String tournamentId) async {
    if (_currentUser == null) return;
    _setLoading(true);
    try {
      await _tournamentService.joinTournament(tournamentId, _currentUser!.id);
      await loadActiveTournaments();
    } catch (e) {
      _setError('Failed to join tournament: ${e.toString()}');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> updateGearCondition(
      String gearId, GearCondition newCondition) async {
    _setLoading(true);
    try {
      await _gearService.updateGearCondition(gearId, newCondition);
      if (_currentUser != null) {
        await loadUserGear(_currentUser!.id);
      }
    } catch (e) {
      _setError('Failed to update gear: ${e.toString()}');
    } finally {
      _setLoading(false);
    }
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
