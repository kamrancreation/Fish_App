import 'dart:async';
import 'dart:typed_data';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:logging/logging.dart';

class BluetoothService {
  static final BluetoothService _instance = BluetoothService._internal();
  factory BluetoothService() => _instance;
  BluetoothService._internal() {
    _logger = Logger('BluetoothService');
  }

  final FlutterBluetoothSerial _bluetooth = FlutterBluetoothSerial.instance;
  final StreamController<BluetoothDevice> _deviceController = StreamController<BluetoothDevice>.broadcast();
  final StreamController<String> _dataController = StreamController<String>.broadcast();
  final StreamController<bool> _connectionStateController = StreamController<bool>.broadcast();
  late final Logger _logger;
  
  BluetoothConnection? _connection;
  bool _isConnected = false;
  bool _isScanning = false;
  StreamSubscription? _scanSubscription;
  Timer? _heartbeatTimer;

  static const int _connectionTimeout = 10; // seconds
  static const int _maxRetries = 3;
  static const Duration _heartbeatInterval = Duration(seconds: 5);
  static const int _maxBufferSize = 1024; // bytes
  static const Duration _writeTimeout = Duration(seconds: 5);
  static const Duration _scanTimeout = Duration(seconds: 30);
  int _connectionAttempts = 0;
  final List<int> _buffer = {};
  final Set<String> _discoveredAddresses = {};

  Stream<BluetoothDevice> get deviceStream => _deviceController.stream;
  Stream<String> get dataStream => _dataController.stream;
  Stream<bool> get connectionStateStream => _connectionStateController.stream;
  bool get isConnected => _isConnected;
  bool get isScanning => _isScanning;

  Future<bool> initialize() async {
    try {
      bool? isEnabled = await _bluetooth.isEnabled;
      if (isEnabled == false) {
        await _bluetooth.requestEnable();
      }
      return true;
    } catch (e) {
      _logger.severe('Error initializing Bluetooth', e);
      return false;
    }
  }

  Future<void> startScanning() async {
    if (_isScanning) {
      _logger.info('Scan already in progress');
      return;
    }

    try {
      bool? isEnabled = await _bluetooth.isEnabled;
      if (isEnabled != true) {
        _logger.warning('Bluetooth is not enabled');
        throw Exception('Bluetooth is not enabled');
      }

      _isScanning = true;
      _discoveredAddresses.clear();

      // Set up scan timeout
      Future.delayed(_scanTimeout).then((_) {
        if (_isScanning) {
          _logger.info('Scan timeout reached');
          stopScanning();
        }
      });

      _scanSubscription = _bluetooth.startDiscovery().listen(
        (device) {
          if (device.device.name == null) {
            return; // Skip devices with missing information
          }

          // Avoid duplicate devices
          if (!_discoveredAddresses.contains(device.device.address)) {
            _discoveredAddresses.add(device.device.address);
            _deviceController.add(device.device);
            _logger.fine('Discovered device: ${device.device.name}');
          }
        },
        onDone: () {
          _logger.info('Scan completed');
          _isScanning = false;
        },
        onError: (error) {
          _logger.warning('Error scanning for devices', error);
          _isScanning = false;
        },
        cancelOnError: true,
      );
    } catch (e) {
      _logger.severe('Error starting device scan', e);
      _isScanning = false;
      rethrow;
    }
  }

  Future<void> stopScanning() async {
    if (!_isScanning) return;
    
    try {
      await _scanSubscription?.cancel();
      _scanSubscription = null;
      await _bluetooth.cancelDiscovery();
      _isScanning = false;
    } catch (e) {
      _logger.warning('Error stopping device scan', e);
    }
  }

