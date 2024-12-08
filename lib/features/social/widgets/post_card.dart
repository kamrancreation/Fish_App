import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../core/models/social_model.dart';
import '../../../core/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PostCard extends StatelessWidget {
  final SocialPost post;
  final VoidCallback onLike;
  final Function(String) onComment;
  final VoidCallback? onDelete;

  const PostCard({
    super.key,
    required this.post,
    required this.onLike,
    required this.onComment,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final currentUserId = context.read<AuthService>().currentUser.uid;
    final isLiked = post.likeIds.contains(currentUserId);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          if (post.imageUrls.isNotEmpty) _buildImageCarousel(),
          _buildContent(context),
          if (post.catchDetails.isNotEmpty) _buildCatchDetails(context),
          _buildActionBar(context, isLiked),
          if (post.comments.isNotEmpty) _buildComments(context),
          _buildCommentInput(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(post.userProfileImage ?? ''),
        child: post.userProfileImage == null ? const Icon(Icons.person) : null,
      ),
      title: Text(post.userName ?? 'Unknown User'),
      subtitle: Text(timeago.format(post.createdAt)),
      trailing: onDelete != null
          ? PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'delete') {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Delete Post'),
                      content: const Text(
                        'Are you sure you want to delete this post?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            onDelete?.call();
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
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'delete',
                  child: Text('Delete'),
                ),
              ],
            )
          : null,
    );
  }

  Widget _buildImageCarousel() {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        enlargeCenterPage: false,
      ),
      items: post.imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.error),
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        post.content,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }

  Widget _buildCatchDetails(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Catch Details',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              if (post.catchDetails['species'] != null)
                _buildDetailChip(
                  Icons.catching_pokemon,
                  'Species: ${post.catchDetails['species']}',
                ),
              if (post.catchDetails['weight'] != null)
                _buildDetailChip(
                  Icons.scale,
                  'Weight: ${post.catchDetails['weight']}',
                ),
              if (post.catchDetails['length'] != null)
                _buildDetailChip(
                  Icons.straighten,
                  'Length: ${post.catchDetails['length']}',
                ),
              if (post.catchDetails['lure'] != null)
                _buildDetailChip(
                  Icons.catching_pokemon,
                  'Lure: ${post.catchDetails['lure']}',
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailChip(IconData icon, String label) {
    return Chip(
      avatar: Icon(
        icon,
        size: 16,
      ),
      label: Text(label),
    );
  }

  Widget _buildActionBar(BuildContext context, bool isLiked) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : null,
          ),
          onPressed: onLike,
        ),
        Text('${post.likeIds.length}'),
        IconButton(
          icon: const Icon(Icons.comment_outlined),
          onPressed: () {
            // Focus the comment input
            FocusScope.of(context).requestFocus(FocusNode());
          },
        ),
        Text('${post.comments.length}'),
        const Spacer(),
        if (post.location.isNotEmpty)
          TextButton.icon(
            icon: const Icon(Icons.location_on),
            label: Text(post.location['name'] ?? 'Unknown Location'),
            onPressed: () {
              // TODO: Show location on map
            },
          ),
      ],
    );
  }

  Widget _buildComments(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          ...post.comments.take(3).map((comment) => _buildCommentTile(comment)),
          if (post.comments.length > 3)
            TextButton(
              onPressed: () {
                // TODO: Show all comments in a bottom sheet
              },
              child: Text('View all ${post.comments.length} comments'),
            ),
        ],
      ),
    );
  }

  Widget _buildCommentTile(Comment comment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(comment.userProfileImage ?? ''),
            child: comment.userProfileImage == null
                ? const Icon(Icons.person)
                : null,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: comment.userName ?? 'Unknown User',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' ${comment.content}',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      timeago.format(comment.createdAt),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      '${comment.likeIds.length} likes',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentInput(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
              context.read<AuthService>().currentUser.photoURL ?? '',
            ),
            child: context.read<AuthService>().currentUser.photoURL == null
                ? const Icon(Icons.person)
                : null,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Add a comment...',
                border: InputBorder.none,
              ),
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  onComment(value);
                  controller.clear();
                }
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              final value = controller.text;
              if (value.isNotEmpty) {
                onComment(value);
                controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
