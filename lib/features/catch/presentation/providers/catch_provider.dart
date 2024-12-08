import 'package:flutter/foundation.dart';
import '../../domain/repositories/catch_repository.dart';
import '../../domain/models/catch.dart';
import '../auth/providers/auth_provider.dart';

class CatchProvider with ChangeNotifier {
  final CatchRepository _catchRepository;
  final AuthProvider? _authProvider;
  List<CatchData> _catches = [];
  bool _isLoading = false;
  String? _error;

  CatchProvider({
    CatchRepository? catchRepository,
    AuthProvider? authProvider,
  }) : _catchRepository = catchRepository ?? CatchRepository(),
      _authProvider = authProvider {
    if (_authProvider?.isAuthenticated ?? false) {
      _init();
    }
  }

  List<CatchData> get catches => _catches;
  bool get isLoading => _isLoading;
  String? get error => _error;

  void _init() {
    _catchRepository.getUserCatches().listen(
      (catches) {
        _catches = catches;
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

  Future<void> createCatch(CatchData catchData) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _catchRepository.createCatch(catchData);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> deleteCatch(String catchId) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _catchRepository.deleteCatch(catchId);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
