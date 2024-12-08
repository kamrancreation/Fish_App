import 'package:flutter/material.dart';
import '../models/ar_tutorial.dart';

class TutorialOverlay extends StatefulWidget {
  final ARTutorial tutorial;
  final Function(int) onStepComplete;

  const TutorialOverlay({
    super.key,
    required this.tutorial,
    required this.onStepComplete,
  });

  @override
  State<TutorialOverlay> createState() => _TutorialOverlayState();
}

class _TutorialOverlayState extends State<TutorialOverlay> {
  int _currentStep = 0;
  bool _expanded = true;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      right: 16,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: _expanded ? 300 : 60,
        child: Card(
          child: _expanded ? _buildExpandedView() : _buildCollapsedView(),
        ),
      ),
    );
  }

  Widget _buildExpandedView() {
    final step = widget.tutorial.steps[_currentStep];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(widget.tutorial.title),
          subtitle: Text('Step ${_currentStep + 1} of ${widget.tutorial.steps.length}'),
          trailing: IconButton(
            icon: const Icon(Icons.close),
            onPressed: _toggleExpanded,
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                step.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(step.description),
              if (step.tips != null && step.tips!.isNotEmpty) ...[
                const SizedBox(height: 16),
                Text(
                  'Tips',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 4),
                ...step.tips!.map((tip) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.tips_and_updates, size: 16),
                        const SizedBox(width: 8),
                        Expanded(child: Text(tip)),
                      ],
                    ),
                  );
                }),
              ],
              if (step.videoUrl != null) ...[
                const SizedBox(height: 16),
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: TutorialVideoPlayer(url: step.videoUrl!),
                ),
              ],
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_currentStep > 0)
                    TextButton(
                      onPressed: _previousStep,
                      child: const Text('Previous'),
                    )
                  else
                    const SizedBox.shrink(),
                  ElevatedButton(
                    onPressed: _nextStep,
                    child: Text(
                      _currentStep < widget.tutorial.steps.length - 1
                          ? 'Next'
                          : 'Finish',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCollapsedView() {
    return InkWell(
      onTap: _toggleExpanded,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.menu_book),
            const SizedBox(height: 4),
            Text(
              '${_currentStep + 1}/${widget.tutorial.steps.length}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  void _toggleExpanded() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }

  void _nextStep() {
    if (_currentStep < widget.tutorial.steps.length - 1) {
      setState(() {
        _currentStep++;
      });
      widget.onStepComplete(_currentStep - 1);
    } else {
      widget.onStepComplete(_currentStep);
      // Tutorial completed
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Tutorial Completed'),
          content: Text('Congratulations! You\'ve completed ${widget.tutorial.title}'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        ),
      );
    }
  }
}

class TutorialVideoPlayer extends StatelessWidget {
  final String url;

  const TutorialVideoPlayer({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    // Implement video player
    return Container(
      color: Colors.black,
      child: const Center(
        child: Icon(
          Icons.play_circle_outline,
          color: Colors.white,
          size: 48,
        ),
      ),
    );
  }
}
