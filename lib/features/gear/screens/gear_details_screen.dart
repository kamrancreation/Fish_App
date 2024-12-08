import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../core/models/gear_model.dart';
import '../../../core/services/gear_service.dart';
import 'edit_gear_screen.dart';

class GearDetailsScreen extends StatefulWidget {
  final GearModel gear;

  const GearDetailsScreen({
    super.key,
    required this.gear,
  });

  @override
  State<GearDetailsScreen> createState() => _GearDetailsScreenState();
}

class _GearDetailsScreenState extends State<GearDetailsScreen> {
  final _currencyFormat = NumberFormat.currency(symbol: '\$');

  @override
  Widget build(BuildContext context) {
    final gearService = Provider.of<GearService>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.gear.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () async {
              final updated = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditGearScreen(gear: widget.gear),
                ),
              );
              if (updated != null) {
                setState(() {});
              }
            },
          ),
          PopupMenuButton<String>(
            onSelected: _handleMenuSelection,
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 'maintenance',
                child: Text('Add Maintenance'),
              ),
              const PopupMenuItem(
                value: 'performance',
                child: Text('Log Performance'),
              ),
              if (widget.gear.isActive)
                const PopupMenuItem(
                  value: 'deactivate',
                  child: Text('Mark as Inactive'),
                )
              else
                const PopupMenuItem(
                  value: 'activate',
                  child: Text('Mark as Active'),
                ),
              const PopupMenuItem(
                value: 'delete',
                child: Text('Delete Gear'),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.gear.imageUrls.isNotEmpty)
              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: widget.gear.imageUrls.length,
                  itemBuilder: (context, index) {
                    return Image.network(
                      widget.gear.imageUrls[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBasicInfo(),
                  const Divider(height: 32),
                  _buildSpecifications(),
                  const Divider(height: 32),
                  _buildMaintenanceLog(),
                  const Divider(height: 32),
                  _buildPerformanceStats(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBasicInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Basic Information',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        _buildInfoRow('Brand', widget.gear.brand),
        _buildInfoRow('Model', widget.gear.model),
        _buildInfoRow(
            'Category', widget.gear.category.toString().split('.').last),
        _buildInfoRow(
          'Purchase Date',
          DateFormat.yMMMd().format(widget.gear.purchaseDate),
        ),
        _buildInfoRow(
          'Purchase Price',
          _currencyFormat.format(widget.gear.purchasePrice),
        ),
        _buildInfoRow(
            'Condition', widget.gear.condition.toString().split('.').last),
        if (widget.gear.notes != null)
          _buildInfoRow('Notes', widget.gear.notes!),
      ],
    );
  }

  Widget _buildSpecifications() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Specifications',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        if (widget.gear.specifications.isEmpty)
          const Text('No specifications available')
        else
          ...widget.gear.specifications.entries.map(
            (entry) => _buildInfoRow(entry.key, entry.value.toString()),
          ),
      ],
    );
  }

  Widget _buildMaintenanceLog() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Maintenance Log',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        if (widget.gear.maintenanceLog.isEmpty)
          const Text('No maintenance records available')
        else
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.gear.maintenanceLog.length,
            itemBuilder: (context, index) {
              final entry = widget.gear.maintenanceLog.entries.elementAt(index);
              return Card(
                child: ListTile(
                  title: Text(entry.value['type']),
                  subtitle: Text(entry.value['notes']),
                  trailing: Text(
                    DateFormat.yMMMd().format(
                      DateTime.fromMillisecondsSinceEpoch(
                        int.parse(entry.key),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
      ],
    );
  }

  Widget _buildPerformanceStats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Performance Statistics',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        if (widget.gear.performanceStats.isEmpty)
          const Text('No performance statistics available')
        else
          ...widget.gear.performanceStats.entries.map(
            (entry) => _buildInfoRow(entry.key, entry.value.toString()),
          ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }

  Future<void> _handleMenuSelection(String value) async {
    final gearService = Provider.of<GearService>(context, listen: false);

    switch (value) {
      case 'maintenance':
        await _showMaintenanceDialog();
        break;
      case 'performance':
        await _showPerformanceDialog();
        break;
      case 'activate':
      case 'deactivate':
        try {
          await gearService.toggleGearStatus(
              widget.gear.id, value == 'activate');
          setState(() {});
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    'Gear ${value == 'activate' ? 'activated' : 'deactivated'} successfully'),
              ),
            );
          }
        } catch (e) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: ${e.toString()}')),
            );
          }
        }
        break;
      case 'delete':
        final confirm = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Delete Gear'),
            content: const Text(
                'Are you sure you want to delete this gear? This action cannot be undone.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Delete'),
              ),
            ],
          ),
        );

        if (confirm == true) {
          try {
            await gearService.deleteGear(widget.gear.id);
            if (mounted) {
              Navigator.pop(context, true);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Gear deleted successfully')),
              );
            }
          } catch (e) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: ${e.toString()}')),
              );
            }
          }
        }
        break;
    }
  }

  Future<void> _showMaintenanceDialog() async {
    final gearService = Provider.of<GearService>(context, listen: false);
    final formKey = GlobalKey<FormState>();
    String description = '';
    double? cost;
    DateTime date = DateTime.now();

    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Maintenance Log'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) => value?.isEmpty == true
                    ? 'Please enter a description'
                    : null,
                onSaved: (value) => description = value ?? '',
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Cost (\$)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value?.isEmpty == true) return null;
                  if (double.tryParse(value!) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onSaved: (value) =>
                    cost = value?.isEmpty == true ? null : double.parse(value!),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (picked != null) {
                    date = picked;
                  }
                },
                child: const Text('Select Date'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              if (formKey.currentState?.validate() == true) {
                formKey.currentState?.save();
                Navigator.pop(context, true);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );

    if (result == true) {
      try {
        await gearService.addMaintenanceLog(
          widget.gear.id,
          date,
          description,
          cost,
        );
        setState(() {});
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Maintenance log added successfully')),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: ${e.toString()}')),
          );
        }
      }
    }
  }

  Future<void> _showPerformanceDialog() async {
    final gearService = Provider.of<GearService>(context, listen: false);
    final formKey = GlobalKey<FormState>();
    final stats = <String, dynamic>{};

    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Log Performance'),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Catches'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value?.isEmpty == true) return null;
                  if (int.tryParse(value!) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onSaved: (value) =>
                    stats['catches'] = int.tryParse(value ?? ''),
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Success Rate (%)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value?.isEmpty == true) return null;
                  final rate = double.tryParse(value!);
                  if (rate == null || rate < 0 || rate > 100) {
                    return 'Please enter a valid percentage (0-100)';
                  }
                  return null;
                },
                onSaved: (value) =>
                    stats['successRate'] = double.tryParse(value ?? ''),
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Average Weight (lbs)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value?.isEmpty == true) return null;
                  if (double.tryParse(value!) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onSaved: (value) =>
                    stats['avgWeight'] = double.tryParse(value ?? ''),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              if (formKey.currentState?.validate() == true) {
                formKey.currentState?.save();
                Navigator.pop(context, true);
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );

    if (result == true) {
      try {
        await gearService.updatePerformanceStats(widget.gear.id, stats);
        setState(() {});
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Performance stats updated successfully')),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: ${e.toString()}')),
          );
        }
      }
    }
  }
}
