import 'dart:io';
import 'package:camera/camera.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import '../models/measurement_model.dart';

class ARMeasurementService {
  late final ObjectDetector _objectDetector;
  late final CameraController _cameraController;
  double? _referenceObjectSize;

  Future<void> initialize() async {
    // Initialize ML Kit object detector
    final options = ObjectDetectorOptions(
      mode: DetectionMode.stream,
      classifyObjects: true,
      multipleObjects: true,
    );
    _objectDetector = ObjectDetector(options: options);

    // Initialize camera
    final cameras = await availableCameras();
    _cameraController = CameraController(
      cameras.first,
      ResolutionPreset.high,
      enableAudio: false,
    );
    await _cameraController.initialize();
  }

  Future<void> calibrateWithReference(String referenceType, double knownSize) async {
    _referenceObjectSize = knownSize;
  }

  Future<MeasurementModel?> measureFish(File image) async {
    if (_referenceObjectSize == null) {
      throw Exception('Reference object not calibrated');
    }

    try {
      final inputImage = InputImage.fromFile(image);
      final objects = await _objectDetector.processImage(inputImage);

      if (objects.isEmpty) {
        throw Exception('No objects detected');
      }

      // Find reference object and fish in the detected objects
      final referenceObject = objects.firstWhere(
        (obj) => _isReferenceObject(obj),
        orElse: () => throw Exception('Reference object not found'),
      );

      final fish = objects.firstWhere(
        (obj) => _isFish(obj),
        orElse: () => throw Exception('Fish not detected'),
      );

      // Calculate measurements based on reference object
      final measurements = _calculateMeasurements(
        fish,
        referenceObject,
        _referenceObjectSize!,
      );

      return MeasurementModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        userId: 'current_user_id', // Replace with actual user ID
        length: measurements['length']!,
        weight: measurements['weight']!,
        confidenceScore: _calculateConfidenceScore(fish, referenceObject),
        referenceObject: 'ruler', // Update based on actual reference
        imageUrl: image.path,
        timestamp: DateTime.now(),
        metadata: {
          'fishBoundingBox': _boundingBoxToMap(fish.boundingBox),
          'referenceBoundingBox': _boundingBoxToMap(referenceObject.boundingBox),
          'detectionLabels': fish.labels.map((l) => l.text).toList(),
        },
      );
    } catch (e) {
      print('Error measuring fish: $e');
      return null;
    }
  }

  Map<String, double> _calculateMeasurements(
    DetectedObject fish,
    DetectedObject reference,
    double referenceSize,
  ) {
    // Calculate pixel to cm ratio using reference object
    final referencePixels = reference.boundingBox.width;
    final pixelToCmRatio = referenceSize / referencePixels;

    // Calculate fish length in cm
    final fishPixelLength = fish.boundingBox.width;
    final fishLength = fishPixelLength * pixelToCmRatio;

    // Estimate weight using length-weight relationship
    // W = aL^b where a and b are species-specific constants
    // Using general constants for demonstration
    const a = 0.01;
    const b = 3.0;
    final estimatedWeight = a * pow(fishLength, b);

    return {
      'length': fishLength,
      'weight': estimatedWeight,
    };
  }

  double _calculateConfidenceScore(
    DetectedObject fish,
    DetectedObject reference,
  ) {
    // Combine multiple factors for confidence score
    final factors = <double>[
      fish.labels.isEmpty ? 0.0 : fish.labels.first.confidence,
      reference.labels.isEmpty ? 0.0 : reference.labels.first.confidence,
      _calculateImageQualityScore(),
      _calculatePositionScore(fish, reference),
    ];

    return factors.reduce((a, b) => a + b) / factors.length;
  }

  double _calculateImageQualityScore() {
    // Implement image quality assessment
    // Consider factors like brightness, blur, etc.
    return 0.8; // Placeholder
  }

  double _calculatePositionScore(DetectedObject fish, DetectedObject reference) {
    // Check if fish and reference are properly positioned
    // Consider factors like distance, angle, etc.
    return 0.9; // Placeholder
  }

  bool _isReferenceObject(DetectedObject object) {
    // Implement reference object detection logic
    // Check labels and characteristics
    return object.labels.any((label) => 
      label.text.toLowerCase().contains('ruler') ||
      label.text.toLowerCase().contains('coin')
    );
  }

  bool _isFish(DetectedObject object) {
    // Implement fish detection logic
    // Check labels and characteristics
    return object.labels.any((label) =>
      label.text.toLowerCase().contains('fish')
    );
  }

  Map<String, double> _boundingBoxToMap(Rect box) {
    return {
      'left': box.left,
      'top': box.top,
      'right': box.right,
      'bottom': box.bottom,
    };
  }

  Future<void> dispose() async {
    await _objectDetector.close();
    await _cameraController.dispose();
  }

  // Helper method for calculating power
  double pow(double x, double exponent) {
    double result = 1.0;
    for (int i = 0; i < exponent; i++) {
      result *= x;
    }
    return result;
  }
}
