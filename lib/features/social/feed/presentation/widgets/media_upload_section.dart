import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class MediaUploadSection extends StatelessWidget {
  final List<XFile> selectedMedia;
  final Function(ImageSource) onPickMedia;
  final Function(int) onRemoveMedia;

  const MediaUploadSection({
    super.key,
    required this.selectedMedia,
    required this.onPickMedia,
    required this.onRemoveMedia,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: () => onPickMedia(ImageSource.camera),
              icon: const Icon(Icons.camera_alt),
              label: const Text('Camera'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => onPickMedia(ImageSource.gallery),
              icon: const Icon(Icons.photo_library),
              label: const Text('Gallery'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        if (selectedMedia.isNotEmpty) ...[
          const SizedBox(height: 16),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: selectedMedia.length,
              itemBuilder: (context, index) {
                final media = selectedMedia[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: _MediaPreview(media: media),
                      ),
                      Positioned(
                        top: 4,
                        right: 4,
                        child: GestureDetector(
                          onTap: () => onRemoveMedia(index),
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
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
                  ),
                );
              },
            ),
          ),
        ],
      ],
    );
  }
}

class _MediaPreview extends StatefulWidget {
  final XFile media;

  const _MediaPreview({
    super.key,
    required this.media,
  });

  @override
  State<_MediaPreview> createState() => _MediaPreviewState();
}

class _MediaPreviewState extends State<_MediaPreview> {
  VideoPlayerController? _videoController;
  bool _isVideo = false;

  @override
  void initState() {
    super.initState();
    _isVideo = widget.media.path.toLowerCase().endsWith('.mp4');
    if (_isVideo) {
      _initializeVideoController();
    }
  }

  Future<void> _initializeVideoController() async {
    _videoController = VideoPlayerController.file(File(widget.media.path));
    try {
      await _videoController!.initialize();
      setState(() {});
    } catch (e) {
      print('Error initializing video controller: $e');
    }
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isVideo) {
      if (_videoController?.value.isInitialized ?? false) {
        return SizedBox(
          width: 120,
          height: 120,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: _videoController!.value.aspectRatio,
                child: VideoPlayer(_videoController!),
              ),
              const Icon(
                Icons.play_circle_outline,
                size: 40,
                color: Colors.white,
              ),
            ],
          ),
        );
      } else {
        return const SizedBox(
          width: 120,
          height: 120,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    } else {
      return Image.file(
        File(widget.media.path),
        width: 120,
        height: 120,
        fit: BoxFit.cover,
      );
    }
  }
}
