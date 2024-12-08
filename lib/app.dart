import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/navigation/app_router.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/services/auth_service.dart';

class FishProApp extends ConsumerWidget {
  final AuthService authService;

  const FishProApp({
    super.key,
    required this.authService,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = AppRouter(authService).router;

    return MaterialApp.router(
      title: 'FishPro',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
