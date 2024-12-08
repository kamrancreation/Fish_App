import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:equatable/equatable.dart';

enum MapTheme {
  standard,
  satellite,
  terrain,
  night,
  retro,
  silver,
  dark,
  aubergine,
}

class MapTile extends Equatable {
  final int x;
  final int y;
  final int zoom;
  final String url;

  const MapTile({
    required this.x,
    required this.y,
    required this.zoom,
    required this.url,
  });

  String get key => '${zoom}_${x}_$y';

  @override
  List<Object?> get props => [x, y, zoom, url];
}

class MarkerData extends Equatable {
  final String id;
  final LatLng position;
  final String? title;
  final String? snippet;
  final String? customIconPath;
  final double? rotation;
  final bool draggable;
  final bool visible;
  final double alpha;
  final double zIndex;

  const MarkerData({
    required this.id,
    required this.position,
    this.title,
    this.snippet,
    this.customIconPath,
    this.rotation,
    this.draggable = false,
    this.visible = true,
    this.alpha = 1.0,
    this.zIndex = 0,
  });

  @override
  List<Object?> get props => [
        id,
        position,
        title,
        snippet,
        customIconPath,
        rotation,
        draggable,
        visible,
        alpha,
        zIndex,
      ];

  MarkerData copyWith({
    String? id,
    LatLng? position,
    String? title,
    String? snippet,
    String? customIconPath,
    double? rotation,
    bool? draggable,
    bool? visible,
    double? alpha,
    double? zIndex,
  }) {
    return MarkerData(
      id: id ?? this.id,
      position: position ?? this.position,
      title: title ?? this.title,
      snippet: snippet ?? this.snippet,
      customIconPath: customIconPath ?? this.customIconPath,
      rotation: rotation ?? this.rotation,
      draggable: draggable ?? this.draggable,
      visible: visible ?? this.visible,
      alpha: alpha ?? this.alpha,
      zIndex: zIndex ?? this.zIndex,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'position': {
        'latitude': position.latitude,
        'longitude': position.longitude,
      },
      'title': title,
      'snippet': snippet,
      'customIconPath': customIconPath,
      'rotation': rotation,
      'draggable': draggable,
      'visible': visible,
      'alpha': alpha,
      'zIndex': zIndex,
    };
  }

  factory MarkerData.fromJson(Map<String, dynamic> json) {
    return MarkerData(
      id: json['id'] as String,
      position: LatLng(
        json['position']['latitude'] as double,
        json['position']['longitude'] as double,
      ),
      title: json['title'] as String?,
      snippet: json['snippet'] as String?,
      customIconPath: json['customIconPath'] as String?,
      rotation: json['rotation'] as double?,
      draggable: json['draggable'] as bool,
      visible: json['visible'] as bool,
      alpha: json['alpha'] as double,
      zIndex: json['zIndex'] as double,
    );
  }
}

class RouteStyle extends Equatable {
  final Color color;
  final int width;
  final List<PatternItem> patterns;
  final bool geodesic;
  final Cap startCap;
  final Cap endCap;
  final JointType jointType;

  const RouteStyle({
    this.color = Colors.blue,
    this.width = 5,
    this.patterns = const <PatternItem>[],
    this.geodesic = true,
    this.startCap = Cap.roundCap,
    this.endCap = Cap.roundCap,
    this.jointType = JointType.round,
  });

  @override
  List<Object?> get props => [
        color,
        width,
        patterns,
        geodesic,
        startCap,
        endCap,
        jointType,
      ];

  RouteStyle copyWith({
    Color? color,
    int? width,
    List<PatternItem>? patterns,
    bool? geodesic,
    Cap? startCap,
    Cap? endCap,
    JointType? jointType,
  }) {
    return RouteStyle(
      color: color ?? this.color,
      width: width ?? this.width,
      patterns: patterns ?? this.patterns,
      geodesic: geodesic ?? this.geodesic,
      startCap: startCap ?? this.startCap,
      endCap: endCap ?? this.endCap,
      jointType: jointType ?? this.jointType,
    );
  }
}

class OverlayStyle extends Equatable {
  final Color fillColor;
  final Color strokeColor;
  final int strokeWidth;
  final bool visible;
  final double zIndex;
  final bool geodesic;

  const OverlayStyle({
    this.fillColor = const Color.fromRGBO(0, 0, 255, 0.1),
    this.strokeColor = Colors.blue,
    this.strokeWidth = 2,
    this.visible = true,
    this.zIndex = 0,
    this.geodesic = true,
  });

  @override
  List<Object?> get props => [
        fillColor,
        strokeColor,
        strokeWidth,
        visible,
        zIndex,
        geodesic,
      ];

  OverlayStyle copyWith({
    Color? fillColor,
    Color? strokeColor,
    int? strokeWidth,
    bool? visible,
    double? zIndex,
    bool? geodesic,
  }) {
    return OverlayStyle(
      fillColor: fillColor ?? this.fillColor,
      strokeColor: strokeColor ?? this.strokeColor,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      visible: visible ?? this.visible,
      zIndex: zIndex ?? this.zIndex,
      geodesic: geodesic ?? this.geodesic,
    );
  }
}

class MapCacheConfig extends Equatable {
  final int maxZoom;
  final int minZoom;
  final int maxTiles;
  final Duration maxAge;
  final bool clearOnUpdate;

  const MapCacheConfig({
    this.maxZoom = 18,
    this.minZoom = 10,
    this.maxTiles = 1000,
    this.maxAge = const Duration(days: 30),
    this.clearOnUpdate = false,
  });

  @override
  List<Object?> get props => [
        maxZoom,
        minZoom,
        maxTiles,
        maxAge,
        clearOnUpdate,
      ];

  MapCacheConfig copyWith({
    int? maxZoom,
    int? minZoom,
    int? maxTiles,
    Duration? maxAge,
    bool? clearOnUpdate,
  }) {
    return MapCacheConfig(
      maxZoom: maxZoom ?? this.maxZoom,
      minZoom: minZoom ?? this.minZoom,
      maxTiles: maxTiles ?? this.maxTiles,
      maxAge: maxAge ?? this.maxAge,
      clearOnUpdate: clearOnUpdate ?? this.clearOnUpdate,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'maxZoom': maxZoom,
      'minZoom': minZoom,
      'maxTiles': maxTiles,
      'maxAge': maxAge.inMilliseconds,
      'clearOnUpdate': clearOnUpdate,
    };
  }

  factory MapCacheConfig.fromJson(Map<String, dynamic> json) {
    return MapCacheConfig(
      maxZoom: json['maxZoom'] as int,
      minZoom: json['minZoom'] as int,
      maxTiles: json['maxTiles'] as int,
      maxAge: Duration(milliseconds: json['maxAge'] as int),
      clearOnUpdate: json['clearOnUpdate'] as bool,
    );
  }
}
