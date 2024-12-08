import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import '../models/media_item.dart';
import '../repositories/media_repository.dart';

final cameraServiceProvider = Provider((ref) {
  return CameraService(ref.watch(mediaRepositoryProvider));
});

class CameraService {
  final MediaRepository _mediaRepository;
  CameraController? _controller;
  ARKitController? _arController;
  final ImageLabeler _labeler = ImageLabeler(options: ImageLabelerOptions());

  CameraService(this._mediaRepository);

  Future<void> initialize() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) throw Exception('No cameras available');

    _controller = CameraController(
      cameras.first,
      ResolutionPreset.high,
      enableAudio: true,
    );

    await _controller!.initialize();
  }

  // AR Measurement
  Future<void> initializeAR() async {
    if (Platform.isIOS) {
      _arController = ARKitController();
      await _arController!.initialize();
    } else {
      // TODO: Implement ARCore for Android
      throw UnimplementedError('AR not yet implemented for Android');
    }
  }

  Future<double> measureDistance(Point3D start, Point3D end) async {
    if (_arController == null) throw Exception('AR not initialized');

    final distance = _calculateDistance(start, end);
    return distance;
  }

  double _calculateDistance(Point3D start, Point3D end) {
    return sqrt(
      pow(end.x - start.x, 2) +
      pow(end.y - start.y, 2) +
      pow(end.z - start.z, 2),
    );
  }

  // Species Photo ID
  Future<List<String>> identifySpecies(File imageFile) async {
    final inputImage = InputImage.fromFile(imageFile);
    final labels = await _labeler.processImage(inputImage);

    // Filter for fish species
    return labels
        .where((label) => label.confidence > 0.7)
        .map((label) => label.label)
        .toList();
  }

  // Catch Photos/Videos
  Future<MediaItem> takePicture({
    required String catchId,
    required Map<String, dynamic> metadata,
  }) async {
    if (_controller == null) throw Exception('Camera not initialized');

    final image = await _controller!.takePicture();
    final enhancedImage = await _enhanceImage(File(image.path));
    
    final mediaItem = MediaItem(
      id: DateTime.now().toString(),
      type: MediaType.photo,
      path: enhancedImage.path,
      catchId: catchId,
      metadata: metadata,
      timestamp: DateTime.now(),
    );

    await _mediaRepository.saveMedia(mediaItem);
    return mediaItem;
  }

  Future<MediaItem> recordVideo({
    required String catchId,
    required Map<String, dynamic> metadata,
  }) async {
    if (_controller == null) throw Exception('Camera not initialized');

    await _controller!.startVideoRecording();
    
    // Return a function to stop recording
    return Future(() async {
      final video = await _controller!.stopVideoRecording();
      
      final mediaItem = MediaItem(
        id: DateTime.now().toString(),
        type: MediaType.video,
        path: video.path,
        catchId: catchId,
        metadata: metadata,
        timestamp: DateTime.now(),
      );

      await _mediaRepository.saveMedia(mediaItem);
      return mediaItem;
    });
  }

  // Photo Enhancement
  Future<File> _enhanceImage(File imageFile) async {
    final image = img.decodeImage(await imageFile.readAsBytes());
    if (image == null) throw Exception('Failed to decode image');

    // Apply enhancements
    var enhanced = img.adjustColor(
      image,
      brightness: 1.1,
      contrast: 1.1,
      saturation: 1.2,
    );
    
    // Auto white balance
    enhanced = img.autoWhiteBalance(enhanced);
    
    // Sharpen
    enhanced = img.sharpen(enhanced);

    // Save enhanced image
    final tempDir = await getTemporaryDirectory();
    final enhancedFile = File(
      '${tempDir.path}/enhanced_${DateTime.now().millisecondsSinceEpoch}.jpg',
    );
    
    await enhancedFile.writeAsBytes(img.encodeJpg(enhanced, quality: 90));
    return enhancedFile;
  }

  // Media Organization
  Future<void> organizeMedia({
    required String catchId,
    required List<String> tags,
    required Map<String, dynamic> metadata,
  }) async {
    await _mediaRepository.updateMediaMetadata(
      catchId: catchId,
      tags: tags,
      metadata: metadata,
    );
  }

  // Gallery Management
  Future<List<MediaItem>> getCatchMedia(String catchId) async {
    return _mediaRepository.getCatchMedia(catchId);
  }

  Future<void> deleteMedia(String mediaId) async {
    await _mediaRepository.deleteMedia(mediaId);
  }

  Future<void> updateMediaMetadata({
    required String mediaId,
    required Map<String, dynamic> metadata,
  }) async {
    await _mediaRepository.updateMediaMetadata(
      mediaId: mediaId,
      metadata: metadata,
    );
  }

  Future<List<MediaItem>> searchMedia({
    String? query,
    List<String>? tags,
    DateTime? startDate,
    DateTime? endDate,
    List<String>? species,
  }) async {
    return _mediaRepository.searchMedia(
      query: query,
      tags: tags,
      startDate: startDate,
      endDate: endDate,
      species: species,
    );
  }

  void dispose() {
    _controller?.dispose();
    _arController?.dispose();
    _labeler.close();
  }
}
