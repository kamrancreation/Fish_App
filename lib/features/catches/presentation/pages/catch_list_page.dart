import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/models/catch.dart';
import '../providers/catch_provider.dart';
import '../widgets/catch_card.dart';
import 'catch_form_page.dart';
import 'catch_stats_page.dart';

class CatchListPage extends StatefulWidget {
  const CatchListPage({super.key});

  @override
  State<CatchListPage> createState() => _CatchListPageState();
}

class _CatchListPageState extends State<CatchListPage> {
  String? _selectedSpecies;
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Catches'),
        actions: [
          IconButton(
            icon: const Icon(Icons.analytics),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CatchStatsPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: _showFilterDialog,
          ),
        ],
      ),
      body: Consumer<CatchProvider>(
        builder: (context, catchProvider, child) {
          return StreamBuilder<List<Catch>>(
            stream: catchProvider.getCatches(
              species: _selectedSpecies,
              startDate: _startDate,
              endDate: _endDate,
            ),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              }

              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }

              final catches = snapshot.data!;
              if (catches.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.fishing,
                        size: 64,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'No catches yet',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CatchFormPage(),
                            ),
                          );
                        },
                        child: const Text('Log Your First Catch'),
                      ),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () async {
                  // Refresh will happen automatically due to StreamBuilder
                },
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: catches.length,
                  itemBuilder: (context, index) {
                    final catch_ = catches[index];
                    return Dismissible(
                      key: Key(catch_.id),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 16),
                        color: Colors.red,
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                      confirmDismiss: (direction) async {
                        return await showDialog<bool>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Delete Catch'),
                            content: const Text(
                              'Are you sure you want to delete this catch?',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text(
                                  'Delete',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ) ??
                            false;
                      },
                      onDismissed: (direction) {
                        catchProvider.deleteCatch(catch_.id);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Catch deleted'),
                          ),
                        );
                      },
                      child: CatchCard(
                        catch_: catch_,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CatchFormPage(
                                initialCatch: catch_,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const CatchFormPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showFilterDialog() async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => _FilterDialog(
        selectedSpecies: _selectedSpecies,
        startDate: _startDate,
        endDate: _endDate,
      ),
    );

    if (result != null) {
      setState(() {
        _selectedSpecies = result['species'] as String?;
        _startDate = result['startDate'] as DateTime?;
        _endDate = result['endDate'] as DateTime?;
      });
    }
  }
}

class _FilterDialog extends StatefulWidget {
  final String? selectedSpecies;
  final DateTime? startDate;
  final DateTime? endDate;

  const _FilterDialog({
    this.selectedSpecies,
    this.startDate,
    this.endDate,
  });

  @override
  State<_FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<_FilterDialog> {
  late String? _species;
  late DateTime? _startDate;
  late DateTime? _endDate;

  @override
  void initState() {
    super.initState();
    _species = widget.selectedSpecies;
    _startDate = widget.startDate;
    _endDate = widget.endDate;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Filter Catches'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Species Dropdown
          DropdownButtonFormField<String?>(
            value: _species,
            decoration: const InputDecoration(
              labelText: 'Species',
            ),
            items: [
              const DropdownMenuItem(
                value: null,
                child: Text('All Species'),
              ),
              ...['Bass', 'Trout', 'Salmon', 'Pike'].map(
                (species) => DropdownMenuItem(
                  value: species,
                  child: Text(species),
                ),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _species = value;
              });
            },
          ),
          const SizedBox(height: 16),

          // Date Range
          Row(
            children: [
              Expanded(
                child: TextButton.icon(
                  icon: const Icon(Icons.calendar_today),
                  label: Text(_startDate == null
                      ? 'Start Date'
                      : _formatDate(_startDate!)),
                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: _startDate ?? DateTime.now(),
                      firstDate:
                          DateTime.now().subtract(const Duration(days: 365 * 2)),
                      lastDate: DateTime.now(),
                    );
                    if (date != null) {
                      setState(() {
                        _startDate = date;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextButton.icon(
                  icon: const Icon(Icons.calendar_today),
                  label: Text(
                      _endDate == null ? 'End Date' : _formatDate(_endDate!)),
                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: _endDate ?? DateTime.now(),
                      firstDate:
                          DateTime.now().subtract(const Duration(days: 365 * 2)),
                      lastDate: DateTime.now(),
                    );
                    if (date != null) {
                      setState(() {
                        _endDate = date;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              _species = null;
              _startDate = null;
              _endDate = null;
            });
          },
          child: const Text('Clear'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, {
              'species': _species,
              'startDate': _startDate,
              'endDate': _endDate,
            });
          },
          child: const Text('Apply'),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
