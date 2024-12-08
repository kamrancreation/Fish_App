import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/social_post.dart';
import '../widgets/social_post_card.dart';
import '../../shared/widgets/loading_indicator.dart';

class DiscoverScreen extends ConsumerStatefulWidget {
  const DiscoverScreen({super.key});

  @override
  ConsumerState<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends ConsumerState<DiscoverScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      // Load more content
      // ref.read(discoverProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: _isSearching
                  ? TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            setState(() {
                              _isSearching = false;
                            });
                          },
                        ),
                      ),
                      onSubmitted: (value) {
                        // Perform search
                      },
                    )
                  : const Text('Discover'),
              actions: [
                if (!_isSearching)
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        _isSearching = true;
                      });
                    },
                  ),
              ],
              bottom: TabBar(
                controller: _tabController,
                isScrollable: true,
                tabs: const [
                  Tab(text: 'For You'),
                  Tab(text: 'Trending'),
                  Tab(text: 'Nearby'),
                  Tab(text: 'Events'),
                  Tab(text: 'People'),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildForYouTab(),
            _buildTrendingTab(),
            _buildNearbyTab(),
            _buildEventsTab(),
            _buildPeopleTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildForYouTab() {
    return CustomScrollView(
      slivers: [
        _buildTrendingTopics(),
        _buildRecommendedPosts(),
      ],
    );
  }

  Widget _buildTrendingTopics() {
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ActionChip(
                avatar: const Icon(Icons.trending_up),
                label: Text('#Topic$index'),
                onPressed: () {
                  // Navigate to topic details
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildRecommendedPosts() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return SocialPostCard(
            post: SocialPost(
              id: 'dummy-$index',
              userId: 'user-1',
              type: PostType.text,
              privacy: PostPrivacy.public,
              content: 'Recommended post $index',
              mediaUrls: const [],
              hashtags: const [],
              mentions: const [],
              locationVisible: false,
              stats: const {},
              createdAt: DateTime.now(),
            ),
            onUserTap: (userId) {},
            onLike: (postId) {},
            onComment: (postId) {},
            onShare: (postId) {},
            onSave: (postId) {},
          );
        },
        childCount: 10,
      ),
    );
  }

  Widget _buildTrendingTab() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: ListTile(
            leading: Text(
              '#${index + 1}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            title: const Text('Trending Topic'),
            subtitle: Text('${1000 - index * 100} posts'),
            trailing: const Icon(Icons.trending_up),
            onTap: () {
              // Navigate to trend details
            },
          ),
        );
      },
    );
  }

  Widget _buildNearbyTab() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Icon(Icons.location_on),
                const SizedBox(width: 8),
                const Text('Within 50 miles of your location'),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    // Change location/radius
                  },
                  child: const Text('Change'),
                ),
              ],
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.8,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            'https://via.placeholder.com/150',
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '5 mi',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nearby Location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '10 anglers here',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }

  Widget _buildEventsTab() {
    return CustomScrollView(
      slivers: [
        _buildFeaturedEvents(),
        _buildUpcomingEvents(),
      ],
    );
  }

  Widget _buildFeaturedEvents() {
    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://via.placeholder.com/400x200',
                    fit: BoxFit.cover,
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
                        const Text(
                          'Featured Tournament',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'July 15-16, 2024 • Lake Michigan',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildUpcomingEvents() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              leading: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Icon(
                    Icons.event,
                    color: Colors.white,
                  ),
                ),
              ),
              title: const Text('Upcoming Event'),
              subtitle: const Text('Date • Location'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Register for event
                },
                child: const Text('Register'),
              ),
            ),
          );
        },
        childCount: 10,
      ),
    );
  }

  Widget _buildPeopleTab() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/40'),
          ),
          title: const Text('User Name'),
          subtitle: const Text('Bio preview'),
          trailing: ElevatedButton(
            onPressed: () {
              // Follow user
            },
            child: const Text('Follow'),
          ),
        );
      },
    );
  }
}
