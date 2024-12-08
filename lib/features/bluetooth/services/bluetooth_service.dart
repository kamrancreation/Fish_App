import 'dart:async';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import '../models/fishing_device.dart';
import '../models/device_reading.dart';
import '../../core/services/notification_service.dart';
import '../../core/services/storage_service.dart';
import '../../../features/catch/services/catch_device_service.dart';

class BluetoothService {
  final FlutterBluePlus _flutterBlue = FlutterBluePlus.instance;
  final NotificationService _notificationService;
  final StorageService _storageService;
  final CatchDeviceService _catchDeviceService;
  
  // Device streams
  final _connectedDevicesController = StreamController<List<FishingDevice>>.broadcast();
  final _deviceReadingsController = StreamController<DeviceReading>.broadcast();
  final _batteryLevelsController = StreamController<Map<String, int>>.broadcast();
  final _signalStrengthController = StreamController<Map<String, int>>.broadcast();

  // Connected devices cache
  final Map<String, BluetoothDevice> _connectedDevices = {};
  final Map<String, StreamSubscription> _deviceSubscriptions = {};
  
  BluetoothService(this._notificationService, this._storageService, this._catchDeviceService);

  Stream<List<FishingDevice>> get connectedDevices => _connectedDevicesController.stream;
  Stream<DeviceReading> get deviceReadings => _deviceReadingsController.stream;
  Stream<Map<String, int>> get batteryLevels => _batteryLevelsController.stream;
  Stream<Map<String, int>> get signalStrength => _signalStrengthController.stream;

  Future<void> initialize() async {
    // Start scanning for devices periodically
    Timer.periodic(const Duration(seconds: 30), (_) => _scanForDevices());
    
    // Restore previously connected devices
    final savedDevices = await _storageService.getConnectedDevices();
    for (var device in savedDevices) {
      connectToDevice(device.id);
    }
  }

  Future<void> _scanForDevices() async {
    if (await _flutterBlue.isOn) {
      await _flutterBlue.startScan(
        timeout: const Duration(seconds: 10),
        withServices: [
          // Known service UUIDs for fishing devices
          Guid("0000180F-0000-1000-8000-00805F9B34FB"), // Battery Service
          Guid("0000181A-0000-1000-8000-00805F9B34FB"), // Environmental Sensing
          Guid("00002A98-0000-1000-8000-00805F9B34FB"), // Weight Scale
          Guid("00002A99-0000-1000-8000-00805F9B34FB"), // Bite Alarm
          // Add other known service UUIDs
        ],
      );

      _flutterBlue.scanResults.listen((results) {
        for (ScanResult result in results) {
          _processDiscoveredDevice(result);
        }
      });
    }
  }

  Future<void> _processDiscoveredDevice(ScanResult result) async {
    final device = result.device;
    final knownDevice = await _storageService.getDeviceById(device.id.toString());
    
    if (knownDevice != null && !_connectedDevices.containsKey(device.id.toString())) {
      await connectToDevice(device.id.toString());
    }
  }

  Future<void> connectToDevice(String deviceId) async {
    try {
      final device = _connectedDevices[deviceId];
      if (device == null) return;

      await device.connect(
        timeout: const Duration(seconds: 10),
        autoConnect: true,
      );

      // Discover services
      final services = await device.discoverServices();
      _setupDeviceSubscriptions(device, services);
      
      // Update connected devices list
      _connectedDevices[deviceId] = device;
      _updateConnectedDevicesList();
      
      // Save device to storage
      await _storageService.saveConnectedDevice(FishingDevice(
        id: deviceId,
        name: device.name,
        type: _determineDeviceType(services),
        lastConnected: DateTime.now(),
      ));

    } catch (e) {
      _notificationService.showError('Failed to connect to device: $e');
    }
  }

  DeviceType _determineDeviceType(List<BluetoothService> services) {
    // Determine device type based on available services and characteristics
    // This would need to be customized based on your specific device profiles
    return DeviceType.unknown;
  }

  void _setupDeviceSubscriptions(
    BluetoothDevice device,
    List<BluetoothService> services,
  ) {
    // Cancel existing subscriptions
    _deviceSubscriptions[device.id.toString()]?.cancel();

    for (var service in services) {
      for (var characteristic in service.characteristics) {
        if (characteristic.properties.notify || characteristic.properties.indicate) {
          // Subscribe to characteristic notifications
          characteristic.value.listen((value) {
            _processCharacteristicUpdate(
              device,
              service.uuid,
              characteristic.uuid,
              value,
            );
          });

          // Enable notifications
          characteristic.setNotifyValue(true);
        }
      }
    }

    // Monitor connection status
    _deviceSubscriptions[device.id.toString()] = device.state.listen((state) {
      if (state == BluetoothDeviceState.disconnected) {
        _handleDeviceDisconnection(device);
      }
    });
  }

  void _processCharacteristicUpdate(
    BluetoothDevice device,
    Guid serviceUuid,
    Guid characteristicUuid,
    List<int> value,
  ) {
    final reading = _parseCharacteristicValue(
      device.id.toString(),
      serviceUuid,
      characteristicUuid,
      value,
    );

    if (reading != null) {
      _deviceReadingsController.add(reading);
      _checkAlertConditions(reading);
      _processCatchData(reading);
    }

    // Update battery level if applicable
    if (serviceUuid.toString() == "0000180F-0000-1000-8000-00805F9B34FB") {
      final batteryLevel = value[0];
      final levels = Map<String, int>.from(_batteryLevelsController.value ?? {});
      levels[device.id.toString()] = batteryLevel;
      _batteryLevelsController.add(levels);
    }

    // Update signal strength
    device.readRssi().then((rssi) {
      final strengths = Map<String, int>.from(_signalStrengthController.value ?? {});
      strengths[device.id.toString()] = rssi;
      _signalStrengthController.add(strengths);
    });
  }

