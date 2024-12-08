import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/models/profile_model.dart';
import '../../../core/models/social_model.dart';
import '../../../core/services/profile_service.dart';
import '../../../core/services/auth_service.dart';
import '../widgets/post_card.dart';
import '../widgets/club_card.dart';
import '../widgets/event_card.dart';

class ProfileScreen extends StatefulWidget {
  final String userId;
  final bool isCurrentUser;

  const ProfileScreen({
    super.key,
    required this.userId,
    this.isCurrentUser = false,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ProfileService _profileService;
  late AuthService _authService;
  UserProfile? _profile;
  bool _isFollowing = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _profileService = Provider.of<ProfileService>(context, listen: false);
    _authService = Provider.of<AuthService>(context, listen: false);
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    setState(() => _isLoading = true);
    try {
      final profile = await _profileService.getUserProfile(widget.userId);
      final currentUserId = _authService.currentUser.uid;
      setState(() {
        _profile = profile;
        _isFollowing =
            currentUserId != null && profile.followers.contains(currentUserId);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading profile: $e')),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _toggleFollow() async {
    if (_profile == null) return;

    final currentUserId = _authService.currentUser.uid;
    if (currentUserId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please sign in to follow users')),
      );
      return;
    }

    try {
      if (_isFollowing) {
        await _profileService.unfollowUser(currentUserId, widget.userId);
      } else {
        await _profileService.followUser(currentUserId, widget.userId);
      }
      setState(() => _isFollowing = !_isFollowing);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (_profile == null) {
      return const Scaffold(
        body: Center(child: Text('Profile not found')),
      );
    }

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  if (_profile!.photoURL != null)
                    Image.network(
                      _profile!.photoURL!,
                      fit: BoxFit.cover,
                    )
                  else
                    Container(
                      color: Theme.of(context).primaryColor,
                      child: const Icon(
                        Icons.person,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _profile!.displayName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (_profile!.location != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.white70,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  _profile!.location!,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_profile!.bio != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              _profile!.bio!,
                              style: const TextStyle(color: Colors.white70),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: _SliverAppBarDelegate(
              TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Posts'),
                  Tab(text: 'Stats'),
                  Tab(text: 'Clubs'),
                  Tab(text: 'Events'),
                ],
              ),
            ),
            pinned: true,
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            _PostsTab(userId: widget.userId),
            _StatsTab(profile: _profile!),
            _ClubsTab(userId: widget.userId),
            _EventsTab(userId: widget.userId),
          ],
        ),
      ),
      floatingActionButton: !widget.isCurrentUser
          ? FloatingActionButton.extended(
              onPressed: _toggleFollow,
              icon: Icon(_isFollowing ? Icons.person_remove : Icons.person_add),
              label: Text(_isFollowing ? 'Unfollow' : 'Follow'),
            )
          : FloatingActionButton.extended(
              onPressed: () {
                // TODO: Navigate to edit profile screen
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profile'),
            ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class _PostsTab extends StatelessWidget {
  final String userId;

  const _PostsTab({required this.userId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SocialPost>>(
      future: Provider.of<ProfileService>(context).getUserPosts(userId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        final posts = snapshot.data ?? [];
        if (posts.isEmpty) {
          return const Center(child: Text('No posts yet'));
        }

        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: posts.length,
          itemBuilder: (context, index) => PostCard(post: posts[index]),
        );
      },
    );
  }
}

class _StatsTab extends StatelessWidget {
  final UserProfile profile;

  const _StatsTab({required this.profile});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _StatCard(
          title: 'Total Catches',
          value: profile.totalCatches.toString(),
          icon: Icons.catching_pokemon,
        ),
        _StatCard(
          title: 'Total Posts',
          value: profile.totalPosts.toString(),
          icon: Icons.post_add,
        ),
        _StatCard(
          title: 'Events Attended',
          value: profile.totalEvents.toString(),
          icon: Icons.event,
        ),
        _StatCard(
          title: 'Clubs Joined',
          value: profile.totalClubs.toString(),
          icon: Icons.group,
        ),
        _StatCard(
          title: 'Average Rating',
          value: profile.averageRating.toStringAsFixed(1),
          icon: Icons.star,
        ),
        const Divider(height: 32),
        const Text(
          'Badges',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: profile.badges.map((badge) {
            return Chip(
              avatar: const Icon(Icons.military_tech),
              label: Text(badge),
            );
          }).toList(),
        ),
        const Divider(height: 32),
        const Text(
          'Favorite Species',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: profile.favoriteSpecies.map((species) {
            return Chip(
              avatar: const Icon(Icons.fish),
              label: Text(species),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ClubsTab extends StatelessWidget {
  final String userId;

  const _ClubsTab({required this.userId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FishingClub>>(
      future: Provider.of<ProfileService>(context).getUserClubs(userId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        final clubs = snapshot.data ?? [];
        if (clubs.isEmpty) {
          return const Center(child: Text('No clubs joined yet'));
        }

        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: clubs.length,
          itemBuilder: (context, index) => ClubCard(club: clubs[index]),
        );
      },
    );
  }
}

class _EventsTab extends StatelessWidget {
  final String userId;

  const _EventsTab({required this.userId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FishingEvent>>(
      future: Provider.of<ProfileService>(context).getUserEvents(userId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        final events = snapshot.data ?? [];
        if (events.isEmpty) {
          return const Center(child: Text('No upcoming events'));
        }

        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: events.length,
          itemBuilder: (context, index) => EventCard(event: events[index]),
        );
      },
    );
  }
}
