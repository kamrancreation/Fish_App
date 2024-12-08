import 'package:flutter/material.dart';
import '../services/analytics_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SpeciesMigrationCard extends StatefulWidget {
  final List<SpeciesMigration> migrations;

  const SpeciesMigrationCard({
    super.key,
    required this.migrations,
  });

  @override
  State<SpeciesMigrationCard> createState() => _SpeciesMigrationCardState();
}

class _SpeciesMigrationCardState extends State<SpeciesMigrationCard> {
  late GoogleMapController _mapController;
  int _selectedWeekIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  widget.migrations.first.location.latitude,
                  widget.migrations.first.location.longitude,
                ),
                zoom: 10,
              ),
              onMapCreated: (controller) {
                _mapController = controller;
              },
              markers: _buildMarkers(),
              polylines: _buildMigrationPath(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Migration Pattern',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.migrations.length,
                    itemBuilder: (context, index) {
                      final migration = widget.migrations[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ChoiceChip(
                          label: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Week ${index + 1}',
                                style: TextStyle(
                                  color: _selectedWeekIndex == index
                                      ? Colors.white
                                      : null,
                                ),
                              ),
                              Text(
                                '${migration.catchCount} catches',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: _selectedWeekIndex == index
                                      ? Colors.white70
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          selected: _selectedWeekIndex == index,
                          onSelected: (selected) {
                            if (selected) {
                              setState(() {
                                _selectedWeekIndex = index;
                              });
                              _animateToLocation(migration.location);
                            }
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),
                _buildMigrationDetails(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Set<Marker> _buildMarkers() {
    return widget.migrations.asMap().entries.map((entry) {
      final index = entry.key;
      final migration = entry.value;
      return Marker(
        markerId: MarkerId('week_$index'),
        position: LatLng(
          migration.location.latitude,
          migration.location.longitude,
        ),
        infoWindow: InfoWindow(
          title: 'Week ${index + 1}',
          snippet:
              '${migration.catchCount} catches, ${migration.averageWeight.toStringAsFixed(2)} kg avg',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          index == _selectedWeekIndex
              ? BitmapDescriptor.hueRed
              : BitmapDescriptor.hueAzure,
        ),
      );
    }).toSet();
  }

  Set<Polyline> _buildMigrationPath() {
    if (widget.migrations.length < 2) return {};

    return {
      Polyline(
        polylineId: const PolylineId('migration_path'),
        points: widget.migrations.map((migration) {
          return LatLng(
            migration.location.latitude,
            migration.location.longitude,
          );
        }).toList(),
        color: Colors.blue,
        width: 3,
      ),
    };
  }

  Widget _buildMigrationDetails() {
    final selectedMigration = widget.migrations[_selectedWeekIndex];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Week ${_selectedWeekIndex + 1} Details',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildDetailItem(
                  'Catches',
                  selectedMigration.catchCount.toString(),
                  Icons.catching_pokemon,
                ),
                _buildDetailItem(
                  'Avg Weight',
                  '${selectedMigration.averageWeight.toStringAsFixed(2)} kg',
                  Icons.scale,
                ),
                _buildDetailItem(
                  'Date',
                  _formatDate(selectedMigration.week),
                  Icons.calendar_today,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  void _animateToLocation(Location location) {
    _mapController.animateCamera(
      CameraUpdate.newLatLng(
        LatLng(location.latitude, location.longitude),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}';
  }
}