  Future<void> _processCatchData(DeviceReading reading) async {
    switch (reading.type) {
      case ReadingType.bite:
        if (reading is BiteReading) {
          await _catchDeviceService.processBiteAlarm(reading);
        }
        break;
      case ReadingType.weight:
        if (reading is WeightReading) {
          await _catchDeviceService.processWeightReading(reading);
        }
        break;
      default:
        break;
    }
  }

  DeviceReading? _parseCharacteristicValue(
    String deviceId,
    Guid serviceUuid,
    Guid characteristicUuid,
    List<int> value,
  ) {
    try {
      switch (serviceUuid.toString()) {
        case "0000181A-0000-1000-8000-00805F9B34FB": // Environmental Sensing
          return DeviceReading(
            deviceId: deviceId,
            type: ReadingType.environmental,
            value: value[0].toDouble(),
            timestamp: DateTime.now(),
          );
        
        case "00002A98-0000-1000-8000-00805F9B34FB": // Weight Scale
          return WeightReading(
            deviceId: deviceId,
            timestamp: DateTime.now(),
            weight: _parseWeight(value),
            unit: _parseUnit(value),
            isStable: _parseStability(value),
            temperature: _parseTemperature(value),
          );

        case "00002A99-0000-1000-8000-00805F9B34FB": // Bite Alarm
          return BiteReading(
            deviceId: deviceId,
            timestamp: DateTime.now(),
            intensity: _parseIntensity(value),
            duration: _parseDuration(value),
            isRun: _parseIsRun(value),
            direction: _parseDirection(value),
          );

        default:
          return null;
      }
    } catch (e) {
      print('Error parsing characteristic value: $e');
      return null;
    }
  }

  double _parseWeight(List<int> value) {
    // Implementation depends on your device's data format
    final rawValue = (value[1] << 8) | value[0];
    return rawValue / 100.0; // Assuming weight is sent in centigrams
  }

  String _parseUnit(List<int> value) {
    // Implementation depends on your device's data format
    return value[2] == 0 ? 'kg' : 'lbs';
  }

  bool _parseStability(List<int> value) {
    // Implementation depends on your device's data format
    return value[3] & 0x01 == 1;
  }

  double _parseTemperature(List<int> value) {
    // Implementation depends on your device's data format
    final rawTemp = (value[5] << 8) | value[4];
    return rawTemp / 10.0; // Assuming temperature is sent in deciCelsius
  }

  double _parseIntensity(List<int> value) {
    // Implementation depends on your device's data format
    return value[0].toDouble();
  }

  Duration _parseDuration(List<int> value) {
    // Implementation depends on your device's data format
    final milliseconds = (value[2] << 8) | value[1];
    return Duration(milliseconds: milliseconds);
  }

  bool _parseIsRun(List<int> value) {
    // Implementation depends on your device's data format
    return value[3] & 0x01 == 1;
  }

  String? _parseDirection(List<int> value) {
    // Implementation depends on your device's data format
    switch (value[4]) {
      case 0:
        return 'left';
      case 1:
        return 'right';
      default:
        return null;
    }
  }

  void _checkAlertConditions(DeviceReading reading) {
    // Check for alert conditions based on the reading
    // This would need to be customized based on your specific alert requirements
    switch (reading.type) {
      case ReadingType.bite:
        _notificationService.showBiteAlert(reading.deviceId);
        break;
      case ReadingType.battery:
        if (reading.value < 20) {
          _notificationService.showLowBatteryAlert(reading.deviceId);
        }
        break;
      // Add other alert conditions
    }
  }

  Future<void> _handleDeviceDisconnection(BluetoothDevice device) async {
    _connectedDevices.remove(device.id.toString());
    _deviceSubscriptions[device.id.toString()]?.cancel();
    _deviceSubscriptions.remove(device.id.toString());
    _updateConnectedDevicesList();

    // Attempt to reconnect
    Timer(const Duration(seconds: 5), () => connectToDevice(device.id.toString()));
  }

  void _updateConnectedDevicesList() {
    final devices = _connectedDevices.values
        .map((device) => FishingDevice(
              id: device.id.toString(),
              name: device.name,
              type: DeviceType.unknown, // Update with actual type
              lastConnected: DateTime.now(),
            ))
        .toList();
    _connectedDevicesController.add(devices);
  }

  Future<void> disconnectDevice(String deviceId) async {
    final device = _connectedDevices[deviceId];
    if (device != null) {
      await device.disconnect();
      _handleDeviceDisconnection(device);
      await _storageService.removeConnectedDevice(deviceId);
    }
  }

  Future<void> dispose() async {
    for (var subscription in _deviceSubscriptions.values) {
      await subscription.cancel();
    }
    await _connectedDevicesController.close();
    await _deviceReadingsController.close();
    await _batteryLevelsController.close();
    await _signalStrengthController.close();
  }
}
