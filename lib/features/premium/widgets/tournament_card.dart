import 'package:flutter/material.dart';
import '../models/tournament.dart';
import 'verification_panel.dart';
import 'stream_control.dart';
import 'sponsor_panel.dart';

class TournamentCard extends StatelessWidget {
  final Tournament? tournament;

  const TournamentCard({
    super.key,
    required this.tournament,
  });

  @override
  Widget build(BuildContext context) {
    if (tournament == null) {
      return const SizedBox.shrink();
    }

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (tournament!.bannerImage != null)
            Image.network(
              tournament!.bannerImage!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        tournament!.name,
                        style: Theme.of(context).textTheme.titleLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    _buildStatusChip(tournament!.status),
                  ],
                ),
                const SizedBox(height: 8),
                _buildDateRange(),
                if (tournament!.description != null) ...[
                  const SizedBox(height: 8),
                  Text(tournament!.description!),
                ],
                const SizedBox(height: 16),
                _buildPrizeSection(),
                if (tournament!.sponsors.isNotEmpty) ...[
                  const Divider(),
                  SponsorPanel(sponsors: tournament!.sponsors),
                ],
                if (tournament!.status == TournamentStatus.active) ...[
                  const Divider(),
                  StreamControl(
                    tournamentId: tournament!.name,
                    activeStreams: tournament!.streams,
                  ),
                ],
                const Divider(),
                VerificationPanel(tournament: tournament!),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildActionButton(
                      context,
                      'Details',
                      Icons.info_outline,
                      () => _showTournamentDetails(context),
                    ),
                    if (tournament!.status == TournamentStatus.active)
                      _buildActionButton(
                        context,
                        'Submit Entry',
                        Icons.add_photo_alternate,
                        () => _submitEntry(context),
                      ),
                    if (tournament!.status == TournamentStatus.upcoming)
                      _buildActionButton(
                        context,
                        'Register',
                        Icons.how_to_reg,
                        () => _register(context),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(TournamentStatus status) {
    return Chip(
      label: Text(
        status.name.toUpperCase(),
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: _getStatusColor(status),
    );
  }

  Color _getStatusColor(TournamentStatus status) {
    return switch (status) {
      TournamentStatus.active => Colors.green,
      TournamentStatus.upcoming => Colors.blue,
      TournamentStatus.completed => Colors.grey,
      TournamentStatus.cancelled => Colors.red,
    };
  }

  Widget _buildDateRange() {
    return Row(
      children: [
        const Icon(Icons.calendar_today, size: 16),
        const SizedBox(width: 8),
        Text(
          '${_formatDate(tournament!.startDate)} - ${_formatDate(tournament!.endDate)}',
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.month}/${date.day}/${date.year}';
  }

  Widget _buildPrizeSection() {
    return Card(
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Prizes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            ...tournament!.prizes.entries.map(
              (entry) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(entry.key),
                    Text(
                      entry.value.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    String label,
    IconData icon,
    VoidCallback onPressed,
  ) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }

  void _showTournamentDetails(BuildContext context) {
    // TODO: Implement tournament details modal
  }

  void _submitEntry(BuildContext context) {
    // TODO: Implement entry submission
  }

  void _register(BuildContext context) {
    // TODO: Implement tournament registration
  }
}
