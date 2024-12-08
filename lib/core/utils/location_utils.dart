import 'package:geolocator/geolocator.dart';
import 'dart:math' show cos, sqrt, asin, pi;

class LocationUtils {
  static Future<bool> checkLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }

  static Future<Position?> getCurrentLocation() async {
    try {
      final hasPermission = await checkLocationPermission();
      if (!hasPermission) return null;

      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      return null;
    }
  }

  static double calculateDistance(
    double startLatitude,
    double startLongitude,
    double endLatitude,
    double endLongitude,
  ) {
    const earthRadius = 6371.0; // Earth's radius in kilometers

    final dLat = _toRadians(endLatitude - startLatitude);
    final dLon = _toRadians(endLongitude - startLongitude);

    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(_toRadians(startLatitude)) *
            cos(_toRadians(endLatitude)) *
            sin(dLon / 2) *
            sin(dLon / 2);

    final c = 2 * asin(sqrt(a));
    return earthRadius * c;
  }

  static String formatDistance(double distanceInKm) {
    if (distanceInKm < 1) {
      return '${(distanceInKm * 1000).round()} m';
    } else if (distanceInKm < 10) {
      return '${distanceInKm.toStringAsFixed(1)} km';
    } else {
      return '${distanceInKm.round()} km';
    }
  }

  static String getLocationUrl(double latitude, double longitude) {
    return 'https://maps.google.com/?q=$latitude,$longitude';
  }

  static bool isWithinRadius(
    double centerLat,
    double centerLng,
    double pointLat,
    double pointLng,
    double radiusKm,
  ) {
    final distance = calculateDistance(
      centerLat,
      centerLng,
      pointLat,
      pointLng,
    );
    return distance <= radiusKm;
  }

  static double _toRadians(double degree) {
    return degree * pi / 180;
  }

  static Future<LocationSettings> getLocationSettings({
    required bool highAccuracy,
    required Duration interval,
    required double distanceFilter,
  }) async {
    if (await Geolocator.isLocationServiceEnabled()) {
      return LocationSettings(
        accuracy: highAccuracy ? LocationAccuracy.high : LocationAccuracy.medium,
        distanceFilter: distanceFilter,
        timeLimit: interval,
      );
    } else {
      throw Exception('Location services are disabled');
    }
  }
}
