import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/map_bottom_sheet.dart';
import '../widgets/map_search_bar.dart';
import '../widgets/map_filter_chips.dart';
import '../widgets/spot_cluster_layer.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _mapController;
  Spot? _selectedSpot;
  bool _isBottomSheetExpanded = false;

  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // San Francisco
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: Stack(
        children: [
          // Map Layer
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            compassEnabled: false,
            onMapCreated: (controller) {
              _mapController = controller;
              _setMapStyle(controller, theme.brightness == Brightness.dark);
            },
            markers: _buildMarkers(),
            onTap: (_) {
              if (_selectedSpot != null) {
                setState(() {
                  _selectedSpot = null;
                  _isBottomSheetExpanded = false;
                });
              }
            },
          ),

          // Search Bar
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            left: 16,
            right: 16,
            child: MapSearchBar(
              onLocationSelected: (location) {
                _mapController.animateCamera(
                  CameraUpdate.newLatLngZoom(
                    LatLng(location.latitude, location.longitude),
                    15,
                  ),
                );
              },
            ),
          ),

          // Filter Chips
          Positioned(
            top: MediaQuery.of(context).padding.top + 80,
            left: 0,
            right: 0,
            height: 48,
            child: MapFilterChips(
              onFilterChanged: (filters) {
                // Apply filters to spots
              },
            ),
          ),

          // Action Buttons
          Positioned(
            right: 16,
            bottom: _selectedSpot != null ? 300 : 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton.small(
                  heroTag: 'locate',
                  onPressed: _getCurrentLocation,
                  child: const Icon(Icons.my_location),
                ),
                const SizedBox(height: 8),
                FloatingActionButton.small(
                  heroTag: 'layers',
                  onPressed: _toggleMapType,
                  child: const Icon(Icons.layers),
                ),
                const SizedBox(height: 8),
                FloatingActionButton(
                  heroTag: 'add',
                  onPressed: _addNewSpot,
                  child: const Icon(Icons.add_location_alt),
                ),
              ],
            ),
          ),

          // Bottom Sheet
          if (_selectedSpot != null)
            MapBottomSheet(
              spot: _selectedSpot!,
              isExpanded: _isBottomSheetExpanded,
              onExpandChanged: (expanded) {
                setState(() {
                  _isBottomSheetExpanded = expanded;
                });
              },
            ),
        ],
      ),
    );
  }

  Set<Marker> _buildMarkers() {
    // TODO: Get spots from provider
    final spots = <Spot>[];
    return spots.map((spot) {
      return Marker(
        markerId: MarkerId(spot.id),
        position: LatLng(spot.latitude, spot.longitude),
        onTap: () {
          setState(() {
            _selectedSpot = spot;
            _isBottomSheetExpanded = false;
          });
          _mapController.animateCamera(
            CameraUpdate.newLatLng(LatLng(spot.latitude, spot.longitude)),
          );
        },
        icon: BitmapDescriptor.defaultMarkerWithHue(
          spot.isPremium ? BitmapDescriptor.hueViolet : BitmapDescriptor.hueRed,
        ),
      );
    }).toSet();
  }

  Future<void> _setMapStyle(GoogleMapController controller, bool isDark) async {
    String style = await DefaultAssetBundle.of(context).loadString(
      isDark
          ? 'assets/map_styles/dark_mode.json'
          : 'assets/map_styles/light_mode.json',
    );
    controller.setMapStyle(style);
  }

  void _getCurrentLocation() {
    // TODO: Implement location service
  }

  void _toggleMapType() {
    // TODO: Implement map type toggle
  }

  void _addNewSpot() {
    // TODO: Navigate to add spot screen
  }
}
