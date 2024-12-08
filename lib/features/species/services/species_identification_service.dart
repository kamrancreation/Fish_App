import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../measurement/services/ar_measurement_service.dart';

class SpeciesIdentificationService {
  final String _visionApiEndpoint =
      'https://vision.googleapis.com/v1/images:annotate';
  final ARMeasurementService _measurementService;
  final String _apiKey;

  SpeciesIdentificationService()
      : _apiKey = dotenv.env['GOOGLE_CLOUD_VISION_API_KEY'] ?? '',
        _measurementService = ARMeasurementService();

  Future<void> initialize() async {
    await _measurementService.initialize();
    if (_apiKey.isEmpty) {
      throw Exception(
          'Google Cloud Vision API key not found in environment variables');
    }
  }

  Future<Map<String, dynamic>> identifySpecies(
    File imageFile, {
    Map<String, dynamic>? additionalInfo,
  }) async {
    try {
      // Convert image to base64
      final List<int> imageBytes = await imageFile.readAsBytes();
      final String base64Image = base64Encode(imageBytes);

      // Prepare Vision AI request
      final response = await http.post(
        Uri.parse('$_visionApiEndpoint?key=$_apiKey'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'requests': [
            {
              'image': {'content': base64Image},
              'features': [
                {'type': 'OBJECT_LOCALIZATION'},
                {'type': 'LABEL_DETECTION'},
                {'type': 'IMAGE_PROPERTIES'},
                {'type': 'WEB_DETECTION'},
              ],
            }
          ],
        }),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to identify species: ${response.body}');
      }

      final data = jsonDecode(response.body);
      final results = _processVisionResults(data);

      // Get measurements if requested
      if (additionalInfo?['includeSize'] == true) {
        final measurementResult =
            await _measurementService.measureFish(imageFile);
        if (measurementResult != null) {
          results['measurements'] = {
            'length': measurementResult.length,
            'weight': measurementResult.weight,
            'confidence': measurementResult.confidence,
          };
        }
      }

      return results;
    } catch (e) {
      print('Error in species identification: $e');
      rethrow;
    }
  }

  Map<String, dynamic> _processVisionResults(
      Map<String, dynamic> visionResponse) {
    final responses = visionResponse['responses'][0];

    // Process object detection
    final objects = responses['localizedObjectAnnotations'] ?? [];
    final fishObjects = objects
        .where((obj) =>
            obj['name'].toString().toLowerCase().contains('fish') ||
            obj['name'].toString().toLowerCase().contains('aquatic'))
        .toList();

    // Process labels
    final labels = responses['labelAnnotations'] ?? [];

    // Process web detection for species matching
    final webDetection = responses['webDetection'] ?? {};
    final webEntities = webDetection['webEntities'] ?? [];

    // Extract color information
    final properties =
        responses['imageProperties']?['dominantColors']?['colors'] ?? [];

    // Calculate confidence based on multiple signals
    final confidence = _calculateConfidence(
      fishObjects.isNotEmpty ? fishObjects.first['score'] : 0.0,
      labels.isNotEmpty ? labels.first['score'] : 0.0,
      webEntities.isNotEmpty ? webEntities.first['score'] : 0.0,
    );

    // Find best matching species
    final speciesMatches = _findSpeciesMatches(labels, webEntities);

    return {
      'detected': fishObjects.isNotEmpty,
      'confidence': confidence,
      'speciesMatches': speciesMatches,
      'visualCharacteristics': {
        'colors': properties
            .map((color) => {
                  'color': color['color'],
                  'score': color['score'],
                  'pixelFraction': color['pixelFraction'],
                })
            .toList(),
        'patterns': labels
            .where((label) => _isPatternLabel(label['description']))
            .map((label) => {
                  'pattern': label['description'],
                  'confidence': label['score'],
                })
            .toList(),
      },
      'rawDetectionData': {
        'objects': fishObjects,
        'labels': labels,
        'webEntities': webEntities,
      },
    };
  }

  double _calculateConfidence(
    double objectScore,
    double labelScore,
    double webScore,
  ) {
    // Weight the different confidence scores
    const objectWeight = 0.4;
    const labelWeight = 0.3;
    const webWeight = 0.3;

    return (objectScore * objectWeight) +
        (labelScore * labelWeight) +
        (webScore * webWeight);
  }

  List<Map<String, dynamic>> _findSpeciesMatches(
    List<dynamic> labels,
    List<dynamic> webEntities,
  ) {
    final matches = <Map<String, dynamic>>[];

    // Combine and score matches from both labels and web entities
    final allMatches = <String, double>{};

    // Process labels
    for (final label in labels) {
      final description = label['description'].toString().toLowerCase();
      if (_isFishSpecies(description)) {
        allMatches[description] = label['score'];
      }
    }

    // Process web entities
    for (final entity in webEntities) {
      final description = entity['description'].toString().toLowerCase();
      if (_isFishSpecies(description)) {
        final existingScore = allMatches[description] ?? 0.0;
        allMatches[description] = (existingScore + entity['score']) / 2;
      }
    }

    // Convert to sorted list
    final sortedMatches = allMatches.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    // Take top matches
    return sortedMatches
        .take(5)
        .map((entry) => {
              'species': entry.key,
              'confidence': entry.value,
            })
        .toList();
  }

  bool _isFishSpecies(String text) {
    // Add more sophisticated species detection logic here
    return text.contains('fish') ||
        text.contains('bass') ||
        text.contains('trout') ||
        text.contains('salmon') ||
        text.contains('tuna');
  }

  bool _isPatternLabel(String text) {
    final patternKeywords = [
      'spotted',
      'striped',
      'pattern',
      'colored',
      'marking',
      'scale',
    ];
    return patternKeywords
        .any((keyword) => text.toLowerCase().contains(keyword));
  }

  Future<void> dispose() async {
    await _measurementService.dispose();
  }
}
