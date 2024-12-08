import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkService {
  final Connectivity _connectivity = Connectivity();
  StreamController<bool> connectionStatusController = StreamController<bool>.broadcast();

  NetworkService() {
    _initConnectivity();
    _setupConnectivityStream();
  }

  Future<void> _initConnectivity() async {
    try {
      final result = await _connectivity.checkConnectivity();
      _updateConnectionStatus(result != ConnectivityResult.none);
    } catch (e) {
      _updateConnectionStatus(false);
    }
  }

  void _setupConnectivityStream() {
    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      _updateConnectionStatus(result != ConnectivityResult.none);
    });
  }

  void _updateConnectionStatus(bool isConnected) {
    connectionStatusController.add(isConnected);
  }

  Future<bool> isConnected() async {
    final result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  void dispose() {
    connectionStatusController.close();
  }
}
