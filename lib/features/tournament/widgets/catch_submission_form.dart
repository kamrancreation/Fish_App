import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';
import '../services/tournament_service.dart';
import '../services/fraud_detection_service.dart';

class CatchSubmissionForm extends StatefulWidget {
  final String tournamentId;
  final String userId;

  const CatchSubmissionForm({
    super.key,
    required this.tournamentId,
    required this.userId,
  });

  @override
  State<CatchSubmissionForm> createState() => _CatchSubmissionFormState();
}

class _CatchSubmissionFormState extends State<CatchSubmissionForm> {
  final _formKey = GlobalKey<FormState>();
  final _tournamentService = TournamentService();
  final _fraudService = FraudDetectionService();
  final _imagePicker = ImagePicker();

  File? _imageFile;
  Position? _currentLocation;
  bool _isSubmitting = false;
  String? _errorMessage;

  final _weightController = TextEditingController();
  final _lengthController = TextEditingController();
  final _speciesController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  void dispose() {
    _weightController.dispose();
    _lengthController.dispose();
    _speciesController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildImageSection(),
          const SizedBox(height: 16),
          _buildMeasurementFields(),
          const SizedBox(height: 16),
          _buildSpeciesField(),
          const SizedBox(height: 16),
          _buildNotesField(),
          const SizedBox(height: 16),
          _buildLocationInfo(),
          const SizedBox(height: 24),
          _buildSubmitButton(),
          if (_errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                _errorMessage!,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildImageSection() {
    return Column(
      children: [
        if (_imageFile != null)
          Stack(
            children: [
              Image.file(
                _imageFile!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  color: Colors.white,
                  onPressed: () => setState(() => _imageFile = null),
                ),
              ),
            ],
          )
        else
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.camera_alt, size: 48, color: Colors.grey),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: _pickImage,
                  child: const Text('Take Photo'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildMeasurementFields() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: _weightController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Weight (lbs)',
              prefixIcon: Icon(Icons.scale),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter weight';
              }
              if (double.tryParse(value) == null) {
                return 'Invalid weight';
              }
              return null;
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: TextFormField(
            controller: _lengthController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Length (in)',
              prefixIcon: Icon(Icons.straighten),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter length';
              }
              if (double.tryParse(value) == null) {
                return 'Invalid length';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSpeciesField() {
    return TextFormField(
      controller: _speciesController,
      decoration: const InputDecoration(
        labelText: 'Species',
        prefixIcon: Icon(Icons.pets),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter species';
        }
        return null;
      },
    );
  }

  Widget _buildNotesField() {
    return TextFormField(
      controller: _notesController,
      maxLines: 3,
      decoration: const InputDecoration(
        labelText: 'Notes (optional)',
        prefixIcon: Icon(Icons.note),
      ),
    );
  }

  Widget _buildLocationInfo() {
    if (_currentLocation == null) {
      return const ListTile(
        leading: Icon(Icons.location_searching),
        title: Text('Getting location...'),
      );
    }

    return ListTile(
      leading: const Icon(Icons.location_on),
      title: const Text('Location captured'),
      subtitle: Text(
        'Lat: ${_currentLocation!.latitude.toStringAsFixed(4)}, '
        'Long: ${_currentLocation!.longitude.toStringAsFixed(4)}',
      ),
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: _isSubmitting ? null : _submitCatch,
      child: _isSubmitting
          ? const CircularProgressIndicator()
          : const Text('Submit Catch'),
    );
  }

  Future<void> _pickImage() async {
    try {
      final image = await _imagePicker.pickImage(
        source: ImageSource.camera,
        maxWidth: 1920,
        maxHeight: 1080,
        imageQuality: 85,
      );
      if (image != null) {
        setState(() => _imageFile = File(image.path));
      }
    } catch (e) {
      setState(() => _errorMessage = 'Failed to capture image: $e');
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() => _currentLocation = position);
    } catch (e) {
      setState(() => _errorMessage = 'Failed to get location: $e');
    }
  }

  Future<void> _submitCatch() async {
    if (!_formKey.currentState!.validate()) return;
    if (_imageFile == null) {
      setState(() => _errorMessage = 'Please take a photo of your catch');
      return;
    }
    if (_currentLocation == null) {
      setState(() => _errorMessage = 'Location is required');
      return;
    }

    setState(() {
      _isSubmitting = true;
      _errorMessage = null;
    });

    try {
      // Prepare catch data
      final catchData = {
        'image': _imageFile,
        'weight': double.parse(_weightController.text),
        'length': double.parse(_lengthController.text),
        'species': _speciesController.text,
        'notes': _notesController.text,
        'location': {
          'latitude': _currentLocation!.latitude,
          'longitude': _currentLocation!.longitude,
        },
        'timestamp': DateTime.now(),
      };

      // Validate catch with fraud detection
      final validationResult = await _fraudService.validateCatch(
        tournamentId: widget.tournamentId,
        userId: widget.userId,
        catchData: catchData,
        location: _currentLocation!,
      );

      if (!validationResult['isValid']) {
        throw Exception(
          'Catch validation failed: ${validationResult['validationDetails']}',
        );
      }

      // Submit verified catch
      await _tournamentService.verifyCatch(
        widget.tournamentId,
        widget.userId,
        catchData,
      );

      // Show success message
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Catch submitted successfully!'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pop(context);
      }
    } catch (e) {
      setState(() => _errorMessage = e.toString());
    } finally {
      setState(() => _isSubmitting = false);
    }
  }
}
