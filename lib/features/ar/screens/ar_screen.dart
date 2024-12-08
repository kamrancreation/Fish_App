import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import '../services/ar_service.dart';
import '../models/fish_measurement.dart';
import '../models/ar_tutorial.dart';
import '../models/ar_marker.dart';
import '../widgets/measurement_overlay.dart';
import '../widgets/tutorial_overlay.dart';
import '../widgets/marker_overlay.dart';
import '../widgets/model_viewer.dart';

class ARScreen extends ConsumerStatefulWidget {
  final String? tutorialId;
  final String? fishingType;

  const ARScreen({
    super.key,
    this.tutorialId,
    this.fishingType,
  });

  @override
  ConsumerState<ARScreen> createState() => _ARScreenState();
}

class _ARScreenState extends ConsumerState<ARScreen> {
  late ARKitController _arkitController;
  List<FishMeasurement>? _measurements;
  ARTutorial? _tutorial;
  List<ARMarker>? _markers;
  bool _measuring = false;
  bool _modeling = false;
  String? _recognizedSpecies;
  final List<ARKitAnchor> _modelingAnchors = [];

  @override
  void initState() {
    super.initState();
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    if (widget.tutorialId != null) {
      _tutorial = await ref.read(arServiceProvider).loadTutorial(
            widget.tutorialId!,
          );
    }

    if (widget.fishingType != null) {
      _markers = await ref.read(arServiceProvider).loadVisualGuides(
            widget.fishingType!,
          );
    }
  }

  @override
  void dispose() {
    _arkitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ARKitSceneView(
            onARKitViewCreated: _onARKitViewCreated,
            detectionImagesGroupName: 'Fish',
            enableTapRecognizer: true,
          ),
          if (_measuring) _buildMeasurementUI(),
          if (_modeling) _buildModelingUI(),
          if (_tutorial != null) _buildTutorialUI(),
          if (_markers != null) _buildMarkerUI(),
          _buildControlPanel(),
        ],
      ),
    );
  }

  void _onARKitViewCreated(ARKitController controller) {
    _arkitController = controller;

    controller.onAddNodeForAnchor = _handleAddAnchor;
    controller.onUpdateNodeForAnchor = _handleUpdateAnchor;
    controller.onNodeTap = _handleNodeTap;
  }

  Widget _buildMeasurementUI() {
    return MeasurementOverlay(
      measurements: _measurements ?? [],
      onCapture: _captureMeasurement,
      onShare: _shareMeasurement,
      recognizedSpecies: _recognizedSpecies,
    );
  }

  Widget _buildModelingUI() {
    return ModelViewer(
      anchors: _modelingAnchors,
      onCapture: _captureModelingAngle,
      onGenerate: _generate3DModel,
    );
  }

  Widget _buildTutorialUI() {
    return TutorialOverlay(
      tutorial: _tutorial!,
      onStepComplete: _handleTutorialStep,
    );
  }

  Widget _buildMarkerUI() {
    return MarkerOverlay(
      markers: _markers!,
      onMarkerTap: _handleMarkerTap,
      onAddMarker: _addCustomMarker,
    );
  }

  Widget _buildControlPanel() {
    return Positioned(
      bottom: 16,
      left: 16,
      right: 16,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  _measuring ? Icons.stop : Icons.straighten,
                  color: _measuring ? Colors.red : null,
                ),
                onPressed: _toggleMeasuring,
                tooltip: 'Measure Fish',
              ),
              IconButton(
                icon: Icon(
                  _modeling ? Icons.stop : Icons.view_in_ar,
                  color: _modeling ? Colors.red : null,
                ),
                onPressed: _toggleModeling,
                tooltip: '3D Model',
              ),
              IconButton(
                icon: const Icon(Icons.camera),
                onPressed: _recognizeSpecies,
                tooltip: 'Recognize Species',
              ),
              IconButton(
                icon: const Icon(Icons.add_location),
                onPressed: () => _addCustomMarker(context),
                tooltip: 'Add Marker',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleAddAnchor(ARKitAnchor anchor) {
    if (_measuring) {
      _updateMeasurements(anchor);
    } else if (_modeling) {
      _modelingAnchors.add(anchor);
      setState(() {});
    }
  }

  void _handleUpdateAnchor(ARKitAnchor anchor) {
    if (_measuring) {
      _updateMeasurements(anchor);
    }
  }

  void _handleNodeTap(List<String> nodeNames) {
    // Handle taps on AR nodes
  }

  Future<void> _updateMeasurements(ARKitAnchor anchor) async {
    final measurements = await ref.read(arServiceProvider).measureMultipleFish(
          anchor,
        );
    setState(() {
      _measurements = measurements;
    });
  }

  void _toggleMeasuring() {
    setState(() {
      _measuring = !_measuring;
      _modeling = false;
    });
  }

  void _toggleModeling() {
    setState(() {
      _modeling = !_modeling;
      _measuring = false;
      if (!_modeling) {
        _modelingAnchors.clear();
      }
    });
  }

  Future<void> _captureMeasurement() async {
    if (_measurements == null) return;

    await ref.read(arServiceProvider).shareMeasurement(_measurements!.first);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Measurement shared successfully!')),
    );
  }

  Future<void> _shareMeasurement(FishMeasurement measurement) async {
    await ref.read(arServiceProvider).shareMeasurement(measurement);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Measurement shared successfully!')),
    );
  }

  Future<void> _captureModelingAngle() async {
    final anchor = await _arkitController.add3DObject();
    setState(() {
      _modelingAnchors.add(anchor);
    });
  }

  Future<void> _generate3DModel() async {
    if (_modelingAnchors.isEmpty) return;

    final modelUrl = await ref.read(arServiceProvider).generate3DModel(
          _modelingAnchors,
        );

    // Show preview of 3D model
    if (!mounted) return;
    await showDialog(
      context: context,
      builder: (context) => ModelPreviewDialog(modelUrl: modelUrl),
    );
  }

  Future<void> _recognizeSpecies() async {
    final anchor = await _arkitController.add3DObject();
    final species = await ref.read(arServiceProvider).recognizeSpecies(anchor);
    setState(() {
      _recognizedSpecies = species;
    });
  }

  Future<void> _addCustomMarker(BuildContext context) async {
    final position = await _arkitController.getCameraPosition();
    final result = await showDialog<MarkerData>(
      context: context,
      builder: (context) => const AddMarkerDialog(),
    );

    if (result != null) {
      final marker = await ref.read(arServiceProvider).createCustomMarker(
            position,
            result.label,
            result.type,
          );

      setState(() {
        _markers ??= [];
        _markers!.add(marker);
      });
    }
  }

  void _handleTutorialStep(int stepIndex) {
    // Update tutorial progress
  }

  void _handleMarkerTap(ARMarker marker) {
    showDialog(
      context: context,
      builder: (context) => MarkerDetailsDialog(marker: marker),
    );
  }
}

