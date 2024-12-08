import 'package:flutter/material.dart';

class MapFilterChips extends StatefulWidget {
  final Function(List<String>) onFilterChanged;

  const MapFilterChips({
    super.key,
    required this.onFilterChanged,
  });

  @override
  State<MapFilterChips> createState() => _MapFilterChipsState();
}

class _MapFilterChipsState extends State<MapFilterChips> {
  final Set<String> _selectedFilters = {};

  final _filters = [
    const FilterOption(
      label: 'All Spots',
      icon: Icons.place,
      value: 'all',
    ),
    const FilterOption(
      label: 'Premium',
      icon: Icons.workspace_premium,
      value: 'premium',
    ),
    const FilterOption(
      label: 'Popular',
      icon: Icons.trending_up,
      value: 'popular',
    ),
    const FilterOption(
      label: 'Recent',
      icon: Icons.schedule,
      value: 'recent',
    ),
    const FilterOption(
      label: 'Verified',
      icon: Icons.verified,
      value: 'verified',
    ),
    const FilterOption(
      label: 'Bass',
      icon: Icons.catching_pokemon,
      value: 'bass',
    ),
    const FilterOption(
      label: 'Trout',
      icon: Icons.catching_pokemon,
      value: 'trout',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: _filters.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final filter = _filters[index];
          final isSelected = _selectedFilters.contains(filter.value);

          return FilterChip(
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  filter.icon,
                  size: 18,
                  color: isSelected
                      ? Theme.of(context).colorScheme.onSecondaryContainer
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 8),
                Text(filter.label),
              ],
            ),
            selected: isSelected,
            onSelected: (selected) {
              setState(() {
                if (selected) {
                  _selectedFilters.add(filter.value);
                } else {
                  _selectedFilters.remove(filter.value);
                }
              });
              widget.onFilterChanged(_selectedFilters.toList());
            },
            showCheckmark: false,
            backgroundColor: Theme.of(context).colorScheme.surface,
            selectedColor: Theme.of(context).colorScheme.secondaryContainer,
            side: BorderSide(
              color: isSelected
                  ? Colors.transparent
                  : Theme.of(context)
                      .colorScheme
                      .outlineVariant
                      .withOpacity(0.2),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
          );
        },
      ),
    );
  }
}

class FilterOption {
  final String label;
  final IconData icon;
  final String value;

  const FilterOption({
    required this.label,
    required this.icon,
    required this.value,
  });
}
