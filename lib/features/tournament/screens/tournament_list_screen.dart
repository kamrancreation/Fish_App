import 'package:flutter/material.dart';
import '../models/tournament_model.dart';
import '../services/tournament_service.dart';
import '../widgets/tournament_card.dart';
import '../widgets/tournament_filter_bar.dart';
import 'tournament_creation_screen.dart';

class TournamentListScreen extends StatefulWidget {
  const TournamentListScreen({super.key});

  @override
  State<TournamentListScreen> createState() => _TournamentListScreenState();
}

class _TournamentListScreenState extends State<TournamentListScreen> {
  final TournamentService _tournamentService = TournamentService();
  String _selectedFilter = 'all';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tournaments'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TournamentCreationScreen(),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          TournamentFilterBar(
            selectedFilter: _selectedFilter,
            onFilterChanged: (filter) {
              setState(() => _selectedFilter = filter);
            },
          ),
          Expanded(
            child: StreamBuilder<List<TournamentModel>>(
              stream: _getFilteredTournaments(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                final tournaments = snapshot.data!;
                if (tournaments.isEmpty) {
                  return const Center(
                    child: Text('No tournaments found'),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    setState(() {});
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: tournaments.length,
                    itemBuilder: (context, index) {
                      return TournamentCard(
                        tournament: tournaments[index],
                        onTap: () => _navigateToTournamentDetails(
                          tournaments[index],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Stream<List<TournamentModel>> _getFilteredTournaments() {
    switch (_selectedFilter) {
      case 'active':
        return _tournamentService.streamActiveTournaments();
      case 'upcoming':
        return _tournamentService.streamUpcomingTournaments();
      case 'completed':
        return _tournamentService.streamCompletedTournaments();
      case 'my':
        // Replace with actual user ID
        return _tournamentService.streamUserTournaments('currentUserId');
      default:
        return _tournamentService.streamAllTournaments();
    }
  }

  void _navigateToTournamentDetails(TournamentModel tournament) {
    Navigator.pushNamed(
      context,
      '/tournament/details',
      arguments: tournament,
    );
  }
}