class ModelPreviewDialog extends StatelessWidget {
  final String modelUrl;

  const ModelPreviewDialog({
    super.key,
    required this.modelUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ModelViewer3D(url: modelUrl),
          ),
          OverflowBar(
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Share model
                  Navigator.pop(context);
                },
                child: const Text('Share'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddMarkerDialog extends StatefulWidget {
  const AddMarkerDialog({super.key});

  @override
  State<AddMarkerDialog> createState() => _AddMarkerDialogState();
}

class _AddMarkerDialogState extends State<AddMarkerDialog> {
  final _labelController = TextEditingController();
  MarkerType _type = MarkerType.custom;

  @override
  void dispose() {
    _labelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _labelController,
              decoration: const InputDecoration(
                labelText: 'Marker Label',
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<MarkerType>(
              value: _type,
              onChanged: (value) {
                setState(() {
                  _type = value!;
                });
              },
              items: MarkerType.values.map((type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(type.name),
                );
              }).toList(),
            ),
            OverflowBar(
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MarkerData(
                        label: _labelController.text,
                        type: _type,
                      ),
                    );
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MarkerDetailsDialog extends StatelessWidget {
  final ARMarker marker;

  const MarkerDetailsDialog({
    super.key,
    required this.marker,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              marker.label,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            if (marker.description != null) ...[
              const SizedBox(height: 8),
              Text(marker.description!),
            ],
            if (marker.tags != null) ...[
              const SizedBox(height: 8),
              Wrap(
                spacing: 4,
                children: marker.tags!.map((tag) {
                  return Chip(label: Text(tag));
                }).toList(),
              ),
            ],
            OverflowBar(
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Close'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MarkerData {
  final String label;
  final MarkerType type;

  MarkerData({
    required this.label,
    required this.type,
  });
}

class ModelViewer3D extends StatelessWidget {
  final String url;

  const ModelViewer3D({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    // Implement 3D model viewer
    return Container();
  }
}
