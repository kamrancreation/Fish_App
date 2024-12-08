import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fishpro/features/species/services/species_ai_service.dart';
import 'package:fishpro/features/species/models/fish_species.dart';
import 'package:fishpro/features/shared/widgets/error_dialog.dart';
import 'package:fishpro/features/shared/widgets/loading_overlay.dart';

class SpeciesIdentificationWidget extends StatefulWidget {
  final SpeciesAIService aiService;
  final Function(FishSpecies species) onSpeciesIdentified;

  const SpeciesIdentificationWidget({
    super.key,
    required this.aiService,
    required this.onSpeciesIdentified,
  });

  @override
  _SpeciesIdentificationWidgetState createState() =>
      _SpeciesIdentificationWidgetState();
}

class _SpeciesIdentificationWidgetState extends State<SpeciesIdentificationWidget> {
  File? _imageFile;
  bool _isProcessing = false;
  String? _errorMessage;
  SpeciesIdentificationResult? _result;

  Future<void> _pickImage(ImageSource source) async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: source);

      if (pickedFile == null) return;

      setState(() {
        _imageFile = File(pickedFile.path);
        _errorMessage = null;
        _result = null;
      });

      await _identifySpecies();
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to pick image: ${e.toString()}';
      });
    }
  }

  Future<void> _identifySpecies() async {
    if (_imageFile == null) return;

    setState(() {
      _isProcessing = true;
      _errorMessage = null;
    });

    try {
      final result = await widget.aiService.identifySpecies(_imageFile!);
      setState(() {
        _result = result;
        _isProcessing = false;
      });
      widget.onSpeciesIdentified(result.species);
    } catch (e) {
      setState(() {
        _isProcessing = false;
        _errorMessage = 'Failed to identify species: ${e.toString()}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Identify Fish Species',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            if (_imageFile != null) ...[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.file(
                  _imageFile!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: _isProcessing
                      ? null
                      : () => _pickImage(ImageSource.camera),
                  icon: const Icon(Icons.camera_alt),
                  label: const Text('Take Photo'),
                ),
                ElevatedButton.icon(
                  onPressed: _isProcessing
                      ? null
                      : () => _pickImage(ImageSource.gallery),
                  icon: const Icon(Icons.photo_library),
                  label: const Text('Choose Photo'),
                ),
              ],
            ),
            if (_isProcessing) ...[
              const SizedBox(height: 16),
              const Center(child: CircularProgressIndicator()),
              const SizedBox(height: 8),
              const Text(
                'Analyzing image...',
                textAlign: TextAlign.center,
              ),
            ],
            if (_errorMessage != null) ...[
              const SizedBox(height: 16),
              Text(
                _errorMessage!,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ],
            if (_result != null) ...[
              const SizedBox(height: 16),
              _buildResultCard(_result!),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard(SpeciesIdentificationResult result) {
    return Card(
      color: Colors.blue.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Identified Species: ${result.species.name}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Confidence: ${(result.confidence * 100).toStringAsFixed(1)}%',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Additional Information:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            _buildAdditionalInfo(result.additionalInfo),
          ],
        ),
      ),
    );
  }

  Widget _buildAdditionalInfo(Map<String, dynamic> info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: info.entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '${entry.key}: ${entry.value}',
            style: const TextStyle(fontSize: 14),
          ),
        );
      }).toList(),
    );
  }
}
