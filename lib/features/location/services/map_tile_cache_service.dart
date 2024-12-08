import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/map_models.dart';
import '../../core/error/error_handler.dart';

class MapTileCacheService {
  final ErrorHandler _errorHandler;
  final MapCacheConfig _config;
  late Directory _cacheDirectory;
  final Map<String, DateTime> _tileAccessLog = {};

  MapTileCacheService({
    ErrorHandler? errorHandler,
    MapCacheConfig? config,
  })  : _errorHandler = errorHandler ?? ErrorHandler(),
        _config = config ?? const MapCacheConfig();

  Future<void> initialize() async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      _cacheDirectory = Directory('${appDir.path}/map_tiles');
      if (!await _cacheDirectory.exists()) {
        await _cacheDirectory.create(recursive: true);
      }
      await _cleanupOldTiles();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Tile cache initialization',
      );
    }
  }

  Future<File?> getTile(MapTile tile) async {
    try {
      final tileFile = File('${_cacheDirectory.path}/${tile.key}.png');
      if (await tileFile.exists()) {
        _updateTileAccess(tile.key);
        return tileFile;
      }
      return null;
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Get tile from cache',
      );
      return null;
    }
  }

  Future<void> cacheTiles(
    LatLngBounds bounds,
    int minZoom,
    int maxZoom,
  ) async {
    try {
      for (var zoom = minZoom; zoom <= maxZoom; zoom++) {
        final tiles = _getTilesInBounds(bounds, zoom);
        for (var tile in tiles) {
          await _cacheTile(tile);
        }
      }
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Caching tiles',
      );
    }
  }

  Future<void> _cacheTile(MapTile tile) async {
    final tileFile = File('${_cacheDirectory.path}/${tile.key}.png');
    if (await tileFile.exists()) {
      _updateTileAccess(tile.key);
      return;
    }

    try {
      final response = await http.get(Uri.parse(tile.url));
      if (response.statusCode == 200) {
        await tileFile.writeAsBytes(response.bodyBytes);
        _updateTileAccess(tile.key);
        await _enforceStorageLimit();
      }
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Downloading tile',
      );
    }
  }

  Future<void> clearCache() async {
    try {
      if (await _cacheDirectory.exists()) {
        await _cacheDirectory.delete(recursive: true);
        await _cacheDirectory.create();
      }
      _tileAccessLog.clear();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Clearing cache',
      );
    }
  }

  Future<int> getCacheSize() async {
    try {
      int size = 0;
      await for (var entity in _cacheDirectory.list(recursive: true)) {
        if (entity is File) {
          size += await entity.length();
        }
      }
      return size;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Getting cache size',
      );
    }
  }

  List<MapTile> _getTilesInBounds(LatLngBounds bounds, int zoom) {
    final tiles = <MapTile>[];
    final minPoint = _latLngToPoint(bounds.southwest, zoom);
    final maxPoint = _latLngToPoint(bounds.northeast, zoom);

    for (var x = minPoint.x; x <= maxPoint.x; x++) {
      for (var y = minPoint.y; y <= maxPoint.y; y++) {
        tiles.add(MapTile(
          x: x,
          y: y,
          zoom: zoom,
          url: _getTileUrl(x, y, zoom),
        ));
      }
    }

    return tiles;
  }

  Point _latLngToPoint(LatLng latLng, int zoom) {
    final lat = latLng.latitude;
    final lng = latLng.longitude;
    final scale = 1 << zoom;

    final worldCoordX = (lng + 180) / 360 * scale;
    final sinLatitude = sin(lat * pi / 180);
    final worldCoordY = ((1 - log(1 + sinLatitude) / (1 - sinLatitude)) /
            (4 * pi)) *
        scale;

    return Point(
      worldCoordX.floor(),
      worldCoordY.floor(),
    );
  }

  String _getTileUrl(int x, int y, int zoom) {
    // Replace with your tile server URL pattern
    return 'https://tile.openstreetmap.org/$zoom/$x/$y.png';
  }

  void _updateTileAccess(String tileKey) {
    _tileAccessLog[tileKey] = DateTime.now();
  }

  Future<void> _cleanupOldTiles() async {
    try {
      final now = DateTime.now();
      final tiles = await _cacheDirectory.list().toList();

      for (var entity in tiles) {
        if (entity is File) {
          final tileKey = entity.path.split('/').last.replaceAll('.png', '');
          final lastAccess = _tileAccessLog[tileKey];

          if (lastAccess == null ||
              now.difference(lastAccess) > _config.maxAge) {
            await entity.delete();
            _tileAccessLog.remove(tileKey);
          }
        }
      }
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Cleaning up old tiles',
      );
    }
  }

  Future<void> _enforceStorageLimit() async {
    try {
      if (_tileAccessLog.length <= _config.maxTiles) return;

      final sortedTiles = _tileAccessLog.entries.toList()
        ..sort((a, b) => a.value.compareTo(b.value));

      final tilesToRemove = sortedTiles.take(
        (_tileAccessLog.length - _config.maxTiles),
      );

      for (var tile in tilesToRemove) {
        final tileFile = File('${_cacheDirectory.path}/${tile.key}.png');
        if (await tileFile.exists()) {
          await tileFile.delete();
        }
        _tileAccessLog.remove(tile.key);
      }
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Enforcing storage limit',
      );
    }
  }

  Future<bool> isTileCached(MapTile tile) async {
    final tileFile = File('${_cacheDirectory.path}/${tile.key}.png');
    return await tileFile.exists();
  }

  Future<void> prefetchArea(
    LatLng center,
    double radiusKm,
    List<int> zoomLevels,
  ) async {
    try {
      final bounds = await _calculateBoundsFromRadius(center, radiusKm);
      for (var zoom in zoomLevels) {
        if (zoom >= _config.minZoom && zoom <= _config.maxZoom) {
          await cacheTiles(bounds, zoom, zoom);
        }
      }
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Prefetching area',
      );
    }
  }

  Future<LatLngBounds> _calculateBoundsFromRadius(
    LatLng center,
    double radiusKm,
  ) async {
    // Earth's radius in kilometers
    const earthRadius = 6371.0;

    // Convert radius from kilometers to radians
    final radiusRad = radiusKm / earthRadius;

    // Convert lat/lng to radians
    final lat = center.latitude * pi / 180;
    final lng = center.longitude * pi / 180;

    // Calculate bounds
    final maxLat = asin(sin(lat) * cos(radiusRad) +
        cos(lat) * sin(radiusRad) * cos(0));
    final minLat = asin(sin(lat) * cos(radiusRad) +
        cos(lat) * sin(radiusRad) * cos(pi));

    final maxLng = lng +
        atan2(sin(pi / 2) * sin(radiusRad) * cos(lat),
            cos(radiusRad) - sin(lat) * sin(maxLat));
    final minLng = lng +
        atan2(sin(3 * pi / 2) * sin(radiusRad) * cos(lat),
            cos(radiusRad) - sin(lat) * sin(minLat));

    // Convert back to degrees
    return LatLngBounds(
      southwest: LatLng(
        minLat * 180 / pi,
        minLng * 180 / pi,
      ),
      northeast: LatLng(
        maxLat * 180 / pi,
        maxLng * 180 / pi,
      ),
    );
  }
}
