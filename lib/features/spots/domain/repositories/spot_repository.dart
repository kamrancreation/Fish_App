import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/services/firebase_service.dart';
import '../models/spot.dart';

class SpotRepository {
  final FirebaseService _firebase;

  SpotRepository({
    FirebaseService? firebase,
  }) : _firebase = firebase ?? FirebaseService();

  Future<String> createSpot(SpotData spotData) async {
    try {
      // Upload photos first
      final photoUrls = await _uploadPhotos(spotData.photos);

      // Create spot document
      final docRef = await _firebase.firestore.collection('spots').add({
        'userId': _firebase.currentUserId,
        'name': spotData.name,
        'description': spotData.description,
        'latitude': spotData.latitude,
        'longitude': spotData.longitude,
        'type': spotData.type.toString(),
        'features': spotData.features,
        'bestTimeToFish': spotData.bestTimeToFish,
        'commonSpecies': spotData.commonSpecies,
        'photoUrls': photoUrls,
        'isPublic': spotData.isPublic,
        'rating': 0.0,
        'ratingCount': 0,
        'createdAt': DateTime.now().toIso8601String(),
      });

      return docRef.id;
    } catch (e) {
      throw Exception('Failed to create spot: $e');
    }
  }

  Future<List<String>> _uploadPhotos(List<String> localPaths) async {
    final List<String> photoUrls = [];

    for (final path in localPaths) {
      final file = File(path);
      final fileName =
          '${DateTime.now().millisecondsSinceEpoch}_${photoUrls.length}.jpg';
      final ref = _firebase.storage.ref().child('spots/$fileName');

      await ref.putFile(file);
      final url = await ref.getDownloadURL();
      photoUrls.add(url);
    }

    return photoUrls;
  }

  Stream<List<SpotData>> getNearbySpots(
      double latitude, double longitude, double radius) {
    // Create a GeoPoint for the center
    final center = GeoPoint(latitude, longitude);

    // Calculate the bounding box for the radius
    const lat = 0.0144927536231884; // approximately 1 mile
    const lon = 0.0181818181818182;

    final lowerLat = latitude - (lat * radius);
    final lowerLon = longitude - (lon * radius);
    final upperLat = latitude + (lat * radius);
    final upperLon = longitude + (lon * radius);

    return _firebase.firestore
        .collection('spots')
        .where('latitude', isGreaterThan: lowerLat)
        .where('latitude', isLessThan: upperLat)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => _spotFromFirestore(doc)).where((spot) {
        final spotLon = spot.longitude;
        return spotLon >= lowerLon && spotLon <= upperLon;
      }).toList();
    });
  }

  Stream<List<SpotData>> getUserSpots() {
    return _firebase.firestore
        .collection('spots')
        .where('userId', isEqualTo: _firebase.currentUserId)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => _spotFromFirestore(doc)).toList();
    });
  }

  Future<void> updateSpot(String spotId, SpotData spotData) async {
    try {
      final spotRef = _firebase.firestore.collection('spots').doc(spotId);

      // Handle photo changes if any
      List<String> photoUrls = spotData.photos;
      if (spotData.newPhotos.isNotEmpty) {
        final newUrls = await _uploadPhotos(spotData.newPhotos);
        photoUrls.addAll(newUrls);
      }

      await spotRef.update({
        'name': spotData.name,
        'description': spotData.description,
        'type': spotData.type.toString(),
        'features': spotData.features,
        'bestTimeToFish': spotData.bestTimeToFish,
        'commonSpecies': spotData.commonSpecies,
        'photoUrls': photoUrls,
        'isPublic': spotData.isPublic,
        'updatedAt': DateTime.now().toIso8601String(),
      });
    } catch (e) {
      throw Exception('Failed to update spot: $e');
    }
  }

  Future<void> deleteSpot(String spotId) async {
    try {
      // Get the spot data first
      final spotDoc =
          await _firebase.firestore.collection('spots').doc(spotId).get();
      final photoUrls = List<String>.from(spotDoc.data()?['photoUrls'] ?? []);

      // Delete photos from storage
      for (final url in photoUrls) {
        final ref = _firebase.storage.refFromURL(url);
        await ref.delete();
      }

      // Delete the spot document
      await _firebase.firestore.collection('spots').doc(spotId).delete();
    } catch (e) {
      throw Exception('Failed to delete spot: $e');
    }
  }

  Future<void> rateSpot(String spotId, double rating) async {
    final spotRef = _firebase.firestore.collection('spots').doc(spotId);

    await _firebase.firestore.runTransaction((transaction) async {
      final spotDoc = await transaction.get(spotRef);
      final currentRating = spotDoc.data()?['rating'] ?? 0.0;
      final currentCount = spotDoc.data()?['ratingCount'] ?? 0;

      final newCount = currentCount + 1;
      final newRating = ((currentRating * currentCount) + rating) / newCount;

      transaction.update(spotRef, {
        'rating': newRating,
        'ratingCount': newCount,
      });
    });
  }

  SpotData _spotFromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return SpotData(
      id: doc.id,
      name: data['name'],
      description: data['description'],
      latitude: data['latitude'],
      longitude: data['longitude'],
      type: SpotType.values.firstWhere(
        (e) => e.toString() == data['type'],
        orElse: () => SpotType.lake,
      ),
      features: List<String>.from(data['features']),
      bestTimeToFish: data['bestTimeToFish'],
      commonSpecies: List<String>.from(data['commonSpecies']),
      photos: List<String>.from(data['photoUrls']),
      isPublic: data['isPublic'],
      rating: data['rating'].toDouble(),
      ratingCount: data['ratingCount'],
      userId: data['userId'],
      createdAt: DateTime.parse(data['createdAt']),
      updatedAt:
          data['updatedAt'] != null ? DateTime.parse(data['updatedAt']) : null,
    );
  }
}
