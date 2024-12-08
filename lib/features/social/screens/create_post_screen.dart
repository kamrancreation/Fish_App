import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import '../../../core/models/social_model.dart';
import '../../../core/services/social_service.dart';
import '../../../core/services/auth_service.dart';
import '../../../core/services/storage_service.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final _formKey = GlobalKey<FormState>();
  final _contentController = TextEditingController();
  final _socialService = SocialService();
  final _storageService = StorageService();
  final _imagePicker = ImagePicker();

  final List<XFile> _selectedImages = [];
  bool _isLoading = false;
  bool _includeLocation = false;
  Position? _currentPosition;
  String? _locationName;
  final Map<String, dynamic> _catchDetails = {};

  @override
  void initState() {
    super.initState();
    _checkLocationPermission();
  }

  Future<void> _checkLocationPermission() async {
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      final placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        setState(() {
          _currentPosition = position;
          _locationName =
              '${place.locality ?? ''}, ${place.administrativeArea ?? ''}';
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error getting location: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _pickImages() async {
    try {
      final images = await _imagePicker.pickMultiImage();
      setState(() {
        _selectedImages.addAll(images);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error picking images: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _createPost() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final userId = context.read<AuthService>().currentUser.uid;
      if (userId == null) throw Exception('User not logged in');

      // Upload images
      final imageUrls = <String>[];
      for (final image in _selectedImages) {
        final url = await _storageService.uploadFile(
          await image.readAsBytes(),
          'posts/${DateTime.now().millisecondsSinceEpoch}_${image.name}',
        );
        imageUrls.add(url);
      }

      // Create post
      final post = SocialPost(
        id: DateTime.now().toIso8601String(),
        userId: userId,
        content: _contentController.text,
        imageUrls: imageUrls,
        catchDetails: _catchDetails,
        location: _includeLocation && _currentPosition != null
            ? {
                'latitude': _currentPosition!.latitude,
                'longitude': _currentPosition!.longitude,
                'name': _locationName,
              }
            : {},
        isPrivate: false,
        createdAt: DateTime.now(),
        likeIds: [],
        comments: [],
        stats: {},
      );

      await _socialService.createPost(post);

      if (mounted) {
        Navigator.pop(context, true);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error creating post: $e'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showCatchDetailsDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Catch Details'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Species'),
                onChanged: (value) =>
                    setState(() => _catchDetails['species'] = value),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Weight (lbs)'),
                keyboardType: TextInputType.number,
                onChanged: (value) =>
                    setState(() => _catchDetails['weight'] = value),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Length (inches)'),
                keyboardType: TextInputType.number,
                onChanged: (value) =>
                    setState(() => _catchDetails['length'] = value),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Lure Used'),
                onChanged: (value) =>
                    setState(() => _catchDetails['lure'] = value),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        actions: [
          if (_isLoading)
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CircularProgressIndicator(),
              ),
            )
          else
            TextButton(
              onPressed: _createPost,
              child: const Text('Post'),
            ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _contentController,
              decoration: const InputDecoration(
                hintText: 'Share your fishing adventure...',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            if (_selectedImages.isNotEmpty)
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _selectedImages.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.network(
                            _selectedImages[index].path,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 4,
                          right: 12,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedImages.removeAt(index);
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Colors.black54,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.close,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: _pickImages,
                  icon: const Icon(Icons.photo_library),
                  label: const Text('Add Photos'),
                ),
                const SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: _showCatchDetailsDialog,
                  icon: const Icon(Icons.catching_pokemon),
                  label: const Text('Catch Details'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              title: const Text('Include Location'),
              subtitle: Text(_locationName ?? 'Location not available'),
              value: _includeLocation,
              onChanged: (value) {
                setState(() {
                  _includeLocation = value;
                });
                if (value && _currentPosition == null) {
                  _getCurrentLocation();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _contentController.dispose();
    super.dispose();
  }
}
