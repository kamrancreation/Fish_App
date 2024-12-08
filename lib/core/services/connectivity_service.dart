import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import '../error/app_error.dart';

enum NetworkStatus { online, offline }

class ConnectivityService extends ChangeNotifier {
  final Connectivity _connectivity;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  NetworkStatus _status = NetworkStatus.online;

  ConnectivityService({Connectivity? connectivity})
      : _connectivity = connectivity ?? Connectivity() {
    _initConnectivity();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  NetworkStatus get status => _status;
  bool get isOnline => _status == NetworkStatus.online;

  Future<void> _initConnectivity() async {
    try {
      final result = await _connectivity.checkConnectivity();
      _updateConnectionStatus(result);
    } catch (e) {
      throw AppError(
        code: 'connectivity-init-failed',
        message: 'Failed to initialize connectivity: ${e.toString()}',
      );
    }
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.none:
        _status = NetworkStatus.offline;
        break;
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.vpn:
        _status = NetworkStatus.online;
        break;
      default:
        _status = NetworkStatus.offline;
    }
    notifyListeners();
  }

  Future<bool> checkConnectivity() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result != ConnectivityResult.none;
    } catch (e) {
      throw AppError(
        code: 'connectivity-check-failed',
        message: 'Failed to check connectivity: ${e.toString()}',
      );
    }
  }

  Future<ConnectivityResult> getConnectionType() async {
    try {
      return await _connectivity.checkConnectivity();
    } catch (e) {
      throw AppError(
        code: 'connectivity-type-failed',
        message: 'Failed to get connection type: ${e.toString()}',
      );
    }
  }

  String getConnectionTypeName(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        return 'WiFi';
      case ConnectivityResult.mobile:
        return 'Mobile Data';
      case ConnectivityResult.ethernet:
        return 'Ethernet';
      case ConnectivityResult.vpn:
        return 'VPN';
      case ConnectivityResult.bluetooth:
        return 'Bluetooth';
      case ConnectivityResult.none:
        return 'No Connection';
      default:
        return 'Unknown';
    }
  }

  Future<bool> hasInternetConnection() async {
    try {
      final result = await checkConnectivity();
      if (!result) return false;

      // Additional check can be added here if needed
      // For example, trying to reach a specific endpoint
      return true;
    } catch (e) {
      throw AppError(
        code: 'internet-check-failed',
        message: 'Failed to check internet connection: ${e.toString()}',
      );
    }
  }

  @override
  void addListener(VoidCallback listener) {
    super.addListener(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    super.removeListener(listener);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }
}
