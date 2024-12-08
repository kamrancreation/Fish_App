import 'package:flutter/material.dart';

class ReferenceSelectorWidget extends StatelessWidget {
  final String selectedReference;
  final Function(String) onReferenceChanged;
  final Function(double) onSizeChanged;

  const ReferenceSelectorWidget({
    super.key,
    required this.selectedReference,
    required this.onReferenceChanged,
    required this.onSizeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Reference Object',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),

          // Reference type selector
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _ReferenceOption(
                icon: Icons.straighten,
                label: 'Ruler',
                isSelected: selectedReference == 'ruler',
                onTap: () => onReferenceChanged('ruler'),
              ),
              const SizedBox(width: 8),
              _ReferenceOption(
                icon: Icons.monetization_on,
                label: 'Coin',
                isSelected: selectedReference == 'coin',
                onTap: () => onReferenceChanged('coin'),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Size input
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Size:',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 80,
                child: TextFormField(
                  initialValue: selectedReference == 'ruler' ? '30' : '2.5',
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    isDense: true,
                    suffixText: selectedReference == 'ruler' ? 'cm' : 'cm',
                    suffixStyle: const TextStyle(color: Colors.white70),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                  onChanged: (value) {
                    final size = double.tryParse(value);
                    if (size != null) {
                      onSizeChanged(size);
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ReferenceOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _ReferenceOption({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).primaryColor
                : Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
