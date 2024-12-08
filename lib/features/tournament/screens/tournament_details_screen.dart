import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/state/app_state.dart';
import '../../../core/widgets/common_widgets.dart';
import '../../../core/models/tournament_model.dart';
import '../../../core/models/catch_model.dart';

class TournamentDetailsScreen extends StatefulWidget {
  final TournamentModel tournament;

  const TournamentDetailsScreen({
    super.key,
    required this.tournament,
  });

  @override
  State<TournamentDetailsScreen> createState() =>
      _TournamentDetailsScreenState();
}

class _TournamentDetailsScreenState extends State<TournamentDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final Map<String, int> _leaderboard = {};
  final List<CatchModel> _tournamentCatches = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _loadTournamentData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadTournamentData() async {
    setState(() => _isLoading = true);
    try {
      final appState = context.read<AppState>();
      // TODO: Load tournament data
      setState(() => _isLoading = false);
    } catch (e) {
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }
  }

  Widget _buildOverviewTab() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        FishProCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tournament Details',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Divider(),
              _buildDetailRow('Start Date', widget.tournament.startDate),
              _buildDetailRow('End Date', widget.tournament.endDate),
              _buildDetailRow('Entry Fee', '\$${widget.tournament.entryFee}'),
              _buildDetailRow(
                  'Prize Pool', '\$${widget.tournament.prizePools}'),
              _buildDetailRow(
                'Participants',
                '${widget.tournament.participants.length}/${widget.tournament.maxParticipants}',
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        FishProCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rules',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Divider(),
              ...widget.tournament.rules.entries.map(
                (entry) => _buildDetailRow(entry.key, entry.value.toString()),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        FishProCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Prizes',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Divider(),
              ...widget.tournament.prizes.entries.map(
                (entry) => _buildDetailRow(entry.key, entry.value.toString()),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLeaderboardTab() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_leaderboard.isEmpty) {
      return const EmptyStateWidget(
        message: 'No catches recorded yet',
        icon: Icons.leaderboard,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: _leaderboard.length,
      itemBuilder: (context, index) {
        final entry = _leaderboard.entries.elementAt(index);
        return FishProCard(
          child: ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title:
                Text('User ${entry.key}'), // TODO: Replace with actual username
            trailing: Text(
              '${entry.value} points',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        );
      },
    );
  }

  Widget _buildCatchesTab() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_tournamentCatches.isEmpty) {
      return const EmptyStateWidget(
        message: 'No catches recorded yet',
        icon: Icons.catching_pokemon,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: _tournamentCatches.length,
      itemBuilder: (context, index) {
        final catch_ = _tournamentCatches[index];
        return FishProCard(
          child: ListTile(
            leading: const Icon(Icons.catching_pokemon),
            title: Text(
                'Catch by User ${catch_.userId}'), // TODO: Replace with actual username
            subtitle: Text(
              'Length: ${catch_.length}cm, Weight: ${catch_.weight}kg',
            ),
            trailing: Text(
              catch_.timestamp.toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        );
      },
    );
  }

  Widget _buildDetailRow(String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            value.toString(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tournament.name),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Overview'),
            Tab(text: 'Leaderboard'),
            Tab(text: 'Catches'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildOverviewTab(),
          _buildLeaderboardTab(),
          _buildCatchesTab(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ActionButton(
          label: 'Join Tournament',
          icon: Icons.add,
          onPressed: () async {
            final appState = context.read<AppState>();
            await appState.joinTournament(widget.tournament.id);
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Successfully joined tournament')),
              );
            }
          },
          isLoading: _isLoading,
        ),
      ),
    );
  }
}
