import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import '../models/media_item.dart';

final mediaRepositoryProvider = Provider((ref) => MediaRepository());

class MediaRepository {
  final _mediaCollection = FirebaseFirestore.instance.collection('media');
  final _storage = FirebaseStorage.instance;

  // CRUD Operations
  Future<void> saveMedia(MediaItem media) async {
    // Upload file to storage
    final file = File(media.path);
    final ext = path.extension(media.path);
    final storagePath = 'media/${media.catchId}/${media.id}$ext';
    
    await _storage.ref(storagePath).putFile(file);
    final url = await _storage.ref(storagePath).getDownloadURL();

    // Create thumbnail if it's a photo
    String? thumbnailUrl;
    if (media.type.isPhoto) {
      thumbnailUrl = await _createAndUploadThumbnail(file, media.catchId, media.id);
    }

    // Save metadata to Firestore
    await _mediaCollection.doc(media.id).set({
      ...media.toJson(),
      'path': url,
      'thumbnailPath': thumbnailUrl,
    });
  }

  Future<String> _createAndUploadThumbnail(
    File file,
    String catchId,
    String mediaId,
  ) async {
    final thumbnail = await _generateThumbnail(file);
    final storagePath = 'thumbnails/$catchId/${mediaId}_thumb.jpg';
    
    await _storage.ref(storagePath).putFile(thumbnail);
    return await _storage.ref(storagePath).getDownloadURL();
  }

  Future<File> _generateThumbnail(File file) async {
    // TODO: Implement thumbnail generation
    return file;
  }

  Future<void> deleteMedia(String mediaId) async {
    final media = await _mediaCollection.doc(mediaId).get();
    if (!media.exists) return;

    // Delete from storage
    final data = media.data()!;
    await _storage.refFromURL(data['path']).delete();
    if (data['thumbnailPath'] != null) {
      await _storage.refFromURL(data['thumbnailPath']).delete();
    }

    // Delete from Firestore
    await _mediaCollection.doc(mediaId).delete();
  }

  Future<MediaItem?> getMedia(String mediaId) async {
    final doc = await _mediaCollection.doc(mediaId).get();
    if (!doc.exists) return null;
    return MediaItem.fromJson(doc.data()!);
  }

  // Queries
  Future<List<MediaItem>> getCatchMedia(String catchId) async {
    final snapshot = await _mediaCollection
        .where('catchId', isEqualTo: catchId)
        .orderBy('timestamp', descending: true)
        .get();

    return snapshot.docs
        .map((doc) => MediaItem.fromJson(doc.data()))
        .toList();
  }

  Future<List<MediaItem>> searchMedia({
    String? query,
    List<String>? tags,
    DateTime? startDate,
    DateTime? endDate,
    List<String>? species,
  }) async {
    var queryRef = _mediaCollection.orderBy('timestamp', descending: true);

    if (tags != null && tags.isNotEmpty) {
      queryRef = queryRef.where('tags', arrayContainsAny: tags);
    }

    if (species != null && species.isNotEmpty) {
      queryRef = queryRef.where('species', arrayContainsAny: species);
    }

    if (startDate != null) {
      queryRef = queryRef.where('timestamp', isGreaterThanOrEqualTo: startDate);
    }

    if (endDate != null) {
      queryRef = queryRef.where('timestamp', isLessThanOrEqualTo: endDate);
    }

    final snapshot = await queryRef.get();
    var media = snapshot.docs.map((doc) => MediaItem.fromJson(doc.data()));

    if (query != null && query.isNotEmpty) {
      media = media.where((item) =>
          item.metadata['title']?.toLowerCase().contains(query.toLowerCase()) ??
          false ||
          item.metadata['description']
                  ?.toLowerCase()
                  .contains(query.toLowerCase()) ??
              false);
    }

    return media.toList();
  }

  // Metadata Updates
  Future<void> updateMediaMetadata({
    String? mediaId,
    String? catchId,
    List<String>? tags,
    Map<String, dynamic>? metadata,
  }) async {
    Query query = _mediaCollection;
    
    if (mediaId != null) {
      query = query.where(FieldPath.documentId, isEqualTo: mediaId);
    } else if (catchId != null) {
      query = query.where('catchId', isEqualTo: catchId);
    } else {
      throw ArgumentError('Either mediaId or catchId must be provided');
    }

    final snapshot = await query.get();
    final batch = FirebaseFirestore.instance.batch();

    for (final doc in snapshot.docs) {
      final updates = <String, dynamic>{};
      
      if (tags != null) {
        updates['tags'] = tags;
      }
      
      if (metadata != null) {
        updates['metadata'] = metadata;
      }

      if (updates.isNotEmpty) {
        batch.update(doc.reference, updates);
      }
    }

    await batch.commit();
  }

  // Collections
  Future<void> createCollection(MediaCollection collection) async {
    await _mediaCollection
        .doc('collections')
        .collection('user_collections')
        .doc(collection.id)
        .set(collection.toJson());
  }

  Future<void> addToCollection(String collectionId, String mediaId) async {
    await _mediaCollection
        .doc('collections')
        .collection('user_collections')
        .doc(collectionId)
        .update({
      'mediaIds': FieldValue.arrayUnion([mediaId]),
      'updatedAt': DateTime.now(),
    });
  }

  Future<List<MediaCollection>> getUserCollections() async {
    final snapshot = await _mediaCollection
        .doc('collections')
        .collection('user_collections')
        .orderBy('updatedAt', descending: true)
        .get();

    return snapshot.docs
        .map((doc) => MediaCollection.fromJson(doc.data()))
        .toList();
  }

  // AR Measurements
  Future<void> saveARMeasurement(ARMeasurement measurement) async {
    await _mediaCollection
        .doc(measurement.mediaId)
        .collection('measurements')
        .doc(measurement.id)
        .set(measurement.toJson());
  }

  Future<List<ARMeasurement>> getMediaMeasurements(String mediaId) async {
    final snapshot = await _mediaCollection
        .doc(mediaId)
        .collection('measurements')
        .orderBy('timestamp', descending: true)
        .get();

    return snapshot.docs
        .map((doc) => ARMeasurement.fromJson(doc.data()))
        .toList();
  }
}
