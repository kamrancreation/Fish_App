import 'dart:io';
import 'dart:math' as math;
import '../../../../core/services/firebase_service.dart';
import '../models/catch.dart';

class CatchRepository {
  final FirebaseService _firebase;

  CatchRepository({
    FirebaseService? firebase,
  }) : _firebase = firebase ?? FirebaseService();

  Future<String> createCatch(CatchData catchData) async {
    try {
      // Upload photos first
      final photoUrls = await _uploadPhotos(catchData.photos);

      // Create catch document
      final docRef = await _firebase.firestore.collection('catches').add({
        'userId': _firebase.currentUserId,
        ...catchData.copyWith(photos: photoUrls).toJson(),
        'createdAt': DateTime.now().toIso8601String(),
      });

      // Update user stats
      await _updateUserStats(catchData);

      return docRef.id;
    } catch (e) {
      throw Exception('Failed to create catch: $e');
    }
  }

  Future<List<String>> _uploadPhotos(List<String> localPaths) async {
    final List<String> photoUrls = [];

    for (final path in localPaths) {
      final file = File(path);
      final fileName =
          '${DateTime.now().millisecondsSinceEpoch}_${photoUrls.length}.jpg';
      final ref = _firebase.storage.ref().child('catches/$fileName');

      await ref.putFile(file);
      final url = await ref.getDownloadURL();
      photoUrls.add(url);
    }

    return photoUrls;
  }

  Future<void> _updateUserStats(CatchData catchData) async {
    final userRef =
        _firebase.firestore.collection('users').doc(_firebase.currentUserId);

    await _firebase.firestore.runTransaction((transaction) async {
      final userDoc = await transaction.get(userRef);
      final stats = userDoc.data()?['stats'] ?? {};

      final totalCatches = (stats['totalCatches'] ?? 0) + 1;
      final totalWeight = (stats['totalWeight'] ?? 0.0) + catchData.weight;
      final biggestCatch =
          math.max(stats['biggestCatch'] ?? 0.0, catchData.weight);

      // Get unique species count
      final catchesSnapshot = await _firebase.firestore
          .collection('catches')
          .where('userId', isEqualTo: _firebase.currentUserId)
          .get();

      final uniqueSpecies = {
        ...catchesSnapshot.docs.map((doc) => doc.data()['species']),
        catchData.species
      };

      transaction.update(userRef, {
        'stats': {
          'totalCatches': totalCatches,
          'totalWeight': totalWeight,
          'speciesCaught': uniqueSpecies.length,
          'biggestCatch': biggestCatch,
        },
      });
    });
  }

  Stream<List<CatchData>> getUserCatches() {
    return _firebase.firestore
        .collection('catches')
        .where('userId', isEqualTo: _firebase.currentUserId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        data['id'] = doc.id;
        return CatchData.fromJson(data);
      }).toList();
    });
  }

  Future<void> deleteCatch(String catchId) async {
    try {
      // Get the catch data first
      final catchDoc =
          await _firebase.firestore.collection('catches').doc(catchId).get();
      final catchData = CatchData.fromJson({
        'id': catchDoc.id,
        ...catchDoc.data()!,
      });

      // Delete photos from storage
      for (final url in catchData.photos) {
        final ref = _firebase.storage.refFromURL(url);
        await ref.delete();
      }

      // Delete the catch document
      await _firebase.firestore.collection('catches').doc(catchId).delete();

      // Update user stats
      await _updateUserStatsAfterDelete(catchData);
    } catch (e) {
      throw Exception('Failed to delete catch: $e');
    }
  }

  Future<void> _updateUserStatsAfterDelete(CatchData catchData) async {
    final userRef =
        _firebase.firestore.collection('users').doc(_firebase.currentUserId);

    await _firebase.firestore.runTransaction((transaction) async {
      final userDoc = await transaction.get(userRef);
      final stats = userDoc.data()?['stats'] ?? {};

      final totalCatches = (stats['totalCatches'] ?? 1) - 1;
      final totalWeight = (stats['totalWeight'] ?? catchData.weight) - catchData.weight;

      // Recalculate biggest catch
      final catchesSnapshot = await _firebase.firestore
          .collection('catches')
          .where('userId', isEqualTo: _firebase.currentUserId)
          .get();

      double biggestCatch = 0.0;
      final uniqueSpecies = <String>{};

      for (final doc in catchesSnapshot.docs) {
        if (doc.id != catchData.id) {
          final docData = CatchData.fromJson({
            'id': doc.id,
            ...doc.data(),
          });
          if (docData.weight > biggestCatch) biggestCatch = docData.weight;
          uniqueSpecies.add(docData.species);
        }
      }

      transaction.update(userRef, {
        'stats': {
          'totalCatches': totalCatches,
          'totalWeight': totalWeight,
          'speciesCaught': uniqueSpecies.length,
          'biggestCatch': biggestCatch,
        },
      });
    });
  }
}
