import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/models/profile_model.dart';
import '../../../core/services/profile_service.dart';
import '../../../core/services/auth_service.dart';
import '../screens/profile_screen.dart';

class ProfileCard extends StatefulWidget {
  final UserProfile profile;

  const ProfileCard({super.key, required this.profile});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  bool _isFollowing = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _checkFollowStatus();
  }

  Future<void> _checkFollowStatus() async {
    final currentUserId =
        Provider.of<AuthService>(context, listen: false).currentUser.uid;
    if (currentUserId != null) {
      setState(() {
        _isFollowing = widget.profile.followers.contains(currentUserId);
      });
    }
  }

  Future<void> _toggleFollow() async {
    final currentUserId =
        Provider.of<AuthService>(context, listen: false).currentUser.uid;
    if (currentUserId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please sign in to follow users')),
      );
      return;
    }

    setState(() => _isLoading = true);
    try {
      final profileService =
          Provider.of<ProfileService>(context, listen: false);
      if (_isFollowing) {
        await profileService.unfollowUser(currentUserId, widget.profile.id);
      } else {
        await profileService.followUser(currentUserId, widget.profile.id);
      }
      setState(() => _isFollowing = !_isFollowing);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _viewProfile() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ProfileScreen(
          userId: widget.profile.id,
          isCurrentUser: false,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: _viewProfile,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: widget.profile.photoURL != null
                    ? NetworkImage(widget.profile.photoURL!)
                    : null,
                child: widget.profile.photoURL == null
                    ? const Icon(Icons.person, size: 30)
                    : null,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.profile.displayName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (widget.profile.location != null) ...[
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.location_on, size: 16),
                          const SizedBox(width: 4),
                          Text(widget.profile.location!),
                        ],
                      ),
                    ],
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        _StatChip(
                          label: 'Catches',
                          value: widget.profile.totalCatches.toString(),
                        ),
                        const SizedBox(width: 8),
                        _StatChip(
                          label: 'Following',
                          value: widget.profile.following.length.toString(),
                        ),
                        const SizedBox(width: 8),
                        _StatChip(
                          label: 'Followers',
                          value: widget.profile.followers.length.toString(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    if (widget.profile.favoriteSpecies.isNotEmpty)
                      Wrap(
                        spacing: 4,
                        runSpacing: 4,
                        children: widget.profile.favoriteSpecies
                            .take(3)
                            .map((species) => Chip(
                                  label: Text(
                                    species,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  visualDensity: VisualDensity.compact,
                                ))
                            .toList(),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              _isLoading
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : IconButton(
                      icon: Icon(
                        _isFollowing ? Icons.person_remove : Icons.person_add,
                        color: _isFollowing
                            ? Theme.of(context).colorScheme.error
                            : Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: _toggleFollow,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  final String label;
  final String value;

  const _StatChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
          ),
        ],
      ),
    );
  }
}
