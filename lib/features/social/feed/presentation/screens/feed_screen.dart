import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/feed_post_card.dart';
import '../widgets/create_post_button.dart';
import '../widgets/feed_filter_bar.dart';
import '../../controllers/feed_controller.dart';
import '../../models/feed_models.dart';
import '../../../shared/widgets/error_view.dart';
import '../../../shared/widgets/loading_view.dart';

class FeedScreen extends ConsumerStatefulWidget {
  const FeedScreen({super.key});

  @override
  ConsumerState<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends ConsumerState<FeedScreen> {
  final _scrollController = ScrollController();
  FeedFilter _currentFilter = const FeedFilter();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      ref.read(feedControllerProvider.notifier).loadMorePosts();
    }
  }

  @override
  Widget build(BuildContext context) {
    final feedState = ref.watch(feedControllerProvider);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(feedControllerProvider.notifier).refreshFeed();
        },
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              floating: true,
              title: const Text('FishPro Feed'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // TODO: Implement search
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () async {
                    final newFilter = await showModalBottomSheet<FeedFilter>(
                      context: context,
                      builder: (context) => FeedFilterBar(
                        currentFilter: _currentFilter,
                      ),
                    );
                    if (newFilter != null) {
                      setState(() => _currentFilter = newFilter);
                      ref.read(feedControllerProvider.notifier).applyFilter(newFilter);
                    }
                  },
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CreatePostButton(
                  onPressed: () async {
                    final created = await Navigator.pushNamed(
                      context,
                      '/create-post',
                    );
                    if (created == true) {
                      ref.read(feedControllerProvider.notifier).refreshFeed();
                    }
                  },
                ),
              ),
            ),
            if (feedState.isLoading && feedState.posts.isEmpty)
              const SliverFillRemaining(
                child: LoadingView(),
              )
            else if (feedState.error != null && feedState.posts.isEmpty)
              SliverFillRemaining(
                child: ErrorView(
                  error: feedState.error!,
                  onRetry: () {
                    ref.read(feedControllerProvider.notifier).refreshFeed();
                  },
                ),
              )
            else
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index >= feedState.posts.length) {
                      if (feedState.isLoadingMore) {
                        return const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      return null;
                    }

                    final post = feedState.posts[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: FeedPostCard(
                        post: post,
                        onLike: () {
                          ref.read(feedControllerProvider.notifier).likePost(post.id);
                        },
                        onComment: () async {
                          final commented = await Navigator.pushNamed(
                            context,
                            '/post-details',
                            arguments: post,
                          );
                          if (commented == true) {
                            ref.read(feedControllerProvider.notifier).refreshPost(post.id);
                          }
                        },
                        onShare: () {
                          ref.read(feedControllerProvider.notifier).sharePost(post.id);
                        },
                        onReport: () async {
                          final reported = await showDialog<bool>(
                            context: context,
                            builder: (context) => ReportDialog(post: post),
                          );
                          if (reported == true) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Post reported successfully'),
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                  childCount: feedState.isLoadingMore
                      ? feedState.posts.length + 1
                      : feedState.posts.length,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final created = await Navigator.pushNamed(
            context,
            '/create-post',
          );
          if (created == true) {
            ref.read(feedControllerProvider.notifier).refreshFeed();
          }
        },
        child: const Icon(Icons.add_photo_alternate),
      ),
    );
  }
}
