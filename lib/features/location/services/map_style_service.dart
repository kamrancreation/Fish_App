import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/map_models.dart';
import '../../core/error/error_handler.dart';

class MapStyleService {
  final ErrorHandler _errorHandler;
  final Map<MapTheme, String> _styleCache = {};

  MapStyleService({ErrorHandler? errorHandler})
      : _errorHandler = errorHandler ?? ErrorHandler();

  Future<String> getMapStyle(MapTheme theme) async {
    try {
      if (_styleCache.containsKey(theme)) {
        return _styleCache[theme]!;
      }

      final styleString = await _loadMapStyle(theme);
      _styleCache[theme] = styleString;
      return styleString;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Loading map style',
      );
    }
  }

  Future<String> _loadMapStyle(MapTheme theme) async {
    final fileName = _getStyleFileName(theme);
    return await rootBundle.loadString('assets/map_styles/$fileName.json');
  }

  String _getStyleFileName(MapTheme theme) {
    switch (theme) {
      case MapTheme.standard:
        return 'standard_style';
      case MapTheme.satellite:
        return 'satellite_style';
      case MapTheme.terrain:
        return 'terrain_style';
      case MapTheme.night:
        return 'night_style';
      case MapTheme.retro:
        return 'retro_style';
      case MapTheme.silver:
        return 'silver_style';
      case MapTheme.dark:
        return 'dark_style';
      case MapTheme.aubergine:
        return 'aubergine_style';
    }
  }

  Future<void> clearCache() async {
    _styleCache.clear();
  }

  Future<void> preloadStyles() async {
    try {
      for (var theme in MapTheme.values) {
        if (!_styleCache.containsKey(theme)) {
          final style = await _loadMapStyle(theme);
          _styleCache[theme] = style;
        }
      }
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Preloading map styles',
      );
    }
  }

  Future<bool> validateStyle(String styleJson) async {
    try {
      final decoded = json.decode(styleJson);
      return decoded is Map && decoded.containsKey('styles');
    } catch (e) {
      return false;
    }
  }

  Future<String> customizeStyle(
    MapTheme baseTheme, {
    Color? waterColor,
    Color? landColor,
    Color? roadColor,
    bool? showPoi,
    bool? showTransit,
    double? labelSize,
  }) async {
    try {
      final baseStyle = await getMapStyle(baseTheme);
      final styleJson = json.decode(baseStyle) as Map<String, dynamic>;

      if (waterColor != null) {
        _updateFeatureStyle(styleJson, 'water', 'color', waterColor);
      }
      if (landColor != null) {
        _updateFeatureStyle(styleJson, 'land', 'color', landColor);
      }
      if (roadColor != null) {
        _updateFeatureStyle(styleJson, 'road', 'color', roadColor);
      }
      if (showPoi != null) {
        _updateFeatureVisibility(styleJson, 'poi', showPoi);
      }
      if (showTransit != null) {
        _updateFeatureVisibility(styleJson, 'transit', showTransit);
      }
      if (labelSize != null) {
        _updateLabelSize(styleJson, labelSize);
      }

      return json.encode(styleJson);
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Customizing map style',
      );
    }
  }

  void _updateFeatureStyle(
    Map<String, dynamic> styleJson,
    String featureType,
    String property,
    Color color,
  ) {
    final features = styleJson['styles'] as List;
    for (var feature in features) {
      if (feature['featureType'] == featureType) {
        feature['stylers'] = [
          {property: '#${color.value.toRadixString(16).substring(2)}'}
        ];
      }
    }
  }

  void _updateFeatureVisibility(
    Map<String, dynamic> styleJson,
    String featureType,
    bool visible,
  ) {
    final features = styleJson['styles'] as List;
    features.add({
      'featureType': featureType,
      'stylers': [
        {'visibility': visible ? 'on' : 'off'}
      ]
    });
  }

  void _updateLabelSize(Map<String, dynamic> styleJson, double size) {
    final features = styleJson['styles'] as List;
    features.add({
      'elementType': 'labels.text',
      'stylers': [
        {'weight': size.toString()}
      ]
    });
  }
}
