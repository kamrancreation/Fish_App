import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../error/app_error.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey;

  NavigationService({GlobalKey<NavigatorState>? key})
      : navigatorKey = key ?? GlobalKey<NavigatorState>();

  Future<T?> navigateTo<T>(String routeName, {Object? arguments}) async {
    try {
      return await navigatorKey.currentState?.pushNamed<T>(
        routeName,
        arguments: arguments,
      );
    } catch (e) {
      throw AppError(
        code: 'navigation-failed',
        message: 'Failed to navigate to $routeName: ${e.toString()}',
        context: {
          'routeName': routeName,
          'arguments': arguments?.toString(),
        },
      );
    }
  }

  Future<T?> replaceTo<T>(String routeName, {Object? arguments}) async {
    try {
      return await navigatorKey.currentState?.pushReplacementNamed<T, void>(
        routeName,
        arguments: arguments,
      );
    } catch (e) {
      throw AppError(
        code: 'navigation-replace-failed',
        message: 'Failed to replace route with $routeName: ${e.toString()}',
        context: {
          'routeName': routeName,
          'arguments': arguments?.toString(),
        },
      );
    }
  }

  Future<T?> pushAndRemoveUntil<T>(
    String newRoute,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) async {
    try {
      return await navigatorKey.currentState?.pushNamedAndRemoveUntil<T>(
        newRoute,
        predicate,
        arguments: arguments,
      );
    } catch (e) {
      throw AppError(
        code: 'navigation-push-remove-failed',
        message: 'Failed to push and remove until $newRoute: ${e.toString()}',
        context: {
          'newRoute': newRoute,
          'arguments': arguments?.toString(),
        },
      );
    }
  }

  void pop<T>([T? result]) {
    try {
      navigatorKey.currentState?.pop(result);
    } catch (e) {
      throw AppError(
        code: 'navigation-pop-failed',
        message: 'Failed to pop route: ${e.toString()}',
      );
    }
  }

  bool canPop() {
    return navigatorKey.currentState?.canPop() ?? false;
  }

  Future<bool> maybePop<T>([T? result]) async {
    try {
      return await navigatorKey.currentState?.maybePop(result) ?? false;
    } catch (e) {
      throw AppError(
        code: 'navigation-maybe-pop-failed',
        message: 'Failed to maybe pop route: ${e.toString()}',
      );
    }
  }

  void popUntil(bool Function(Route<dynamic>) predicate) {
    try {
      navigatorKey.currentState?.popUntil(predicate);
    } catch (e) {
      throw AppError(
        code: 'navigation-pop-until-failed',
        message: 'Failed to pop until predicate: ${e.toString()}',
      );
    }
  }

  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) async {
    try {
      return await navigatorKey.currentState?.pushNamed<T>(
        routeName,
        arguments: arguments,
      );
    } catch (e) {
      throw AppError(
        code: 'navigation-push-named-failed',
        message: 'Failed to push named route $routeName: ${e.toString()}',
        context: {
          'routeName': routeName,
          'arguments': arguments?.toString(),
        },
      );
    }
  }

  String? getCurrentRoute() {
    final route = ModalRoute.of(navigatorKey.currentContext!);
    return route?.settings.name;
  }

  BuildContext? get context => navigatorKey.currentContext;

  // Deep linking methods
  Future<void> handleDeepLink(String link) async {
    try {
      final uri = Uri.parse(link);
      final context = navigatorKey.currentContext;
      if (context != null) {
        await GoRouter.of(context).push(uri.path);
      }
    } catch (e) {
      throw AppError(
        code: 'deep-link-failed',
        message: 'Failed to handle deep link: ${e.toString()}',
        context: {'link': link},
      );
    }
  }

  Future<bool> handleBackPress() async {
    final navigator = navigatorKey.currentState;
    if (navigator == null) return true;

    if (navigator.canPop()) {
      navigator.pop();
      return false;
    }
    return true;
  }
}
