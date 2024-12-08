import 'package:flutter/material.dart';
import '../../domain/models/catch.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

class CatchCard extends StatelessWidget {
  final Catch catch_;
  final VoidCallback? onTap;

  const CatchCard({
    super.key,
    required this.catch_,
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
            // Photo Gallery
            if (catch_.photoUrls.isNotEmpty)
              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: catch_.photoUrls.length,
                  itemBuilder: (context, index) {
                    return Image.network(
                      catch_.photoUrls[index],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(Icons.error_outline),
                        );
                      },
                    );
                  },
                ),
              ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Species and Privacy
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          catch_.species,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      if (catch_.isPrivate)
                        const Icon(Icons.lock, size: 16),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Date and Time
                  Text(
                    DateFormat('MMMM d, y • h:mm a').format(catch_.timestamp),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 16),

                  // Measurements
                  Row(
                    children: [
                      if (catch_.weight != null) ...[
                        _buildMeasurement(
                          context,
                          Icons.scale,
                          '${catch_.weight!.toStringAsFixed(2)} kg',
                        ),
                        const SizedBox(width: 16),
                      ],
                      if (catch_.length != null) ...[
                        _buildMeasurement(
                          context,
                          Icons.straighten,
                          '${catch_.length!.toStringAsFixed(2)} cm',
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Weather
                  if (catch_.weather != null) ...[
                    const Divider(),
                    Row(
                      children: [
                        _buildWeatherInfo(
                          context,
                          Icons.thermostat,
                          '${catch_.weather!.temperature.toStringAsFixed(1)}°C',
                        ),
                        const SizedBox(width: 16),
                        _buildWeatherInfo(
                          context,
                          Icons.air,
                          catch_.weather!.conditions,
                        ),
                        if (catch_.weather!.windSpeed != null) ...[
                          const SizedBox(width: 16),
                          _buildWeatherInfo(
                            context,
                            Icons.speed,
                            '${catch_.weather!.windSpeed!.toStringAsFixed(1)} km/h',
                          ),
                        ],
                      ],
                    ),
                  ],

                  // Tags
                  if (catch_.tags.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 4,
                      runSpacing: 4,
                      children: catch_.tags.map((tag) {
                        return Chip(
                          label: Text(tag),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                        );
                      }).toList(),
                    ),
                  ],

                  // Notes
                  if (catch_.notes?.isNotEmpty ?? false) ...[
                    const SizedBox(height: 8),
                    Text(
                      catch_.notes!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],

                  // Action Buttons
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: onTap,
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {
                          _shareCatch(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMeasurement(BuildContext context, IconData icon, String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Theme.of(context).colorScheme.secondary),
        const SizedBox(width: 4),
        Text(value),
      ],
    );
  }

  Widget _buildWeatherInfo(BuildContext context, IconData icon, String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.grey),
        const SizedBox(width: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  Future<void> _shareCatch(BuildContext context) async {
    final dateStr = DateFormat('MMMM d, y').format(catch_.timestamp);
    String shareText = 'Check out my ${catch_.species} catch from $dateStr!\n\n';

    if (catch_.weight != null) {
      shareText += 'Weight: ${catch_.weight!.toStringAsFixed(2)} kg\n';
    }
    if (catch_.length != null) {
      shareText += 'Length: ${catch_.length!.toStringAsFixed(2)} cm\n';
    }
    if (catch_.weather != null) {
      shareText += '\nWeather: ${catch_.weather!.conditions}, '
          '${catch_.weather!.temperature.toStringAsFixed(1)}°C';
    }
    if (catch_.notes?.isNotEmpty ?? false) {
      shareText += '\n\nNotes: ${catch_.notes}';
    }
    if (catch_.tags.isNotEmpty) {
      shareText += '\n\nTags: ${catch_.tags.join(', ')}';
    }

    shareText += '\n\nShared via FishPro';

    await Share.share(shareText);
  }
}
