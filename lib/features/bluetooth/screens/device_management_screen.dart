import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/fishing_device.dart';
import '../services/bluetooth_service.dart';
import '../widgets/device_card.dart';
import '../widgets/device_settings_sheet.dart';
import '../widgets/connection_status_widget.dart';

final bluetoothServiceProvider = Provider<BluetoothService>((ref) {
  final notificationService = ref.watch(notificationServiceProvider);
  final storageService = ref.watch(storageServiceProvider);
  return BluetoothService(notificationService, storageService);
});

class DeviceManagementScreen extends ConsumerStatefulWidget {
  const DeviceManagementScreen({super.key});

  @override
  ConsumerState<DeviceManagementScreen> createState() =>
      _DeviceManagementScreenState();
}

class _DeviceManagementScreenState
    extends ConsumerState<DeviceManagementScreen> {
  bool _isScanning = false;

  @override
  void initState() {
    super.initState();
    _initializeBluetoothService();
  }

  Future<void> _initializeBluetoothService() async {
    final bluetoothService = ref.read(bluetoothServiceProvider);
    await bluetoothService.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () => _showHelpDialog(context),
          ),
        ],
      ),
      body: Column(
        children: [
          const ConnectionStatusWidget(),
          Expanded(
            child: StreamBuilder<List<FishingDevice>>(
              stream: ref.watch(bluetoothServiceProvider).connectedDevices,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final devices = snapshot.data!;
                if (devices.isEmpty && !_isScanning) {
                  return _buildEmptyState();
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    setState(() => _isScanning = true);
                    await Future.delayed(const Duration(seconds: 10));
                    setState(() => _isScanning = false);
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: devices.length + (_isScanning ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == devices.length) {
                        return const Card(
                          child: ListTile(
                            leading: CircularProgressIndicator(),
                            title: Text('Scanning for devices...'),
                          ),
                        );
                      }

                      final device = devices[index];
                      return DeviceCard(
                        device: device,
                        onTap: () => _showDeviceDetails(device),
                        onSettingsTap: () => _showDeviceSettings(device),
                        onDisconnect: () => _disconnectDevice(device),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _isScanning ? null : _startScanning,
        child: Icon(_isScanning ? Icons.hourglass_empty : Icons.add),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.bluetooth_searching,
            size: 64,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 16),
          Text(
            'No devices connected',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Tap the + button to connect a device',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Future<void> _startScanning() async {
    setState(() => _isScanning = true);

    // Start scanning logic here
    final bluetoothService = ref.read(bluetoothServiceProvider);
    await bluetoothService.initialize();

    // Stop scanning after 10 seconds
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) {
        setState(() => _isScanning = false);
      }
    });
  }

  void _showDeviceDetails(FishingDevice device) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DeviceDetailsScreen(device: device),
      ),
    );
  }

  void _showDeviceSettings(FishingDevice device) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DeviceSettingsSheet(device: device),
    );
  }

  Future<void> _disconnectDevice(FishingDevice device) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Disconnect Device'),
        content: Text('Are you sure you want to disconnect ${device.name}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('CANCEL'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('DISCONNECT'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await ref.read(bluetoothServiceProvider).disconnectDevice(device.id);
    }
  }

  void _showHelpDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Device Management Help'),
        content: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Connecting Devices',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Tap the + button to scan for nearby devices\n'
                '2. Select your device from the list\n'
                '3. Follow the pairing instructions',
              ),
              SizedBox(height: 16),
              Text(
                'Device Settings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '• Tap the settings icon on a device card\n'
                '• Customize alerts, sensitivity, and other options\n'
                '• Changes are saved automatically',
              ),
              SizedBox(height: 16),
              Text(
                'Troubleshooting',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '• Ensure Bluetooth is enabled\n'
                '• Keep devices within range (usually 10m)\n'
                '• Check device battery levels\n'
                '• Try disconnecting and reconnecting',
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CLOSE'),
          ),
        ],
      ),
    );
  }
}
