import 'package:flutter/material.dart';
import '../../../../core/presentation/widgets/loading_state.dart';
import '../../../../core/presentation/widgets/error_state.dart';
import '../widgets/catch_form.dart';
import '../widgets/catch_photo_picker.dart';
import '../widgets/catch_location_picker.dart';
import '../widgets/catch_species_picker.dart';

class LogCatchPage extends StatefulWidget {
  final String? initialSpotId;

  const LogCatchPage({
    super.key,
    this.initialSpotId,
  });

  @override
  State<LogCatchPage> createState() => _LogCatchPageState();
}

class _LogCatchPageState extends State<LogCatchPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  String? _errorMessage;

  final _catchData = CatchFormData(
    photos: [],
    species: '',
    weight: 0.0,
    length: 0.0,
    spotId: '',
    notes: '',
    weather: '',
    temperature: 0.0,
    timestamp: DateTime.now(),
  );

  @override
  void initState() {
    super.initState();
    if (widget.initialSpotId != null) {
      _catchData.spotId = widget.initialSpotId!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Catch'),
        actions: [
          TextButton.icon(
            onPressed: _isLoading ? null : _saveCatch,
            icon: const Icon(Icons.check),
            label: const Text('Save'),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const LoadingState(message: 'Saving catch...');
    }

    if (_errorMessage != null) {
      return ErrorState(
        message: _errorMessage!,
        onRetry: () {
          setState(() {
            _errorMessage = null;
          });
        },
      );
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CatchPhotoPicker(
                onPhotosChanged: (photos) {
                  setState(() {
                    _catchData.photos = photos;
                  });
                },
              ),
              const SizedBox(height: 24),
              CatchSpeciesPicker(
                onSpeciesSelected: (species) {
                  setState(() {
                    _catchData.species = species;
                  });
                },
              ),
              const SizedBox(height: 24),
              CatchForm(
                data: _catchData,
                onChanged: (data) {
                  setState(() {
                    _catchData.weight = data.weight;
                    _catchData.length = data.length;
                    _catchData.notes = data.notes;
                  });
                },
              ),
              const SizedBox(height: 24),
              CatchLocationPicker(
                initialSpotId: widget.initialSpotId,
                onLocationSelected: (spotId) {
                  setState(() {
                    _catchData.spotId = spotId;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _saveCatch() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      // TODO: Save catch to backend
      await Future.delayed(const Duration(seconds: 2)); // Simulated delay
      Navigator.pop(context);
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to save catch. Please try again.';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
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
