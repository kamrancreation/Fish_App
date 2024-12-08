import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as path;

class ImageUtils {
  static Future<File> compressImage(File imageFile, {int quality = 85}) async {
    final bytes = await imageFile.readAsBytes();
    final image = img.decodeImage(bytes);

    if (image == null) throw Exception('Failed to decode image');

    // Resize if image is too large
    var resized = image;
    if (image.width > 2048 || image.height > 2048) {
      final ratio = image.width / image.height;
      if (ratio > 1) {
        resized = img.copyResize(image, width: 2048);
      } else {
        resized = img.copyResize(image, height: 2048);
      }
    }

    // Compress
    final compressed = img.encodeJpg(resized, quality: quality);
    final dir = path.dirname(imageFile.path);
    final name = path.basenameWithoutExtension(imageFile.path);
    final compressedFile = File('$dir/${name}_compressed.jpg');
    await compressedFile.writeAsBytes(compressed);

    return compressedFile;
  }

  static Future<List<File>> processGalleryImages(List<File> images) async {
    final processedImages = <File>[];
    for (final image in images) {
      final processed = await compressImage(image);
      processedImages.add(processed);
    }
    return processedImages;
  }

  static String getImageType(File imageFile) {
    final extension = path.extension(imageFile.path).toLowerCase();
    switch (extension) {
      case '.jpg':
      case '.jpeg':
        return 'image/jpeg';
      case '.png':
        return 'image/png';
      case '.gif':
        return 'image/gif';
      case '.webp':
        return 'image/webp';
      default:
        return 'application/octet-stream';
    }
  }

  static Future<Map<String, dynamic>> getImageMetadata(File imageFile) async {
    final bytes = await imageFile.readAsBytes();
    final image = img.decodeImage(bytes);

    if (image == null) throw Exception('Failed to decode image');

    return {
      'width': image.width,
      'height': image.height,
      'format':
          path.extension(imageFile.path).toLowerCase().replaceAll('.', ''),
      'size': await imageFile.length(),
      'aspectRatio': image.width / image.height,
    };
  }

  static Future<bool> isValidImage(File file) async {
    try {
      final bytes = await file.readAsBytes();
      return img.decodeImage(bytes) != null;
    } catch (e) {
      return false;
    }
  }

  static Future<File> watermarkImage(
    File imageFile,
    String watermarkText, {
    double opacity = 0.3,
    int fontSize = 24,
  }) async {
    final bytes = await imageFile.readAsBytes();
    final image = img.decodeImage(bytes);

    if (image == null) throw Exception('Failed to decode image');

    // Add watermark
    final watermarked = img.drawString(
      image,
      watermarkText,
      font: img.arial24,
      x: image.width - (watermarkText.length * fontSize),
      y: image.height - fontSize * 2,
      color: img.getColor(255, 255, 255, (opacity * 255).round()),
    );

    final dir = path.dirname(imageFile.path);
    final name = path.basenameWithoutExtension(imageFile.path);
    final watermarkedFile = File('$dir/${name}_watermarked.jpg');
    await watermarkedFile.writeAsBytes(img.encodeJpg(watermarked));

    return watermarkedFile;
  }

  static Future<List<int>> generateThumbnail(
    File imageFile, {
    int width = 200,
    int height = 200,
  }) async {
    final bytes = await imageFile.readAsBytes();
    final image = img.decodeImage(bytes);

    if (image == null) throw Exception('Failed to decode image');

    final thumbnail = img.copyResize(
      image,
      width: width,
      height: height,
      interpolation: img.Interpolation.average,
    );

    return img.encodeJpg(thumbnail, quality: 85);
  }
}
