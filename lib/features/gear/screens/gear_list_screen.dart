import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/models/gear_model.dart';
import '../../../core/services/gear_service.dart';
import 'add_gear_screen.dart';
import 'gear_details_screen.dart';

class GearListScreen extends StatefulWidget {
  const GearListScreen({super.key});

  @override
  State<GearListScreen> createState() => _GearListScreenState();
}

class _GearListScreenState extends State<GearListScreen> {
  GearCategory? _selectedCategory;
  bool _showInactiveGear = false;

  @override
  Widget build(BuildContext context) {
    final gearService = Provider.of<GearService>(context);
    const userId = 'current_user_id'; // TODO: Get from auth service

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Gear'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: _showFilterDialog,
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddGearScreen(),
                ),
              );
              if (result == true) {
                setState(() {});
              }
            },
          ),
        ],
      ),
      body: FutureBuilder<List<GearModel>>(
        future: _selectedCategory != null
            ? gearService.getGearByCategory(userId, _selectedCategory!)
            : _showInactiveGear
                ? gearService.getUserGear(userId)
                : gearService.getActiveGear(userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          final gear = snapshot.data ?? [];
          if (gear.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('No gear found'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddGearScreen(),
                        ),
                      );
                      if (result == true) {
                        setState(() {});
                      }
                    },
                    child: const Text('Add Gear'),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: gear.length,
            itemBuilder: (context, index) {
              final item = gear[index];
              return Card(
                child: ListTile(
                  leading: item.imageUrls.isNotEmpty
                      ? CircleAvatar(
                          backgroundImage: NetworkImage(item.imageUrls.first),
                        )
                      : CircleAvatar(
                          child: Text(item.name[0].toUpperCase()),
                        ),
                  title: Text(item.name),
                  subtitle: Text(
                    '${item.brand} ${item.model}\n${item.category.toString().split('.').last}',
                  ),
                  trailing: item.isActive
                      ? const Icon(Icons.check_circle, color: Colors.green)
                      : const Icon(Icons.cancel, color: Colors.red),
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GearDetailsScreen(gear: item),
                      ),
                    );
                    if (result == true) {
                      setState(() {});
                    }
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddGearScreen(),
            ),
          );
          if (result == true) {
            setState(() {});
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showFilterDialog() async {
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Filter Gear'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<GearCategory?>(
              value: _selectedCategory,
              hint: const Text('All Categories'),
              isExpanded: true,
              items: [
                const DropdownMenuItem(
                  value: null,
                  child: Text('All Categories'),
                ),
                ...GearCategory.values.map(
                  (category) => DropdownMenuItem(
                    value: category,
                    child: Text(category.toString().split('.').last),
                  ),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedCategory = value;
                });
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              title: const Text('Show Inactive Gear'),
              value: _showInactiveGear,
              onChanged: (value) {
                setState(() {
                  _showInactiveGear = value;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _selectedCategory = null;
                _showInactiveGear = false;
              });
              Navigator.pop(context);
            },
            child: const Text('Reset Filters'),
          ),
        ],
      ),
    );
  }
}
