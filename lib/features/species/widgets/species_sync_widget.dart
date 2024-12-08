import 'package:flutter/material.dart';
import 'package:fishpro/features/species/services/species_storage_service.dart';
import 'package:fishpro/features/shared/services/network_service.dart';

class SpeciesSyncWidget extends StatefulWidget {
  final SpeciesStorageService storageService;
  final NetworkService networkService;

  const SpeciesSyncWidget({
    super.key,
    required this.storageService,
    required this.networkService,
  });

  @override
  _SpeciesSyncWidgetState createState() => _SpeciesSyncWidgetState();
}

class _SpeciesSyncWidgetState extends State<SpeciesSyncWidget> {
  bool _isSyncing = false;
  String? _errorMessage;
  DateTime? _lastSyncTime;

  @override
  void initState() {
    super.initState();
    _loadLastSyncTime();
  }

  Future<void> _loadLastSyncTime() async {
    try {
      final lastSync = await widget.storageService.getLastSyncTimestamp();
      setState(() {
        _lastSyncTime = lastSync;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to load sync status: ${e.toString()}';
      });
    }
  }

  Future<void> _syncData() async {
    if (_isSyncing) return;

    setState(() {
      _isSyncing = true;
      _errorMessage = null;
    });

    try {
      if (!await widget.networkService.isConnected()) {
        throw Exception('No internet connection');
      }

      await widget.storageService.syncWithServer();
      await _loadLastSyncTime();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Species data synchronized successfully'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      setState(() {
        _errorMessage = 'Sync failed: ${e.toString()}';
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_errorMessage!),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() {
        _isSyncing = false;
      });
    }
  }

  Future<void> _clearCache() async {
    try {
      await widget.storageService.clearCache();
      await _loadLastSyncTime();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Cache cleared successfully'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to clear cache: ${e.toString()}';
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_errorMessage!),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Offline Data',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.help_outline),
                  onPressed: () => _showHelpDialog(context),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildSyncStatus(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: _isSyncing ? null : _syncData,
                  icon: const Icon(Icons.sync),
                  label: Text(_isSyncing ? 'Syncing...' : 'Sync Now'),
                ),
                TextButton.icon(
                  onPressed: _isSyncing ? null : _clearCache,
                  icon: const Icon(Icons.delete_outline),
                  label: const Text('Clear Cache'),
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                ),
              ],
            ),
            if (_errorMessage != null) ...[
              const SizedBox(height: 16),
              Text(
                _errorMessage!,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSyncStatus() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.access_time, size: 16),
            const SizedBox(width: 8),
            Text(
              'Last synced: ${_formatLastSync()}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 8),
        FutureBuilder<bool>(
          future: widget.networkService.isConnected(),
          builder: (context, snapshot) {
            final isOnline = snapshot.data ?? false;
            return Row(
              children: [
                Icon(
                  isOnline ? Icons.cloud_done : Icons.cloud_off,
                  size: 16,
                  color: isOnline ? Colors.green : Colors.grey,
                ),
                const SizedBox(width: 8),
                Text(
                  isOnline ? 'Online' : 'Offline',
                  style: TextStyle(
                    fontSize: 16,
                    color: isOnline ? Colors.green : Colors.grey,
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  String _formatLastSync() {
    if (_lastSyncTime == null) return 'Never';
    
    final now = DateTime.now();
    final difference = now.difference(_lastSyncTime!);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inDays < 1) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} days ago';
    } else {
      return _lastSyncTime!.toString().split('.')[0];
    }
  }

  void _showHelpDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Offline Data Help'),
        content: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sync Now:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Updates local data with the latest species information.'),
              SizedBox(height: 8),
              Text(
                'Clear Cache:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Removes all locally stored data. Use this if you\'re experiencing issues.',
              ),
              SizedBox(height: 8),
              Text(
                'Note:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Internet connection is required for syncing. Offline mode will use the last synced data.',
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }
}
