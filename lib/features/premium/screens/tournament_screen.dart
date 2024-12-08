import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/tournament_service.dart';
import '../models/tournament.dart';
import '../widgets/tournament_card.dart';
import '../widgets/tournament_form.dart';

class TournamentScreen extends ConsumerStatefulWidget {
  const TournamentScreen({super.key});

  @override
  ConsumerState<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends ConsumerState<TournamentScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isCreatingTournament = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tournament Pro'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Active'),
            Tab(text: 'Upcoming'),
            Tab(text: 'Completed'),
            Tab(text: 'My Tournaments'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                _isCreatingTournament = true;
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: [
              _buildTournamentList(TournamentStatus.active),
              _buildTournamentList(TournamentStatus.upcoming),
              _buildTournamentList(TournamentStatus.completed),
              _buildMyTournaments(),
            ],
          ),
          if (_isCreatingTournament) _buildTournamentCreationForm(),
        ],
      ),
    );
  }

  Widget _buildTournamentList(TournamentStatus status) {
    return Consumer(
      builder: (context, ref, child) {
        // TODO: Implement tournament list stream
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: 10, // Replace with actual tournament count
          itemBuilder: (context, index) {
            return const TournamentCard(
              tournament: null, // Pass actual tournament data
            );
          },
        );
      },
    );
  }

  Widget _buildMyTournaments() {
    return Consumer(
      builder: (context, ref, child) {
        // TODO: Implement user's tournaments
        return const Center(
          child: Text('My Tournaments'),
        );
      },
    );
  }

  Widget _buildTournamentCreationForm() {
    return Container(
      color: Colors.black54,
      child: Center(
        child: Card(
          margin: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Create Tournament',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          _isCreatingTournament = false;
                        });
                      },
                    ),
                  ],
                ),
                const Divider(),
                TournamentForm(
                  onSubmit: (tournamentData) async {
                    final service = ref.read(tournamentServiceProvider);
                    try {
                      await service.createTournament(
                        name: tournamentData['name'],
                        startDate: tournamentData['startDate'],
                        endDate: tournamentData['endDate'],
                        rules: tournamentData['rules'],
                        prizes: tournamentData['prizes'],
                        sponsors: tournamentData['sponsors'],
                        verificationRules: tournamentData['verificationRules'],
                      );
                      if (mounted) {
                        setState(() {
                          _isCreatingTournament = false;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Tournament created successfully!'),
                          ),
                        );
                      }
                    } catch (e) {
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Error creating tournament: $e'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
