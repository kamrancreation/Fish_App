import 'package:flutter/material.dart';
import '../models/ar_marker.dart';

class MarkerOverlay extends StatefulWidget {
  final List<ARMarker> markers;
  final Function(ARMarker) onMarkerTap;
  final Function(BuildContext) onAddMarker;

  const MarkerOverlay({
    super.key,
    required this.markers,
    required this.onMarkerTap,
    required this.onAddMarker,
  });

  @override
  State<MarkerOverlay> createState() => _MarkerOverlayState();
}

class _MarkerOverlayState extends State<MarkerOverlay> {
  bool _expanded = false;
  final Set<MarkerType> _selectedTypes = Set.from(MarkerType.values);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      top: 16,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: _expanded ? 300 : 60,
        child: Card(
          child: _expanded ? _buildExpandedView() : _buildCollapsedView(),
        ),
      ),
    );
  }

  Widget _buildExpandedView() {
    final filteredMarkers = widget.markers
        .where(
          (marker) => _selectedTypes.contains(marker.type),
        )
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: const Text('AR Markers'),
          trailing: IconButton(
            icon: const Icon(Icons.close),
            onPressed: _toggleExpanded,
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Wrap(
            spacing: 8,
            children: MarkerType.values.map((type) {
              return FilterChip(
                label: Text(type.name),
                selected: _selectedTypes.contains(type),
                onSelected: (selected) {
                  setState(() {
                    if (selected) {
                      _selectedTypes.add(type);
                    } else {
                      _selectedTypes.remove(type);
                    }
                  });
                },
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 300,
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: filteredMarkers.length + 1,
            itemBuilder: (context, index) {
              if (index == filteredMarkers.length) {
                return Center(
                  child: TextButton.icon(
                    onPressed: () => widget.onAddMarker(context),
                    icon: const Icon(Icons.add),
                    label: const Text('Add Marker'),
                  ),
                );
              }

              final marker = filteredMarkers[index];
              return Card(
                child: ListTile(
                  leading: Icon(_getMarkerIcon(marker.type)),
                  title: Text(marker.label),
                  subtitle: marker.description != null
                      ? Text(
                          marker.description!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      : null,
                  trailing: IconButton(
                    icon: const Icon(Icons.info),
                    onPressed: () => widget.onMarkerTap(marker),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCollapsedView() {
    return InkWell(
      onTap: _toggleExpanded,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.place),
            const SizedBox(height: 4),
            Text(
              '${widget.markers.length}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  void _toggleExpanded() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  IconData _getMarkerIcon(MarkerType type) {
    return switch (type) {
      MarkerType.fishingSpot => Icons.fishing,
      MarkerType.castingPoint => Icons.sports,
      MarkerType.hazard => Icons.warning,
      MarkerType.technique => Icons.school,
      MarkerType.equipment => Icons.build,
      MarkerType.custom => Icons.place,
    };
  }
}
