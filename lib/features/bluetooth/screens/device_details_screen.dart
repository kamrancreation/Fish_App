import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/fishing_device.dart';
import '../models/device_reading.dart';
import '../widgets/reading_chart.dart';
import '../widgets/battery_indicator.dart';
import '../widgets/signal_strength_indicator.dart';

class DeviceDetailsScreen extends ConsumerStatefulWidget {
  final FishingDevice device;

  const DeviceDetailsScreen({
    super.key,
    required this.device,
  });

  @override
  ConsumerState<DeviceDetailsScreen> createState() =>
      _DeviceDetailsScreenState();
}

class _DeviceDetailsScreenState extends ConsumerState<DeviceDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<DeviceReading> _readings = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _setupDeviceSubscription();
  }

  void _setupDeviceSubscription() {
    ref.read(bluetoothServiceProvider).deviceReadings.listen((reading) {
      if (reading.deviceId == widget.device.id) {
        setState(() {
          _readings.add(reading);
          if (_readings.length > 1000) {
            _readings.removeAt(0);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.device.name),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Overview'),
            Tab(text: 'History'),
            Tab(text: 'Diagnostics'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: _showSettings,
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildOverviewTab(),
          _buildHistoryTab(),
          _buildDiagnosticsTab(),
        ],
      ),
    );
  }

  Widget _buildOverviewTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStatusCard(),
          const SizedBox(height: 16),
          _buildLatestReadingsCard(),
          const SizedBox(height: 16),
          _buildQuickActionsCard(),
        ],
      ),
    );
  }

  Widget _buildStatusCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Device Status',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BatteryIndicator(deviceId: widget.device.id),
                SignalStrengthIndicator(deviceId: widget.device.id),
                Column(
                  children: [
                    const Icon(Icons.update),
                    Text(
                      'Firmware',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      widget.device.firmwareVersion ?? 'Unknown',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLatestReadingsCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Readings',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: ReadingChart(
                readings: _readings,
                timeWindow: const Duration(minutes: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActionsCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quick Actions',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ActionChip(
                  avatar: const Icon(Icons.refresh),
                  label: const Text('Calibrate'),
                  onPressed: _calibrateDevice,
                ),
                ActionChip(
                  avatar: const Icon(Icons.notifications),
                  label: const Text('Test Alert'),
                  onPressed: _testAlert,
                ),
                ActionChip(
                  avatar: const Icon(Icons.home),
                  label: const Text('Return Home'),
                  onPressed: _returnHome,
                ),
                ActionChip(
                  avatar: const Icon(Icons.battery_alert),
                  label: const Text('Power Save'),
                  onPressed: _togglePowerSave,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryTab() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text('Time Range: '),
              DropdownButton<Duration>(
                value: const Duration(hours: 24),
                items: const [
                  DropdownMenuItem(
                    value: Duration(hours: 1),
                    child: Text('Last Hour'),
                  ),
                  DropdownMenuItem(
                    value: Duration(hours: 24),
                    child: Text('24 Hours'),
                  ),
                  DropdownMenuItem(
                    value: Duration(days: 7),
                    child: Text('7 Days'),
                  ),
                  DropdownMenuItem(
                    value: Duration(days: 30),
                    child: Text('30 Days'),
                  ),
                ],
                onChanged: (value) {
                  // Update time range
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: _readings.length,
            itemBuilder: (context, index) {
              final reading = _readings[index];
              return ListTile(
                leading: Icon(_getReadingIcon(reading.type)),
                title: Text(_getReadingTitle(reading)),
                subtitle: Text(
                  reading.timestamp.toString(),
                ),
                trailing: Text(
                  '${reading.value.toStringAsFixed(2)} ${_getReadingUnit(reading.type)}',
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDiagnosticsTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildDiagnosticCard(
          title: 'Connection Quality',
          child: StreamBuilder<Map<String, int>>(
            stream: ref.watch(bluetoothServiceProvider).signalStrength,
            builder: (context, snapshot) {
              final signalStrength = snapshot.data?[widget.device.id] ?? 0;
              return Column(
                children: [
                  LinearProgressIndicator(
                    value: (signalStrength + 100) / 100,
                    backgroundColor: Colors.grey[200],
                  ),
                  const SizedBox(height: 8),
                  Text('Signal Strength: $signalStrength dBm'),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        _buildDiagnosticCard(
          title: 'Battery Health',
          child: StreamBuilder<Map<String, int>>(
            stream: ref.watch(bluetoothServiceProvider).batteryLevels,
            builder: (context, snapshot) {
              final batteryLevel = snapshot.data?[widget.device.id] ?? 0;
              return Column(
                children: [
                  LinearProgressIndicator(
                    value: batteryLevel / 100,
                    backgroundColor: Colors.grey[200],
                  ),
                  const SizedBox(height: 8),
                  Text('Battery Level: $batteryLevel%'),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        _buildDiagnosticCard(
          title: 'Device Information',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfoRow('Device Type', widget.device.type.toString()),
              _buildInfoRow('Firmware Version',
                  widget.device.firmwareVersion ?? 'Unknown'),
              _buildInfoRow(
                  'Last Connected', widget.device.lastConnected.toString()),
              _buildInfoRow('MAC Address', widget.device.id),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDiagnosticCard({
    required String title,
    required Widget child,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }

  IconData _getReadingIcon(ReadingType type) {
    switch (type) {
      case ReadingType.bite:
        return Icons.fishing;
      case ReadingType.depth:
        return Icons.height;
      case ReadingType.temperature:
        return Icons.thermostat;
      case ReadingType.battery:
        return Icons.battery_full;
      case ReadingType.location:
        return Icons.location_on;
      case ReadingType.weight:
        return Icons.scale;
      case ReadingType.environmental:
        return Icons.water;
    }
  }

  String _getReadingTitle(DeviceReading reading) {
    switch (reading.type) {
      case ReadingType.bite:
        return 'Bite Detected';
      case ReadingType.depth:
        return 'Depth Reading';
      case ReadingType.temperature:
        return 'Temperature';
      case ReadingType.battery:
        return 'Battery Level';
      case ReadingType.location:
        return 'Location Update';
      case ReadingType.weight:
        return 'Weight Reading';
      case ReadingType.environmental:
        return 'Environmental Data';
    }
  }

  String _getReadingUnit(ReadingType type) {
    switch (type) {
      case ReadingType.bite:
        return 'intensity';
      case ReadingType.depth:
        return 'm';
      case ReadingType.temperature:
        return '°C';
      case ReadingType.battery:
        return '%';
      case ReadingType.location:
        return 'm';
      case ReadingType.weight:
        return 'kg';
      case ReadingType.environmental:
        return '';
    }
  }

  void _showSettings() {
    Navigator.pushNamed(
      context,
      '/device/settings',
      arguments: widget.device,
    );
  }

  Future<void> _calibrateDevice() async {
    // Implement device calibration
  }

  Future<void> _testAlert() async {
    // Implement alert testing
  }

  Future<void> _returnHome() async {
    // Implement return home functionality for bait boats
  }

  Future<void> _togglePowerSave() async {
    // Implement power save mode toggle
  }
}
