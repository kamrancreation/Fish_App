// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_tile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapTileImpl _$$MapTileImplFromJson(Map<String, dynamic> json) =>
    _$MapTileImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      zoomLevel: (json['zoomLevel'] as num).toInt(),
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
    );

Map<String, dynamic> _$$MapTileImplToJson(_$MapTileImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'zoomLevel': instance.zoomLevel,
      'x': instance.x,
      'y': instance.y,
    };

_$MapTileRegionImpl _$$MapTileRegionImplFromJson(Map<String, dynamic> json) =>
    _$MapTileRegionImpl(
      north: (json['north'] as num).toDouble(),
      south: (json['south'] as num).toDouble(),
      east: (json['east'] as num).toDouble(),
      west: (json['west'] as num).toDouble(),
      minZoom: (json['minZoom'] as num).toInt(),
      maxZoom: (json['maxZoom'] as num).toInt(),
    );

Map<String, dynamic> _$$MapTileRegionImplToJson(_$MapTileRegionImpl instance) =>
    <String, dynamic>{
      'north': instance.north,
      'south': instance.south,
      'east': instance.east,
      'west': instance.west,
      'minZoom': instance.minZoom,
      'maxZoom': instance.maxZoom,
    };

_$MapTileStatsImpl _$$MapTileStatsImplFromJson(Map<String, dynamic> json) =>
    _$MapTileStatsImpl(
      tileCount: (json['tileCount'] as num).toInt(),
      totalSizeBytes: (json['totalSizeBytes'] as num).toInt(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      regions: (json['regions'] as List<dynamic>)
          .map((e) => MapTileRegion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MapTileStatsImplToJson(_$MapTileStatsImpl instance) =>
    <String, dynamic>{
      'tileCount': instance.tileCount,
      'totalSizeBytes': instance.totalSizeBytes,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'regions': instance.regions,
    };
