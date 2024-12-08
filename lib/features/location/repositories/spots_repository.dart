import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/fishing_spot.dart';
import '../models/location_privacy.dart';

final spotsRepositoryProvider = Provider((ref) => SpotsRepository());

class SpotsRepository {
  final _spotsCollection = FirebaseFirestore.instance.collection('fishing_spots');
  final _ratingsCollection = FirebaseFirestore.instance.collection('spot_ratings');
  final _sharesCollection = FirebaseFirestore.instance.collection('spot_shares');
  final _statsCollection = FirebaseFirestore.instance.collection('spot_statistics');

  // CRUD Operations
  Future<void> addSpot(FishingSpot spot) async {
    await _spotsCollection.doc(spot.id).set(spot.toJson());
  }

  Future<void> updateSpot(FishingSpot spot) async {
    await _spotsCollection.doc(spot.id).update(spot.toJson());
  }

  Future<void> deleteSpot(String spotId) async {
    await _spotsCollection.doc(spotId).delete();
  }

  Future<FishingSpot?> getSpot(String spotId) async {
    final doc = await _spotsCollection.doc(spotId).get();
    if (!doc.exists) return null;
    return FishingSpot.fromJson(doc.data()!);
  }

  // Search and Filtering
  Future<List<FishingSpot>> getNearbySpots({
    required LatLng center,
    required double radius,
  }) async {
    // Calculate bounding box for efficient querying
    final lat = center.latitude;
    final lng = center.longitude;
    final latChange = radius / 111.32; // approximate degrees per km
    final lngChange = radius / (111.32 * cos(lat * pi / 180));

    final snapshot = await _spotsCollection
        .where('location.latitude',
            isGreaterThan: lat - latChange, isLessThan: lat + latChange)
        .where('location.longitude',
            isGreaterThan: lng - lngChange, isLessThan: lng + lngChange)
        .get();

    return snapshot.docs
        .map((doc) => FishingSpot.fromJson(doc.data()))
        .where((spot) {
      // Further filter by exact distance
      final distance = Geolocator.distanceBetween(
        center.latitude,
        center.longitude,
        spot.location.latitude,
        spot.location.longitude,
      );
      return distance <= radius * 1000; // Convert km to meters
    }).toList();
  }

  Future<List<FishingSpot>> searchSpots({
    String? query,
    List<String>? species,
    double? minRating,
    double? maxDistance,
  }) async {
    var queryRef = _spotsCollection.where('privacy.showInPublicListings',
        isEqualTo: true);

    if (species != null && species.isNotEmpty) {
      queryRef = queryRef.where('species', arrayContainsAny: species);
    }

    if (minRating != null) {
      queryRef = queryRef.where('rating', isGreaterThanOrEqualTo: minRating);
    }

    final snapshot = await queryRef.get();
    var spots = snapshot.docs.map((doc) => FishingSpot.fromJson(doc.data()));

    if (query != null && query.isNotEmpty) {
      spots = spots.where((spot) =>
          spot.name.toLowerCase().contains(query.toLowerCase()) ||
          (spot.description?.toLowerCase().contains(query.toLowerCase()) ??
              false));
    }

    return spots.toList();
  }

  // Ratings
  Future<void> rateSpot(String spotId, double rating) async {
    final spotRef = _spotsCollection.doc(spotId);
    await FirebaseFirestore.instance.runTransaction((transaction) async {
      final spot = await transaction.get(spotRef);
      if (!spot.exists) throw Exception('Spot not found');

      final currentRating = spot.data()!['rating'] as double;
      final currentCount = spot.data()!['ratingCount'] as int;

      final newRating =
          (currentRating * currentCount + rating) / (currentCount + 1);
      transaction.update(spotRef, {
        'rating': newRating,
        'ratingCount': currentCount + 1,
      });
    });
  }

  Future<double> getSpotRating(String spotId) async {
    final doc = await _spotsCollection.doc(spotId).get();
    if (!doc.exists) throw Exception('Spot not found');
    return doc.data()!['rating'] as double;
  }

  // Sharing
  Future<String> createShareLink(FishingSpot spot) async {
    final share = SpotShare(
      id: DateTime.now().toString(),
      spotId: spot.id,
      expiration: DateTime.now().add(const Duration(days: 7)),
      isActive: true,
      shareCode: _generateShareCode(),
      maxUses: 100,
      usedCount: 0,
    );

    await _sharesCollection.doc(share.id).set(share.toJson());
    return share.shareCode!;
  }

  Future<void> removeShareLink(String shareId) async {
    await _sharesCollection.doc(shareId).delete();
  }

  String _generateShareCode() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return List.generate(8, (index) => chars[random.nextInt(chars.length)])
        .join();
  }

  // Statistics
  Future<void> updateSpotStatistics(SpotStatistics stats) async {
    await _statsCollection.doc(stats.spotId).set(stats.toJson());
  }

  Future<SpotStatistics?> getSpotStatistics(String spotId) async {
    final doc = await _statsCollection.doc(spotId).get();
    if (!doc.exists) return null;
    return SpotStatistics.fromJson(doc.data()!);
  }

  // Privacy
  Future<void> updateSpotPrivacy(String spotId, SpotPrivacy privacy) async {
    await _spotsCollection.doc(spotId).update({
      'privacy': privacy.toJson(),
    });
  }

  Stream<List<FishingSpot>> watchNearbySpots(LatLng center, double radius) {
    return _spotsCollection.snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => FishingSpot.fromJson(doc.data()))
          .where((spot) {
        final distance = Geolocator.distanceBetween(
          center.latitude,
          center.longitude,
          spot.location.latitude,
          spot.location.longitude,
        );
        return distance <= radius * 1000;
      }).toList();
    });
  }
}
