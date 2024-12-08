import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/tournament_model.dart';
import '../services/tournament_service.dart';

class TournamentCreationScreen extends StatefulWidget {
  const TournamentCreationScreen({super.key});

  @override
  State<TournamentCreationScreen> createState() => _TournamentCreationScreenState();
}

class _TournamentCreationScreenState extends State<TournamentCreationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _tournamentService = TournamentService();
  bool _isPrivate = false;
  bool _isCreating = false;
  DateTime? _startDate;
  DateTime? _endDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;
  final Set<Polygon> _boundaries = {};
  ScoringType _scoringType = ScoringType.totalWeight;

  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _entryFeeController = TextEditingController();
  final _prizePotController = TextEditingController();
  final _maxParticipantsController = TextEditingController();
  final _minSizeController = TextEditingController();
  final _maxSizeController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _entryFeeController.dispose();
    _prizePotController.dispose();
    _maxParticipantsController.dispose();
    _minSizeController.dispose();
    _maxSizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Tournament'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _buildBasicInfo(),
            const SizedBox(height: 24),
            _buildDateTimeSection(),
            const SizedBox(height: 24),
            _buildScoringSection(),
            const SizedBox(height: 24),
            _buildBoundariesSection(),
            const SizedBox(height: 24),
            _buildRulesSection(),
            const SizedBox(height: 24),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBasicInfo() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basic Information',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Tournament Name',
                prefixIcon: Icon(Icons.title),
              ),
              validator: (value) => value == null || value.isEmpty ? 'Please enter a tournament name' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                prefixIcon: Icon(Icons.description),
              ),
              maxLines: 3,
              validator: (value) => value == null || value.isEmpty ? 'Please enter a description' : null,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _entryFeeController,
                    decoration: const InputDecoration(
                      labelText: 'Entry Fee',
                      prefixIcon: Icon(Icons.attach_money),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Required';
                      if (double.tryParse(value) == null) return 'Invalid amount';
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: _maxParticipantsController,
                    decoration: const InputDecoration(
                      labelText: 'Max Participants',
                      prefixIcon: Icon(Icons.group),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Required';
                      if (int.tryParse(value) == null) return 'Invalid number';
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              title: const Text('Private Tournament'),
              subtitle: const Text(
                'Only invited users can participate',
              ),
              value: _isPrivate,
              onChanged: (value) => setState(() => _isPrivate = value),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateTimeSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tournament Schedule',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Start Date'),
                    subtitle: Text(
                      _startDate == null
                          ? 'Select Date'
                          : '${_startDate!.month}/${_startDate!.day}/${_startDate!.year}',
                    ),
                    leading: const Icon(Icons.calendar_today),
                    onTap: () => _selectStartDate(context),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Start Time'),
                    subtitle: Text(
                      _startTime?.format(context) ?? 'Select Time',
                    ),
                    leading: const Icon(Icons.access_time),
                    onTap: () => _selectStartTime(context),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('End Date'),
                    subtitle: Text(
                      _endDate == null
                          ? 'Select Date'
                          : '${_endDate!.month}/${_endDate!.day}/${_endDate!.year}',
                    ),
                    leading: const Icon(Icons.calendar_today),
                    onTap: () => _selectEndDate(context),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('End Time'),
                    subtitle: Text(
                      _endTime?.format(context) ?? 'Select Time',
                    ),
                    leading: const Icon(Icons.access_time),
                    onTap: () => _selectEndTime(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScoringSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Scoring System',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<ScoringType>(
              value: _scoringType,
              decoration: const InputDecoration(
                labelText: 'Scoring Type',
                prefixIcon: Icon(Icons.score),
              ),
              items: ScoringType.values.map((type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(_getScoringTypeText(type)),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() => _scoringType = value);
                }
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _minSizeController,
                    decoration: const InputDecoration(
                      labelText: 'Minimum Size (in)',
                      prefixIcon: Icon(Icons.straighten),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: _maxSizeController,
                    decoration: const InputDecoration(
                      labelText: 'Maximum Size (in)',
                      prefixIcon: Icon(Icons.straighten),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBoundariesSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tournament Boundaries',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(0, 0),
                  zoom: 2,
                ),
                polygons: _boundaries,
                onMapCreated: (controller) {
                  // Initialize map
                },
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              icon: const Icon(Icons.edit_location),
              label: const Text('Draw Boundaries'),
              onPressed: _drawBoundaries,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRulesSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tournament Rules',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            // TODO: Implement rules builder
            const Text('Rules builder coming soon'),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: _isCreating ? null : _createTournament,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: _isCreating
          ? const CircularProgressIndicator()
          : const Text('Create Tournament'),
    );
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() => _startDate = picked);
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _endDate ?? (_startDate ?? DateTime.now()),
      firstDate: _startDate ?? DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() => _endDate = picked);
    }
  }

  Future<void> _selectStartTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _startTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() => _startTime = picked);
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _endTime ?? (_startTime ?? TimeOfDay.now()),
    );
    if (picked != null) {
      setState(() => _endTime = picked);
    }
  }

  void _drawBoundaries() {
    // TODO: Implement boundary drawing
  }

  String _getScoringTypeText(ScoringType type) {
    switch (type) {
      case ScoringType.totalWeight:
        return 'Total Weight';
      case ScoringType.totalLength:
        return 'Total Length';
      case ScoringType.biggestCatch:
        return 'Biggest Catch';
      case ScoringType.pointSystem:
        return 'Point System';
      case ScoringType.custom:
        return 'Custom Scoring';
      default:
        return 'Unknown';
    }
  }

  Future<void> _createTournament() async {
    if (!_formKey.currentState!.validate()) return;
    if (_startDate == null || _endDate == null ||
        _startTime == null || _endTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select tournament start and end times'),
        ),
      );
      return;
    }

    setState(() => _isCreating = true);

    try {
      final tournament = TournamentModel(
        id: '',  // Will be set by the service
        name: _nameController.text,
        description: _descriptionController.text,
        startDate: DateTime(
          _startDate!.year,
          _startDate!.month,
          _startDate!.day,
          _startTime!.hour,
          _startTime!.minute,
        ),
        endDate: DateTime(
          _endDate!.year,
          _endDate!.month,
          _endDate!.day,
          _endTime!.hour,
          _endTime!.minute,
        ),
        entryFee: double.parse(_entryFeeController.text),
        prizePool: double.parse(_prizePotController.text),
        maxParticipants: int.tryParse(_maxParticipantsController.text),
        minimumSize: double.tryParse(_minSizeController.text),
        maximumSize: double.tryParse(_maxSizeController.text),
        isPrivate: _isPrivate,
        scoringType: _scoringType,
        boundaries: _boundaries.toList(),
        status: TournamentStatus.upcoming,
        // Add other fields...
      );

      await _tournamentService.createTournament(tournament);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Tournament created successfully!'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pop(context);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error creating tournament: $e'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() => _isCreating = false);
    }
  }
}
