import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/models/catch.dart';
import '../providers/catch_provider.dart';
import '../widgets/photo_grid.dart';
import '../widgets/species_selector.dart';
import '../widgets/measurement_input.dart';
import '../widgets/weather_input.dart';

class CatchFormPage extends StatefulWidget {
  final Catch? initialCatch;

  const CatchFormPage({super.key, this.initialCatch});

  @override
  State<CatchFormPage> createState() => _CatchFormPageState();
}

class _CatchFormPageState extends State<CatchFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _speciesController = TextEditingController();
  final _weightController = TextEditingController();
  final _lengthController = TextEditingController();
  final _notesController = TextEditingController();
  final List<File> _photos = [];
  GeoPoint? _location;
  Weather? _weather;
  final List<String> _tags = [];
  bool _isPrivate = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    if (widget.initialCatch != null) {
      _speciesController.text = widget.initialCatch!.species;
      _weightController.text = widget.initialCatch!.weight?.toString() ?? '';
      _lengthController.text = widget.initialCatch!.length?.toString() ?? '';
      _notesController.text = widget.initialCatch!.notes ?? '';
      _location = widget.initialCatch!.location;
      _weather = widget.initialCatch!.weather;
      _tags.addAll(widget.initialCatch!.tags);
      _isPrivate = widget.initialCatch!.isPrivate;
    }
    _getCurrentLocation();
    _getWeather();
  }

  @override
  void dispose() {
    _speciesController.dispose();
    _weightController.dispose();
    _lengthController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _getCurrentLocation() async {
    try {
      final permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.requestPermission();
      }

      final position = await Geolocator.getCurrentPosition();
      setState(() {
        _location = GeoPoint(position.latitude, position.longitude);
      });
    } catch (e) {
      // Handle location error
      print('Error getting location: $e');
    }
  }

  Future<void> _getWeather() async {
    if (_location == null) return;
    // Implement weather API call
    // For now, using mock data
    setState(() {
      _weather = Weather(
        temperature: 22.5,
        conditions: 'Sunny',
        windSpeed: 5.0,
        windDirection: 'NE',
      );
    });
  }

  Future<void> _pickPhotos() async {
    final picker = ImagePicker();
    final images = await picker.pickMultiImage();
    setState(() {
      _photos.addAll(images.map((image) => File(image.path)));
    });
  }

  Future<void> _saveCatch() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final catchProvider = context.read<CatchProvider>();
      final catch_ = Catch(
        id: widget.initialCatch?.id ?? '',
        userId: '', // Will be set in repository
        species: _speciesController.text,
        weight: double.tryParse(_weightController.text),
        length: double.tryParse(_lengthController.text),
        timestamp: DateTime.now(),
        notes: _notesController.text,
        photoUrls: const [], // Will be set in repository
        location: _location,
        weather: _weather,
        tags: _tags,
        isPrivate: _isPrivate,
      );

      if (widget.initialCatch != null) {
        await catchProvider.updateCatch(catch_.id, catch_, _photos);
      } else {
        await catchProvider.createCatch(catch_, _photos);
      }

      if (mounted) {
        Navigator.pop(context);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving catch: $e')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.initialCatch != null ? 'Edit Catch' : 'Log Catch'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: _isLoading ? null : _saveCatch,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  // Photos Section
                  PhotoGrid(
                    photos: _photos,
                    onAddPressed: _pickPhotos,
                    onDeletePressed: (index) {
                      setState(() {
                        _photos.removeAt(index);
                      });
                    },
                  ),
                  const SizedBox(height: 16),

                  // Species Selection
                  SpeciesSelector(controller: _speciesController),
                  const SizedBox(height: 16),

                  // Measurements
                  Row(
                    children: [
                      Expanded(
                        child: MeasurementInput(
                          label: 'Weight (kg)',
                          controller: _weightController,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: MeasurementInput(
                          label: 'Length (cm)',
                          controller: _lengthController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Weather Information
                  if (_weather != null)
                    WeatherInput(
                      weather: _weather!,
                      onChanged: (weather) {
                        setState(() {
                          _weather = weather;
                        });
                      },
                    ),
                  const SizedBox(height: 16),

                  // Location
                  if (_location != null)
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.location_on),
                        title: const Text('Location'),
                        subtitle: Text(
                          'Lat: ${_location!.latitude.toStringAsFixed(4)}\n'
                          'Lng: ${_location!.longitude.toStringAsFixed(4)}',
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.refresh),
                          onPressed: _getCurrentLocation,
                        ),
                      ),
                    ),
                  const SizedBox(height: 16),

                  // Notes
                  TextFormField(
                    controller: _notesController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'Notes',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Tags
                  Wrap(
                    spacing: 8,
                    children: [
                      ..._tags.map((tag) => Chip(
                            label: Text(tag),
                            onDeleted: () {
                              setState(() {
                                _tags.remove(tag);
                              });
                            },
                          )),
                      ActionChip(
                        label: const Text('Add Tag'),
                        onPressed: () async {
                          final tag = await showDialog<String>(
                            context: context,
                            builder: (context) => _AddTagDialog(),
                          );
                          if (tag != null && !_tags.contains(tag)) {
                            setState(() {
                              _tags.add(tag);
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Privacy Toggle
                  SwitchListTile(
                    title: const Text('Private Catch'),
                    subtitle: const Text(
                      'Only you can see private catches',
                    ),
                    value: _isPrivate,
                    onChanged: (value) {
                      setState(() {
                        _isPrivate = value;
                      });
                    },
                  ),
                ],
              ),
            ),
    );
  }
}

class _AddTagDialog extends StatefulWidget {
  @override
  State<_AddTagDialog> createState() => _AddTagDialogState();
}

class _AddTagDialogState extends State<_AddTagDialog> {
  final _tagController = TextEditingController();

  @override
  void dispose() {
    _tagController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Tag'),
      content: TextField(
        controller: _tagController,
        decoration: const InputDecoration(
          labelText: 'Tag',
          hintText: 'Enter a tag',
        ),
        textCapitalization: TextCapitalization.words,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (_tagController.text.isNotEmpty) {
              Navigator.pop(context, _tagController.text);
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
