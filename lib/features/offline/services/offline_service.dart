import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/sync_status.dart';
import '../../catch/models/catch_log.dart';
import '../../maps/models/map_tile.dart';

final offlineServiceProvider = Provider((ref) => OfflineService());

class OfflineService {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'fishpro_offline.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Create catch logs table
        await db.execute('''
          CREATE TABLE catch_logs (
            id TEXT PRIMARY KEY,
            data TEXT,
            sync_status TEXT,
            last_modified INTEGER
          )
        ''');

        // Create map tiles table
        await db.execute('''
          CREATE TABLE map_tiles (
            id TEXT PRIMARY KEY,
            data BLOB,
            zoom_level INTEGER,
            x INTEGER,
            y INTEGER,
            last_accessed INTEGER
          )
        ''');

        // Create sync queue table
        await db.execute('''
          CREATE TABLE sync_queue (
            id TEXT PRIMARY KEY,
            type TEXT,
            data TEXT,
            created_at INTEGER
          )
        ''');
      },
    );
  }

  // Catch Logging
  Future<void> saveCatchLog(CatchLog catchLog) async {
    final db = await database;
    await db.insert(
      'catch_logs',
      {
        'id': catchLog.id,
        'data': catchLog.toJson(),
        'sync_status': SyncStatus.pending.name,
        'last_modified': DateTime.now().millisecondsSinceEpoch,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<CatchLog>> getOfflineCatchLogs() async {
    final db = await database;
    final logs = await db.query('catch_logs');
    return logs.map((log) => CatchLog.fromJson(log['data'] as String)).toList();
  }

  // Map Caching
  Future<void> saveMapTile(MapTile tile) async {
    final db = await database;
    await db.insert(
      'map_tiles',
      {
        'id': '${tile.zoomLevel}_${tile.x}_${tile.y}',
        'data': tile.data,
        'zoom_level': tile.zoomLevel,
        'x': tile.x,
        'y': tile.y,
        'last_accessed': DateTime.now().millisecondsSinceEpoch,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<MapTile?> getMapTile(int zoomLevel, int x, int y) async {
    final db = await database;
    final result = await db.query(
      'map_tiles',
      where: 'zoom_level = ? AND x = ? AND y = ?',
      whereArgs: [zoomLevel, x, y],
    );

    if (result.isEmpty) return null;

    // Update last accessed time
    await db.update(
      'map_tiles',
      {'last_accessed': DateTime.now().millisecondsSinceEpoch},
      where: 'id = ?',
      whereArgs: [result.first['id']],
    );

    return MapTile(
      data: result.first['data'] as List<int>,
      zoomLevel: zoomLevel,
      x: x,
      y: y,
    );
  }

  // Data Synchronization
  Future<void> queueForSync(String type, Map<String, dynamic> data) async {
    final db = await database;
    await db.insert(
      'sync_queue',
      {
        'id': DateTime.now().toString(),
        'type': type,
        'data': data.toString(),
        'created_at': DateTime.now().millisecondsSinceEpoch,
      },
    );
  }

  Future<List<Map<String, dynamic>>> getSyncQueue() async {
    final db = await database;
    return db.query('sync_queue', orderBy: 'created_at ASC');
  }

  Future<void> removeSyncItem(String id) async {
    final db = await database;
    await db.delete(
      'sync_queue',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Storage Management
  Future<void> clearOldMapTiles({
    required int maxAgeInDays,
    required int maxStorageInMB,
  }) async {
    final db = await database;
    final now = DateTime.now().millisecondsSinceEpoch;
    final ageThreshold = now - (maxAgeInDays * 24 * 60 * 60 * 1000);

    // Delete old tiles
    await db.delete(
      'map_tiles',
      where: 'last_accessed < ?',
      whereArgs: [ageThreshold],
    );

    // Check storage size and delete least recently used if needed
    final tiles = await db.query(
      'map_tiles',
      orderBy: 'last_accessed DESC',
    );

    int totalSize = 0;
    for (final tile in tiles) {
      final data = tile['data'] as List<int>;
      totalSize += data.length;

      if (totalSize > maxStorageInMB * 1024 * 1024) {
        await db.delete(
          'map_tiles',
          where: 'id = ?',
          whereArgs: [tile['id']],
        );
      }
    }
  }

  Future<Map<String, int>> getStorageStats() async {
    final db = await database;
    final tiles = await db.query('map_tiles');
    final logs = await db.query('catch_logs');
    final queue = await db.query('sync_queue');

    int mapSize = 0;
    for (final tile in tiles) {
      final data = tile['data'] as List<int>;
      mapSize += data.length;
    }

    return {
      'mapTilesCount': tiles.length,
      'mapStorageBytes': mapSize,
      'catchLogsCount': logs.length,
      'syncQueueCount': queue.length,
    };
  }

  // Safety Features
  Future<void> backupLocalData() async {
    final db = await database;
    final path = await getDatabasesPath();
    final backupPath = join(path, 'fishpro_backup.db');

    // Copy current database to backup
    final data = await File(db.path).readAsBytes();
    await File(backupPath).writeAsBytes(data);
  }

  Future<void> restoreFromBackup() async {
    final path = await getDatabasesPath();
    final backupPath = join(path, 'fishpro_backup.db');
    final dbPath = join(path, 'fishpro_offline.db');

    if (await File(backupPath).exists()) {
      final data = await File(backupPath).readAsBytes();
      await File(dbPath).writeAsBytes(data);
      _database = null; // Force database reconnection
    }
  }

  Future<void> validateLocalData() async {
    final db = await database;
    bool needsRepair = false;

    try {
      // Check tables integrity
      await db.rawQuery('PRAGMA integrity_check');
    } catch (e) {
      needsRepair = true;
    }

    if (needsRepair) {
      await restoreFromBackup();
    }
  }
}
