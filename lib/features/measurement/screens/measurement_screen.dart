import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class MeasurementScreen extends StatefulWidget {
  const MeasurementScreen({super.key});

  @override
  State<MeasurementScreen> createState() => _MeasurementScreenState();
}

class _MeasurementScreenState extends State<MeasurementScreen> {
  late CameraController _cameraController;
  bool _isCameraInitialized = false;
  bool _isARMode = false;
  double? _measuredLength;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) return;

    _cameraController = CameraController(
      cameras.first,
      ResolutionPreset.high,
      enableAudio: false,
    );

    try {
      await _cameraController.initialize();
      setState(() {
        _isCameraInitialized = true;
      });
    } catch (e) {
      debugPrint('Error initializing camera: $e');
    }
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isCameraInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish Measurement'),
        actions: [
          IconButton(
            icon: Icon(_isARMode ? Icons.view_in_ar : Icons.camera_alt),
            onPressed: () {
              setState(() {
                _isARMode = !_isARMode;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                CameraPreview(_cameraController),
                if (_measuredLength != null)
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Length: ${_measuredLength!.toStringAsFixed(1)} cm',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: _captureImage,
                  icon: const Icon(Icons.camera),
                  label: const Text('Capture'),
                ),
                ElevatedButton.icon(
                  onPressed: _calibrate,
                  icon: const Icon(Icons.straighten),
                  label: const Text('Calibrate'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _captureImage() async {
    try {
      final image = await _cameraController.takePicture();
      // TODO: Implement image processing and measurement
      setState(() {
        _measuredLength = 25.5; // Placeholder measurement
      });
    } catch (e) {
      debugPrint('Error capturing image: $e');
    }
  }

  void _calibrate() {
    // TODO: Implement calibration with reference object
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Calibration'),
        content: const Text(
          'Place a reference object (ruler or coin) in the frame and ensure it\'s clearly visible.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
