import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/models/social_model.dart';
import '../../../core/services/social_service.dart';
import '../../../core/services/auth_service.dart';
import '../widgets/post_card.dart';
import 'create_post_screen.dart';
import 'create_event_screen.dart';

class ClubDetailsScreen extends StatefulWidget {
  final FishingClub club;

  const ClubDetailsScreen({
    super.key,
    required this.club,
  });

  @override
  State<ClubDetailsScreen> createState() => _ClubDetailsScreenState();
}

class _ClubDetailsScreenState extends State<ClubDetailsScreen>
    with SingleTickerProviderStateMixin {
  final SocialService _socialService = SocialService();
  late TabController _tabController;
  List<SocialPost> _posts = [];
  List<FishingEvent> _events = [];
  bool _isLoading = false;
  bool _isMember = false;
  bool _isAdmin = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _checkMembership();
    _loadClubContent();
  }

  void _checkMembership() {
    final userId = context.read<AuthService>().currentUser.uid;
    if (userId != null) {
      setState(() {
        _isMember = widget.club.memberIds.contains(userId);
        _isAdmin = widget.club.adminIds.contains(userId);
      });
    }
  }

  Future<void> _loadClubContent() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Load club posts
      final posts = await _socialService.getClubPosts(widget.club.id);
      final events = await _socialService.getClubEvents(widget.club.id);

      setState(() {
        _posts = posts;
        _events = events;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error loading club content: $e'),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _joinClub() async {
    try {
      final userId = context.read<AuthService>().currentUser.uid;
      if (userId != null) {
        await _socialService.joinClub(widget.club.id, userId);
        setState(() {
          _isMember = true;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error joining club: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _leaveClub() async {
    try {
      final userId = context.read<AuthService>().currentUser.uid;
      if (userId != null) {
        await _socialService.leaveClub(widget.club.id, userId);
        setState(() {
          _isMember = false;
          _isAdmin = false;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error leaving club: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(widget.club.name),
                background: widget.club.imageUrl != null
                    ? Image.network(
                        widget.club.imageUrl!,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        color: Colors.grey[300],
                        child: const Icon(
                          Icons.group,
                          size: 64,
                          color: Colors.white,
                        ),
                      ),
              ),
              actions: [
                if (_isAdmin)
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      // TODO: Navigate to club settings
                    },
                  ),
              ],
            ),
            SliverToBoxAdapter(
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
                                widget.club.description,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${widget.club.memberIds.length} members',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        if (!_isMember)
                          ElevatedButton(
                            onPressed: _joinClub,
                            child: const Text('Join Club'),
                          )
                        else if (!_isAdmin)
                          OutlinedButton(
                            onPressed: _leaveClub,
                            child: const Text('Leave Club'),
                          ),
                      ],
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
                    Tab(text: 'Events'),
                    Tab(text: 'Members'),
                  ],
                ),
              ),
              pinned: true,
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildPostsTab(),
            _buildEventsTab(),
            _buildMembersTab(),
          ],
        ),
      ),
      floatingActionButton: _isMember
          ? FloatingActionButton(
              onPressed: () {
                if (_tabController.index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreatePostScreen(
                        clubId: widget.club.id,
                      ),
                    ),
                  ).then((value) {
                    if (value == true) {
                      _loadClubContent();
                    }
                  });
                } else if (_tabController.index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateEventScreen(
                        clubId: widget.club.id,
                      ),
                    ),
                  ).then((value) {
                    if (value == true) {
                      _loadClubContent();
                    }
                  });
                }
              },
              child: Icon(
                _tabController.index == 0
                    ? Icons.post_add
                    : Icons.event_available,
              ),
            )
          : null,
    );
  }

  Widget _buildPostsTab() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_posts.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.post_add,
              size: 64,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(height: 16),
            const Text('No posts yet'),
            if (_isMember) ...[
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreatePostScreen(
                        clubId: widget.club.id,
                      ),
                    ),
                  ).then((value) {
                    if (value == true) {
                      _loadClubContent();
                    }
                  });
                },
                child: const Text('Create First Post'),
              ),
            ],
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: _loadClubContent,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          final post = _posts[index];
          return PostCard(
            post: post,
            onLike: () async {
              final userId = context.read<AuthService>().currentUser.uid;
              if (userId != null) {
                await _socialService.toggleLike(post.id, userId);
                _loadClubContent();
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
                _loadClubContent();
              }
            },
            onDelete: post.userId == context.read<AuthService>().currentUser.uid
                ? () async {
                    await _socialService.deletePost(post.id);
                    _loadClubContent();
                  }
                : null,
          );
        },
      ),
    );
  }

  Widget _buildEventsTab() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_events.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.event,
              size: 64,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(height: 16),
            const Text('No events yet'),
            if (_isMember) ...[
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateEventScreen(
                        clubId: widget.club.id,
                      ),
                    ),
                  ).then((value) {
                    if (value == true) {
                      _loadClubContent();
                    }
                  });
                },
                child: const Text('Create First Event'),
              ),
            ],
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: _events.length,
      itemBuilder: (context, index) {
        final event = _events[index];
        return Card(
          child: ListTile(
            title: Text(event.name),
            subtitle: Text(event.description),
            trailing: Text(
              '${event.startDate.day}/${event.startDate.month}',
            ),
            onTap: () {
              // TODO: Navigate to event details
            },
          ),
        );
      },
    );
  }

  Widget _buildMembersTab() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: widget.club.memberIds.length,
      itemBuilder: (context, index) {
        final memberId = widget.club.memberIds[index];
        final isAdmin = widget.club.adminIds.contains(memberId);

        return FutureBuilder(
          future: _socialService.getUserProfile(memberId),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Loading...'),
              );
            }

            final user = snapshot.data!;
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.photoURL ?? ''),
                child: user.photoURL == null ? const Icon(Icons.person) : null,
              ),
              title: Text(user.displayName ?? 'Unknown User'),
              trailing: isAdmin
                  ? const Chip(
                      label: Text('Admin'),
                      backgroundColor: Colors.blue,
                      labelStyle: TextStyle(color: Colors.white),
                    )
                  : null,
              onTap: () {
                // TODO: Navigate to user profile
              },
            );
          },
        );
      },
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
