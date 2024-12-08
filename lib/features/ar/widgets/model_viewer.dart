import 'package:flutter/material.dart';
import 'package:arkit_plugin/arkit_plugin.dart';

class ModelViewer extends StatelessWidget {
  final List<ARKitAnchor> anchors;
  final VoidCallback onCapture;
  final VoidCallback onGenerate;

  const ModelViewer({
    super.key,
    required this.anchors,
    required this.onCapture,
    required this.onGenerate,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      left: 16,
      right: 16,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '3D Model Generation',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'Captured Angles: ${anchors.length}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: _calculateProgress(),
                backgroundColor: Colors.grey.withOpacity(0.2),
                valueColor: const AlwaysStoppedAnimation(Colors.blue),
              ),
              const SizedBox(height: 16),
              _buildInstructions(context),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: onCapture,
                    icon: const Icon(Icons.camera),
                    label: const Text('Capture Angle'),
                  ),
                  ElevatedButton.icon(
                    onPressed: anchors.length >= 3 ? onGenerate : null,
                    icon: const Icon(Icons.view_in_ar),
                    label: const Text('Generate Model'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInstructions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Instructions',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        _buildInstructionStep(
          context,
          1,
          'Position the fish in a well-lit area',
          anchors.isEmpty,
        ),
        _buildInstructionStep(
          context,
          2,
          'Capture at least 3 different angles',
          anchors.length < 3,
        ),
        _buildInstructionStep(
          context,
          3,
          'Ensure each angle is clear and stable',
          anchors.length < 3,
        ),
        _buildInstructionStep(
          context,
          4,
          'Generate the 3D model',
          anchors.length >= 3,
        ),
      ],
    );
  }

  Widget _buildInstructionStep(
    BuildContext context,
    int step,
    String instruction,
    bool active,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: active
                  ? Theme.of(context).primaryColor
                  : Colors.grey.withOpacity(0.3),
            ),
            child: Center(
              child: Text(
                step.toString(),
                style: TextStyle(
                  color: active ? Colors.white : Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              instruction,
              style: TextStyle(
                color: active ? null : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  double _calculateProgress() {
    const minAngles = 3;
    const maxAngles = 8;
    return (anchors.length / maxAngles).clamp(0.0, 1.0);
  }
}
