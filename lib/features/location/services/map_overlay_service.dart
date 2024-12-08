import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shared_preferences.dart';
import '../models/map_models.dart';
import '../../core/error/error_handler.dart';

class MapOverlayService {
  final ErrorHandler _errorHandler;
  final SharedPreferences _prefs;
  final Map<String, Set<Polygon>> _overlays = {};
  final Map<String, Set<Polyline>> _routes = {};
  final Map<String, Set<Circle>> _circles = {};

  static const String _overlayKey = 'map_overlays';
  static const String _routeKey = 'map_routes';
  static const String _circleKey = 'map_circles';

  MapOverlayService({
    required SharedPreferences prefs,
    ErrorHandler? errorHandler,
  })  : _prefs = prefs,
        _errorHandler = errorHandler ?? ErrorHandler();

  Future<void> initialize() async {
    try {
      await _loadSavedOverlays();
      await _loadSavedRoutes();
      await _loadSavedCircles();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Overlay initialization',
      );
    }
  }

  Future<void> addPolygonOverlay({
    required String overlayId,
    required List<LatLng> points,
    OverlayStyle style = const OverlayStyle(),
  }) async {
    try {
      final polygon = Polygon(
        polygonId: PolygonId(overlayId),
        points: points,
        fillColor: style.fillColor,
        strokeColor: style.strokeColor,
        strokeWidth: style.strokeWidth,
        visible: style.visible,
        zIndex: style.zIndex,
        geodesic: style.geodesic,
      );

      if (!_overlays.containsKey(overlayId)) {
        _overlays[overlayId] = {};
      }
      _overlays[overlayId]!.add(polygon);

      await _saveOverlays();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Adding polygon overlay',
      );
    }
  }

  Future<void> addRoute({
    required String routeId,
    required List<LatLng> points,
    RouteStyle style = const RouteStyle(),
  }) async {
    try {
      final polyline = Polyline(
        polylineId: PolylineId(routeId),
        points: points,
        color: style.color,
        width: style.width,
        patterns: style.patterns,
        startCap: style.startCap,
        endCap: style.endCap,
        jointType: style.jointType,
        geodesic: style.geodesic,
      );

      if (!_routes.containsKey(routeId)) {
        _routes[routeId] = {};
      }
      _routes[routeId]!.add(polyline);

      await _saveRoutes();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Adding route',
      );
    }
  }

  Future<void> addCircleOverlay({
    required String circleId,
    required LatLng center,
    required double radius,
    OverlayStyle style = const OverlayStyle(),
  }) async {
    try {
      final circle = Circle(
        circleId: CircleId(circleId),
        center: center,
        radius: radius,
        fillColor: style.fillColor,
        strokeColor: style.strokeColor,
        strokeWidth: style.strokeWidth,
        visible: style.visible,
        zIndex: style.zIndex,
      );

      if (!_circles.containsKey(circleId)) {
        _circles[circleId] = {};
      }
      _circles[circleId]!.add(circle);

      await _saveCircles();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Adding circle overlay',
      );
    }
  }

  Set<Polygon> getPolygonOverlay(String overlayId) {
    return _overlays[overlayId] ?? {};
  }

  Set<Polyline> getRoute(String routeId) {
    return _routes[routeId] ?? {};
  }

  Set<Circle> getCircleOverlay(String circleId) {
    return _circles[circleId] ?? {};
  }

  Future<void> updatePolygonOverlay({
    required String overlayId,
    List<LatLng>? points,
    OverlayStyle? style,
  }) async {
    try {
      if (!_overlays.containsKey(overlayId)) return;

      final existingPolygon = _overlays[overlayId]!.first;
      final updatedPolygon = Polygon(
        polygonId: existingPolygon.polygonId,
        points: points ?? existingPolygon.points,
        fillColor: style?.fillColor ?? existingPolygon.fillColor,
        strokeColor: style?.strokeColor ?? existingPolygon.strokeColor,
        strokeWidth: style?.strokeWidth ?? existingPolygon.strokeWidth,
        visible: style?.visible ?? existingPolygon.visible,
        zIndex: style?.zIndex ?? existingPolygon.zIndex,
        geodesic: style?.geodesic ?? existingPolygon.geodesic,
      );

      _overlays[overlayId] = {updatedPolygon};
      await _saveOverlays();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Updating polygon overlay',
      );
    }
  }

  Future<void> updateRoute({
    required String routeId,
    List<LatLng>? points,
    RouteStyle? style,
  }) async {
    try {
      if (!_routes.containsKey(routeId)) return;

      final existingRoute = _routes[routeId]!.first;
      final updatedRoute = Polyline(
        polylineId: existingRoute.polylineId,
        points: points ?? existingRoute.points,
        color: style?.color ?? existingRoute.color,
        width: style?.width ?? existingRoute.width,
        patterns: style?.patterns ?? existingRoute.patterns,
        startCap: style?.startCap ?? existingRoute.startCap,
        endCap: style?.endCap ?? existingRoute.endCap,
        jointType: style?.jointType ?? existingRoute.jointType,
        geodesic: style?.geodesic ?? existingRoute.geodesic,
      );

      _routes[routeId] = {updatedRoute};
      await _saveRoutes();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Updating route',
      );
    }
  }

  Future<void> removeOverlay(String overlayId) async {
    try {
      _overlays.remove(overlayId);
      await _saveOverlays();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Removing overlay',
      );
    }
  }

  Future<void> removeRoute(String routeId) async {
    try {
      _routes.remove(routeId);
      await _saveRoutes();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Removing route',
      );
    }
  }

  Future<void> removeCircle(String circleId) async {
    try {
      _circles.remove(circleId);
      await _saveCircles();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Removing circle',
      );
    }
  }

  Future<void> _loadSavedOverlays() async {
    try {
      final savedOverlays = _prefs.getString(_overlayKey);
      if (savedOverlays != null) {
        final decoded = json.decode(savedOverlays) as Map<String, dynamic>;
        decoded.forEach((key, value) {
          final overlayData = value as Map<String, dynamic>;
          final points = (overlayData['points'] as List)
              .map((point) => LatLng(
                    point['latitude'] as double,
                    point['longitude'] as double,
                  ))
              .toList();

          addPolygonOverlay(
            overlayId: key,
            points: points,
            style: OverlayStyle(
              fillColor: Color(overlayData['fillColor'] as int),
              strokeColor: Color(overlayData['strokeColor'] as int),
              strokeWidth: overlayData['strokeWidth'] as int,
            ),
          );
        });
      }
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Loading saved overlays',
      );
    }
  }

  Future<void> _loadSavedRoutes() async {
    try {
      final savedRoutes = _prefs.getString(_routeKey);
      if (savedRoutes != null) {
        final decoded = json.decode(savedRoutes) as Map<String, dynamic>;
        decoded.forEach((key, value) {
          final routeData = value as Map<String, dynamic>;
          final points = (routeData['points'] as List)
              .map((point) => LatLng(
                    point['latitude'] as double,
                    point['longitude'] as double,
                  ))
              .toList();

          addRoute(
            routeId: key,
            points: points,
            style: RouteStyle(
              color: Color(routeData['color'] as int),
              width: routeData['width'] as int,
            ),
          );
        });
      }
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Loading saved routes',
      );
    }
  }

  Future<void> _loadSavedCircles() async {
    try {
      final savedCircles = _prefs.getString(_circleKey);
      if (savedCircles != null) {
        final decoded = json.decode(savedCircles) as Map<String, dynamic>;
        decoded.forEach((key, value) {
          final circleData = value as Map<String, dynamic>;
          final center = LatLng(
            circleData['center']['latitude'] as double,
            circleData['center']['longitude'] as double,
          );

          addCircleOverlay(
            circleId: key,
            center: center,
            radius: circleData['radius'] as double,
            style: OverlayStyle(
              fillColor: Color(circleData['fillColor'] as int),
              strokeColor: Color(circleData['strokeColor'] as int),
              strokeWidth: circleData['strokeWidth'] as int,
            ),
          );
        });
      }
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Loading saved circles',
      );
    }
  }

  Future<void> _saveOverlays() async {
    try {
      final overlayData = <String, dynamic>{};
      _overlays.forEach((key, value) {
        final polygon = value.first;
        overlayData[key] = {
          'points': polygon.points
              .map((point) => {
                    'latitude': point.latitude,
                    'longitude': point.longitude,
                  })
              .toList(),
          'fillColor': polygon.fillColor.value,
          'strokeColor': polygon.strokeColor.value,
          'strokeWidth': polygon.strokeWidth,
        };
      });
      await _prefs.setString(_overlayKey, json.encode(overlayData));
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Saving overlays',
      );
    }
  }

  Future<void> _saveRoutes() async {
    try {
      final routeData = <String, dynamic>{};
      _routes.forEach((key, value) {
        final route = value.first;
        routeData[key] = {
          'points': route.points
              .map((point) => {
                    'latitude': point.latitude,
                    'longitude': point.longitude,
                  })
              .toList(),
          'color': route.color.value,
          'width': route.width,
        };
      });
      await _prefs.setString(_routeKey, json.encode(routeData));
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Saving routes',
      );
    }
  }

  Future<void> _saveCircles() async {
    try {
      final circleData = <String, dynamic>{};
      _circles.forEach((key, value) {
        final circle = value.first;
        circleData[key] = {
          'center': {
            'latitude': circle.center.latitude,
            'longitude': circle.center.longitude,
          },
          'radius': circle.radius,
          'fillColor': circle.fillColor.value,
          'strokeColor': circle.strokeColor.value,
          'strokeWidth': circle.strokeWidth,
        };
      });
      await _prefs.setString(_circleKey, json.encode(circleData));
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Saving circles',
      );
    }
  }
}
