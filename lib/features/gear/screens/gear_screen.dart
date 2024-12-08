import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/state/app_state.dart';
import '../../../core/widgets/common_widgets.dart';
import '../../../core/models/gear_model.dart';

class GearScreen extends StatefulWidget {
  const GearScreen({super.key});

  @override
  State<GearScreen> createState() => _GearScreenState();
}

class _GearScreenState extends State<GearScreen> {
  GearCategory _selectedCategory = GearCategory.rod;

  Widget _buildGearList(List<GearModel> gearList) {
    if (gearList.isEmpty) {
      return EmptyStateWidget(
        message: 'No ${_selectedCategory.toString().split('.').last} found',
        icon: Icons.inventory,
        actionLabel: 'Add New',
        onActionPressed: () {
          // TODO: Navigate to add gear screen
        },
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: gearList.length,
      itemBuilder: (context, index) {
        final gear = gearList[index];
        return FishProCard(
          onTap: () {
            // TODO: Navigate to gear details
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (gear.imageUrls.isNotEmpty)
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(gear.imageUrls.first),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  else
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.inventory,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          gear.name,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          '${gear.brand} ${gear.model}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            _buildConditionChip(gear.condition),
                            const SizedBox(width: 8),
                            if (!gear.isActive)
                              const Chip(
                                label: Text('Inactive'),
                                backgroundColor: Colors.grey,
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (gear.maintenanceLog.isNotEmpty) ...[
                const Divider(),
                Text(
                  'Last Maintenance',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  gear.maintenanceLog.entries.last.value['description'],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildConditionChip(GearCondition condition) {
    Color color;
    switch (condition) {
      case GearCondition.new_:
        color = Colors.green;
        break;
      case GearCondition.excellent:
        color = Colors.blue;
        break;
      case GearCondition.good:
        color = Colors.orange;
        break;
      case GearCondition.fair:
        color = Colors.amber;
        break;
      case GearCondition.poor:
        color = Colors.red;
        break;
    }

    return Chip(
      label: Text(condition.toString().split('.').last),
      backgroundColor: color.withOpacity(0.2),
      labelStyle: TextStyle(color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Gear'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // TODO: Navigate to add gear screen
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: GearCategory.values.length,
              itemBuilder: (context, index) {
                final category = GearCategory.values[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: Text(category.toString().split('.').last),
                    selected: _selectedCategory == category,
                    onSelected: (selected) {
                      if (selected) {
                        setState(() => _selectedCategory = category);
                      }
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Consumer<AppState>(
              builder: (context, state, child) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                final filteredGear = state.userGear
                    .where((gear) => gear.category == _selectedCategory)
                    .toList();

                return _buildGearList(filteredGear);
              },
            ),
          ),
        ],
      ),
    );
  }
}
