import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/models/social_model.dart';
import '../../../core/services/social_service.dart';
import '../../../core/services/auth_service.dart';
import '../widgets/post_card.dart';

class EventDetailsScreen extends StatefulWidget {
  final FishingEvent event;

  const EventDetailsScreen({
    super.key,
    required this.event,
  });

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  final SocialService _socialService = SocialService();
  List<SocialPost> _eventPosts = [];
  bool _isLoading = false;
  bool _isParticipant = false;
  bool _isOrganizer = false;

  @override
  void initState() {
    super.initState();
    _checkParticipation();
    _loadEventContent();
  }

  void _checkParticipation() {
    final userId = context.read<AuthService>().currentUser.uid;
    if (userId != null) {
      setState(() {
        _isParticipant = widget.event.participantIds.contains(userId);
        _isOrganizer = widget.event.organizerId == userId;
      });
    }
  }

  Future<void> _loadEventContent() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final posts = await _socialService.getEventPosts(widget.event.id);
      setState(() {
        _eventPosts = posts;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error loading event content: $e'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _joinEvent() async {
    try {
      final userId = context.read<AuthService>().currentUser.uid;
      if (userId != null) {
        await _socialService.joinEvent(widget.event.id, userId);
        setState(() {
          _isParticipant = true;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error joining event: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _leaveEvent() async {
    try {
      final userId = context.read<AuthService>().currentUser.uid;
      if (userId != null) {
        await _socialService.leaveEvent(widget.event.id, userId);
        setState(() {
          _isParticipant = false;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error leaving event: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.event.name),
        actions: [
          if (_isOrganizer)
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'edit') {
                  // TODO: Navigate to edit event screen
                } else if (value == 'delete') {
                  _showDeleteConfirmation();
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'edit',
                  child: Text('Edit Event'),
                ),
                const PopupMenuItem(
                  value: 'delete',
                  child: Text('Delete Event'),
                ),
              ],
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildEventHeader(),
            _buildEventDetails(),
            _buildParticipantsList(),
            _buildEventPosts(),
          ],
        ),
      ),
      floatingActionButton: _isParticipant
          ? FloatingActionButton(
              onPressed: () {
                // TODO: Navigate to create post screen with event context
              },
              child: const Icon(Icons.add_photo_alternate),
            )
          : null,
    );
  }

  Widget _buildEventHeader() {
    final now = DateTime.now();
    final isUpcoming = widget.event.startDate.isAfter(now);
    final isOngoing = now.isAfter(widget.event.startDate) &&
        now.isBefore(widget.event.endDate);

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.event.name,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.event.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                if (!_isOrganizer && !widget.event.endDate.isBefore(now))
                  _isParticipant
                      ? OutlinedButton(
                          onPressed: _leaveEvent,
                          child: const Text('Leave'),
                        )
                      : ElevatedButton(
                          onPressed: _joinEvent,
                          child: const Text('Join'),
                        ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Chip(
                  label: Text(
                    isOngoing
                        ? 'Ongoing'
                        : isUpcoming
                            ? 'Upcoming'
                            : 'Completed',
                  ),
                  backgroundColor: isOngoing
                      ? Colors.green
                      : isUpcoming
                          ? Colors.blue
                          : Colors.grey,
                  labelStyle: const TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 8),
                Text(
                  '${widget.event.participantIds.length} participants',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventDetails() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Event Details',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Date & Time'),
              subtitle: Text(
                '${_formatDate(widget.event.startDate)} - ${_formatDate(widget.event.endDate)}',
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Location'),
              subtitle: Text(widget.event.location),
            ),
            if (widget.event.rules.isNotEmpty) ...[
              const Divider(),
              ListTile(
                leading: const Icon(Icons.rule),
                title: const Text('Rules'),
                subtitle: Text(widget.event.rules['description'] ?? ''),
              ),
            ],
            if (widget.event.prizes.isNotEmpty) ...[
              const Divider(),
              ListTile(
                leading: const Icon(Icons.emoji_events),
                title: const Text('Prizes'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.event.prizes['first']?.isNotEmpty == true)
                      Text('1st Place: ${widget.event.prizes['first']}'),
                    if (widget.event.prizes['second']?.isNotEmpty == true)
                      Text('2nd Place: ${widget.event.prizes['second']}'),
                    if (widget.event.prizes['third']?.isNotEmpty == true)
                      Text('3rd Place: ${widget.event.prizes['third']}'),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildParticipantsList() {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Participants',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: widget.event.participantIds.length,
              itemBuilder: (context, index) {
                final participantId = widget.event.participantIds[index];
                return FutureBuilder(
                  future: _socialService.getUserProfile(participantId),
                  builder: (context, snapshot) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: snapshot.data?.photoURL != null
                                ? NetworkImage(snapshot.data!.photoURL!)
                                : null,
                            child: snapshot.data?.photoURL == null
                                ? const Icon(Icons.person)
                                : null,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            snapshot.data?.displayName ?? 'Loading...',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventPosts() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_eventPosts.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Icon(Icons.photo_library_outlined, size: 48),
              const SizedBox(height: 8),
              const Text('No posts yet'),
              if (_isParticipant) ...[
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to create post screen
                  },
                  child: const Text('Share First Post'),
                ),
              ],
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Event Posts',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _eventPosts.length,
          itemBuilder: (context, index) {
            final post = _eventPosts[index];
            return PostCard(
              post: post,
              onLike: () async {
                final userId = context.read<AuthService>().currentUser.uid;
                if (userId != null) {
                  await _socialService.toggleLike(post.id, userId);
                  _loadEventContent();
                }
              },
              onComment: (String content) async {
                final userId = context.read<AuthService>().currentUser.uid;
                if (userId != null) {
                  final comment = Comment(
                    id: DateTime.now().toIso8601String(),
                    userId: userId,
                    content: content,
                    createdAt: DateTime.now(),
                    likeIds: [],
                  );
                  await _socialService.addComment(post.id, comment);
                  _loadEventContent();
                }
              },
              onDelete:
                  post.userId == context.read<AuthService>().currentUser.uid
                      ? () async {
                          await _socialService.deletePost(post.id);
                          _loadEventContent();
                        }
                      : null,
            );
          },
        ),
      ],
    );
  }

  void _showDeleteConfirmation() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Event'),
        content: const Text(
          'Are you sure you want to delete this event? This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              try {
                await _socialService.deleteEvent(widget.event.id);
                if (mounted) {
                  Navigator.pop(context, true);
                }
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error deleting event: $e'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute.toString().padLeft(2, '0')}';
  }
}
