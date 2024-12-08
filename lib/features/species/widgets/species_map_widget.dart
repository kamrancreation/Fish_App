import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/species_model.dart';

class SpeciesMapWidget extends StatefulWidget {
  final SpeciesModel species;
  final Map<String, dynamic> distributionData;
  final LatLng initialPosition;

  const SpeciesMapWidget({
    super.key,
    required this.species,
    required this.distributionData,
    required this.initialPosition,
  });

  @override
  State<SpeciesMapWidget> createState() => _SpeciesMapWidgetState();
}

class _SpeciesMapWidgetState extends State<SpeciesMapWidget> {
  late GoogleMapController _mapController;
  Set<Polygon> _distributionPolygons = {};
  Set<Marker> _hotspotMarkers = {};
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _processDistributionData();
  }

  void _processDistributionData() {
    try {
      // Process distribution polygons
      final regions = widget.distributionData['regions'] as List?;
      if (regions != null) {
        _distributionPolygons = regions.map((region) {
          final points = (region['points'] as List).map((point) {
            return LatLng(
              point['lat'] as double,
              point['lng'] as double,
            );
          }).toList();

          return Polygon(
            polygonId: PolygonId(region['name'] as String),
            points: points,
            fillColor: Colors.blue.withOpacity(0.2),
            strokeColor: Colors.blue,
            strokeWidth: 2,
          );
        }).toSet();
      }

      // Process hotspot markers
      final hotspots = widget.distributionData['hotspots'] as List?;
      if (hotspots != null) {
        _hotspotMarkers = hotspots.map((hotspot) {
          return Marker(
            markerId: MarkerId(hotspot['name'] as String),
            position: LatLng(
              hotspot['lat'] as double,
              hotspot['lng'] as double,
            ),
            infoWindow: InfoWindow(
              title: hotspot['name'] as String,
              snippet: hotspot['description'] as String?,
            ),
          );
        }).toSet();
      }

      setState(() => _isLoading = false);
    } catch (e) {
      print('Error processing distribution data: $e');
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: widget.initialPosition,
            zoom: 8,
          ),
          polygons: _distributionPolygons,
          markers: _hotspotMarkers,
          mapType: MapType.terrain,
          onMapCreated: (controller) {
            _mapController = controller;
            _setMapStyle(controller);
          },
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Column(
            children: [
              _MapButton(
                icon: Icons.layers,
                onPressed: _toggleMapType,
                tooltip: 'Toggle map type',
              ),
              const SizedBox(height: 8),
              _MapButton(
                icon: Icons.my_location,
                onPressed: _goToCurrentLocation,
                tooltip: 'Go to current location',
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Distribution Legend',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        color: Colors.blue.withOpacity(0.2),
                        margin: const EdgeInsets.only(right: 8),
                      ),
                      const Text('Known habitat'),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        margin: const EdgeInsets.only(right: 8),
                      ),
                      const Text('Fishing hotspot'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _setMapStyle(GoogleMapController controller) async {
    // Add custom map style if needed
    // String style = await DefaultAssetBundle.of(context).loadString('assets/map_style.json');
    // controller.setMapStyle(style);
  }

  void _toggleMapType() {
    // Implement map type toggle
  }

  void _goToCurrentLocation() {
    _mapController.animateCamera(
      CameraUpdate.newLatLngZoom(
        widget.initialPosition,
        12,
      ),
    );
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }
}

class _MapButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String tooltip;

  const _MapButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      elevation: 4,
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
        tooltip: tooltip,
      ),
    );
  }
}
