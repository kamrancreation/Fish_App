import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/models/social_model.dart';
import '../../../core/services/social_service.dart';
import '../../../core/services/auth_service.dart';

class CreateEventScreen extends StatefulWidget {
  final String clubId;

  const CreateEventScreen({
    super.key,
    required this.clubId,
  });

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _socialService = SocialService();

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(const Duration(hours: 2));
  bool _isLoading = false;
  bool _isPrivate = false;
  Map<String, dynamic> _rules = {};
  Map<String, dynamic> _prizes = {};

  Future<void> _selectDate(bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStartDate ? _startDate : _endDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (picked != null) {
      final TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(
          isStartDate ? _startDate : _endDate,
        ),
      );

      if (time != null) {
        setState(() {
          if (isStartDate) {
            _startDate = DateTime(
              picked.year,
              picked.month,
              picked.day,
              time.hour,
              time.minute,
            );
            // Ensure end date is after start date
            if (_endDate.isBefore(_startDate)) {
              _endDate = _startDate.add(const Duration(hours: 2));
            }
          } else {
            _endDate = DateTime(
              picked.year,
              picked.month,
              picked.day,
              time.hour,
              time.minute,
            );
          }
        });
      }
    }
  }

  void _showRulesDialog() {
    final rulesController = TextEditingController(
      text: _rules['description'] ?? '',
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Event Rules'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: rulesController,
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'Enter event rules and guidelines...',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _rules = {
                  'description': rulesController.text,
                  'updatedAt': DateTime.now(),
                };
              });
              Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showPrizesDialog() {
    final firstPrizeController = TextEditingController(
      text: _prizes['first'] ?? '',
    );
    final secondPrizeController = TextEditingController(
      text: _prizes['second'] ?? '',
    );
    final thirdPrizeController = TextEditingController(
      text: _prizes['third'] ?? '',
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Event Prizes'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: firstPrizeController,
                decoration: const InputDecoration(
                  labelText: '1st Place Prize',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: secondPrizeController,
                decoration: const InputDecoration(
                  labelText: '2nd Place Prize',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: thirdPrizeController,
                decoration: const InputDecoration(
                  labelText: '3rd Place Prize',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _prizes = {
                  'first': firstPrizeController.text,
                  'second': secondPrizeController.text,
                  'third': thirdPrizeController.text,
                  'updatedAt': DateTime.now(),
                };
              });
              Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  Future<void> _createEvent() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final userId = context.read<AuthService>().currentUser.uid;
      if (userId == null) throw Exception('User not logged in');

      final event = FishingEvent(
        id: DateTime.now().toIso8601String(),
        clubId: widget.clubId,
        name: _nameController.text,
        description: _descriptionController.text,
        organizerId: userId,
        startDate: _startDate,
        endDate: _endDate,
        location: _locationController.text,
        participantIds: [userId],
        rules: _rules,
        prizes: _prizes,
        isPrivate: _isPrivate,
        status: 'upcoming',
        stats: {
          'totalParticipants': 1,
          'totalCatches': 0,
        },
      );

      await _socialService.createEvent(event);

      if (mounted) {
        Navigator.pop(context, true);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error creating event: $e'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Event'),
        actions: [
          if (_isLoading)
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CircularProgressIndicator(),
              ),
            )
          else
            TextButton(
              onPressed: _createEvent,
              child: const Text('Create'),
            ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Event Name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an event name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _locationController,
              decoration: const InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a location';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            Text(
              'Event Schedule',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ListTile(
              title: const Text('Start Date & Time'),
              subtitle: Text(
                '${_startDate.day}/${_startDate.month}/${_startDate.year} at ${TimeOfDay.fromDateTime(_startDate).format(context)}',
              ),
              trailing: const Icon(Icons.calendar_today),
              onTap: () => _selectDate(true),
            ),
            ListTile(
              title: const Text('End Date & Time'),
              subtitle: Text(
                '${_endDate.day}/${_endDate.month}/${_endDate.year} at ${TimeOfDay.fromDateTime(_endDate).format(context)}',
              ),
              trailing: const Icon(Icons.calendar_today),
              onTap: () => _selectDate(false),
            ),
            const SizedBox(height: 24),
            Text(
              'Event Settings',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            SwitchListTile(
              title: const Text('Private Event'),
              subtitle: const Text('Only club members can participate'),
              value: _isPrivate,
              onChanged: (value) {
                setState(() {
                  _isPrivate = value;
                });
              },
            ),
            ListTile(
              title: const Text('Rules & Guidelines'),
              subtitle: Text(
                _rules['description']?.isNotEmpty == true
                    ? 'Rules added'
                    : 'Add event rules',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: _showRulesDialog,
            ),
            ListTile(
              title: const Text('Prizes'),
              subtitle: Text(
                _prizes.isNotEmpty ? 'Prizes added' : 'Add event prizes',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: _showPrizesDialog,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    super.dispose();
  }
}
