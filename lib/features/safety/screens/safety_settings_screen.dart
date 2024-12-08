import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/models/safety_model.dart';
import '../../../core/services/safety_service.dart';

class SafetySettingsScreen extends StatefulWidget {
  final SafetyModel settings;

  const SafetySettingsScreen({
    super.key,
    required this.settings,
  });

  @override
  State<SafetySettingsScreen> createState() => _SafetySettingsScreenState();
}

class _SafetySettingsScreenState extends State<SafetySettingsScreen> {
  late bool _isCheckInEnabled;
  late int _checkInInterval;
  late Map<String, dynamic> _safetyPreferences;
  final _contactController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _isCheckInEnabled = widget.settings.isCheckInEnabled;
    _checkInInterval = widget.settings.checkInInterval;
    _safetyPreferences = Map.from(widget.settings.safetyPreferences);
  }

  @override
  void dispose() {
    _contactController.dispose();
    super.dispose();
  }

  Future<void> _saveSettings() async {
    try {
      final safetyService = Provider.of<SafetyService>(context, listen: false);
      final updatedSettings = SafetyModel(
        id: widget.settings.id,
        userId: widget.settings.userId,
        emergencyContacts: widget.settings.emergencyContacts,
        isCheckInEnabled: _isCheckInEnabled,
        checkInInterval: _checkInInterval,
        lastCheckIn: widget.settings.lastCheckIn,
        lastKnownLocation: widget.settings.lastKnownLocation,
        activeAlerts: widget.settings.activeAlerts,
        safetyPreferences: _safetyPreferences,
      );

      await safetyService.updateSafetySettings(updatedSettings);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Settings saved successfully')),
        );
        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    }
  }

  Future<void> _addEmergencyContact() async {
    final contact = _contactController.text.trim();
    if (contact.isEmpty) return;

    try {
      final safetyService = Provider.of<SafetyService>(context, listen: false);
      await safetyService.addEmergencyContact(widget.settings.id, contact);
      setState(() {
        widget.settings.emergencyContacts.add(contact);
      });
      _contactController.clear();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    }
  }

  Future<void> _removeEmergencyContact(String contact) async {
    try {
      final safetyService = Provider.of<SafetyService>(context, listen: false);
      await safetyService.removeEmergencyContact(widget.settings.id, contact);
      setState(() {
        widget.settings.emergencyContacts.remove(contact);
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safety Settings'),
        actions: [
          TextButton(
            onPressed: _saveSettings,
            child: const Text('Save'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCheckInSettings(),
            const Divider(height: 32),
            _buildEmergencyContacts(),
            const Divider(height: 32),
            _buildPreferences(),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckInSettings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Check-in Settings',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        SwitchListTile(
          title: const Text('Enable Auto Check-in'),
          subtitle: const Text('Automatically check-in at regular intervals'),
          value: _isCheckInEnabled,
          onChanged: (value) {
            setState(() {
              _isCheckInEnabled = value;
            });
          },
        ),
        if (_isCheckInEnabled)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text('Check-in Interval:'),
                const SizedBox(width: 16),
                DropdownButton<int>(
                  value: _checkInInterval,
                  items: [15, 30, 45, 60, 120].map((interval) {
                    return DropdownMenuItem(
                      value: interval,
                      child: Text('$interval minutes'),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _checkInInterval = value;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildEmergencyContacts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Emergency Contacts',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.settings.emergencyContacts.length,
          itemBuilder: (context, index) {
            final contact = widget.settings.emergencyContacts[index];
            return ListTile(
              title: Text(contact),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => _removeEmergencyContact(contact),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _contactController,
                  decoration: const InputDecoration(
                    labelText: 'Add Emergency Contact',
                    hintText: 'Enter phone number or email',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _addEmergencyContact,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPreferences() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Safety Preferences',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        SwitchListTile(
          title: const Text('Weather Alerts'),
          subtitle: const Text('Receive alerts about severe weather conditions'),
          value: _safetyPreferences['weatherAlerts'] ?? true,
          onChanged: (value) {
            setState(() {
              _safetyPreferences['weatherAlerts'] = value;
            });
          },
        ),
        SwitchListTile(
          title: const Text('Location Sharing'),
          subtitle: const Text('Share location with emergency contacts'),
          value: _safetyPreferences['locationSharing'] ?? true,
          onChanged: (value) {
            setState(() {
              _safetyPreferences['locationSharing'] = value;
            });
          },
        ),
        SwitchListTile(
          title: const Text('Auto Check-in Reminders'),
          subtitle: const Text('Receive reminders to check-in'),
          value: _safetyPreferences['autoCheckIn'] ?? false,
          onChanged: (value) {
            setState(() {
              _safetyPreferences['autoCheckIn'] = value;
            });
          },
        ),
      ],
    );
  }
}
