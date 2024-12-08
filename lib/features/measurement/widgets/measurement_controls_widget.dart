import 'package:flutter/material.dart';

class MeasurementControlsWidget extends StatelessWidget {
  final bool isCalibrated;
  final VoidCallback onCalibrate;
  final VoidCallback onMeasure;

  const MeasurementControlsWidget({
    super.key,
    required this.isCalibrated,
    required this.onCalibrate,
    required this.onMeasure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Status indicator
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: isCalibrated ? Colors.green : Colors.orange,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                isCalibrated ? 'Calibrated' : 'Not Calibrated',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Control buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Calibrate button
                _ControlButton(
                  icon: Icons.straighten,
                  label: 'Calibrate',
                  onPressed: onCalibrate,
                  enabled: !isCalibrated,
                ),

                // Measure button
                _ControlButton(
                  icon: Icons.photo_camera,
                  label: 'Measure',
                  onPressed: onMeasure,
                  enabled: isCalibrated,
                  primary: true,
                ),

                // Gallery button
                _ControlButton(
                  icon: Icons.photo_library,
                  label: 'Gallery',
                  onPressed: () {
                    Navigator.pushNamed(context, '/measurement/history');
                  },
                  enabled: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ControlButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool enabled;
  final bool primary;

  const _ControlButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.enabled = true,
    this.primary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Button
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: enabled ? onPressed : null,
            borderRadius: BorderRadius.circular(32),
            child: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primary
                    ? (enabled ? Theme.of(context).primaryColor : Colors.grey)
                    : Colors.white.withOpacity(enabled ? 0.2 : 0.1),
              ),
              child: Icon(
                icon,
                color: primary
                    ? Colors.white
                    : (enabled ? Colors.white : Colors.grey),
                size: 32,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),

        // Label
        Text(
          label,
          style: TextStyle(
            color: enabled ? Colors.white : Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
