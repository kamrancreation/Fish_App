import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/tournament_service.dart';

class StreamControl extends ConsumerStatefulWidget {
  final String tournamentId;
  final List<String> activeStreams;

  const StreamControl({
    super.key,
    required this.tournamentId,
    required this.activeStreams,
  });

  @override
  ConsumerState<StreamControl> createState() => _StreamControlState();
}

class _StreamControlState extends ConsumerState<StreamControl> {
  bool _isStreaming = false;
  String? _currentStreamId;
  final _titleController = TextEditingController();
  bool _enableChat = true;

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: const Text(
            'Live Streams',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.add),
            onPressed: _showStreamDialog,
          ),
        ),
        if (widget.activeStreams.isNotEmpty)
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.activeStreams.length,
              itemBuilder: (context, index) {
                return _buildStreamPreview(widget.activeStreams[index]);
              },
            ),
          )
        else
          const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('No active streams'),
            ),
          ),
      ],
    );
  }

  Widget _buildStreamPreview(String streamId) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.black87,
                child: const Center(
                  child: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: 48,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Live',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Viewers: ${_getViewerCount(streamId)}'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showStreamDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Start Streaming'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Stream Title',
                hintText: 'Enter your stream title',
              ),
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              title: const Text('Enable Chat'),
              value: _enableChat,
              onChanged: (value) {
                setState(() {
                  _enableChat = value;
                });
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: _startStream,
            child: const Text('Start'),
          ),
        ],
      ),
    );
  }

  Future<void> _startStream() async {
    if (_titleController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a stream title'),
        ),
      );
      return;
    }

    try {
      final service = ref.read(tournamentServiceProvider);
      final streamId = await service.startLiveStream(
        tournamentId: widget.tournamentId,
        userId: 'current_user_id', // TODO: Get from auth service
        title: _titleController.text,
        enableChat: _enableChat,
      );

      setState(() {
        _isStreaming = true;
        _currentStreamId = streamId;
      });

      if (mounted) {
        Navigator.pop(context);
        _titleController.clear();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error starting stream: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  int _getViewerCount(String streamId) {
    // TODO: Implement viewer count
    return 0;
  }
}
