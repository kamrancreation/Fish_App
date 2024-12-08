import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import '../../../core/services/bluetooth_service.dart';

class BluetoothScreen extends StatefulWidget {
  const BluetoothScreen({super.key});

  @override
  State<BluetoothScreen> createState() => _BluetoothScreenState();
}

class _BluetoothScreenState extends State<BluetoothScreen> {
  final BluetoothService _bluetoothService = BluetoothService();
  List<BluetoothDevice> _pairedDevices = [];
  final List<BluetoothDevice> _discoveredDevices = [];
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeBluetooth();
  }

  Future<void> _initializeBluetooth() async {
    final initialized = await _bluetoothService.initialize();
    if (initialized) {
      setState(() {
        _isInitialized = true;
      });
      _loadPairedDevices();
      _listenForDevices();
    }
  }

  Future<void> _loadPairedDevices() async {
    final devices = await _bluetoothService.getPairedDevices();
    setState(() {
      _pairedDevices = devices;
    });
  }

  void _listenForDevices() {
    _bluetoothService.deviceStream.listen((device) {
      if (!_discoveredDevices.contains(device) &&
          !_pairedDevices.contains(device)) {
        setState(() {
          _discoveredDevices.add(device);
        });
      }
    });
  }

  Future<void> _startScanning() async {
    setState(() {
      _discoveredDevices.clear();
    });
    await _bluetoothService.startScanning();
  }

  Future<void> _stopScanning() async {
    await _bluetoothService.stopScanning();
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
        title: const Text('Bluetooth Devices'),
        actions: [
          if (_bluetoothService.isScanning)
            IconButton(
              icon: const Icon(Icons.stop),
              onPressed: _stopScanning,
            )
          else
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _startScanning,
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPairedDevices(),
            const SizedBox(height: 24),
            _buildDiscoveredDevices(),
          ],
        ),
      ),
    );
  }

  Widget _buildPairedDevices() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Paired Devices',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        if (_pairedDevices.isEmpty)
          const Text('No paired devices')
        else
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _pairedDevices.length,
            itemBuilder: (context, index) {
              final device = _pairedDevices[index];
              return _buildDeviceCard(
                device,
                isPaired: true,
              );
            },
          ),
      ],
    );
  }

  Widget _buildDiscoveredDevices() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Available Devices',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            if (_bluetoothService.isScanning)
              const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        if (_discoveredDevices.isEmpty)
          const Text('No devices found')
        else
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _discoveredDevices.length,
            itemBuilder: (context, index) {
              final device = _discoveredDevices[index];
              return _buildDeviceCard(
                device,
                isPaired: false,
              );
            },
          ),
      ],
    );
  }

  Widget _buildDeviceCard(BluetoothDevice device, {required bool isPaired}) {
    return Card(
      child: ListTile(
        leading: Icon(
          isPaired ? Icons.bluetooth_connected : Icons.bluetooth,
          color: isPaired ? Colors.blue : Colors.grey,
        ),
        title: Text(device.name ?? 'Unknown Device'),
        subtitle: Text(device.address),
        trailing: _buildDeviceActions(device, isPaired),
        onTap: () => _connectToDevice(device),
      ),
    );
  }

  Widget _buildDeviceActions(BluetoothDevice device, bool isPaired) {
    if (_bluetoothService.isConnected) {
      return TextButton(
        onPressed: () => _bluetoothService.disconnect(),
        child: const Text('Disconnect'),
      );
    }

    if (isPaired) {
      return TextButton(
        onPressed: () => _unpairDevice(device),
        child: const Text('Unpair'),
      );
    }

    return TextButton(
      onPressed: () => _pairDevice(device),
      child: const Text('Pair'),
    );
  }

  Future<void> _connectToDevice(BluetoothDevice device) async {
    try {
      final connected = await _bluetoothService.connect(device);
      if (connected) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Connected to ${device.name}'),
          ),
        );
        // Navigate to device control screen
        // TODO: Implement device control screen
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to connect to ${device.name}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _pairDevice(BluetoothDevice device) async {
    try {
      final paired = await _bluetoothService.pair(device);
      if (paired) {
        await _loadPairedDevices();
        setState(() {
          _discoveredDevices.remove(device);
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to pair with ${device.name}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _unpairDevice(BluetoothDevice device) async {
    try {
      final unpaired = await _bluetoothService.unpair(device);
      if (unpaired) {
        await _loadPairedDevices();
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to unpair ${device.name}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    _bluetoothService.dispose();
    super.dispose();
  }
}
