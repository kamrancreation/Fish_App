import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/auth/services/auth_service.dart';
import '../../features/tournament/services/tournament_service.dart';
import '../../features/species/services/species_identification_service.dart';
import '../../features/tournament/services/fraud_detection_service.dart';

// Authentication Provider
final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});

final currentUserProvider = StreamProvider((ref) {
  return ref.watch(authServiceProvider).authStateChanges;
});

// Tournament Providers
final tournamentServiceProvider = Provider<TournamentService>((ref) {
  return TournamentService();
});

final fraudDetectionServiceProvider = Provider<FraudDetectionService>((ref) {
  return FraudDetectionService();
});

// Species Identification Provider
final speciesIdentificationServiceProvider = Provider<SpeciesIdentificationService>((ref) {
  return SpeciesIdentificationService();
});

// App State Providers
final isLoadingProvider = StateProvider<bool>((ref) => false);

final errorMessageProvider = StateProvider<String?>((ref) => null);

// Tournament Filter Provider
final tournamentFilterProvider = StateProvider<String>((ref) => 'all');

// Location Provider
final locationPermissionProvider = FutureProvider((ref) async {
  // Implement location permission check
  return true;
});

// Camera Permission Provider
final cameraPermissionProvider = FutureProvider((ref) async {
  // Implement camera permission check
  return true;
});

// Dark Mode Provider
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Pro User Provider
final isProUserProvider = StateProvider<bool>((ref) {
  final user = ref.watch(currentUserProvider).value;
  return user?.isPro ?? false;
});
