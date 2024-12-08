import 'package:flutter/material.dart';
import 'dart:io';

class CatchPhotoPicker extends StatefulWidget {
  final ValueChanged<List<String>> onPhotosChanged;

  const CatchPhotoPicker({
    super.key,
    required this.onPhotosChanged,
  });

  @override
  State<CatchPhotoPicker> createState() => _CatchPhotoPickerState();
}

class _CatchPhotoPickerState extends State<CatchPhotoPicker> {
  final List<String> _photos = [];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Photos',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Add up to 5 photos of your catch',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              if (_photos.isEmpty)
                _buildAddPhotoButton(colorScheme)
              else ...[
                ..._photos.map((photo) => _buildPhotoItem(photo, colorScheme)),
                if (_photos.length < 5) _buildAddPhotoButton(colorScheme),
              ],
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAddPhotoButton(ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: Material(
          color: colorScheme.surfaceContainerHighest.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: _pickPhoto,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: colorScheme.outlineVariant.withOpacity(0.2),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_a_photo,
                    color: colorScheme.primary,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Add Photo',
                    style: TextStyle(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoItem(String photoPath, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(
                File(photoPath),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Material(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  onTap: () => _removePhoto(photoPath),
                  borderRadius: BorderRadius.circular(16),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.close,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickPhoto() async {
    // TODO: Implement photo picking
    // For now, we'll just add a dummy photo path
    setState(() {
      _photos.add('/path/to/photo${_photos.length + 1}.jpg');
      widget.onPhotosChanged(_photos);
    });
  }

  void _removePhoto(String photoPath) {
    setState(() {
      _photos.remove(photoPath);
      widget.onPhotosChanged(_photos);
    });
  }
}
