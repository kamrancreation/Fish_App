import 'package:flutter/material.dart';
import '../models/fish_measurement.dart';

class MeasurementOverlay extends StatelessWidget {
  final List<FishMeasurement> measurements;
  final VoidCallback onCapture;
  final Function(FishMeasurement) onShare;
  final String? recognizedSpecies;

  const MeasurementOverlay({
    super.key,
    required this.measurements,
    required this.onCapture,
    required this.onShare,
    this.recognizedSpecies,
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
                'Fish Measurements',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              if (recognizedSpecies != null) ...[
                const SizedBox(height: 8),
                Text(
                  'Species: $recognizedSpecies',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
              const SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: measurements.length,
                itemBuilder: (context, index) {
                  final measurement = measurements[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Fish ${index + 1}',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () => onShare(measurement),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          _buildMeasurementRow(
                            'Length',
                            measurement.length,
                            'cm',
                          ),
                          _buildMeasurementRow(
                            'Width',
                            measurement.width,
                            'cm',
                          ),
                          _buildMeasurementRow(
                            'Height',
                            measurement.height,
                            'cm',
                          ),
                          const SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: measurement.confidence,
                            backgroundColor: Colors.grey.withOpacity(0.2),
                            valueColor: AlwaysStoppedAnimation(
                              _getConfidenceColor(measurement.confidence),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Confidence: ${(measurement.confidence * 100).toStringAsFixed(1)}%',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          if (measurement.additionalMeasurements != null) ...[
                            const SizedBox(height: 8),
                            const Divider(),
                            const SizedBox(height: 8),
                            Text(
                              'Additional Measurements',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(height: 4),
                            ...measurement.additionalMeasurements!.entries.map(
                              (entry) => _buildMeasurementRow(
                                entry.key,
                                entry.value,
                                'cm',
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton.icon(
                  onPressed: onCapture,
                  icon: const Icon(Icons.camera),
                  label: const Text('Capture'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMeasurementRow(String label, double value, String unit) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text('${value.toStringAsFixed(1)} $unit'),
        ],
      ),
    );
  }

  Color _getConfidenceColor(double confidence) {
    if (confidence >= 0.8) return Colors.green;
    if (confidence >= 0.6) return Colors.orange;
    return Colors.red;
  }
}
