import 'package:go_router/go_router.dart';
import '../../features/auth/services/auth_service.dart';
import '../../features/tournament/screens/tournament_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../features/home/screens/home_screen.dart';

class AppRouter {
  final AuthService _authService;

  AppRouter(this._authService);

  late final router = GoRouter(
    refreshListenable: _authService,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/tournament/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return TournamentScreen(tournamentId: id ?? '');
        },
      ),
      GoRoute(
        path: '/profile/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return ProfileScreen(userId: id ?? '');
        },
      ),
    ],
    redirect: (context, state) {
      final isLoggedIn = _authService.currentUser != null;
      final isLoginRoute = state.uri.path == '/login';

      if (!isLoggedIn && !isLoginRoute) {
        return '/login';
      }

      if (isLoggedIn && isLoginRoute) {
        return '/';
      }

      return null;
    },
  );
}
