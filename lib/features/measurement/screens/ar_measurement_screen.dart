import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import '../services/ar_measurement_service.dart';
import '../widgets/ar_overlay_widget.dart';
import '../widgets/measurement_controls_widget.dart';
import '../widgets/reference_selector_widget.dart';

class ARMeasurementScreen extends StatefulWidget {
  const ARMeasurementScreen({super.key});

  @override
  State<ARMeasurementScreen> createState() => _ARMeasurementScreenState();
}

class _ARMeasurementScreenState extends State<ARMeasurementScreen> {
  late ARMeasurementService _measurementService;
  bool _isInitialized = false;
  bool _isCalibrated = false;
  String _selectedReference = 'ruler';
  double _referenceSize = 30.0; // Default ruler size in cm

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _measurementService = ARMeasurementService();
    try {
      await _measurementService.initialize();
      setState(() => _isInitialized = true);
    } catch (e) {
      _showError('Failed to initialize camera: $e');
    }
  }

  Future<void> _calibrateReference() async {
    try {
      await _measurementService.calibrateWithReference(
        _selectedReference,
        _referenceSize,
      );
      setState(() => _isCalibrated = true);
    } catch (e) {
      _showError('Calibration failed: $e');
    }
  }

  Future<void> _takeMeasurement() async {
    if (!_isCalibrated) {
      _showError('Please calibrate with reference object first');
      return;
    }

    try {
      final image = await _measurementService.takePicture();
      final measurement = await _measurementService.measureFish(image);

      if (measurement != null) {
        // Navigate to result screen
        if (!mounted) return;
        Navigator.pushNamed(
          context,
          '/measurement/result',
          arguments: measurement,
        );
      } else {
        _showError('Failed to measure fish');
      }
    } catch (e) {
      _showError('Measurement failed: $e');
    }
  }

  void _showError(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  void dispose() {
    _measurementService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('AR Measurement'),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () => _showTutorial(context),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Camera preview
          Positioned.fill(
            child: CameraPreview(_measurementService.cameraController),
          ),

          // AR overlay
          AROverlayWidget(
            isCalibrated: _isCalibrated,
            referenceType: _selectedReference,
          ),

          // Reference selector
          Positioned(
            top: 20,
            left: 20,
            child: ReferenceSelectorWidget(
              selectedReference: _selectedReference,
              onReferenceChanged: (reference) {
                setState(() {
                  _selectedReference = reference;
                  _isCalibrated = false;
                });
              },
              onSizeChanged: (size) {
                setState(() {
                  _referenceSize = size;
                  _isCalibrated = false;
                });
              },
            ),
          ),

          // Controls
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: MeasurementControlsWidget(
              isCalibrated: _isCalibrated,
              onCalibrate: _calibrateReference,
              onMeasure: _takeMeasurement,
            ),
          ),
        ],
      ),
    );
  }

  void _showTutorial(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('How to Measure'),
        content: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1. Select a reference object (ruler or coin)'),
              Text('2. Enter the size of your reference object'),
              Text('3. Place the reference object next to the fish'),
              Text('4. Align the fish horizontally in frame'),
              Text('5. Calibrate with the reference object'),
              Text('6. Take the measurement'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }
}
