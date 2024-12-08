import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import '../models/storage_item.dart';
import '../error/app_error.dart';

class StorageService {
  final FirebaseStorage _storage;

  StorageService({FirebaseStorage? storage}) : _storage = storage ?? FirebaseStorage.instance;

  Future<StorageItem> uploadFile({
    required File file,
    required String userId,
    required String category,
    String? customPath,
  }) async {
    try {
      final fileName = path.basename(file.path);
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final storagePath = customPath ?? 'users/$userId/$category/${timestamp}_$fileName';
      
      final ref = _storage.ref().child(storagePath);
      final metadata = SettableMetadata(
        contentType: _getContentType(fileName),
        customMetadata: {
          'userId': userId,
          'category': category,
          'uploadTime': DateTime.now().toIso8601String(),
        },
      );

      final uploadTask = await ref.putFile(file, metadata);
      final downloadUrl = await uploadTask.ref.getDownloadURL();

      return StorageItem(
        id: ref.fullPath,
        url: downloadUrl,
        path: storagePath,
        fileName: fileName,
        uploadTime: DateTime.now(),
        size: await file.length(),
      );
    } catch (e) {
      throw AppError(
        code: 'storage-upload-failed',
        message: 'Failed to upload file: ${e.toString()}',
        context: {
          'userId': userId,
          'category': category,
          'fileName': path.basename(file.path),
        },
      );
    }
  }

  Future<void> deleteFile(String path) async {
    try {
      final ref = _storage.ref().child(path);
      await ref.delete();
    } catch (e) {
      throw AppError(
        code: 'storage-delete-failed',
        message: 'Failed to delete file: ${e.toString()}',
        context: {'path': path},
      );
    }
  }

  Future<List<StorageItem>> listFiles(String path) async {
    try {
      final ref = _storage.ref().child(path);
      final result = await ref.listAll();

      final items = await Future.wait(
        result.items.map((ref) async {
          final metadata = await ref.getMetadata();
          final url = await ref.getDownloadURL();

          return StorageItem(
            id: ref.fullPath,
            url: url,
            path: ref.fullPath,
            fileName: ref.name,
            uploadTime: metadata.timeCreated ?? DateTime.now(),
            size: metadata.size ?? 0,
          );
        }),
      );

      return items;
    } catch (e) {
      throw AppError(
        code: 'storage-list-failed',
        message: 'Failed to list files: ${e.toString()}',
        context: {'path': path},
      );
    }
  }

  String _getContentType(String fileName) {
    final ext = path.extension(fileName).toLowerCase();
    switch (ext) {
      case '.jpg':
      case '.jpeg':
        return 'image/jpeg';
      case '.png':
        return 'image/png';
      case '.gif':
        return 'image/gif';
      case '.pdf':
        return 'application/pdf';
      default:
        return 'application/octet-stream';
    }
  }

  Future<StorageItem?> getFileMetadata(String path) async {
    try {
      final ref = _storage.ref().child(path);
      final metadata = await ref.getMetadata();
      final url = await ref.getDownloadURL();

      return StorageItem(
        id: ref.fullPath,
        url: url,
        path: ref.fullPath,
        fileName: ref.name,
        uploadTime: metadata.timeCreated ?? DateTime.now(),
        size: metadata.size ?? 0,
      );
    } catch (e) {
      return null;
    }
  }
}
