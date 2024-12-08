import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../models/sync_status.dart';
import './offline_service.dart';

final syncServiceProvider = Provider((ref) {
  return SyncService(ref.watch(offlineServiceProvider));
});

class SyncService {
  final OfflineService _offlineService;
  Timer? _syncTimer;
  bool _isSyncing = false;
  final _syncController = StreamController<SyncStatus>.broadcast();

  SyncService(this._offlineService) {
    _initConnectivityListener();
    _initPeriodicSync();
  }

  Stream<SyncStatus> get syncStatus => _syncController.stream;

  void _initConnectivityListener() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result != ConnectivityResult.none) {
        syncData();
      }
    });
  }

  void _initPeriodicSync() {
    _syncTimer?.cancel();
    _syncTimer = Timer.periodic(const Duration(minutes: 15), (timer) {
      syncData();
    });
  }

  Future<void> syncData() async {
    if (_isSyncing) return;
    _isSyncing = true;
    _syncController.add(SyncStatus.syncing);

    try {
      final queue = await _offlineService.getSyncQueue();
      
      for (final item in queue) {
        try {
          // Attempt to sync the item
          await _syncItem(item);
          
          // If successful, remove from queue
          await _offlineService.removeSyncItem(item['id'] as String);
        } catch (e) {
          // Mark as failed but continue with next items
          print('Failed to sync item ${item['id']}: $e');
          continue;
        }
      }

      _syncController.add(SyncStatus.completed);
    } catch (e) {
      _syncController.add(SyncStatus.failed);
      print('Sync failed: $e');
    } finally {
      _isSyncing = false;
    }
  }

  Future<void> _syncItem(Map<String, dynamic> item) async {
    final type = item['type'] as String;
    final data = item['data'] as String;

    switch (type) {
      case 'catch_log':
        await _syncCatchLog(data);
        break;
      case 'map_tile':
        await _syncMapTile(data);
        break;
      default:
        print('Unknown sync item type: $type');
    }
  }

  Future<void> _syncCatchLog(String data) async {
    // TODO: Implement API call to sync catch log
    await Future.delayed(const Duration(milliseconds: 100));
  }

  Future<void> _syncMapTile(String data) async {
    // TODO: Implement API call to sync map tile
    await Future.delayed(const Duration(milliseconds: 100));
  }

  Future<void> forceSyncAll() async {
    await syncData();
  }

  Future<void> resolveConflict(String id, Map<String, dynamic> resolution) async {
    // TODO: Implement conflict resolution
    await Future.delayed(const Duration(milliseconds: 100));
  }

  void dispose() {
    _syncTimer?.cancel();
    _syncController.close();
  }
}
