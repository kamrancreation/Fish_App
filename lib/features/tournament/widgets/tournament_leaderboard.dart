import 'package:flutter/material.dart';
import '../models/tournament_model.dart';
import '../services/tournament_service.dart';

class TournamentLeaderboard extends StatelessWidget {
  final TournamentModel tournament;
  final TournamentService _tournamentService = TournamentService();

  TournamentLeaderboard({
    super.key,
    required this.tournament,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Map<String, dynamic>>(
      stream: _tournamentService.streamLeaderboard(tournament.id),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final leaderboard = snapshot.data!;
        final sortedEntries = leaderboard.entries.toList()
          ..sort((a, b) => (b.value as num).compareTo(a.value as num));

        return Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: ListView.builder(
                itemCount: sortedEntries.length,
                itemBuilder: (context, index) {
                  final entry = sortedEntries[index];
                  return _buildLeaderboardItem(
                    context,
                    rank: index + 1,
                    userId: entry.key,
                    score: entry.value as num,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Leaderboard',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            _getScoringTypeText(),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
            ),
          ),
          if (tournament.status == TournamentStatus.active)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Updates in real-time',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white60,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildLeaderboardItem(
    BuildContext context, {
    required int rank,
    required String userId,
    required num score,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        leading: _buildRankBadge(context, rank),
        title: FutureBuilder<String>(
          future: _getUserName(userId),
          builder: (context, snapshot) {
            return Text(snapshot.data ?? 'Loading...');
          },
        ),
        subtitle: FutureBuilder<Map<String, dynamic>>(
          future: _getUserStats(userId),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const SizedBox.shrink();
            final stats = snapshot.data!;
            return Text(
              '${stats['catches']} catches · Best: ${stats['bestCatch']}',
              style: Theme.of(context).textTheme.bodySmall,
            );
          },
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              _formatScore(score),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: _getScoreColor(rank),
              ),
            ),
            Text(
              _getPrizeAmount(rank),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.green,
              ),
            ),
          ],
        ),
        onTap: () => _showParticipantDetails(context, userId),
      ),
    );
  }

  Widget _buildRankBadge(BuildContext context, int rank) {
    final isTopThree = rank <= 3;
    
    if (isTopThree) {
      return CircleAvatar(
        backgroundColor: _getRankColor(rank),
        child: Icon(
          _getRankIcon(rank),
          color: Colors.white,
          size: 20,
        ),
      );
    }

    return CircleAvatar(
      backgroundColor: Theme.of(context).disabledColor,
      child: Text(
        rank.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Color _getRankColor(int rank) {
    switch (rank) {
      case 1:
        return Colors.amber;
      case 2:
        return Colors.grey[400]!;
      case 3:
        return Colors.brown[300]!;
      default:
        return Colors.grey;
    }
  }

  IconData _getRankIcon(int rank) {
    switch (rank) {
      case 1:
        return Icons.looks_one;
      case 2:
        return Icons.looks_two;
      case 3:
        return Icons.looks_3;
      default:
        return Icons.emoji_events;
    }
  }

  Color _getScoreColor(int rank) {
    switch (rank) {
      case 1:
        return Colors.amber[700]!;
      case 2:
        return Colors.grey[700]!;
      case 3:
        return Colors.brown[700]!;
      default:
        return Colors.black87;
    }
  }

  String _getScoringTypeText() {
    switch (tournament.scoringType) {
      case ScoringType.totalWeight:
        return 'Ranked by Total Weight';
      case ScoringType.totalLength:
        return 'Ranked by Total Length';
      case ScoringType.biggestCatch:
        return 'Ranked by Biggest Catch';
      case ScoringType.pointSystem:
        return 'Ranked by Points';
      case ScoringType.custom:
        return 'Custom Ranking System';
      default:
        return '';
    }
  }

  String _formatScore(num score) {
    switch (tournament.scoringType) {
      case ScoringType.totalWeight:
        return '${score.toStringAsFixed(2)} lbs';
      case ScoringType.totalLength:
        return '${score.toStringAsFixed(2)} in';
      case ScoringType.pointSystem:
        return '${score.toStringAsFixed(0)} pts';
      default:
        return score.toString();
    }
  }

  String _getPrizeAmount(int rank) {
    final distribution = tournament.getPrizeDistribution();
    final prize = distribution['place$rank'] as double?;
    if (prize == null || prize == 0) return '';
    return '\$${prize.toStringAsFixed(2)}';
  }

  Future<String> _getUserName(String userId) async {
    // TODO: Implement user name lookup
    return 'User $userId';
  }

  Future<Map<String, dynamic>> _getUserStats(String userId) async {
    // TODO: Implement user stats lookup
    return {
      'catches': 5,
      'bestCatch': '12.5 lbs',
    };
  }

  void _showParticipantDetails(BuildContext context, String userId) {
    // TODO: Implement participant details modal
  }
}