  Future<bool> connect(BluetoothDevice device) async {
    if (_isConnected) {
      await disconnect();
    }

    _connectionAttempts++;
    try {
      _connection = await BluetoothConnection.toAddress(device.address)
          .timeout(const Duration(seconds: _connectionTimeout), onTimeout: () {
        throw TimeoutException('Connection attempt timed out');
      });
      
      _isConnected = true;
      _connectionStateController.add(true);
      _startHeartbeat();
      _connectionAttempts = 0;

      _connection!.input?.listen(
        (data) {
          _handleIncomingData(data);
        },
        onDone: () {
          disconnect();
        },
        onError: (error) {
          _logger.warning('Error receiving data', error);
          disconnect();
        },
      );

      return true;
    } catch (e) {
      _logger.severe('Error connecting to device', e);
      if (_connectionAttempts < _maxRetries) {
        _logger.info('Retrying connection (Attempt $_connectionAttempts of $_maxRetries)');
        return connect(device);
      }
      _connectionAttempts = 0;
      return false;
    }
  }

  void _startHeartbeat() {
    _heartbeatTimer?.cancel();
    _heartbeatTimer = Timer.periodic(_heartbeatInterval, (timer) async {
      if (!_isConnected || _connection == null) {
        timer.cancel();
        return;
      }

      try {
        final success = await sendData('ping');
        if (!success) {
          _logger.warning('Heartbeat failed');
          await disconnect();
        }
      } catch (e) {
        _logger.warning('Error during heartbeat', e);
        await disconnect();
      }
    });
  }

  Future<void> disconnect() async {
    _isConnected = false;
    _connectionStateController.add(false);
    _heartbeatTimer?.cancel();
    await _connection?.close();
    _connection = null;
  }

  Future<bool> sendData(String data) async {
    if (!_isConnected || _connection == null) {
      _logger.warning('Cannot send data: not connected');
      return false;
    }

    try {
      final List<int> bytes = Uint8List.fromList(data.codeUnits);
      
      // Check buffer size
      if (_buffer.length + bytes.length > _maxBufferSize) {
        _logger.warning('Buffer overflow, clearing buffer');
        _buffer.clear();
      }

      _buffer.addAll(bytes);

      // Send data with timeout
      await Future.any([
        _connection!.output.add(Uint8List.fromList(_buffer)),
        Future.delayed(_writeTimeout)
            .then((_) => throw TimeoutException('Write operation timed out')),
      ]);

      await _connection!.output.allSent;
      _buffer.clear();
      return true;
    } on TimeoutException catch (e) {
      _logger.severe('Timeout sending data', e);
      await disconnect();
      return false;
    } catch (e) {
      _logger.severe('Error sending data', e);
      _buffer.clear();
      return false;
    }
  }

  void _handleIncomingData(Uint8List data) {
    try {
      final String message = String.fromCharCodes(data);
      if (message != 'ping') { // Ignore heartbeat messages
        _dataController.add(message);
      }
    } catch (e) {
      _logger.warning('Error processing incoming data', e);
    }
  }

  Future<void> dispose() async {
    await stopScanning();
    await disconnect();
    _heartbeatTimer?.cancel();
    await _deviceController.close();
    await _dataController.close();
    await _connectionStateController.close();
  }

  Future<List<BluetoothDevice>> getPairedDevices() async {
    bool? isEnabled = await _bluetooth.isEnabled;
    if (isEnabled != true) {
      _logger.info('Bluetooth is not enabled');
      return [];
    }

    try {
      final bondedDevices = await _bluetooth.getBondedDevices();
      return bondedDevices.map((device) => device).toList();
    } catch (e) {
      _logger.severe('Error getting paired devices', e);
      return [];
    }
  }

  Future<bool> pair(BluetoothDevice device) async {
    try {
      return await _bluetooth.bondDeviceAtAddress(device.address) ?? false;
    } catch (e) {
      _logger.severe('Error pairing device', e);
      return false;
    }
  }

  Future<bool> unpair(BluetoothDevice device) async {
    try {
      return await _bluetooth.removeDeviceBondWithAddress(device.address) ?? false;
    } catch (e) {
      _logger.severe('Error unpairing device', e);
      return false;
    }
  }
}
