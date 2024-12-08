import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';

class ImageService {
  final FirebaseStorage _storage;
  final _uuid = const Uuid();

  ImageService(this._storage);

  Future<List<String>> uploadImages(
    List<File> images, {
    required String folder,
    int maxWidth = 1920,
    int maxHeight = 1080,
    int quality = 85,
  }) async {
    final urls = <String>[];

    for (final image in images) {
      final processedImage = await _processImage(
        image,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        quality: quality,
      );

      final fileName = '${_uuid.v4()}${path.extension(image.path)}';
      final ref = _storage.ref().child('$folder/$fileName');

      final metadata = SettableMetadata(
        contentType: 'image/${path.extension(image.path).substring(1)}',
        customMetadata: {
          'originalName': path.basename(image.path),
          'uploadDate': DateTime.now().toIso8601String(),
        },
      );

      await ref.putFile(processedImage, metadata);
      final url = await ref.getDownloadURL();
      urls.add(url);
    }

    return urls;
  }

  Future<File> _processImage(
    File image, {
    required int maxWidth,
    required int maxHeight,
    required int quality,
  }) async {
    final bytes = await image.readAsBytes();
    var decodedImage = img.decodeImage(bytes);

    if (decodedImage == null) throw Exception('Failed to decode image');

    // Resize if needed
    if (decodedImage.width > maxWidth || decodedImage.height > maxHeight) {
      final resized = img.copyResize(
        decodedImage,
        width: decodedImage.width > maxWidth ? maxWidth : null,
        height: decodedImage.height > maxHeight ? maxHeight : null,
      );
      decodedImage = resized;
    }

    // Compress and encode
    final processed = img.encodeJpg(decodedImage, quality: quality);
    
    // Save to temporary file
    final tempPath = path.join(
      path.dirname(image.path),
      'processed_${path.basename(image.path)}',
    );
    final processedFile = File(tempPath);
    await processedFile.writeAsBytes(processed);

    return processedFile;
  }

  Future<void> deleteImage(String url) async {
    try {
      final ref = _storage.refFromURL(url);
      await ref.delete();
    } catch (e) {
      // Handle or rethrow based on error type
      rethrow;
    }
  }

  Future<void> deleteImages(List<String> urls) async {
    await Future.wait(urls.map((url) => deleteImage(url)));
  }
}
