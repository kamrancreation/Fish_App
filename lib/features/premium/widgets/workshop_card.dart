import 'package:flutter/material.dart';
import '../models/workshop.dart';

class WorkshopCard extends StatelessWidget {
  final Workshop workshop;
  final VoidCallback onRegister;

  const WorkshopCard({
    super.key,
    required this.workshop,
    required this.onRegister,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (workshop.thumbnailUrl != null)
            Image.network(
              workshop.thumbnailUrl!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        workshop.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    _buildStatusChip(),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  workshop.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                _buildExpertInfo(),
                const SizedBox(height: 16),
                _buildScheduleInfo(),
                const SizedBox(height: 16),
                _buildTopics(),
                const SizedBox(height: 16),
                _buildRequirements(),
                const SizedBox(height: 16),
                _buildRegistrationSection(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _getStatusColor(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        workshop.status.name.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildExpertInfo() {
    return Row(
      children: [
        const CircleAvatar(
          child: Icon(Icons.person),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workshop.expertName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Expert Instructor'),
          ],
        ),
      ],
    );
  }

  Widget _buildScheduleInfo() {
    return Card(
      color: Colors.blue.shade50,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            _buildScheduleRow(
              Icons.calendar_today,
              'Date',
              _formatDate(workshop.startTime),
            ),
            const SizedBox(height: 8),
            _buildScheduleRow(
              Icons.access_time,
              'Time',
              '${_formatTime(workshop.startTime)} - ${_formatTime(workshop.endTime)}',
            ),
            const SizedBox(height: 8),
            _buildScheduleRow(
              Icons.people,
              'Participants',
              '${workshop.currentParticipants ?? 0}/${workshop.maxParticipants}',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.blue.shade700),
        const SizedBox(width: 8),
        Text(
          '$label:',
          style: TextStyle(
            color: Colors.blue.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8),
        Text(value),
      ],
    );
  }

  Widget _buildTopics() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Topics Covered',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: workshop.topics.map((topic) {
            return Chip(
              label: Text(topic),
              backgroundColor: Colors.grey.shade200,
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildRequirements() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Requirements',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        ...workshop.requirements.entries.map(
          (entry) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              children: [
                const Icon(Icons.check_circle_outline, size: 16),
                const SizedBox(width: 8),
                Expanded(child: Text(entry.value.toString())),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRegistrationSection(BuildContext context) {
    final isRegistrationClosed = workshop.currentParticipants != null &&
        workshop.currentParticipants! >= workshop.maxParticipants;

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: isRegistrationClosed ? null : onRegister,
            child: Text(
              isRegistrationClosed ? 'Workshop Full' : 'Register Now',
            ),
          ),
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: const Icon(Icons.share),
          onPressed: () {
            // Implement share functionality
          },
        ),
      ],
    );
  }

  Color _getStatusColor() {
    return switch (workshop.status) {
      WorkshopStatus.upcoming => Colors.blue,
      WorkshopStatus.live => Colors.green,
      WorkshopStatus.completed => Colors.grey,
      WorkshopStatus.cancelled => Colors.red,
    };
  }

  String _formatDate(DateTime date) {
    return '${date.month}/${date.day}/${date.year}';
  }

  String _formatTime(DateTime time) {
    final hour = time.hour > 12 ? time.hour - 12 : time.hour;
    final period = time.hour >= 12 ? 'PM' : 'AM';
    return '$hour:${time.minute.toString().padLeft(2, '0')} $period';
  }
}
