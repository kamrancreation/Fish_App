import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';
import 'package:mime/mime.dart';
import '../../shared/services/network_service.dart';

class StorageService {
  final FirebaseStorage _storage;
  final NetworkService _networkService;
  final _uuid = const Uuid();

  StorageService({
    FirebaseStorage? storage,
    NetworkService? networkService,
  })  : _storage = storage ?? FirebaseStorage.instance,
        _networkService = networkService ?? NetworkService();

  // Upload a file with metadata
  Future<String> uploadFile({
    required File file,
    required String userId,
    required String category,
    Map<String, dynamic>? metadata,
  }) async {
    try {
      if (!await _networkService.isConnected()) {
        throw Exception('No internet connection available');
      }

      // Validate file
      if (!await file.exists()) {
        throw Exception('File does not exist');
      }

      final fileSize = await file.length();
      if (fileSize == 0) {
        throw Exception('File is empty');
      }

      // Maximum file size (100MB)
      const maxSize = 100 * 1024 * 1024;
      if (fileSize > maxSize) {
        throw Exception('File size exceeds maximum limit of 100MB');
      }

      final String fileName = _generateFileName(file);
      final String filePath = '$category/$userId/$fileName';
      final Reference ref = _storage.ref().child(filePath);

      // Get file metadata
      final String? mimeType = lookupMimeType(file.path);
      final metadata = SettableMetadata(
        contentType: mimeType,
        customMetadata: {
          'userId': userId,
          'category': category,
          'originalName': path.basename(file.path),
          'uploadTime': DateTime.now().toIso8601String(),
        },
      );

      // Upload file with metadata
      await ref.putFile(file, metadata);

      // Get download URL
      final downloadUrl = await ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      throw _handleStorageError(e);
    }
  }

  // Upload multiple files
  Future<List<String>> uploadFiles({
    required List<File> files,
    required String userId,
    required String category,
  }) async {
    final urls = <String>[];
    for (final file in files) {
      final url = await uploadFile(
        file: file,
        userId: userId,
        category: category,
      );
      urls.add(url);
    }
    return urls;
  }

  // Delete a file by URL
  Future<void> deleteFile(String fileUrl) async {
    try {
      if (!await _networkService.isConnected()) {
        throw Exception('No internet connection available');
      }

      final ref = _storage.refFromURL(fileUrl);
      await ref.delete();
    } catch (e) {
      throw _handleStorageError(e);
    }
  }

  // Get file metadata
  Future<Map<String, dynamic>> getFileMetadata(String fileUrl) async {
    try {
      if (!await _networkService.isConnected()) {
        throw Exception('No internet connection available');
      }

      final ref = _storage.refFromURL(fileUrl);
      final metadata = await ref.getMetadata();
      
      return {
        'name': metadata.name ?? '',
        'path': metadata.fullPath ?? '',
        'size': metadata.size ?? 0,
        'contentType': metadata.contentType ?? 'application/octet-stream',
        'createdTime': metadata.timeCreated?.toIso8601String(),
        'updatedTime': metadata.updated?.toIso8601String(),
        'customMetadata': metadata.customMetadata ?? {},
      };
    } catch (e) {
      throw _handleStorageError(e);
    }
  }

  // Update file metadata
  Future<void> updateFileMetadata(String fileUrl, Map<String, String> metadata) async {
    try {
      if (!await _networkService.isConnected()) {
        throw Exception('No internet connection available');
      }

      // Validate metadata
      if (metadata.isEmpty) {
        throw Exception('Metadata cannot be empty');
      }

      // Validate metadata values
      for (final entry in metadata.entries) {
        if (entry.value.isEmpty) {
          throw Exception('Metadata value cannot be empty for key: ${entry.key}');
        }
        if (entry.value.length > 1024) {
          throw Exception('Metadata value too long for key: ${entry.key}');
        }
      }

      final ref = _storage.refFromURL(fileUrl);
      final newMetadata = SettableMetadata(
        customMetadata: metadata,
      );
      await ref.updateMetadata(newMetadata);
    } catch (e) {
      throw _handleStorageError(e);
    }
  }

  // List files in a directory
  Future<List<String>> listFiles({
    required String userId,
    required String category,
    int? maxResults,
  }) async {
    try {
      if (!await _networkService.isConnected()) {
        throw Exception('No internet connection available');
      }

      final ref = _storage.ref().child('$category/$userId');
      final result = await ref.listAll();
      
      final urls = <String>[];
      for (final item in result.items) {
        final url = await item.getDownloadURL();
        urls.add(url);
      }

      return maxResults != null ? urls.take(maxResults).toList() : urls;
    } catch (e) {
      throw _handleStorageError(e);
    }
  }

  // Helper method to generate unique file names
  String _generateFileName(File file) {
    final extension = path.extension(file.path);
    final uniqueId = _uuid.v4();
    return '$uniqueId$extension';
  }

  // Error handling
  Exception _handleStorageError(dynamic error) {
    if (error is FirebaseException) {
      switch (error.code) {
        case 'storage/object-not-found':
          return Exception('File not found');
        case 'storage/unauthorized':
          return Exception('Unauthorized access');
        case 'storage/canceled':
          return Exception('Upload canceled');
        case 'storage/invalid-checksum':
          return Exception('File integrity check failed');
        case 'storage/retry-limit-exceeded':
          return Exception('Upload failed: retry limit exceeded');
        case 'storage/invalid-url':
          return Exception('Invalid storage URL');
        case 'storage/quota-exceeded':
          return Exception('Storage quota exceeded');
        case 'storage/bucket-not-found':
          return Exception('Storage bucket not found');
        case 'storage/project-not-found':
          return Exception('Firebase project not found');
        case 'storage/unauthenticated':
          return Exception('User is not authenticated');
        case 'storage/invalid-event-name':
          return Exception('Invalid event name');
        case 'storage/invalid-argument':
          return Exception('Invalid argument provided');
        default:
          return Exception(error.message ?? 'Storage error occurred');
      }
    } else if (error is FileSystemException) {
      return Exception('File system error: ${error.message}');
    } else if (error is Exception) {
      return error;
    }
    return Exception('An unexpected error occurred: ${error.toString()}');
  }
}
