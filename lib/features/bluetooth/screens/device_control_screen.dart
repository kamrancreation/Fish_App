import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import '../../../core/services/bluetooth_service.dart';

class DeviceControlScreen extends StatefulWidget {
  final BluetoothDevice device;

  const DeviceControlScreen({
    super.key,
    required this.device,
  });

  @override
  State<DeviceControlScreen> createState() => _DeviceControlScreenState();
}

class _DeviceControlScreenState extends State<DeviceControlScreen> {
  final BluetoothService _bluetoothService = BluetoothService();
  final List<String> _receivedData = [];
  bool _isAlarmEnabled = false;
  double _sensitivity = 5.0;
  String _batteryLevel = 'Unknown';

  @override
  void initState() {
    super.initState();
    _setupDataListener();
    _requestDeviceStatus();
  }

  void _setupDataListener() {
    _bluetoothService.dataStream.listen(
      (data) {
        _handleReceivedData(data);
      },
      onError: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error receiving data: $error'),
            backgroundColor: Colors.red,
          ),
        );
      },
    );
  }

  void _handleReceivedData(String data) {
    final parts = data.split(':');
    if (parts.length != 2) return;

    final command = parts[0];
    final value = parts[1];

    setState(() {
      switch (command) {
        case 'BATTERY':
          _batteryLevel = '$value%';
          break;
        case 'ALARM':
          _isAlarmEnabled = value == '1';
          break;
        case 'SENSITIVITY':
          _sensitivity = double.tryParse(value) ?? _sensitivity;
          break;
        case 'BITE':
          _receivedData.insert(0, 'Bite detected! Strength: $value');
          break;
        default:
          _receivedData.insert(0, data);
      }
    });
  }

  Future<void> _requestDeviceStatus() async {
    await _bluetoothService.sendData('STATUS:REQUEST');
  }

  Future<void> _toggleAlarm(bool value) async {
    final command = value ? 'ALARM:1' : 'ALARM:0';
    final success = await _bluetoothService.sendData(command);
    if (success) {
      setState(() {
        _isAlarmEnabled = value;
      });
    }
  }

  Future<void> _updateSensitivity(double value) async {
    final command = 'SENSITIVITY:${value.toStringAsFixed(1)}';
    final success = await _bluetoothService.sendData(command);
    if (success) {
      setState(() {
        _sensitivity = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.device.name ?? 'Device Control'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _requestDeviceStatus,
          ),
        ],
      ),
      body: Column(
        children: [
          _buildDeviceStatus(),
          _buildControls(),
          _buildDataLog(),
        ],
      ),
    );
  }

  Widget _buildDeviceStatus() {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Device Status',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Battery Level: $_batteryLevel'),
                    Text(
                        'Connection: ${_bluetoothService.isConnected ? 'Connected' : 'Disconnected'}'),
                    const Text(
                        'Signal Strength: Good'), // TODO: Implement signal strength
                  ],
                ),
                Icon(
                  Icons.battery_full,
                  color: _getBatteryColor(),
                  size: 48,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildControls() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Controls',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              title: const Text('Bite Alarm'),
              subtitle: const Text('Enable/disable bite detection'),
              value: _isAlarmEnabled,
              onChanged: _toggleAlarm,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text('Sensitivity'),
                Expanded(
                  child: Slider(
                    value: _sensitivity,
                    min: 1,
                    max: 10,
                    divisions: 9,
                    label: _sensitivity.toStringAsFixed(1),
                    onChanged: (value) {
                      setState(() {
                        _sensitivity = value;
                      });
                    },
                    onChangeEnd: _updateSensitivity,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDataLog() {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Activity Log',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _receivedData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    dense: true,
                    title: Text(_receivedData[index]),
                    leading: const Icon(Icons.notifications),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getBatteryColor() {
    final level = int.tryParse(_batteryLevel.replaceAll('%', '')) ?? 0;
    if (level > 60) return Colors.green;
    if (level > 20) return Colors.orange;
    return Colors.red;
  }

  @override
  void dispose() {
    _bluetoothService.disconnect();
    super.dispose();
  }
}
