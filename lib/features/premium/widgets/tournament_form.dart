import 'package:flutter/material.dart';

class TournamentForm extends StatefulWidget {
  final Function(Map<String, dynamic>) onSubmit;

  const TournamentForm({
    super.key,
    required this.onSubmit,
  });

  @override
  State<TournamentForm> createState() => _TournamentFormState();
}

class _TournamentFormState extends State<TournamentForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  DateTime? _startDate;
  DateTime? _endDate;
  final List<String> _rules = [];
  final Map<String, dynamic> _prizes = {};
  final List<String> _sponsors = [];
  final Map<String, dynamic> _verificationRules = {
    'photo': {
      'minPhotos': 3,
      'requiredAngles': ['side', 'measurement', 'location'],
      'timeStampRequired': true,
    },
    'measurement': {
      'arRequired': true,
      'minAccuracy': 0.9,
      'multipleAngles': true,
    },
    'location': {
      'gpsRequired': true,
      'boundaries': true,
      'antiSpoofing': true,
    },
  };

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Tournament Name',
              hintText: 'Enter tournament name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a tournament name';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _descriptionController,
            decoration: const InputDecoration(
              labelText: 'Description',
              hintText: 'Enter tournament description',
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 16),
          _buildDateSelection(),
          const SizedBox(height: 16),
          _buildRulesSection(),
          const SizedBox(height: 16),
          _buildPrizesSection(),
          const SizedBox(height: 16),
          _buildSponsorsSection(),
          const SizedBox(height: 16),
          _buildVerificationRulesSection(),
          const SizedBox(height: 24),
          Center(
            child: ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Create Tournament'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateSelection() {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: const Text('Start Date'),
            subtitle: Text(
              _startDate?.toString() ?? 'Not selected',
            ),
            onTap: () => _selectDate(true),
          ),
        ),
        Expanded(
          child: ListTile(
            title: const Text('End Date'),
            subtitle: Text(
              _endDate?.toString() ?? 'Not selected',
            ),
            onTap: () => _selectDate(false),
          ),
        ),
      ],
    );
  }

  Widget _buildRulesSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tournament Rules',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _rules.length + 1,
              itemBuilder: (context, index) {
                if (index == _rules.length) {
                  return TextButton.icon(
                    onPressed: _addRule,
                    icon: const Icon(Icons.add),
                    label: const Text('Add Rule'),
                  );
                }
                return ListTile(
                  title: Text(_rules[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _removeRule(index),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrizesSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Prizes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _prizes.length + 1,
              itemBuilder: (context, index) {
                if (index == _prizes.length) {
                  return TextButton.icon(
                    onPressed: _addPrize,
                    icon: const Icon(Icons.add),
                    label: const Text('Add Prize'),
                  );
                }
                final entry = _prizes.entries.elementAt(index);
                return ListTile(
                  title: Text(entry.key),
                  subtitle: Text(entry.value.toString()),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _removePrize(entry.key),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSponsorsSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sponsors',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _sponsors.length + 1,
              itemBuilder: (context, index) {
                if (index == _sponsors.length) {
                  return TextButton.icon(
                    onPressed: _addSponsor,
                    icon: const Icon(Icons.add),
                    label: const Text('Add Sponsor'),
                  );
                }
                return ListTile(
                  title: Text(_sponsors[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _removeSponsor(index),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerificationRulesSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Verification Rules',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            ExpansionTile(
              title: const Text('Photo Requirements'),
              children: _buildVerificationOptions(_verificationRules['photo']),
            ),
            ExpansionTile(
              title: const Text('Measurement Requirements'),
              children: _buildVerificationOptions(_verificationRules['measurement']),
            ),
            ExpansionTile(
              title: const Text('Location Requirements'),
              children: _buildVerificationOptions(_verificationRules['location']),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildVerificationOptions(Map<String, dynamic> options) {
    return options.entries.map((entry) {
      if (entry.value is bool) {
        return SwitchListTile(
          title: Text(entry.key),
          value: entry.value,
          onChanged: (value) {
            setState(() {
              options[entry.key] = value;
            });
          },
        );
      }
      return ListTile(
        title: Text(entry.key),
        subtitle: Text(entry.value.toString()),
      );
    }).toList();
  }

  Future<void> _selectDate(bool isStart) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (date != null) {
      setState(() {
        if (isStart) {
          _startDate = date;
        } else {
          _endDate = date;
        }
      });
    }
  }

  void _addRule() {
    showDialog(
      context: context,
      builder: (context) {
        final controller = TextEditingController();
        return AlertDialog(
          title: const Text('Add Rule'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Enter tournament rule',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  setState(() {
                    _rules.add(controller.text);
                  });
                  Navigator.pop(context);
                }
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _removeRule(int index) {
    setState(() {
      _rules.removeAt(index);
    });
  }

  void _addPrize() {
    showDialog(
      context: context,
      builder: (context) {
        final nameController = TextEditingController();
        final valueController = TextEditingController();
        return AlertDialog(
          title: const Text('Add Prize'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Prize name (e.g., "1st Place")',
                ),
              ),
              TextField(
                controller: valueController,
                decoration: const InputDecoration(
                  hintText: 'Prize value',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    valueController.text.isNotEmpty) {
                  setState(() {
                    _prizes[nameController.text] = valueController.text;
                  });
                  Navigator.pop(context);
                }
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _removePrize(String key) {
    setState(() {
      _prizes.remove(key);
    });
  }

  void _addSponsor() {
    showDialog(
      context: context,
      builder: (context) {
        final controller = TextEditingController();
        return AlertDialog(
          title: const Text('Add Sponsor'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Enter sponsor name or URL',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  setState(() {
                    _sponsors.add(controller.text);
                  });
                  Navigator.pop(context);
                }
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _removeSponsor(int index) {
    setState(() {
      _sponsors.removeAt(index);
    });
  }

  void _submitForm() {
    if (_formKey.currentState!.validate() &&
        _startDate != null &&
        _endDate != null) {
      widget.onSubmit({
        'name': _nameController.text,
        'description': _descriptionController.text,
        'startDate': _startDate,
        'endDate': _endDate,
        'rules': _rules,
        'prizes': _prizes,
        'sponsors': _sponsors,
        'verificationRules': _verificationRules,
      });
    }
  }
}
