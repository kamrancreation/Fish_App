import 'package:flutter/material.dart';
import '../models/expert_content.dart';

class ContentSearch extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onSearch;
  final Function({
    ContentCategory? category,
    ExpertLevel? level,
  }) onFilterChanged;

  const ContentSearch({
    super.key,
    required this.controller,
    required this.onSearch,
    required this.onFilterChanged,
  });

  @override
  State<ContentSearch> createState() => _ContentSearchState();
}

class _ContentSearchState extends State<ContentSearch> {
  bool _showFilters = false;
  ContentCategory? _selectedCategory;
  ExpertLevel? _selectedLevel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                  hintText: 'Search expert content...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: widget.controller.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            widget.controller.clear();
                            widget.onSearch('');
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onChanged: widget.onSearch,
              ),
            ),
            IconButton(
              icon: Icon(
                _showFilters ? Icons.filter_list_off : Icons.filter_list,
                color: _showFilters ? Theme.of(context).primaryColor : null,
              ),
              onPressed: () {
                setState(() {
                  _showFilters = !_showFilters;
                });
              },
            ),
          ],
        ),
        if (_showFilters) ...[
          const SizedBox(height: 16),
          _buildFilters(),
        ],
      ],
    );
  }

  Widget _buildFilters() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Filters',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildCategoryFilter(),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildLevelFilter(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _clearFilters,
                  child: const Text('Clear'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _applyFilters,
                  child: const Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryFilter() {
    return DropdownButtonFormField<ContentCategory>(
      value: _selectedCategory,
      decoration: const InputDecoration(
        labelText: 'Category',
        border: OutlineInputBorder(),
      ),
      items: ContentCategory.values.map((category) {
        return DropdownMenuItem(
          value: category,
          child: Text(
            category.name.toUpperCase(),
            style: const TextStyle(fontSize: 14),
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedCategory = value;
        });
      },
    );
  }

  Widget _buildLevelFilter() {
    return DropdownButtonFormField<ExpertLevel>(
      value: _selectedLevel,
      decoration: const InputDecoration(
        labelText: 'Level',
        border: OutlineInputBorder(),
      ),
      items: ExpertLevel.values.map((level) {
        return DropdownMenuItem(
          value: level,
          child: Text(
            level.name.toUpperCase(),
            style: const TextStyle(fontSize: 14),
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedLevel = value;
        });
      },
    );
  }

  void _clearFilters() {
    setState(() {
      _selectedCategory = null;
      _selectedLevel = null;
    });
    widget.onFilterChanged(
      category: null,
      level: null,
    );
  }

  void _applyFilters() {
    widget.onFilterChanged(
      category: _selectedCategory,
      level: _selectedLevel,
    );
  }
}
