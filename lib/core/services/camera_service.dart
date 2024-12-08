import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:vector_math/vector_math_64.dart';

class CameraService {
  ARSessionManager? _arSessionManager;
  ARObjectManager? _arObjectManager;
  ARAnchorManager? _arAnchorManager;
  bool _isInitialized = false;

  Future<void> initialize(BuildContext context) async {
    if (_isInitialized) return;

    try {
      _arSessionManager = ARSessionManager(
        context: context,
        onInitialize: _onARViewCreated,
        planeDetectionConfig: PlaneDetectionConfig.horizontalAndVertical,
      );
      
      _arObjectManager = ARObjectManager(
        sessionManager: _arSessionManager!,
      );
      
      _arAnchorManager = ARAnchorManager(
        sessionManager: _arSessionManager!,
      );

      _isInitialized = true;
    } catch (e) {
      debugPrint('Failed to initialize AR: $e');
      rethrow;
    }
  }

  void _onARViewCreated(ARSessionManager sessionManager) {
    _arSessionManager = sessionManager;
  }

  Future<void> dispose() async {
    try {
      await _arSessionManager?.dispose();
      _arSessionManager = null;
      _arObjectManager = null;
      _arAnchorManager = null;
      _isInitialized = false;
    } catch (e) {
      debugPrint('Error disposing AR session: $e');
    }
  }

  Future<void> pauseAR() async {
    try {
      await _arSessionManager?.pause();
    } catch (e) {
      debugPrint('Error pausing AR session: $e');
    }
  }

  Future<void> resumeAR() async {
    try {
      await _arSessionManager?.resume();
    } catch (e) {
      debugPrint('Error resuming AR session: $e');
    }
  }

  Future<void> addARNode({
    required String modelPath,
    required Vector3 position,
    required Vector3 scale,
  }) async {
    try {
      if (!_isInitialized) {
        throw Exception('AR not initialized');
      }

      final node = ARNode(
        type: NodeType.localGLTF2,
        uri: modelPath,
        position: position,
        scale: scale,
      );

      await _arObjectManager?.addNode(node);
    } catch (e) {
      debugPrint('Error adding AR node: $e');
      rethrow;
    }
  }

  Future<void> removeARNode(ARNode node) async {
    try {
      await _arObjectManager?.removeNode(node);
    } catch (e) {
      debugPrint('Error removing AR node: $e');
    }
  }
}
