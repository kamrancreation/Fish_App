import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/fishing_spot_models.dart';
import '../../core/error/error_handler.dart';
import '../../core/services/storage_service.dart';
import '../../core/services/analytics_service.dart';

class FishingSpotService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final StorageService _storage;
  final AnalyticsService _analytics;
  final ErrorHandler _errorHandler;
  final Map<String, BitmapDescriptor> _markerIcons = {};

  FishingSpotService({
    StorageService? storage,
    AnalyticsService? analytics,
    ErrorHandler? errorHandler,
  })  : _storage = storage ?? StorageService(),
        _analytics = analytics ?? AnalyticsService(),
        _errorHandler = errorHandler ?? ErrorHandler();

  Future<void> initialize() async {
    try {
      await _loadMarkerIcons();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Fishing spot service initialization',
      );
    }
  }

  Future<FishingSpot> createSpot(
    String userId,
    FishingSpot spot, {
    List<String>? imageFiles,
  }) async {
    try {
      // Upload images if provided
      final uploadedImages = imageFiles != null
          ? await Future.wait(imageFiles.map((file) => _storage.uploadFile(
                file,
                'fishing_spots/${spot.id}',
              )))
          : <String>[];

      // Create spot with uploaded image URLs
      final spotWithImages = spot.copyWith(images: uploadedImages);
      await _firestore
          .collection('fishing_spots')
          .doc(spot.id)
          .set(spotWithImages.toJson());

      // Track analytics
      await _analytics.trackEvent(
        'fishing_spot_created',
        parameters: {
          'spot_id': spot.id,
          'spot_type': spot.type.toString(),
          'has_images': imageFiles?.isNotEmpty ?? false,
        },
      );

      return spotWithImages;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Creating fishing spot',
      );
    }
  }

  Future<void> updateSpot(
    String spotId,
    FishingSpot updatedSpot, {
    List<String>? newImageFiles,
    List<String>? deletedImageUrls,
  }) async {
    try {
      // Handle image updates
      final currentSpot = await getSpot(spotId);
      final updatedImages = List<String>.from(currentSpot.images);

      // Delete removed images
      if (deletedImageUrls != null) {
        await Future.wait(
          deletedImageUrls.map((url) => _storage.deleteFile(url)),
        );
        updatedImages.removeWhere((url) => deletedImageUrls.contains(url));
      }

      // Upload new images
      if (newImageFiles != null) {
        final newUrls = await Future.wait(
          newImageFiles.map((file) => _storage.uploadFile(
                file,
                'fishing_spots/$spotId',
              )),
        );
        updatedImages.addAll(newUrls);
      }

      // Update spot with new image list
      final finalSpot = updatedSpot.copyWith(images: updatedImages);
      await _firestore
          .collection('fishing_spots')
          .doc(spotId)
          .update(finalSpot.toJson());

      // Track analytics
      await _analytics.trackEvent(
        'fishing_spot_updated',
        parameters: {
          'spot_id': spotId,
          'images_added': newImageFiles?.length ?? 0,
          'images_deleted': deletedImageUrls?.length ?? 0,
        },
      );
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Updating fishing spot',
      );
    }
  }

  Future<void> deleteSpot(String spotId) async {
    try {
      // Get spot data for cleanup
      final spot = await getSpot(spotId);

      // Delete all associated images
      await Future.wait(
        spot.images.map((url) => _storage.deleteFile(url)),
      );

      // Delete spot document
      await _firestore.collection('fishing_spots').doc(spotId).delete();

      // Track analytics
      await _analytics.trackEvent(
        'fishing_spot_deleted',
        parameters: {'spot_id': spotId},
      );
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Deleting fishing spot',
      );
    }
  }

  Future<FishingSpot> getSpot(String spotId) async {
    try {
      final doc =
          await _firestore.collection('fishing_spots').doc(spotId).get();
      if (!doc.exists) {
        throw Exception('Fishing spot not found');
      }
      return FishingSpot.fromJson(doc.data()!);
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Getting fishing spot',
      );
    }
  }

  Future<List<FishingSpot>> getNearbySpots(
    LatLng center,
    double radiusKm, {
    SpotType? type,
    List<String>? species,
    bool publicOnly = true,
  }) async {
    try {
      // Calculate bounding box for initial filter
      final bounds = await _calculateBounds(center, radiusKm);

      // Query spots within bounding box
      var query = _firestore
          .collection('fishing_spots')
          .where('location.latitude', isGreaterThan: bounds.southwest.latitude)
          .where('location.latitude', isLessThan: bounds.northeast.latitude);

      if (publicOnly) {
        query = query.where('isPublic', isEqualTo: true);
      }
      if (type != null) {
        query = query.where('type', isEqualTo: type.toString());
      }

      final spots = await query.get();

      // Further filter results by longitude and exact distance
      final filteredSpots = spots.docs
          .where((doc) {
            final spot = FishingSpot.fromJson(doc.data());

            // Check longitude bounds
            if (spot.location.longitude < bounds.southwest.longitude ||
                spot.location.longitude > bounds.northeast.longitude) {
              return false;
            }

            // Check exact distance
            final distance = _calculateDistance(center, spot.location);
            if (distance > radiusKm) {
              return false;
            }

            // Check species if specified
            if (species != null && species.isNotEmpty) {
              return spot.metadata.commonSpecies
                  .any((s) => species.contains(s.toLowerCase()));
            }

            return true;
          })
          .map((doc) => FishingSpot.fromJson(doc.data()))
          .toList();

      return filteredSpots;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Getting nearby spots',
      );
    }
  }

  Future<List<FishingSpot>> getUserSpots(String userId) async {
    try {
      final spots = await _firestore
          .collection('fishing_spots')
          .where('createdBy', isEqualTo: userId)
          .get();

      return spots.docs.map((doc) => FishingSpot.fromJson(doc.data())).toList();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Getting user spots',
      );
    }
  }

  Future<void> updateSpotStatistics(
    String spotId,
    SpotStatistics statistics,
  ) async {
    try {
      await _firestore.collection('fishing_spots').doc(spotId).update({
        'statistics': statistics.toJson(),
      });
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Updating spot statistics',
      );
    }
  }

  Future<Marker> createSpotMarker(FishingSpot spot) async {
    try {
      final icon = await _getMarkerIcon(spot.type);
      return Marker(
        markerId: MarkerId(spot.id),
        position: spot.location,
        icon: icon,
        infoWindow: InfoWindow(
          title: spot.name,
          snippet:
              '${spot.type.toString().split('.').last} - ${spot.metadata.commonSpecies.join(', ')}',
        ),
      );
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Creating spot marker',
      );
    }
  }

  Future<void> _loadMarkerIcons() async {
    for (var type in SpotType.values) {
      final iconPath = _getMarkerIconPath(type);
      final icon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(48, 48)),
        iconPath,
      );
      _markerIcons[type.toString()] = icon;
    }
  }

  String _getMarkerIconPath(SpotType type) {
    switch (type) {
      case SpotType.lake:
        return 'assets/markers/lake_marker.png';
      case SpotType.river:
        return 'assets/markers/river_marker.png';
      case SpotType.ocean:
        return 'assets/markers/ocean_marker.png';
      case SpotType.pond:
        return 'assets/markers/pond_marker.png';
      case SpotType.stream:
        return 'assets/markers/stream_marker.png';
      case SpotType.dock:
        return 'assets/markers/dock_marker.png';
      case SpotType.pier:
        return 'assets/markers/pier_marker.png';
      case SpotType.beach:
        return 'assets/markers/beach_marker.png';
      case SpotType.reef:
        return 'assets/markers/reef_marker.png';
      case SpotType.other:
        return 'assets/markers/other_marker.png';
    }
  }

  Future<BitmapDescriptor> _getMarkerIcon(SpotType type) async {
    if (_markerIcons.containsKey(type.toString())) {
      return _markerIcons[type.toString()]!;
    }

    // Fallback to default marker if custom icon not found
    return BitmapDescriptor.defaultMarker;
  }

  Future<LatLngBounds> _calculateBounds(LatLng center, double radiusKm) async {
    const earthRadius = 6371.0; // Earth's radius in kilometers
    final lat = center.latitude * pi / 180;
    final lon = center.longitude * pi / 180;
    final radius = radiusKm / earthRadius;

    final maxLat =
        asin(sin(lat) * cos(radius) + cos(lat) * sin(radius) * cos(0));
    final minLat =
        asin(sin(lat) * cos(radius) + cos(lat) * sin(radius) * cos(pi));

    final maxLon = lon +
        atan2(sin(pi / 2) * sin(radius) * cos(lat),
            cos(radius) - sin(lat) * sin(maxLat));
    final minLon = lon +
        atan2(sin(3 * pi / 2) * sin(radius) * cos(lat),
            cos(radius) - sin(lat) * sin(minLat));

    return LatLngBounds(
      southwest: LatLng(
        minLat * 180 / pi,
        minLon * 180 / pi,
      ),
      northeast: LatLng(
        maxLat * 180 / pi,
        maxLon * 180 / pi,
      ),
    );
  }

  double _calculateDistance(LatLng point1, LatLng point2) {
    const earthRadius = 6371.0; // Earth's radius in kilometers
    final lat1 = point1.latitude * pi / 180;
    final lon1 = point1.longitude * pi / 180;
    final lat2 = point2.latitude * pi / 180;
    final lon2 = point2.longitude * pi / 180;

    final dLat = lat2 - lat1;
    final dLon = lon2 - lon1;

    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(lat1) * cos(lat2) * sin(dLon / 2) * sin(dLon / 2);
    final c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c;
  }
}
