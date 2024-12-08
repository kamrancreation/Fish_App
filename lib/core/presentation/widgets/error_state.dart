import 'package:flutter/material.dart';

class ErrorState extends StatelessWidget {
  final String message;
  final String? details;
  final VoidCallback? onRetry;
  final bool overlay;

  const ErrorState({
    super.key,
    required this.message,
    this.details,
    this.onRetry,
    this.overlay = false,
  });

  @override
  Widget build(BuildContext context) {
    final errorContent = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.error_outline,
          size: 48,
          color: Theme.of(context).colorScheme.error,
          semanticLabel: 'Error icon',
        ),
        const SizedBox(height: 16),
        Text(
          message,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
          textAlign: TextAlign.center,
          semanticsLabel: 'Error message: $message',
        ),
        if (details != null) ...[
          const SizedBox(height: 8),
          Text(
            details!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
            textAlign: TextAlign.center,
            semanticsLabel: 'Error details: $details',
          ),
        ],
        if (onRetry != null) ...[
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh),
            label: const Text('Retry'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
              foregroundColor: Theme.of(context).colorScheme.onError,
            ),
          ),
        ],
      ],
    );

    if (overlay) {
      return Container(
        color: Colors.black54,
        child: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: errorContent,
            ),
          ),
        ),
      );
    }

    return Center(child: errorContent);
  }
}
