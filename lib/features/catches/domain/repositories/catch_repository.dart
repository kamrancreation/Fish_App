import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../models/catch.dart';

class CatchRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final String userId;

  CatchRepository({
    required this.userId,
    FirebaseFirestore? firestore,
    FirebaseStorage? storage,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _storage = storage ?? FirebaseStorage.instance;

  CollectionReference<Map<String, dynamic>> get _catchesCollection =>
      _firestore.collection('catches');

  Future<String> createCatch(Catch catch_, List<File> photos) async {
    // Upload photos first
    final photoUrls = await Future.wait(
      photos.map((photo) => _uploadPhoto(photo)),
    );

    // Create catch document
    final docRef = await _catchesCollection.add({
      ...catch_.copyWith(
        userId: userId,
        photoUrls: photoUrls,
      ).toJson(),
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    });

    return docRef.id;
  }

  Future<void> updateCatch(String catchId, Catch catch_, List<File>? newPhotos) async {
    List<String> photoUrls = catch_.photoUrls;

    if (newPhotos != null && newPhotos.isNotEmpty) {
      final newPhotoUrls = await Future.wait(
        newPhotos.map((photo) => _uploadPhoto(photo)),
      );
      photoUrls = [...photoUrls, ...newPhotoUrls];
    }

    await _catchesCollection.doc(catchId).update({
      ...catch_.copyWith(photoUrls: photoUrls).toJson(),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> deleteCatch(String catchId) async {
    final catch_ = await getCatch(catchId);
    
    // Delete photos from storage
    await Future.wait(
      catch_.photoUrls.map((url) => _deletePhoto(url)),
    );

    // Delete catch document
    await _catchesCollection.doc(catchId).delete();
  }

  Future<Catch> getCatch(String catchId) async {
    final doc = await _catchesCollection.doc(catchId).get();
    if (!doc.exists) {
      throw Exception('Catch not found');
    }
    return Catch.fromJson({...doc.data()!, 'id': doc.id});
  }

  Stream<List<Catch>> getCatches({
    String? species,
    DateTime? startDate,
    DateTime? endDate,
    String? spotId,
    Query<Map<String, dynamic>>? Function(Query<Map<String, dynamic>>)? queryBuilder,
  }) {
    Query<Map<String, dynamic>> query = _catchesCollection
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true);

    if (species != null) {
      query = query.where('species', isEqualTo: species);
    }

    if (startDate != null) {
      query = query.where('timestamp', isGreaterThanOrEqualTo: startDate);
    }

    if (endDate != null) {
      query = query.where('timestamp', isLessThanOrEqualTo: endDate);
    }

    if (spotId != null) {
      query = query.where('spotId', isEqualTo: spotId);
    }

    if (queryBuilder != null) {
      query = queryBuilder(query);
    }

    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Catch.fromJson({...doc.data(), 'id': doc.id});
      }).toList();
    });
  }

  Future<String> _uploadPhoto(File photo) async {
    final fileName = '${DateTime.now().millisecondsSinceEpoch}_${photo.path.split('/').last}';
    final ref = _storage.ref().child('catches/$userId/$fileName');
    await ref.putFile(photo);
    return await ref.getDownloadURL();
  }

  Future<void> _deletePhoto(String photoUrl) async {
    try {
      final ref = _storage.refFromURL(photoUrl);
      await ref.delete();
    } catch (e) {
      // Handle or log error
      print('Error deleting photo: $e');
    }
  }

  Future<Map<String, dynamic>> getCatchStatistics({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    Query<Map<String, dynamic>> query = _catchesCollection
        .where('userId', isEqualTo: userId);

    if (startDate != null) {
      query = query.where('timestamp', isGreaterThanOrEqualTo: startDate);
    }

    if (endDate != null) {
      query = query.where('timestamp', isLessThanOrEqualTo: endDate);
    }

    final catches = await query.get();
    final catchList = catches.docs.map((doc) => Catch.fromJson({...doc.data(), 'id': doc.id})).toList();

    // Calculate statistics
    final totalCatches = catchList.length;
    final speciesCounts = <String, int>{};
    var totalWeight = 0.0;
    var totalLength = 0.0;
    final weightedCatches = catchList.where((c) => c.weight != null).length;
    final measuredCatches = catchList.where((c) => c.length != null).length;

    for (final catch_ in catchList) {
      speciesCounts[catch_.species] = (speciesCounts[catch_.species] ?? 0) + 1;
      if (catch_.weight != null) totalWeight += catch_.weight!;
      if (catch_.length != null) totalLength += catch_.length!;
    }

    return {
      'totalCatches': totalCatches,
      'speciesCounts': speciesCounts,
      'totalWeight': totalWeight,
      'averageWeight': weightedCatches > 0 ? totalWeight / weightedCatches : 0,
      'totalLength': totalLength,
      'averageLength': measuredCatches > 0 ? totalLength / measuredCatches : 0,
      'mostCaughtSpecies': speciesCounts.isEmpty ? null : 
          speciesCounts.entries.reduce((a, b) => a.value > b.value ? a : b).key,
    };
  }
}
