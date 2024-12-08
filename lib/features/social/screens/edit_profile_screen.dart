import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/models/profile_model.dart';
import '../../../core/services/profile_service.dart';
import '../../../core/services/storage_service.dart';

class EditProfileScreen extends StatefulWidget {
  final UserProfile profile;

  const EditProfileScreen({super.key, required this.profile});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _displayNameController;
  late TextEditingController _bioController;
  late TextEditingController _locationController;
  File? _newProfileImage;
  bool _isLoading = false;
  bool _isPrivateProfile = false;
  bool _showLocation = true;
  bool _allowMessages = true;
  bool _notifyNewFollowers = true;
  List<String> _selectedSpecies = [];
  List<String> _selectedLocations = [];
  List<String> _selectedGear = [];

  final List<String> _availableSpecies = [
    'Bass', 'Trout', 'Salmon', 'Pike', 'Catfish',
    'Carp', 'Walleye', 'Perch', 'Bluegill', 'Crappie'
  ];

  @override
  void initState() {
    super.initState();
    _displayNameController = TextEditingController(text: widget.profile.displayName);
    _bioController = TextEditingController(text: widget.profile.bio);
    _locationController = TextEditingController(text: widget.profile.location);
    _isPrivateProfile = widget.profile.isPrivateProfile;
    _showLocation = widget.profile.showLocation;
    _allowMessages = widget.profile.allowMessages;
    _notifyNewFollowers = widget.profile.notifyNewFollowers;
    _selectedSpecies = widget.profile.favoriteSpecies;
    _selectedLocations = widget.profile.preferredLocations;
    _selectedGear = widget.profile.favoriteGear;
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    
    if (image != null) {
      setState(() {
        _newProfileImage = File(image.path);
      });
    }
  }

  Future<void> _saveProfile() async {
    if (_displayNameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Display name cannot be empty')),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      String? photoURL = widget.profile.photoURL;
      
      if (_newProfileImage != null) {
        final storageService = Provider.of<StorageService>(context, listen: false);
        photoURL = await storageService.uploadProfileImage(
          _newProfileImage!,
          widget.profile.id,
        );
      }

      final updatedProfile = UserProfile(
        id: widget.profile.id,
        displayName: _displayNameController.text,
        photoURL: photoURL,
        bio: _bioController.text,
        location: _locationController.text,
        preferences: {
          'favoriteSpecies': _selectedSpecies,
          'preferredLocations': _selectedLocations,
          'favoriteGear': _selectedGear,
        },
        stats: widget.profile.stats,
        badges: widget.profile.badges,
        following: widget.profile.following,
        followers: widget.profile.followers,
        createdAt: widget.profile.createdAt,
        lastActive: DateTime.now(),
        settings: {
          'isPrivateProfile': _isPrivateProfile,
          'showLocation': _showLocation,
          'allowMessages': _allowMessages,
          'notifyNewFollowers': _notifyNewFollowers,
        },
      );

      final profileService = Provider.of<ProfileService>(context, listen: false);
      await profileService.updateUserProfile(updatedProfile);

      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error updating profile: $e')),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        actions: [
          if (!_isLoading)
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: _saveProfile,
            ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: _newProfileImage != null
                              ? FileImage(_newProfileImage!)
                              : widget.profile.photoURL != null
                                  ? NetworkImage(widget.profile.photoURL!)
                                  : null,
                          child: widget.profile.photoURL == null && _newProfileImage == null
                              ? const Icon(Icons.person, size: 50)
                              : null,
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            radius: 18,
                            child: IconButton(
                              icon: const Icon(Icons.camera_alt, size: 18),
                              color: Colors.white,
                              onPressed: _pickImage,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    controller: _displayNameController,
                    decoration: const InputDecoration(
                      labelText: 'Display Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _bioController,
                    decoration: const InputDecoration(
                      labelText: 'Bio',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _locationController,
                    decoration: const InputDecoration(
                      labelText: 'Location',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Privacy Settings',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SwitchListTile(
                    title: const Text('Private Profile'),
                    subtitle: const Text('Only followers can see your posts'),
                    value: _isPrivateProfile,
                    onChanged: (value) => setState(() => _isPrivateProfile = value),
                  ),
                  SwitchListTile(
                    title: const Text('Show Location'),
                    subtitle: const Text('Display your location on your profile'),
                    value: _showLocation,
                    onChanged: (value) => setState(() => _showLocation = value),
                  ),
                  SwitchListTile(
                    title: const Text('Allow Messages'),
                    subtitle: const Text('Let others send you direct messages'),
                    value: _allowMessages,
                    onChanged: (value) => setState(() => _allowMessages = value),
                  ),
                  SwitchListTile(
                    title: const Text('New Follower Notifications'),
                    subtitle: const Text('Get notified when someone follows you'),
                    value: _notifyNewFollowers,
                    onChanged: (value) => setState(() => _notifyNewFollowers = value),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Favorite Species',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                    spacing: 8,
                    children: _availableSpecies.map((species) {
                      final isSelected = _selectedSpecies.contains(species);
                      return FilterChip(
                        label: Text(species),
                        selected: isSelected,
                        onSelected: (selected) {
                          setState(() {
                            if (selected) {
                              _selectedSpecies.add(species);
                            } else {
                              _selectedSpecies.remove(species);
                            }
                          });
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
    );
  }

  @override
  void dispose() {
    _displayNameController.dispose();
    _bioController.dispose();
    _locationController.dispose();
    super.dispose();
  }
}
