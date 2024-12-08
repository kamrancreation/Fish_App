import 'package:flutter/material.dart';
import '../models/tournament.dart';

class VerificationPanel extends StatelessWidget {
  final Tournament tournament;

  const VerificationPanel({
    super.key,
    required this.tournament,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Verification Requirements'),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildVerificationRule(
                'Photo Requirements',
                tournament.verificationRules['photo'] ?? {},
              ),
              const SizedBox(height: 16),
              _buildVerificationRule(
                'Measurement Requirements',
                tournament.verificationRules['measurement'] ?? {},
              ),
              const SizedBox(height: 16),
              _buildVerificationRule(
                'Location Requirements',
                tournament.verificationRules['location'] ?? {},
              ),
              const SizedBox(height: 16),
              _buildAntiCheatInfo(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildVerificationRule(String title, Map<String, dynamic> rules) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        ...rules.entries.map(
          (entry) => Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 4),
            child: Row(
              children: [
                const Icon(Icons.check_circle_outline, size: 16),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(entry.value.toString()),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAntiCheatInfo() {
    return Card(
      color: Colors.blue.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.security,
                  color: Colors.blue.shade700,
                ),
                const SizedBox(width: 8),
                Text(
                  'Anti-Cheat System',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Our advanced anti-cheat system includes:',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            _buildAntiCheatFeature(
              'Image authenticity verification',
              'Detects photo manipulation and ensures timestamp accuracy',
            ),
            _buildAntiCheatFeature(
              'GPS validation',
              'Verifies location data and prevents spoofing',
            ),
            _buildAntiCheatFeature(
              'AR measurement validation',
              'Ensures accurate and consistent fish measurements',
            ),
            _buildAntiCheatFeature(
              'Blockchain certification',
              'Immutable record of verified catches',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAntiCheatFeature(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_circle,
            size: 16,
            color: Colors.blue.shade700,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
