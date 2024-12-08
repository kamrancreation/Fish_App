import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import '../../../core/models/safety_model.dart';
import '../../../core/services/safety_service.dart';
import '../../../core/services/auth_service.dart';
import 'safety_settings_screen.dart';

class SafetyScreen extends StatefulWidget {
  const SafetyScreen({super.key});

  @override
  State<SafetyScreen> createState() => _SafetyScreenState();
}

class _SafetyScreenState extends State<SafetyScreen> {
  bool _isLoading = true;
  bool _sosActive = false;
  Position? _currentPosition;
  List<SafetyAlert> _activeAlerts = [];
  SafetyModel? _safetySettings;
  DateTime? _nextCheckIn;
  late SafetyService _safetyService;
  late AuthService _authService;

  @override
  void initState() {
    super.initState();
    _safetyService = Provider.of<SafetyService>(context, listen: false);
    _authService = Provider.of<AuthService>(context, listen: false);
    _initializeSafety();
  }

  Future<void> _initializeSafety() async {
    try {
      final user = await _authService.currentUser;
      if (user == null) {
        throw Exception('No user signed in');
      }

      await _getCurrentLocation();
      _safetySettings = await _safetyService.getSafetySettings(user.id);

      if (_safetySettings!.isCheckInEnabled && _safetySettings!.lastCheckIn != null) {
        _nextCheckIn = _safetySettings!.lastCheckIn!.add(
          Duration(minutes: _safetySettings!.checkInInterval),
        );
      }

      if (_currentPosition != null) {
        _activeAlerts = await _safetyService.getWeatherAlerts(
          _currentPosition!.latitude,
          _currentPosition!.longitude,
        );
      }

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error initializing safety: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    }
  }

  Future<void> _getCurrentLocation() async {
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
    _currentPosition = await Geolocator.getCurrentPosition();
  }

  Future<void> _toggleSOS() async {
    final user = await _authService.currentUser;
    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error: Not signed in')),
      );
      return;
    }

    setState(() {
      _sosActive = !_sosActive;
    });

    if (_sosActive) {
      await _safetyService.createAlert(
        user.id,
        'emergency',
        'SOS Emergency Alert',
        {
          'location': _currentPosition != null
              ? {
                  'latitude': _currentPosition!.latitude,
                  'longitude': _currentPosition!.longitude,
                }
              : null,
          'timestamp': DateTime.now().millisecondsSinceEpoch,
        },
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Emergency contacts notified'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safety System'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () async {
              if (_safetySettings != null) {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SafetySettingsScreen(
                      settings: _safetySettings!,
                    ),
                  ),
                );
                if (result == true) {
                  _initializeSafety();
                }
              }
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildSOSButton(),
                  const SizedBox(height: 16),
                  _buildLocationCard(),
                  const SizedBox(height: 16),
                  _buildWeatherAlerts(),
                  const SizedBox(height: 16),
                  _buildCheckInStatus(),
                ],
              ),
            ),
    );
  }

  Widget _buildSOSButton() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: _sosActive ? Colors.red : Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: _toggleSOS,
          borderRadius: BorderRadius.circular(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.emergency,
                size: 48,
                color: _sosActive ? Colors.white : Colors.red,
              ),
              const SizedBox(height: 8),
              Text(
                _sosActive ? 'SOS ACTIVE' : 'EMERGENCY SOS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: _sosActive ? Colors.white : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocationCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Current Location',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            if (_currentPosition != null) ...[
              Text('Latitude: ${_currentPosition!.latitude}'),
              Text('Longitude: ${_currentPosition!.longitude}'),
            ] else
              const Text('Location unavailable'),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherAlerts() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Weather Alerts',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            if (_activeAlerts.isEmpty)
              const Text('No active weather alerts')
            else
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _activeAlerts.length,
                itemBuilder: (context, index) {
                  final alert = _activeAlerts[index];
                  return ListTile(
                    leading: const Icon(Icons.warning),
                    title: Text(alert.message),
                    subtitle: Text(alert.type),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckInStatus() {
    if (_safetySettings == null) return const SizedBox.shrink();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Auto Check-in',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Switch(
                  value: _safetySettings!.isCheckInEnabled,
                  onChanged: (value) async {
                    final updatedSettings = SafetyModel(
                      id: _safetySettings!.id,
                      userId: _safetySettings!.userId,
                      emergencyContacts: _safetySettings!.emergencyContacts,
                      isCheckInEnabled: value,
                      checkInInterval: _safetySettings!.checkInInterval,
                      lastCheckIn: _safetySettings!.lastCheckIn,
                      lastKnownLocation: _safetySettings!.lastKnownLocation,
                      activeAlerts: _safetySettings!.activeAlerts,
                      safetyPreferences: _safetySettings!.safetyPreferences,
                    );
                    await _safetyService.updateSafetySettings(updatedSettings);
                    _initializeSafety();
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (_nextCheckIn != null)
              Text(
                'Next check-in: ${_formatTimeRemaining(_nextCheckIn!)}',
              ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () async {
                await _safetyService.checkIn(_safetySettings!.id);
                _initializeSafety();
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Check-in successful')),
                  );
                }
              },
              icon: const Icon(Icons.check_circle),
              label: const Text('Check-in Now'),
            ),
          ],
        ),
      ),
    );
  }

  String _formatTimeRemaining(DateTime nextCheckIn) {
    final now = DateTime.now();
    final difference = nextCheckIn.difference(now);
    if (difference.isNegative) {
      return 'Check-in overdue';
    }
    if (difference.inHours > 0) {
      return '${difference.inHours}h ${difference.inMinutes.remainder(60)}m';
    }
    return '${difference.inMinutes}m';
  }
}
