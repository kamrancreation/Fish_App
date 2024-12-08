import 'package:flutter/material.dart';

class CatchLocationPicker extends StatefulWidget {
  final String? initialSpotId;
  final ValueChanged<String> onLocationSelected;

  const CatchLocationPicker({
    super.key,
    this.initialSpotId,
    required this.onLocationSelected,
  });

  @override
  State<CatchLocationPicker> createState() => _CatchLocationPickerState();
}

class _CatchLocationPickerState extends State<CatchLocationPicker> {
  late String? _selectedSpotId;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _selectedSpotId = widget.initialSpotId;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // TODO: Get from provider
    final nearbySpots = List.generate(
      5,
      (index) => Spot(
        id: 'spot_$index',
        name: 'Lake View Point ${index + 1}',
        description: 'Beautiful lake spot with clear water',
        latitude: 37.7749,
        longitude: -122.4194,
        rating: 4.5,
        imageUrl: 'https://example.com/image$index.jpg',
        distance: '${index + 1} km away',
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Location',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: colorScheme.outlineVariant.withOpacity(0.2),
            ),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.place,
                  color: colorScheme.primary,
                ),
                title: Text(
                  _selectedSpotId != null
                      ? nearbySpots
                          .firstWhere((s) => s.id == _selectedSpotId)
                          .name
                      : 'Select Location',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  _selectedSpotId != null
                      ? nearbySpots
                          .firstWhere((s) => s.id == _selectedSpotId)
                          .distance
                      : 'Choose from nearby spots or add new',
                ),
                trailing: IconButton(
                  icon: Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                  ),
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                ),
              ),
              AnimatedCrossFade(
                firstChild: Container(height: 0),
                secondChild: Column(
                  children: [
                    const Divider(height: 1),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: nearbySpots.length,
                      itemBuilder: (context, index) {
                        final spot = nearbySpots[index];
                        return RadioListTile<String>(
                          value: spot.id,
                          groupValue: _selectedSpotId,
                          onChanged: (value) {
                            setState(() {
                              _selectedSpotId = value;
                              _isExpanded = false;
                            });
                            if (value != null) {
                              widget.onLocationSelected(value);
                            }
                          },
                          title: Text(spot.name),
                          subtitle: Text(spot.distance),
                          secondary: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: colorScheme.primaryContainer,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.landscape,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        );
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: colorScheme.primary,
                        child: Icon(
                          Icons.add_location_alt,
                          color: colorScheme.onPrimary,
                        ),
                      ),
                      title: Text(
                        'Add New Spot',
                        style: TextStyle(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // TODO: Navigate to add spot
                      },
                    ),
                  ],
                ),
                crossFadeState: _isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 200),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
