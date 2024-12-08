import 'package:flutter/material.dart';

class CatchSpeciesPicker extends StatefulWidget {
  final ValueChanged<String> onSpeciesSelected;

  const CatchSpeciesPicker({
    super.key,
    required this.onSpeciesSelected,
  });

  @override
  State<CatchSpeciesPicker> createState() => _CatchSpeciesPickerState();
}

class _CatchSpeciesPickerState extends State<CatchSpeciesPicker> {
  String? _selectedSpecies;
  final TextEditingController _searchController = TextEditingController();

  // TODO: Get from API
  final _commonSpecies = [
    const Species(
      name: 'Bass',
      type: 'Freshwater',
      icon: '🐟',
    ),
    const Species(
      name: 'Trout',
      type: 'Freshwater',
      icon: '🐠',
    ),
    const Species(
      name: 'Salmon',
      type: 'Both',
      icon: '🐟',
    ),
    const Species(
      name: 'Tuna',
      type: 'Saltwater',
      icon: '🐠',
    ),
    const Species(
      name: 'Pike',
      type: 'Freshwater',
      icon: '🐟',
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Species',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search species...',
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onChanged: (value) {
            // TODO: Implement search
          },
        ),
        const SizedBox(height: 16),
        Text(
          'Common Species',
          style: theme.textTheme.titleMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: _commonSpecies.map((species) {
            final isSelected = _selectedSpecies == species.name;
            return FilterChip(
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(species.icon),
                  const SizedBox(width: 8),
                  Text(species.name),
                ],
              ),
              selected: isSelected,
              onSelected: (selected) {
                setState(() {
                  _selectedSpecies = selected ? species.name : null;
                });
                if (selected) {
                  widget.onSpeciesSelected(species.name);
                }
              },
              showCheckmark: false,
              backgroundColor: isSelected
                  ? colorScheme.primaryContainer
                  : colorScheme.surfaceContainerHighest.withOpacity(0.3),
              selectedColor: colorScheme.primaryContainer,
              labelStyle: TextStyle(
                color: isSelected
                    ? colorScheme.onPrimaryContainer
                    : colorScheme.onSurfaceVariant,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
        OutlinedButton.icon(
          onPressed: () {
            // TODO: Navigate to species guide
          },
          icon: const Icon(Icons.menu_book),
          label: const Text('Open Species Guide'),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
          ),
        ),
      ],
    );
  }
}

class Species {
  final String name;
  final String type;
  final String icon;

  const Species({
    required this.name,
    required this.type,
    required this.icon,
  });
}
