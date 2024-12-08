import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/fishing_spot.dart';
import '../models/location_privacy.dart';
import '../repositories/spots_repository.dart';

final locationServiceProvider = Provider((ref) {
  return LocationService(ref.watch(spotsRepositoryProvider));
});

class LocationService {
  final SpotsRepository _spotsRepository;
  final _locationController = StreamController<Position>.broadcast();
  final _spotsController = StreamController<List<FishingSpot>>.broadcast();
  Timer? _trackingTimer;
  bool _isTracking = false;
  LocationPrivacy _privacySettings = LocationPrivacy();

  LocationService(this._spotsRepository) {
    _initLocationService();
  }

  Stream<Position> get locationStream => _locationController.stream;
  Stream<List<FishingSpot>> get spotsStream => _spotsController.stream;

  Future<void> _initLocationService() async {
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
  }

  // GPS Tracking
  Future<void> startTracking() async {
    if (_isTracking) return;
    _isTracking = true;

    _trackingTimer = Timer.periodic(const Duration(seconds: 10), (_) async {
      if (_privacySettings.allowTracking) {
        final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        _locationController.add(position);
      }
    });
  }

  void stopTracking() {
    _isTracking = false;
    _trackingTimer?.cancel();
  }

  // Spot Marking
  Future<void> markSpot({
    required String name,
    required LatLng location,
    required Map<String, dynamic> details,
    required List<String> species,
    required LocationPrivacy privacy,
  }) async {
    final spot = FishingSpot(
      id: DateTime.now().toString(),
      name: name,
      location: location,
      details: details,
      species: species,
      rating: 0.0,
      ratingCount: 0,
      privacy: privacy,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    await _spotsRepository.addSpot(spot);
  }

  // Area Mapping
  Future<List<FishingSpot>> getNearbySpots(LatLng center, double radius) async {
    if (!_privacySettings.allowNearbySpots) return [];

    final spots = await _spotsRepository.getNearbySpots(
      center: center,
      radius: radius,
    );

    _spotsController.add(spots);
    return spots;
  }

  Future<List<FishingSpot>> searchSpots({
    String? query,
    List<String>? species,
    double? minRating,
    double? maxDistance,
  }) async {
    return _spotsRepository.searchSpots(
      query: query,
      species: species,
      minRating: minRating,
      maxDistance: maxDistance,
    );
  }

  // Location Sharing
  Future<String> shareLocation(FishingSpot spot) async {
    if (!_privacySettings.allowLocationSharing) {
      throw Exception('Location sharing is disabled in privacy settings');
    }

    // Generate a temporary sharing link
    final shareId = await _spotsRepository.createShareLink(spot);
    return 'https://fishpro.app/spot/$shareId';
  }

  Future<void> stopSharing(String shareId) async {
    await _spotsRepository.removeShareLink(shareId);
  }

  // Spot Rating
  Future<void> rateSpot(String spotId, double rating) async {
    await _spotsRepository.rateSpot(spotId, rating);
  }

  Future<double> getSpotRating(String spotId) async {
    return _spotsRepository.getSpotRating(spotId);
  }

  // Privacy Controls
  Future<void> updatePrivacySettings(LocationPrivacy settings) async {
    _privacySettings = settings;
    if (!settings.allowTracking) {
      stopTracking();
    }
  }

  Future<LocationPrivacy> getPrivacySettings() async {
    return _privacySettings;
  }

  // Spot Details
  Future<Map<String, dynamic>> getSpotDetails(String spotId) async {
    final spot = await _spotsRepository.getSpot(spotId);
    if (spot == null) throw Exception('Spot not found');

    // Enrich spot data with additional information
    final enrichedDetails = {
      ...spot.details,
      'weather': await _getWeatherData(spot.location),
      'tides': await _getTidalData(spot.location),
      'regulations': await _getFishingRegulations(spot.location),
    };

    return enrichedDetails;
  }

  Future<Map<String, dynamic>> _getWeatherData(LatLng location) async {
    // TODO: Implement weather API integration
    return {};
  }

  Future<Map<String, dynamic>> _getTidalData(LatLng location) async {
    // TODO: Implement tidal API integration
    return {};
  }

  Future<Map<String, dynamic>> _getFishingRegulations(LatLng location) async {
    // TODO: Implement fishing regulations API integration
    return {};
  }

  void dispose() {
    stopTracking();
    _locationController.close();
    _spotsController.close();
  }
}
