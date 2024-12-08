import 'package:flutter/material.dart';
import '../models/species_model.dart';

class SpeciesInfoCard extends StatelessWidget {
  final SpeciesModel species;
  final VoidCallback? onTap;

  const SpeciesInfoCard({
    super.key,
    required this.species,
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
            // Species image
            if (species.images.isNotEmpty)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  species.images.first,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Species names
                  Text(
                    species.commonName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    species.scientificName,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Conservation status
                  _buildConservationStatus(context),
                  const SizedBox(height: 8),

                  // Key characteristics
                  _buildCharacteristics(),
                  const SizedBox(height: 8),

                  // Current regulations
                  _buildRegulations(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConservationStatus(BuildContext context) {
    final color = _getConservationStatusColor();
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color),
      ),
      child: Text(
        species.conservationStatus.toUpperCase(),
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Color _getConservationStatusColor() {
    switch (species.conservationStatus.toLowerCase()) {
      case 'extinct':
        return Colors.black;
      case 'extinct in wild':
        return Colors.grey;
      case 'critically endangered':
        return Colors.red;
      case 'endangered':
        return Colors.orange;
      case 'vulnerable':
        return Colors.yellow[700]!;
      case 'near threatened':
        return Colors.blue;
      default:
        return Colors.green;
    }
  }

  Widget _buildCharacteristics() {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: [
        _buildCharacteristicChip(
          Icons.straighten,
          'Size: ${species.characteristics['size'] ?? 'Unknown'}',
        ),
        _buildCharacteristicChip(
          Icons.water,
          'Habitat: ${species.habitat['type'] ?? 'Unknown'}',
        ),
        if (species.characteristics['diet'] != null)
          _buildCharacteristicChip(
            Icons.set_meal,
            'Diet: ${species.characteristics['diet']}',
          ),
      ],
    );
  }

  Widget _buildCharacteristicChip(IconData icon, String label) {
    return Chip(
      avatar: Icon(icon, size: 16),
      label: Text(label),
      visualDensity: VisualDensity.compact,
    );
  }

  Widget _buildRegulations(BuildContext context) {
    final currentLimits = species.getCurrentCatchLimits('default');
    if (currentLimits.isEmpty) return const SizedBox.shrink();

    return Card(
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Regulations',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 4),
            Text(
              'Limit: ${currentLimits['daily'] ?? 'No limit'} per day\n'
              'Season: ${currentLimits['season'] ?? 'Year-round'}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
