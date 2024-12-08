import 'package:flutter/material.dart';
import '../models/tournament_model.dart';

class TournamentCard extends StatelessWidget {
  final TournamentModel tournament;
  final VoidCallback? onTap;

  const TournamentCard({
    super.key,
    required this.tournament,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tournament.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    tournament.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 16),
                  _buildInfoGrid(context),
                  const SizedBox(height: 16),
                  _buildFooter(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColor.withOpacity(0.8),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: _buildStatusOverlay(context),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: _buildPrizeChip(context),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: _buildDateInfo(context),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusOverlay(BuildContext context) {
    final statusColor = _getStatusColor(tournament.status);
    final statusText = tournament.status.toString().split('.').last.toUpperCase();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            statusColor.withOpacity(0.2),
            statusColor.withOpacity(0.1),
          ],
        ),
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: statusColor.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            statusText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPrizeChip(BuildContext context) {
    return Chip(
      backgroundColor: Colors.amber,
      label: Text(
        '\$${tournament.prizePool.toStringAsFixed(2)}',
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      avatar: const Icon(
        Icons.emoji_events,
        color: Colors.black,
        size: 16,
      ),
    );
  }

  Widget _buildDateInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Starts: ${_formatDate(tournament.startDate)}',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Ends: ${_formatDate(tournament.endDate)}',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoGrid(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 3,
      children: [
        _buildInfoTile(
          context,
          Icons.people,
          '${tournament.participants.length} Participants',
        ),
        _buildInfoTile(
          context,
          Icons.attach_money,
          'Entry: \$${tournament.entryFee}',
        ),
        _buildInfoTile(
          context,
          Icons.catching_pokemon,
          _getScoringTypeText(),
        ),
        _buildInfoTile(
          context,
          Icons.location_on,
          'View Boundaries',
        ),
      ],
    );
  }

  Widget _buildInfoTile(BuildContext context, IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).dividerColor,
        ),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          icon: const Icon(Icons.info_outline, size: 16),
          label: const Text('Rules'),
          onPressed: () {
            // Show rules dialog
          },
        ),
        TextButton.icon(
          icon: const Icon(Icons.leaderboard, size: 16),
          label: const Text('Leaderboard'),
          onPressed: () {
            // Show leaderboard
          },
        ),
      ],
    );
  }

  Color _getStatusColor(TournamentStatus status) {
    switch (status) {
      case TournamentStatus.upcoming:
        return Colors.blue;
      case TournamentStatus.active:
        return Colors.green;
      case TournamentStatus.verification:
        return Colors.orange;
      case TournamentStatus.completed:
        return Colors.purple;
      case TournamentStatus.cancelled:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  String _formatDate(DateTime date) {
    return '${date.month}/${date.day}/${date.year}';
  }

  String _getScoringTypeText() {
    switch (tournament.scoringType) {
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
}
