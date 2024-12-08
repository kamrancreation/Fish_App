import 'package:flutter/material.dart';
import '../../theme/theme_manager.dart';
import 'package:provider/provider.dart';

class LoadingState extends StatelessWidget {
  final String? message;
  final bool overlay;
  final Color? backgroundColor;

  const LoadingState({
    super.key,
    this.message,
    this.overlay = false,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final themeManager = context.watch<ThemeManager>();
    final reduceAnimations = themeManager.reduceAnimations;
    
    Widget loadingIndicator = reduceAnimations
        ? const CircularProgressIndicator.adaptive()
        : _AnimatedLoadingIndicator(
            color: Theme.of(context).colorScheme.primary,
          );

    if (message != null) {
      loadingIndicator = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          loadingIndicator,
          const SizedBox(height: 16),
          Text(
            message!,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
            semanticsLabel: 'Loading: $message',
          ),
        ],
      );
    }

    if (overlay) {
      return Container(
        color: backgroundColor ?? Colors.black54,
        child: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: loadingIndicator,
            ),
          ),
        ),
      );
    }

    return Center(child: loadingIndicator);
  }
}

class _AnimatedLoadingIndicator extends StatefulWidget {
  final Color color;

  const _AnimatedLoadingIndicator({
    required this.color,
  });

  @override
  State<_AnimatedLoadingIndicator> createState() => _AnimatedLoadingIndicatorState();
}

class _AnimatedLoadingIndicatorState extends State<_AnimatedLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: CircularProgressIndicator(
        color: widget.color,
        semanticsLabel: 'Loading indicator',
      ),
    );
  }
}
