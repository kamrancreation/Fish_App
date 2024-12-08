import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';
import '../widgets/media_upload_section.dart';
import '../widgets/catch_report_form.dart';
import '../../controllers/feed_controller.dart';
import '../../models/feed_models.dart';
import '../../../shared/widgets/loading_overlay.dart';

class CreatePostScreen extends ConsumerStatefulWidget {
  const CreatePostScreen({super.key});

  @override
  ConsumerState<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends ConsumerState<CreatePostScreen> {
  final _formKey = GlobalKey<FormState>();
  final _contentController = TextEditingController();
  final _imagePicker = ImagePicker();
  final List<XFile> _selectedMedia = [];
  CatchReport? _catchReport;
  Location? _location;
  WeatherInfo? _weatherInfo;
  bool _isLoading = false;

  @override
  void dispose() {
    _contentController.dispose();
    super.dispose();
  }

  Future<void> _pickMedia(ImageSource source) async {
    try {
      if (source == ImageSource.camera) {
        final image = await _imagePicker.pickImage(
          source: source,
          maxWidth: 1920,
          maxHeight: 1080,
          imageQuality: 85,
        );
        if (image != null) {
          setState(() {
            _selectedMedia.add(image);
          });
        }
      } else {
        final images = await _imagePicker.pickMultiImage(
          maxWidth: 1920,
          maxHeight: 1080,
          imageQuality: 85,
        );
        if (images.isNotEmpty) {
          setState(() {
            _selectedMedia.addAll(images);
          });
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking media: $e')),
      );
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      final permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        final requested = await Geolocator.requestPermission();
        if (requested == LocationPermission.denied) {
          throw Exception('Location permission denied');
        }
      }

      setState(() => _isLoading = true);
      final position = await Geolocator.getCurrentPosition();

      // Get location details and weather info
      final locationData =
          await ref.read(feedControllerProvider.notifier).getLocationDetails(
                latitude: position.latitude,
                longitude: position.longitude,
              );

      setState(() {
        _location = locationData.location;
        _weatherInfo = locationData.weather;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error getting location: $e')),
      );
    }
  }

  Future<void> _createPost() async {
    if (!_formKey.currentState!.validate()) return;

    try {
      setState(() => _isLoading = true);

      // Extract hashtags from content
      final hashtags = _contentController.text
          .split(' ')
          .where((word) => word.startsWith('#'))
          .map((tag) => tag.substring(1))
          .toList();

      // Upload media files
      final mediaUrls = await ref
          .read(feedControllerProvider.notifier)
          .uploadMedia(_selectedMedia);

      // Create post
      await ref.read(feedControllerProvider.notifier).createPost(
            content: _contentController.text,
            media: mediaUrls,
            hashtags: hashtags,
            catchReport: _catchReport,
            location: _location,
            weatherInfo: _weatherInfo,
          );

      Navigator.pop(context, true);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error creating post: $e')),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: _isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Post'),
          actions: [
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
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'Share your fishing experience...',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some content';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              MediaUploadSection(
                selectedMedia: _selectedMedia,
                onPickMedia: _pickMedia,
                onRemoveMedia: (index) {
                  setState(() {
                    _selectedMedia.removeAt(index);
                  });
                },
              ),
              const SizedBox(height: 16),
              CatchReportForm(
                onCatchReportChanged: (report) {
                  setState(() {
                    _catchReport = report;
                  });
                },
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.location_on),
                title: Text(_location != null
                    ? _location!.name ?? 'Location added'
                    : 'Add location'),
                trailing: _location != null
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _location = null;
                            _weatherInfo = null;
                          });
                        },
                      )
                    : null,
                onTap: _getCurrentLocation,
              ),
              if (_weatherInfo != null) ...[
                const SizedBox(height: 8),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Weather Conditions',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${_weatherInfo!.temperature}°C, ${_weatherInfo!.conditions}',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          'Wind: ${_weatherInfo!.windSpeed} km/h',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
