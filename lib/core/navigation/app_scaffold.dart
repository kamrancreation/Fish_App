import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'bottom_nav_bar.dart';
import '../providers/app_providers.dart';

class AppScaffold extends ConsumerWidget {
  final Widget child;
  final int currentIndex;
  final bool showBottomNav;
  final String? title;
  final List<Widget>? actions;

  const AppScaffold({
    super.key,
    required this.child,
    this.currentIndex = 0,
    this.showBottomNav = true,
    this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(isLoadingProvider);
    final errorMessage = ref.watch(errorMessageProvider);

    return Scaffold(
      appBar: title != null
          ? AppBar(
              title: Text(title!),
              actions: actions,
            )
          : null,
      body: Stack(
        children: [
          child,
          if (isLoading)
            Container(
              color: Colors.black54,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          if (errorMessage != null)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Material(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.red,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          errorMessage,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          ref.read(errorMessageProvider.notifier).state = null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: showBottomNav
          ? BottomNavBar(currentIndex: currentIndex)
          : null,
      floatingActionButton: _buildFloatingActionButton(ref),
    );
  }

  Widget? _buildFloatingActionButton(WidgetRef ref) {
    final isProUser = ref.watch(isProUserProvider);

    switch (currentIndex) {
      case 1: // Tournaments page
        if (isProUser) {
          return FloatingActionButton(
            onPressed: () {
              // Navigate to tournament creation
            },
            child: const Icon(Icons.add),
          );
        }
        break;
      case 3: // Map page
        return FloatingActionButton(
          onPressed: () {
            // Toggle map layers or current location
          },
          child: const Icon(Icons.layers),
        );
    }
    return null;
  }
}
