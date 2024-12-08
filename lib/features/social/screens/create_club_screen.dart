import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/models/social_model.dart';
import '../../../core/services/social_service.dart';
import '../../../core/services/auth_service.dart';
import '../../../core/services/storage_service.dart';

class CreateClubScreen extends StatefulWidget {
  const CreateClubScreen({super.key});

  @override
  State<CreateClubScreen> createState() => _CreateClubScreenState();
}

class _CreateClubScreenState extends State<CreateClubScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _socialService = SocialService();
  final _storageService = StorageService();
  final _imagePicker = ImagePicker();

  XFile? _selectedImage;
  bool _isLoading = false;
  bool _isPrivate = false;
  final Map<String, dynamic> _settings = {
    'allowMemberPosts': true,
    'allowMemberEvents': true,
    'requireApproval': false,
  };

  Future<void> _pickImage() async {
    try {
      final image = await _imagePicker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _selectedImage = image;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error picking image: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _createClub() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final userId = context.read<AuthService>().currentUser.uid;
      if (userId == null) throw Exception('User not logged in');

      String? imageUrl;
      if (_selectedImage != null) {
        imageUrl = await _storageService.uploadFile(
          await _selectedImage!.readAsBytes(),
          'clubs/${DateTime.now().millisecondsSinceEpoch}_${_selectedImage!.name}',
        );
      }

      final club = FishingClub(
        id: DateTime.now().toIso8601String(),
        name: _nameController.text,
        description: _descriptionController.text,
        creatorId: userId,
        adminIds: [userId],
        memberIds: [userId],
        imageUrl: imageUrl,
        isPrivate: _isPrivate,
        settings: _settings,
        createdAt: DateTime.now(),
        stats: {
          'totalPosts': 0,
          'totalEvents': 0,
          'totalCatches': 0,
        },
      );

      await _socialService.createClub(club);

      if (mounted) {
        Navigator.pop(context, true);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error creating club: $e'),
          backgroundColor: Colors.red,
        ),
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
        title: const Text('Create Club'),
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
              onPressed: _createClub,
              child: const Text('Create'),
            ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: _selectedImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          _selectedImage!.path,
                          fit: BoxFit.cover,
                        ),
                      )
                    : const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_photo_alternate,
                            size: 64,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 8),
                          Text('Add Club Photo'),
                        ],
                      ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Club Name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a club name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            Text(
              'Club Settings',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            SwitchListTile(
              title: const Text('Private Club'),
              subtitle: const Text('Only approved members can join'),
              value: _isPrivate,
              onChanged: (value) {
                setState(() {
                  _isPrivate = value;
                  if (value) {
                    _settings['requireApproval'] = true;
                  }
                });
              },
            ),
            SwitchListTile(
              title: const Text('Allow Member Posts'),
              subtitle: const Text('Members can create posts'),
              value: _settings['allowMemberPosts'],
              onChanged: (value) {
                setState(() {
                  _settings['allowMemberPosts'] = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Allow Member Events'),
              subtitle: const Text('Members can create events'),
              value: _settings['allowMemberEvents'],
              onChanged: (value) {
                setState(() {
                  _settings['allowMemberEvents'] = value;
                });
              },
            ),
            if (_isPrivate)
              SwitchListTile(
                title: const Text('Require Approval'),
                subtitle: const Text('Admin must approve new members'),
                value: _settings['requireApproval'],
                onChanged: (value) {
                  setState(() {
                    _settings['requireApproval'] = value;
                  });
                },
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
}
