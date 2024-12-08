import 'dart:convert';
import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/species_prediction.dart';

final visionServiceProvider = Provider((ref) => VisionService());

class VisionService {
  static const _baseUrl = 'https://vision.googleapis.com/v1/images:annotate';
  final String _apiKey;

  VisionService() : _apiKey = dotenv.env['GOOGLE_CLOUD_VISION_API_KEY'] ?? '';

  Future<List<SpeciesPrediction>> identifySpecies(File imageFile) async {
    if (_apiKey.isEmpty) {
      throw Exception('Google Cloud Vision API key not found');
    }

    // Convert image to base64
    final bytes = await imageFile.readAsBytes();
    final base64Image = base64Encode(bytes);

    // Prepare the request body
    final body = {
      'requests': [
        {
          'image': {
            'content': base64Image,
          },
          'features': [
            {
              'type': 'OBJECT_LOCALIZATION',
              'maxResults': 10,
            },
            {
              'type': 'LABEL_DETECTION',
              'maxResults': 10,
            },
          ],
        },
      ],
    };

    try {
      final response = await http.post(
        Uri.parse('$_baseUrl?key=$_apiKey'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode != 200) {
        throw Exception(
          'Vision API error: ${response.statusCode} - ${response.body}',
        );
      }

      final data = jsonDecode(response.body);
      return _processVisionResponse(data);
    } catch (e) {
      throw Exception('Failed to identify species: $e');
    }
  }

  List<SpeciesPrediction> _processVisionResponse(Map<String, dynamic> data) {
    final predictions = <SpeciesPrediction>[];
    final responses = data['responses'] as List;

    if (responses.isEmpty) return predictions;

    // Process object localization results
    final objects = responses[0]['localizedObjectAnnotations'] as List? ?? [];
    for (final object in objects) {
      if (_isFishObject(object['name'] as String)) {
        predictions.add(
          SpeciesPrediction(
            name: object['name'] as String,
            confidence: object['score'] as double,
            boundingBox: _extractBoundingBox(object['boundingPoly']),
            type: PredictionType.object,
          ),
        );
      }
    }

    // Process label detection results
    final labels = responses[0]['labelAnnotations'] as List? ?? [];
    for (final label in labels) {
      if (_isFishLabel(label['description'] as String)) {
        predictions.add(
          SpeciesPrediction(
            name: label['description'] as String,
            confidence: label['score'] as double,
            type: PredictionType.label,
          ),
        );
      }
    }

    // Sort by confidence
    predictions.sort((a, b) => b.confidence.compareTo(a.confidence));

    return predictions;
  }

  bool _isFishObject(String name) {
    final fishObjects = [
      'Fish',
      'Animal',
      'Marine life',
      'Sea life',
      'Aquatic',
    ];
    return fishObjects.any(
      (term) => name.toLowerCase().contains(term.toLowerCase()),
    );
  }

  bool _isFishLabel(String label) {
    final fishLabels = [
      'fish',
      'marine',
      'aquatic',
      'freshwater',
      'saltwater',
      'bass',
      'trout',
      'salmon',
      'tuna',
      'fishing',
    ];
    return fishLabels.any(
      (term) => label.toLowerCase().contains(term.toLowerCase()),
    );
  }

  BoundingBox? _extractBoundingBox(Map<String, dynamic>? boundingPoly) {
    if (boundingPoly == null) return null;

    final vertices = boundingPoly['normalizedVertices'] as List;
    if (vertices.isEmpty) return null;

    double minX = double.infinity;
    double minY = double.infinity;
    double maxX = double.negativeInfinity;
    double maxY = double.negativeInfinity;

    for (final vertex in vertices) {
      final x = vertex['x'] as double;
      final y = vertex['y'] as double;
      minX = min(minX, x);
      minY = min(minY, y);
      maxX = max(maxX, x);
      maxY = max(maxY, y);
    }

    return BoundingBox(
      left: minX,
      top: minY,
      width: maxX - minX,
      height: maxY - minY,
    );
  }

  Future<List<SpeciesPrediction>> analyzeSpeciesDetails(
    File imageFile,
    List<SpeciesPrediction> initialPredictions,
  ) async {
    if (_apiKey.isEmpty) {
      throw Exception('Google Cloud Vision API key not found');
    }

    // Convert image to base64
    final bytes = await imageFile.readAsBytes();
    final base64Image = base64Encode(bytes);

    // Prepare the request body with additional features
    final body = {
      'requests': [
        {
          'image': {
            'content': base64Image,
          },
          'features': [
            {
              'type': 'IMAGE_PROPERTIES',
              'maxResults': 10,
            },
            {
              'type': 'CROP_HINTS',
              'maxResults': 10,
            },
            {
              'type': 'WEB_DETECTION',
              'maxResults': 10,
            },
          ],
        },
      ],
    };

    try {
      final response = await http.post(
        Uri.parse('$_baseUrl?key=$_apiKey'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode != 200) {
        throw Exception(
          'Vision API error: ${response.statusCode} - ${response.body}',
        );
      }

      final data = jsonDecode(response.body);
      return _enrichPredictions(initialPredictions, data);
    } catch (e) {
      throw Exception('Failed to analyze species details: $e');
    }
  }

  List<SpeciesPrediction> _enrichPredictions(
    List<SpeciesPrediction> predictions,
    Map<String, dynamic> data,
  ) {
    final responses = data['responses'] as List;
    if (responses.isEmpty) return predictions;

    final response = responses[0];
    
    // Extract color information
    final properties = response['imageProperties'];
    if (properties != null) {
      final colors = properties['dominantColors']['colors'] as List;
      final colorInfo = colors.map((c) => {
        'color': '${c['color']['red']},${c['color']['green']},${c['color']['blue']}',
        'score': c['score'],
      }).toList();

      for (final prediction in predictions) {
        prediction.metadata['colors'] = colorInfo;
      }
    }

    // Extract web detection information
    final webDetection = response['webDetection'];
    if (webDetection != null) {
      final webEntities = webDetection['webEntities'] as List? ?? [];
      final similarSpecies = webEntities
          .where((entity) => _isFishLabel(entity['description'] as String))
          .map((entity) => {
                'name': entity['description'],
                'score': entity['score'],
              })
          .toList();

      for (final prediction in predictions) {
        prediction.metadata['similarSpecies'] = similarSpecies;
      }
    }

    return predictions;
  }
}
