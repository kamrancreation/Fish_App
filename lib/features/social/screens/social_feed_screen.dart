import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/models/social_model.dart';
import '../../../core/services/social_service.dart';
import '../widgets/post_card.dart';
import '../widgets/comment_thread_widget.dart';
import 'create_post_screen.dart';

class SocialFeedScreen extends ConsumerStatefulWidget {
  const SocialFeedScreen({super.key});

  @override
  ConsumerState<SocialFeedScreen> createState() => _SocialFeedScreenState();
}

class _SocialFeedScreenState extends ConsumerState<SocialFeedScreen> {
  final SocialService _socialService = SocialService();
  final ScrollController _scrollController = ScrollController();
  List<SocialPost> _posts = [];
  bool _isLoading = false;
  bool _hasMore = true;
  StreamSubscription? _feedSubscription;

  @override
  void initState() {
    super.initState();
    _loadPosts();
    _scrollController.addListener(_onScroll);
    _setupRealTimeUpdates();
  }

  @override
  void dispose() {
    _feedSubscription?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _setupRealTimeUpdates() {
    final userId = ref.read(authProvider).currentUser?.uid;
    if (userId == null) return;

    _feedSubscription = _socialService.getFeedStream(userId).listen((posts) {
      setState(() {
        _posts = posts;
      });
    });
  }

  Future<void> _loadPosts() async {
    if (_isLoading || !_hasMore) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final userId = ref.read(authProvider).currentUser?.uid;
      if (userId == null) return;

      final newPosts = await _socialService.getFeedPosts(
        userId,
        limit: 20,
      );

      setState(() {
        _posts.addAll(newPosts);
        _hasMore = newPosts.length >= 20;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error loading posts: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadPosts();
    }
  }

  Future<void> _refreshFeed() async {
    setState(() {
      _posts.clear();
      _hasMore = true;
    });
    await _loadPosts();
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = ref.watch(authProvider).currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('FishPro Social'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/discover');
            },
          ),
          IconButton(
            icon: const Icon(Icons.group),
            onPressed: () {
              Navigator.pushNamed(context, '/clubs');
            },
          ),
          IconButton(
            icon: const Icon(Icons.event),
            onPressed: () {
              Navigator.pushNamed(context, '/events');
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _refreshFeed,
        child: _posts.isEmpty && !_isLoading
            ? _buildEmptyState()
            : ListView.builder(
                controller: _scrollController,
                itemCount: _posts.length + (_isLoading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == _posts.length) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  final post = _posts[index];

                  return PostCard(
                    post: post,
                    onLike: () async {
                      final userId = ref.read(authProvider).currentUser?.uid;
                      if (userId != null) {
                        await _socialService.toggleLike(post.id, userId);
                      }
                    },
                    onComment: (String content) async {
                      final userId = ref.read(authProvider).currentUser?.uid;
                      if (userId != null) {
                        final comment = Comment(
                          id: DateTime.now().toIso8601String(),
                          userId: userId,
                          content: content,
                          createdAt: DateTime.now(),
                          likeIds: [],
                          replies: [],
                        );
                        await _socialService.addComment(post.id, comment);
                      }
                    },
                    onViewComments: () {
                      _showCommentsSheet(context, post);
                    },
                    onDelete: post.userId == currentUser?.uid
                        ? () async {
                            await _socialService.deletePost(post.id);
                          }
                        : null,
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push<bool>(
            context,
            MaterialPageRoute(
              builder: (context) => const CreatePostScreen(),
            ),
          );

          if (result == true) {
            _refreshFeed();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.feed_outlined,
            size: 64,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 16),
          Text(
            'No posts yet',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Be the first to share your fishing adventure!',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreatePostScreen(),
                ),
              );
            },
            icon: const Icon(Icons.add),
            label: const Text('Create Post'),
          ),
        ],
      ),
    );
  }

  void _showCommentsSheet(BuildContext context, SocialPost post) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.9,
          minChildSize: 0.5,
          maxChildSize: 0.95,
          builder: (context, scrollController) {
            return StreamBuilder<List<Comment>>(
              stream: _socialService.getCommentsStream(post.id),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }

                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                final comments = snapshot.data!;

                return Column(
                  children: [
                    AppBar(
                      title: const Text('Comments'),
                      leading: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: comments.length,
                        itemBuilder: (context, index) {
                          return CommentThreadWidget(
                            postId: post.id,
                            comment: comments[index],
                            onReply: (String content) async {
                              final userId =
                                  ref.read(authProvider).currentUser?.uid;
                              if (userId != null) {
                                final reply = Comment(
                                  id: DateTime.now().toIso8601String(),
                                  userId: userId,
                                  content: content,
                                  createdAt: DateTime.now(),
                                  likeIds: [],
                                  replies: [],
                                );
                                await _socialService.addReply(
                                  post.id,
                                  comments[index].id,
                                  reply,
                                );
                              }
                            },
                            onDelete: comments[index].userId ==
                                    ref.read(authProvider).currentUser?.uid
                                ? () async {
                                    await _socialService.deleteComment(
                                      post.id,
                                      comments[index].id,
                                    );
                                  }
                                : () {},
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
