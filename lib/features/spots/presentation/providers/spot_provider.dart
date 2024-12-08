import 'package:flutter/foundation.dart';
import '../../domain/repositories/spot_repository.dart';
import '../../domain/models/spot.dart';
import '../auth/auth_provider.dart';

class SpotProvider with ChangeNotifier {
  final SpotRepository _spotRepository;
  final AuthProvider? _authProvider;
  List<SpotData> _spots = [];
  List<SpotData> _nearbySpots = [];
  bool _isLoading = false;
  String? _error;

  SpotProvider({
    SpotRepository? spotRepository,
    AuthProvider? authProvider,
  }) : _spotRepository = spotRepository ?? SpotRepository(),
      _authProvider = authProvider {
    if (_authProvider?.isAuthenticated ?? false) {
      _init();
    }
  }

  List<SpotData> get spots => _spots;
  List<SpotData> get nearbySpots => _nearbySpots;
  bool get isLoading => _isLoading;
  String? get error => _error;

  void _init() {
    _spotRepository.getUserSpots().listen(
      (spots) {
        _spots = spots;
        notifyListeners();
      },
      onError: (e) {
        _error = e.toString();
        notifyListeners();
      },
    );
  }

  void updateAuth(AuthProvider authProvider) {
    if (authProvider.isAuthenticated && !(_authProvider?.isAuthenticated ?? false)) {
      _init();
    }
  }

  Future<void> createSpot(SpotData spotData) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _spotRepository.createSpot(spotData);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> updateSpot(String spotId, SpotData spotData) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _spotRepository.updateSpot(spotId, spotData);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> deleteSpot(String spotId) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _spotRepository.deleteSpot(spotId);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> rateSpot(String spotId, double rating) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _spotRepository.rateSpot(spotId, rating);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getNearbySpots(
    double latitude,
    double longitude,
    double radius,
  ) async {
    _spotRepository.getNearbySpots(latitude, longitude, radius).listen(
      (spots) {
        _nearbySpots = spots;
        notifyListeners();
      },
      onError: (e) {
        _error = e.toString();
        notifyListeners();
      },
    );
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
