import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CatchForm extends StatelessWidget {
  final CatchFormData data;
  final ValueChanged<CatchFormData> onChanged;

  const CatchForm({
    super.key,
    required this.data,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Catch Details',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildMeasurementField(
                context: context,
                label: 'Weight',
                suffix: 'kg',
                value: data.weight,
                onChanged: (value) {
                  final newData = CatchFormData(
                    photos: data.photos,
                    species: data.species,
                    weight: value,
                    length: data.length,
                    spotId: data.spotId,
                    notes: data.notes,
                    weather: data.weather,
                    temperature: data.temperature,
                    timestamp: data.timestamp,
                  );
                  onChanged(newData);
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildMeasurementField(
                context: context,
                label: 'Length',
                suffix: 'cm',
                value: data.length,
                onChanged: (value) {
                  final newData = CatchFormData(
                    photos: data.photos,
                    species: data.species,
                    weight: data.weight,
                    length: value,
                    spotId: data.spotId,
                    notes: data.notes,
                    weather: data.weather,
                    temperature: data.temperature,
                    timestamp: data.timestamp,
                  );
                  onChanged(newData);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Notes',
            hintText: 'Add any additional details about your catch...',
            alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          maxLines: 4,
          initialValue: data.notes,
          onChanged: (value) {
            final newData = CatchFormData(
              photos: data.photos,
              species: data.species,
              weight: data.weight,
              length: data.length,
              spotId: data.spotId,
              notes: value,
              weather: data.weather,
              temperature: data.temperature,
              timestamp: data.timestamp,
            );
            onChanged(newData);
          },
        ),
      ],
    );
  }

  Widget _buildMeasurementField({
    required BuildContext context,
    required String label,
    required String suffix,
    required double value,
    required ValueChanged<double> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            suffixText: suffix,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
          ],
          initialValue: value > 0 ? value.toString() : '',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a value';
            }
            final number = double.tryParse(value);
            if (number == null || number <= 0) {
              return 'Please enter a valid number';
            }
            return null;
          },
          onChanged: (value) {
            final number = double.tryParse(value);
            if (number != null) {
              onChanged(number);
            }
          },
        ),
      ],
    );
  }
}

class CatchFormData {
  List<String> photos;
  String species;
  double weight;
  double length;
  String spotId;
  String notes;
  String weather;
  double temperature;
  DateTime timestamp;

  CatchFormData({
    required this.photos,
    required this.species,
    required this.weight,
    required this.length,
    required this.spotId,
    required this.notes,
    required this.weather,
    required this.temperature,
    required this.timestamp,
  });
}
