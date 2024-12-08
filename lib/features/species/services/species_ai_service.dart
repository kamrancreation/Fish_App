import 'dart:io';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;
import 'package:fishpro/features/species/models/fish_species.dart';
import 'package:fishpro/features/species/services/species_storage_service.dart';

class SpeciesIdentificationResult {
  final FishSpecies species;
  final double confidence;
  final Map<String, dynamic> additionalInfo;

  SpeciesIdentificationResult({
    required this.species,
    required this.confidence,
    required this.additionalInfo,
  });
}

class SpeciesAIService {
  static const int inputSize = 224;
  static const int numChannels = 3;
  final SpeciesStorageService _storageService;
  late Interpreter _interpreter;
  late List<String> _labels;

  SpeciesAIService(this._storageService);

  Future<void> initialize() async {
    // Load TFLite model
    final interpreterOptions = InterpreterOptions();
    _interpreter = await Interpreter.fromAsset(
      'assets/models/fish_species_model.tflite',
      options: interpreterOptions,
    );

    // Load labels
    _labels = await _loadLabels();
  }

  Future<List<String>> _loadLabels() async {
    // In a real app, load from assets
    return ['bass', 'trout', 'salmon', 'catfish'];
  }

  Future<SpeciesIdentificationResult> identifySpecies(File imageFile) async {
    // Preprocess image
    final image = await _preprocessImage(imageFile);
    
    // Run inference
    final outputShape = _interpreter.getOutputTensor(0).shape;
    final outputType = _interpreter.getOutputTensor(0).type;
    final outputBuffer = TensorBuffer.createFixedSize(outputShape, outputType);
    
    _interpreter.run(image, outputBuffer.buffer);
    
    // Process results
    final results = outputBuffer.getDoubleList();
    final predictions = _processResults(results);
    
    // Get top prediction
    final topPrediction = predictions.reduce(
      (a, b) => a.confidence > b.confidence ? a : b,
    );

    // Fetch species details from storage
    final species = await _storageService.getSpeciesById(topPrediction.species.id);
    if (species == null) {
      throw Exception('Species not found in database');
    }

    // Add ML-based recommendations
    final recommendations = await _generateRecommendations(species, topPrediction.confidence);

    return SpeciesIdentificationResult(
      species: species,
      confidence: topPrediction.confidence,
      additionalInfo: recommendations,
    );
  }

  Future<List<double>> _preprocessImage(File imageFile) async {
    // Load and resize image
    final imageBytes = await imageFile.readAsBytes();
    final image = img.decodeImage(imageBytes);
    if (image == null) throw Exception('Failed to decode image');
    
    final resized = img.copyResize(
      image,
      width: inputSize,
      height: inputSize,
    );

    // Convert to float array and normalize
    final buffer = List<double>.filled(inputSize * inputSize * numChannels, 0);
    var index = 0;
    for (var y = 0; y < inputSize; y++) {
      for (var x = 0; x < inputSize; x++) {
        final pixel = resized.getPixel(x, y);
        buffer[index++] = (pixel.r / 255.0);
        buffer[index++] = (pixel.g / 255.0);
        buffer[index++] = (pixel.b / 255.0);
      }
    }
    
    return buffer;
  }

  List<SpeciesIdentificationResult> _processResults(List<double> results) {
    final predictions = <SpeciesIdentificationResult>[];
    for (var i = 0; i < results.length; i++) {
      // Create dummy species for demonstration
      // In real app, map to actual species from database
      final species = FishSpecies(
        id: _labels[i],
        name: _labels[i],
        scientificName: 'Unknown',
        description: '',
        habitat: '',
        behavior: '',
        bestBait: '',
        bestTime: '',
        imageUrl: '',
        regulations: {},
        commonLocations: [],
        typicalSize: {},
        seasonalPatterns: {},
        category: '',
        family: '',
        techniques: [],
      );
      
      predictions.add(SpeciesIdentificationResult(
        species: species,
        confidence: results[i],
        additionalInfo: {},
      ));
    }
    return predictions;
  }

  Future<Map<String, dynamic>> _generateRecommendations(
    FishSpecies species,
    double confidence,
  ) async {
    // In a real app, use ML to generate personalized recommendations
    return {
      'bestTimeToFish': _predictBestFishingTime(species),
      'catchProbability': _calculateCatchProbability(species, confidence),
      'recommendedTechniques': _recommendTechniques(species),
      'similarSpecies': await _findSimilarSpecies(species),
    };
  }

  String _predictBestFishingTime(FishSpecies species) {
    // Implement ML-based time prediction
    return species.bestTime;
  }

  double _calculateCatchProbability(FishSpecies species, double confidence) {
    // Implement catch probability calculation
    return confidence * 0.8; // Simplified example
  }

  List<String> _recommendTechniques(FishSpecies species) {
    // Implement technique recommendations
    return species.techniques;
  }

  Future<List<String>> _findSimilarSpecies(FishSpecies species) async {
    // Implement similar species finding
    final allSpecies = await _storageService.getAllSpecies();
    return allSpecies
        .where((s) => s.family == species.family && s.id != species.id)
        .map((s) => s.name)
        .take(3)
        .toList();
  }

  void dispose() {
    _interpreter.close();
  }
}
