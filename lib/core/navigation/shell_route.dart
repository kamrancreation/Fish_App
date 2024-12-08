import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_scaffold.dart';

class ShellRouteBuilder extends StatelessWidget {
  final Widget child;
  final String location;

  const ShellRouteBuilder({
    super.key,
    required this.child,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: _getCurrentIndex(location),
      showBottomNav: _shouldShowBottomNav(location),
      child: child,
    );
  }

  int _getCurrentIndex(String location) {
    if (location.startsWith('/tournaments') || location.startsWith('/tournament/')) {
      return 1;
    } else if (location.startsWith('/map')) {
      return 3;
    } else if (location.startsWith('/profile')) {
      return 4;
    }
    return 0; // Home
  }

  bool _shouldShowBottomNav(String location) {
    // Hide bottom nav on these routes
    return !location.startsWith('/login') &&
           !location.startsWith('/register') &&
           !location.startsWith('/onboarding');
  }
}

final shellRoute = ShellRoute(
  builder: (context, state, child) {
    return ShellRouteBuilder(
      location: state.uri.toString(),
      child: child,
    );
  },
  routes: const [
    // Routes will be added in app_router.dart
  ],
);
