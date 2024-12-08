import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../../../core/models/gear_model.dart';
import '../../../core/services/gear_service.dart';

class AddGearScreen extends StatefulWidget {
  final GearModel? gear; // If provided, we're editing existing gear

  const AddGearScreen({super.key, this.gear});

  @override
  State<AddGearScreen> createState() => _AddGearScreenState();
}

class _AddGearScreenState extends State<AddGearScreen> {
  final _formKey = GlobalKey<FormState>();
  late GearCategory _selectedCategory;
  late GearCondition _selectedCondition;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  DateTime _purchaseDate = DateTime.now();
  List<String> _imageUrls = [];
  final List<File> _imageFiles = [];
  Map<String, dynamic> _specifications = {};

  @override
  void initState() {
    super.initState();
    if (widget.gear != null) {
      _initializeWithExistingGear();
    } else {
      _selectedCategory = GearCategory.rod;
      _selectedCondition = GearCondition.new_;
    }
  }

  void _initializeWithExistingGear() {
    final gear = widget.gear!;
    _nameController.text = gear.name;
    _brandController.text = gear.brand;
    _modelController.text = gear.model;
    _priceController.text = gear.purchasePrice.toString();
    _notesController.text = gear.notes ?? '';
    _selectedCategory = gear.category;
    _selectedCondition = gear.condition;
    _purchaseDate = gear.purchaseDate;
    _imageUrls = List.from(gear.imageUrls);
    _specifications = Map.from(gear.specifications);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _brandController.dispose();
    _modelController.dispose();
    _priceController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.gear == null ? 'Add New Gear' : 'Edit Gear'),
        actions: [
          TextButton(
            onPressed: _saveGear,
            child: const Text('Save'),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageSection(),
              const SizedBox(height: 16),
              _buildBasicInfoSection(),
              const SizedBox(height: 24),
              _buildSpecificationsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Images',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _imageUrls.length + 1,
            itemBuilder: (context, index) {
              if (index == _imageUrls.length) {
                return _buildAddImageButton();
              }
              return _buildImageCard(_imageUrls[index], index);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAddImageButton() {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: const Icon(Icons.add_photo_alternate),
        onPressed: _addImage,
      ),
    );
  }

  Widget _buildImageCard(String url, int index) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 4,
            right: 4,
            child: IconButton(
              icon: const Icon(Icons.delete, color: Colors.white),
              onPressed: () => _removeImage(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBasicInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Basic Information',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        TextFormField(
          controller: _nameController,
          decoration: const InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a name';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: _brandController,
                decoration: const InputDecoration(
                  labelText: 'Brand',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a brand';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextFormField(
                controller: _modelController,
                decoration: const InputDecoration(
                  labelText: 'Model',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a model';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        DropdownButtonFormField<GearCategory>(
          value: _selectedCategory,
          decoration: const InputDecoration(
            labelText: 'Category',
            border: OutlineInputBorder(),
          ),
          items: GearCategory.values.map((category) {
            return DropdownMenuItem(
              value: category,
              child: Text(category.toString().split('.').last),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) {
              setState(() {
                _selectedCategory = value;
              });
            }
          },
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(
                  labelText: 'Purchase Price',
                  border: OutlineInputBorder(),
                  prefixText: '\$',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: InkWell(
                onTap: _selectPurchaseDate,
                child: InputDecorator(
                  decoration: const InputDecoration(
                    labelText: 'Purchase Date',
                    border: OutlineInputBorder(),
                  ),
                  child: Text(
                    DateFormat.yMMMd().format(_purchaseDate),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        DropdownButtonFormField<GearCondition>(
          value: _selectedCondition,
          decoration: const InputDecoration(
            labelText: 'Condition',
            border: OutlineInputBorder(),
          ),
          items: GearCondition.values.map((condition) {
            return DropdownMenuItem(
              value: condition,
              child: Text(condition.toString().split('.').last),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) {
              setState(() {
                _selectedCondition = value;
              });
            }
          },
        ),
        const SizedBox(height: 16),
        TextFormField(
          controller: _notesController,
          decoration: const InputDecoration(
            labelText: 'Notes',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
        ),
      ],
    );
  }

  Widget _buildSpecificationsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Specifications',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            TextButton.icon(
              onPressed: _addSpecification,
              icon: const Icon(Icons.add),
              label: const Text('Add'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        if (_specifications.isEmpty)
          const Text('No specifications added')
        else
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _specifications.length,
            itemBuilder: (context, index) {
              final entry = _specifications.entries.elementAt(index);
              return ListTile(
                title: Text(entry.key),
                subtitle: Text(entry.value.toString()),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _removeSpecification(entry.key),
                ),
              );
            },
          ),
      ],
    );
  }

  Future<void> _selectPurchaseDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _purchaseDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _purchaseDate = picked;
      });
    }
  }

  Future<void> _addImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFiles.add(File(pickedFile.path));
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _imageUrls.removeAt(index);
    });
  }

  void _addSpecification() {
    showDialog(
      context: context,
      builder: (context) => _SpecificationDialog(
        onAdd: (key, value) {
          setState(() {
            _specifications[key] = value;
          });
        },
      ),
    );
  }

  void _removeSpecification(String key) {
    setState(() {
      _specifications.remove(key);
    });
  }

  Future<void> _saveGear() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    try {
      final gearService = Provider.of<GearService>(context, listen: false);
      const userId = 'current_user_id'; // TODO: Get from auth service

      final gear = GearModel(
        id: widget.gear?.id ?? '',
        userId: userId,
        name: _nameController.text,
        brand: _brandController.text,
        model: _modelController.text,
        category: _selectedCategory,
        specifications: _specifications,
        purchaseDate: _purchaseDate,
        purchasePrice: double.parse(_priceController.text),
        condition: _selectedCondition,
        notes: _notesController.text.isEmpty ? null : _notesController.text,
        imageUrls: _imageUrls,
        maintenanceLog: widget.gear?.maintenanceLog ?? {},
        performanceStats: widget.gear?.performanceStats ?? {},
        isActive: true,
        favoriteSpecies: widget.gear?.favoriteSpecies ?? [],
        customAttributes: widget.gear?.customAttributes ?? {},
      );

      if (widget.gear == null) {
        await gearService.createGear(gear, _imageFiles);
      } else {
        await gearService.updateGear(gear.id, gear, newImages: _imageFiles);
      }

      if (mounted) {
        Navigator.pop(context, true);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              widget.gear == null
                  ? 'Gear added successfully'
                  : 'Gear updated successfully',
            ),
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
  }
}

class _SpecificationDialog extends StatefulWidget {
  final void Function(String key, String value) onAdd;

  const _SpecificationDialog({required this.onAdd});

  @override
  State<_SpecificationDialog> createState() => _SpecificationDialogState();
}

class _SpecificationDialogState extends State<_SpecificationDialog> {
  final _keyController = TextEditingController();
  final _valueController = TextEditingController();

  @override
  void dispose() {
    _keyController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Specification'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _keyController,
            decoration: const InputDecoration(
              labelText: 'Specification Name',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _valueController,
            decoration: const InputDecoration(
              labelText: 'Value',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (_keyController.text.isNotEmpty &&
                _valueController.text.isNotEmpty) {
              widget.onAdd(_keyController.text, _valueController.text);
              Navigator.pop(context);
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
