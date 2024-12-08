import 'package:flutter/material.dart';
import '../models/tournament_model.dart';

class TournamentRulesSheet extends StatelessWidget {
  final TournamentModel tournament;

  const TournamentRulesSheet({
    super.key,
    required this.tournament,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              _buildHeader(context),
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: const EdgeInsets.all(16),
                  children: [
                    _buildGeneralRules(context),
                    const SizedBox(height: 24),
                    _buildScoringRules(context),
                    const SizedBox(height: 24),
                    _buildCatchRequirements(context),
                    const SizedBox(height: 24),
                    _buildBoundaries(context),
                    const SizedBox(height: 24),
                    _buildPrizeDistribution(context),
                    const SizedBox(height: 24),
                    _buildDisqualification(context),
                    const SizedBox(height: 24),
                    _buildAdditionalInfo(context),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Text(
            'Tournament Rules',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            tournament.name,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGeneralRules(BuildContext context) {
    return _buildSection(
      context,
      title: 'General Rules',
      icon: Icons.rule_folder,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRule('Tournament Duration',
              '${_formatDate(tournament.startDate)} to ${_formatDate(tournament.endDate)}'),
          _buildRule('Entry Fee', '\$${tournament.entryFee}'),
          _buildRule('Prize Pool', '\$${tournament.prizePool}'),
          _buildRule('Participant Limit',
              tournament.maxParticipants == null ? 'Unlimited' : tournament.maxParticipants.toString()),
          ...tournament.generalRules.map((rule) => _buildRule('', rule)),
        ],
      ),
    );
  }

  Widget _buildScoringRules(BuildContext context) {
    return _buildSection(
      context,
      title: 'Scoring System',
      icon: Icons.score,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRule('Scoring Type', _getScoringTypeText()),
          ...tournament.scoringRules.map((rule) => _buildRule('', rule)),
        ],
      ),
    );
  }

  Widget _buildCatchRequirements(BuildContext context) {
    return _buildSection(
      context,
      title: 'Catch Requirements',
      icon: Icons.catching_pokemon,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (tournament.minimumSize != null)
            _buildRule('Minimum Size', '${tournament.minimumSize} inches'),
          if (tournament.maximumSize != null)
            _buildRule('Maximum Size', '${tournament.maximumSize} inches'),
          _buildRule('Photo Requirements', [
            'Clear, unobstructed view of the entire fish',
            'Measurement clearly visible in the photo',
            'Location services must be enabled',
            'Photo must be taken through the app',
          ]),
          ...tournament.catchRequirements.map((req) => _buildRule('', req)),
        ],
      ),
    );
  }

  Widget _buildBoundaries(BuildContext context) {
    return _buildSection(
      context,
      title: 'Tournament Boundaries',
      icon: Icons.map,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRule('Allowed Areas', tournament.allowedAreas),
          _buildRule('Restricted Areas', tournament.restrictedAreas),
          ElevatedButton.icon(
            icon: const Icon(Icons.map),
            label: const Text('View Boundary Map'),
            onPressed: () {
              // TODO: Show boundary map
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPrizeDistribution(BuildContext context) {
    final distribution = tournament.getPrizeDistribution();
    return _buildSection(
      context,
      title: 'Prize Distribution',
      icon: Icons.emoji_events,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...distribution.entries.map(
            (entry) => _buildRule(
              'Place ${entry.key.replaceAll('place', '')}',
              '\$${entry.value.toStringAsFixed(2)}',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDisqualification(BuildContext context) {
    return _buildSection(
      context,
      title: 'Grounds for Disqualification',
      icon: Icons.gavel,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: tournament.disqualificationRules
            .map((rule) => _buildRule('', rule))
            .toList(),
      ),
    );
  }

  Widget _buildAdditionalInfo(BuildContext context) {
    return _buildSection(
      context,
      title: 'Additional Information',
      icon: Icons.info,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRule('Contact', tournament.contactInfo),
          _buildRule('Emergency', tournament.emergencyContact),
          if (tournament.additionalInfo.isNotEmpty)
            ...tournament.additionalInfo.map((info) => _buildRule('', info)),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required Icon icon,
    required Widget content,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            icon,
            const SizedBox(width: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Divider(),
        const SizedBox(height: 8),
        content,
      ],
    );
  }

  Widget _buildRule(String label, dynamic content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label.isNotEmpty)
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          if (content is String)
            Text(content)
          else if (content is List)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: content
                  .map((item) => Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('• '),
                            Expanded(child: Text(item.toString())),
                          ],
                        ),
                      ))
                  .toList(),
            ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.month}/${date.day}/${date.year}';
  }

  String _getScoringTypeText() {
    switch (tournament.scoringType) {
      case ScoringType.totalWeight:
        return 'Total Weight - Combined weight of all valid catches';
      case ScoringType.totalLength:
        return 'Total Length - Combined length of all valid catches';
      case ScoringType.biggestCatch:
        return 'Biggest Catch - Single largest catch by weight';
      case ScoringType.pointSystem:
        return 'Point System - Points awarded based on catch criteria';
      case ScoringType.custom:
        return 'Custom Scoring - See detailed rules below';
      default:
        return 'Unknown scoring type';
    }
  }
}
