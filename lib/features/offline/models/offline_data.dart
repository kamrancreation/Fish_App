import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../catch/models/catch_log.dart';
import '../../maps/models/map_tile.dart';

part 'offline_data.freezed.dart';
part 'offline_data.g.dart';

@freezed
class OfflineData with _$OfflineData {
  const factory OfflineData({
    required String id,
    required String type,
    required Map<String, dynamic> data,
    required DateTime lastModified,
    required bool isPending,
  }) = _OfflineData;

  factory OfflineData.fromJson(Map<String, dynamic> json) =>
      _$OfflineDataFromJson(json);

  factory OfflineData.fromCatchLog(CatchLog catchLog) {
    return OfflineData(
      id: catchLog.id,
      type: 'catch_log',
      data: json.decode(catchLog.toJson()),
      lastModified: DateTime.now(),
      isPending: true,
    );
  }

  factory OfflineData.fromMapTile(MapTile mapTile) {
    return OfflineData(
      id: '${mapTile.zoomLevel}_${mapTile.x}_${mapTile.y}',
      type: 'map_tile',
      data: {
        'zoom_level': mapTile.zoomLevel,
        'x': mapTile.x,
        'y': mapTile.y,
        'data': base64Encode(mapTile.data),
      },
      lastModified: DateTime.now(),
      isPending: false,
    );
  }
}

@freezed
class OfflineDataBatch with _$OfflineDataBatch {
  const factory OfflineDataBatch({
    required List<OfflineData> items,
    required DateTime createdAt,
    required String status,
  }) = _OfflineDataBatch;

  factory OfflineDataBatch.fromJson(Map<String, dynamic> json) =>
      _$OfflineDataBatchFromJson(json);
}

@freezed
class OfflineStorageStats with _$OfflineStorageStats {
  const factory OfflineStorageStats({
    required int mapTilesCount,
    required int mapStorageBytes,
    required int catchLogsCount,
    required int syncQueueCount,
    required DateTime lastSync,
  }) = _OfflineStorageStats;

  factory OfflineStorageStats.fromJson(Map<String, dynamic> json) =>
      _$OfflineStorageStatsFromJson(json);
}
