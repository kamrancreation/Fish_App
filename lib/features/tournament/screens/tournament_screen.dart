import 'package:flutter/material.dart';

class TournamentScreen extends StatefulWidget {
  const TournamentScreen({super.key});

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  final List<Tournament> _tournaments = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadTournaments();
  }

  Future<void> _loadTournaments() async {
    // TODO: Load tournaments from backend
    setState(() {
      _tournaments.addAll([
        Tournament(
          id: '1',
          name: 'Spring Bass Championship',
          startDate: DateTime.now().add(const Duration(days: 7)),
          endDate: DateTime.now().add(const Duration(days: 8)),
          location: 'Lake Michigan',
          prizePool: 5000,
          participants: 50,
          status: TournamentStatus.upcoming,
        ),
        Tournament(
          id: '2',
          name: 'Weekend Fishing Challenge',
          startDate: DateTime.now(),
          endDate: DateTime.now().add(const Duration(days: 1)),
          location: 'Local River',
          prizePool: 1000,
          participants: 20,
          status: TournamentStatus.active,
        ),
      ]);
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tournaments'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Active'),
              Tab(text: 'Upcoming'),
              Tab(text: 'Past'),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => _showCreateTournamentDialog(context),
            ),
          ],
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : TabBarView(
                children: [
                  _buildTournamentList(TournamentStatus.active),
                  _buildTournamentList(TournamentStatus.upcoming),
                  _buildTournamentList(TournamentStatus.past),
                ],
              ),
      ),
    );
  }

  Widget _buildTournamentList(TournamentStatus status) {
    final filteredTournaments = _tournaments
        .where((tournament) => tournament.status == status)
        .toList();

    return ListView.builder(
      itemCount: filteredTournaments.length,
      itemBuilder: (context, index) {
        final tournament = filteredTournaments[index];
        return TournamentCard(
          tournament: tournament,
          onTap: () => _showTournamentDetails(tournament),
        );
      },
    );
  }

  void _showCreateTournamentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const CreateTournamentDialog(),
    );
  }

  void _showTournamentDetails(Tournament tournament) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TournamentDetailsScreen(tournament: tournament),
      ),
    );
  }
}

class Tournament {
  final String id;
  final String name;
  final DateTime startDate;
  final DateTime endDate;
  final String location;
  final double prizePool;
  final int participants;
  final TournamentStatus status;

  Tournament({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.location,
    required this.prizePool,
    required this.participants,
    required this.status,
  });
}

enum TournamentStatus {
  upcoming,
  active,
  past,
}

class TournamentCard extends StatelessWidget {
  final Tournament tournament;
  final VoidCallback onTap;

  const TournamentCard({
    super.key,
    required this.tournament,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        onTap: onTap,
        title: Text(tournament.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tournament.location),
            Text(
              'Prize Pool: \$${tournament.prizePool.toStringAsFixed(2)}',
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${tournament.participants} participants'),
            Text(
              tournament.status.name.toUpperCase(),
              style: TextStyle(
                color: _getStatusColor(tournament.status),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(TournamentStatus status) {
    switch (status) {
      case TournamentStatus.upcoming:
        return Colors.blue;
      case TournamentStatus.active:
        return Colors.green;
      case TournamentStatus.past:
        return Colors.grey;
    }
  }
}

class CreateTournamentDialog extends StatefulWidget {
  const CreateTournamentDialog({super.key});

  @override
  State<CreateTournamentDialog> createState() => _CreateTournamentDialogState();
}

class _CreateTournamentDialogState extends State<CreateTournamentDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _locationController = TextEditingController();
  final _prizePoolController = TextEditingController();
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Create Tournament'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Tournament Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: 'Location'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a location';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _prizePoolController,
                decoration: const InputDecoration(labelText: 'Prize Pool (\$)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a prize pool amount';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () async {
                        final date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate:
                              DateTime.now().add(const Duration(days: 365)),
                        );
                        if (date != null) {
                          setState(() {
                            _startDate = date;
                          });
                        }
                      },
                      child: Text(_startDate == null
                          ? 'Select Start Date'
                          : 'Start: ${_startDate.toString().split(' ')[0]}'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () async {
                        final date = await showDatePicker(
                          context: context,
                          initialDate: _startDate ?? DateTime.now(),
                          firstDate: _startDate ?? DateTime.now(),
                          lastDate:
                              DateTime.now().add(const Duration(days: 365)),
                        );
                        if (date != null) {
                          setState(() {
                            _endDate = date;
                          });
                        }
                      },
                      child: Text(_endDate == null
                          ? 'Select End Date'
                          : 'End: ${_endDate.toString().split(' ')[0]}'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _createTournament,
          child: const Text('Create'),
        ),
      ],
    );
  }

  void _createTournament() {
    if (_formKey.currentState!.validate() &&
        _startDate != null &&
        _endDate != null) {
      // TODO: Implement tournament creation
      Navigator.pop(context);
    }
  }
}

class TournamentDetailsScreen extends StatelessWidget {
  final Tournament tournament;

  const TournamentDetailsScreen({
    super.key,
    required this.tournament,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tournament.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildInfoSection(),
            _buildLeaderboard(),
            _buildParticipantsList(),
          ],
        ),
      ),
      floatingActionButton: tournament.status == TournamentStatus.active
          ? FloatingActionButton.extended(
              onPressed: () => _submitCatch(context),
              label: const Text('Submit Catch'),
              icon: const Icon(Icons.add_a_photo),
            )
          : null,
    );
  }

  Widget _buildInfoSection() {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location: ${tournament.location}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Prize Pool: \$${tournament.prizePool.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Participants: ${tournament.participants}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Status: ${tournament.status.name.toUpperCase()}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLeaderboard() {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Leaderboard',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text('${index + 1}'),
                ),
                title: Text('Participant ${index + 1}'),
                trailing: Text('${50 - index * 5} points'),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildParticipantsList() {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Participants',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Participant ${index + 1}'),
                subtitle: Text('Joined ${DateTime.now().toString().split(' ')[0]}'),
              );
            },
          ),
        ],
      ),
    );
  }

  void _submitCatch(BuildContext context) {
    // TODO: Implement catch submission
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Submit Catch'),
        content: Text('Catch submission feature coming soon!'),
      ),
    );
  }
}
