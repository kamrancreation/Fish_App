import 'package:flutter/foundation.dart';
import '../../domain/repositories/profile_repository.dart';
import '../../domain/models/profile.dart';
import '../../domain/models/achievement.dart';
import '../auth/providers/auth_provider.dart';

class ProfileProvider with ChangeNotifier {
  final ProfileRepository _profileRepository;
  final AuthProvider? _authProvider;
  UserProfile? _profile;
  List<Achievement> _achievements = [];
  bool _isLoading = false;
  String? _error;

  ProfileProvider({
    ProfileRepository? profileRepository,
    AuthProvider? authProvider,
  }) : _profileRepository = profileRepository ?? ProfileRepository(),
      _authProvider = authProvider {
    if (_authProvider?.isAuthenticated ?? false) {
      _init();
    }
  }

  UserProfile? get profile => _profile;
  List<Achievement> get achievements => _achievements;
  bool get isLoading => _isLoading;
  String? get error => _error;

  void _init() {
    _profileRepository.getUserProfile().listen(
      (profile) {
        _profile = profile;
        notifyListeners();
      },
      onError: (e) {
        _error = e.toString();
        notifyListeners();
      },
    );

    _profileRepository.getUserAchievements().listen(
      (achievements) {
        _achievements = achievements;
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

  Future<void> updateProfile({
    String? displayName,
    String? bio,
    String? location,
    String? photoPath,
  }) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _profileRepository.updateProfile(
        displayName: displayName,
        bio: bio,
        location: location,
        photoPath: photoPath,
      );
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> checkAchievements() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _profileRepository.checkAndUpdateAchievements();
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
