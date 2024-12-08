import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';

class ChatInput extends StatefulWidget {
  final Function(String) onSendText;
  final Function(File, String?) onSendImage;
  final Function(LocationData, String?) onSendLocation;
  final Function(Map<String, dynamic>) onSendCatch;
  final Function(Map<String, dynamic>) onSendEvent;
  final VoidCallback? onTypingStarted;
  final VoidCallback? onTypingStopped;

  const ChatInput({
    super.key,
    required this.onSendText,
    required this.onSendImage,
    required this.onSendLocation,
    required this.onSendCatch,
    required this.onSendEvent,
    this.onTypingStarted,
    this.onTypingStopped,
  });

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput>
    with SingleTickerProviderStateMixin {
  final _textController = TextEditingController();
  final _imagePicker = ImagePicker();
  final _location = Location();
  bool _isExpanded = false;
  late AnimationController _animationController;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _textController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    if (_textController.text.isEmpty) {
      widget.onTypingStopped?.call();
    } else {
      widget.onTypingStarted?.call();
    }
  }

  Future<void> _pickImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Add Caption'),
          content: TextField(
            decoration: const InputDecoration(
              hintText: 'Enter caption (optional)',
            ),
            onSubmitted: (caption) {
              Navigator.pop(context, caption);
            },
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Skip'),
            ),
            TextButton(
              onPressed: () {
                final caption = _textController.text;
                Navigator.pop(context, caption);
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ).then((caption) {
        widget.onSendImage(File(image.path), caption as String?);
      });
    }
  }

  Future<void> _shareLocation() async {
    try {
      final hasPermission = await _location.hasPermission();
      if (hasPermission == PermissionStatus.denied) {
        final permission = await _location.requestPermission();
        if (permission == PermissionStatus.denied) {
          return;
        }
      }

      final locationData = await _location.getLocation();
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Add Location Name'),
          content: TextField(
            decoration: const InputDecoration(
              hintText: 'Enter location name (optional)',
            ),
            onSubmitted: (name) {
              Navigator.pop(context, name);
            },
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Skip'),
            ),
            TextButton(
              onPressed: () {
                final name = _textController.text;
                Navigator.pop(context, name);
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ).then((name) {
        widget.onSendLocation(locationData, name as String?);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error accessing location: $e')),
      );
    }
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizeTransition(
          sizeFactor: _expandAnimation,
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Theme.of(context).cardColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton(
                  icon: Icons.image,
                  label: 'Photo',
                  onTap: _pickImage,
                ),
                _buildActionButton(
                  icon: Icons.location_on,
                  label: 'Location',
                  onTap: _shareLocation,
                ),
                _buildActionButton(
                  icon: Icons.catching_pokemon,
                  label: 'Catch',
                  onTap: () {
                    // Show catch form dialog
                  },
                ),
                _buildActionButton(
                  icon: Icons.event,
                  label: 'Event',
                  onTap: () {
                    // Show event form dialog
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          color: Theme.of(context).cardColor,
          child: SafeArea(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    _isExpanded ? Icons.close : Icons.add,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: _toggleExpanded,
                ),
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: 'Type a message...',
                      border: InputBorder.none,
                    ),
                    maxLines: null,
                    textCapitalization: TextCapitalization.sentences,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.send,
                    color: _textController.text.isEmpty
                        ? Theme.of(context).disabledColor
                        : Theme.of(context).primaryColor,
                  ),
                  onPressed: _textController.text.isEmpty
                      ? null
                      : () {
                          widget.onSendText(_textController.text);
                          _textController.clear();
                        },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
