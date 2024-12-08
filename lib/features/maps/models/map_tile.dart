import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_tile.freezed.dart';
part 'map_tile.g.dart';

@freezed
class MapTile with _$MapTile {
  const factory MapTile({
    required List<int> data,
    required int zoomLevel,
    required int x,
    required int y,
  }) = _MapTile;

  factory MapTile.fromJson(Map<String, dynamic> json) => _$MapTileFromJson(json);
}

@freezed
class MapTileRegion with _$MapTileRegion {
  const factory MapTileRegion({
    required double north,
    required double south,
    required double east,
    required double west,
    required int minZoom,
    required int maxZoom,
  }) = _MapTileRegion;

  factory MapTileRegion.fromJson(Map<String, dynamic> json) =>
      _$MapTileRegionFromJson(json);
}

@freezed
class MapTileStats with _$MapTileStats {
  const factory MapTileStats({
    required int tileCount,
    required int totalSizeBytes,
    required DateTime lastUpdated,
    required List<MapTileRegion> regions,
  }) = _MapTileStats;

  factory MapTileStats.fromJson(Map<String, dynamic> json) =>
      _$MapTileStatsFromJson(json);
}
