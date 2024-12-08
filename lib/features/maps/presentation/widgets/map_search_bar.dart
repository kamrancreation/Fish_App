import 'package:flutter/material.dart';

class MapSearchBar extends StatelessWidget {
  final Function(Location) onLocationSelected;

  const MapSearchBar({
    super.key,
    required this.onLocationSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 4,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search fishing spots...',
                  hintStyle: TextStyle(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // TODO: Implement search functionality
                },
              ),
            ),
            Container(
              height: 24,
              width: 1,
              color: colorScheme.outlineVariant,
            ),
            const SizedBox(width: 12),
            IconButton(
              icon: const Icon(Icons.tune),
              onPressed: () {
                // Show advanced filters
              },
              color: colorScheme.primary,
              tooltip: 'Advanced Filters',
            ),
          ],
        ),
      ),
    );
  }
}

class Location {
  final double latitude;
  final double longitude;
  final String address;

  Location({
    required this.latitude,
    required this.longitude,
    required this.address,
  });
}
