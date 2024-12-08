import 'package:flutter/material.dart';

class SponsorPanel extends StatelessWidget {
  final List<String> sponsors;

  const SponsorPanel({
    super.key,
    required this.sponsors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Tournament Sponsors',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: sponsors.length,
            itemBuilder: (context, index) {
              return _buildSponsorLogo(sponsors[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSponsorLogo(String sponsor) {
    return Card(
      margin: const EdgeInsets.only(right: 8),
      child: Container(
        width: 120,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              sponsor,
              height: 40,
              width: 100,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.business,
                  size: 40,
                  color: Colors.grey,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
