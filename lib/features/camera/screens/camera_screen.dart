import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart';
import '../../../core/services/camera_service.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraService _cameraService;
  bool _isLoading = true;
  bool _isMeasuring = false;
  Vector3? _firstPoint;
  double? _measurementResult;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameraService = CameraService();
    try {
      await _cameraService.initialize();
      if (mounted) {
        setState(() => _isLoading = false);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error initializing camera: $e')),
        );
      }
    }
  }

  Future<void> _toggleARMode() async {
    setState(() => _isLoading = true);
    try {
      if (_cameraService.isARMode) {
        await _cameraService.stopAR();
      } else {
        await _cameraService.startAR();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error toggling AR mode: $e')),
        );
      }
    }
    if (mounted) {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _onARViewCreated(
    ARSessionManager sessionManager,
    ARObjectManager objectManager,
    ARAnchorManager anchorManager,
    ARLocationManager locationManager,
  ) async {
    sessionManager.onPlaneOrPointTap = _onPlaneOrPointTapped;
  }

  Future<void> _onPlaneOrPointTapped(
      List<ARHitTestResult> hitTestResults) async {
    if (hitTestResults.isEmpty) return;

    final point = hitTestResults.first.worldTransform.getTranslation();
    if (!_isMeasuring) {
      // Start measuring - place first point
      _firstPoint = point;
      await _cameraService.addARMeasurement(point);
      setState(() => _isMeasuring = true);
    } else {
      // Complete measurement - place second point and calculate
      await _cameraService.addARMeasurement(point);
      final distance =
          await _cameraService.measureDistance(_firstPoint!, point);
      setState(() {
        _measurementResult = distance;
        _isMeasuring = false;
        _firstPoint = null;
      });
    }
  }

  Future<void> _takePicture() async {
    try {
      setState(() => _isLoading = true);
      final image = await _cameraService.takePicture();
      // Handle the captured image (e.g., save to gallery, upload to server)
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Picture captured!')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error taking picture: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  void dispose() {
    _cameraService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_cameraService.isARMode ? 'AR Measurement' : 'Camera'),
        actions: [
          IconButton(
            icon:
                Icon(_cameraService.isARMode ? Icons.camera : Icons.view_in_ar),
            onPressed: _toggleARMode,
          ),
        ],
      ),
      body: Stack(
        children: [
          if (_cameraService.isARMode)
            ARView(
              onARViewCreated: _onARViewCreated,
              planeDetectionConfig: PlaneDetectionConfig.horizontalAndVertical,
            )
          else
            CameraPreview(_cameraService.controller!),
          if (_measurementResult != null)
            Positioned(
              top: 20,
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
                    'Measurement: ${_measurementResult!.toStringAsFixed(1)} cm',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          if (_isMeasuring)
            const Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Tap to place second point',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    backgroundColor: Colors.black54,
                  ),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: !_cameraService.isARMode
          ? FloatingActionButton(
              onPressed: _takePicture,
              child: const Icon(Icons.camera),
            )
          : null,
    );
  }
}
