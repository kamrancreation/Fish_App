import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:carousel_slider/carousel_slider.dart';
import '../models/social_post.dart';

class SocialPostCard extends StatefulWidget {
  final SocialPost post;
  final Function(String) onUserTap;
  final Function(String) onLike;
  final Function(String) onComment;
  final Function(String) onShare;
  final Function(String) onSave;
  final Function(String)? onReport;
  final Function(String)? onDelete;

  const SocialPostCard({
    super.key,
    required this.post,
    required this.onUserTap,
    required this.onLike,
    required this.onComment,
    required this.onShare,
    required this.onSave,
    this.onReport,
    this.onDelete,
  });

  @override
  State<SocialPostCard> createState() => _SocialPostCardState();
}

class _SocialPostCardState extends State<SocialPostCard> {
  int _currentImageIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          if (widget.post.type == PostType.fishCatch)
            _buildCatchDetails()
          else if (widget.post.type == PostType.event)
            _buildEventDetails()
          else if (widget.post.type == PostType.achievement)
            _buildAchievementDetails()
          else
            _buildContent(),
          if (widget.post.hasMedia()) _buildMediaGallery(),
          if (widget.post.location != null && widget.post.locationVisible)
            _buildLocation(),
          _buildEngagement(),
          _buildActions(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return ListTile(
      leading: GestureDetector(
        onTap: () => widget.onUserTap(widget.post.userId),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            widget.post.metadata?['userAvatar'] ?? 'https://via.placeholder.com/40',
          ),
        ),
      ),
      title: GestureDetector(
        onTap: () => widget.onUserTap(widget.post.userId),
        child: Text(
          widget.post.metadata?['userName'] ?? 'Unknown User',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: Text(timeago.format(widget.post.createdAt)),
      trailing: PopupMenuButton<String>(
        onSelected: (value) {
          switch (value) {
            case 'report':
              widget.onReport?.call(widget.post.id);
              break;
            case 'delete':
              widget.onDelete?.call(widget.post.id);
              break;
          }
        },
        itemBuilder: (context) => [
          if (widget.onReport != null)
            const PopupMenuItem(
              value: 'report',
              child: Text('Report Post'),
            ),
          if (widget.onDelete != null)
            const PopupMenuItem(
              value: 'delete',
              child: Text('Delete Post'),
            ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.post.content),
          if (widget.post.hashtags.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Wrap(
                spacing: 4,
                children: widget.post.hashtags
                    .map((tag) => Text(
                          tag,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCatchDetails() {
    final catch_ = widget.post.metadata?['catch'];
    if (catch_ == null) return const SizedBox();

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '🎣 ${catch_['species']}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.scale,
                size: 16,
                color: Theme.of(context).textTheme.bodySmall?.color,
              ),
              const SizedBox(width: 4),
              Text(
                '${catch_['weight']} lb',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 16),
              Icon(
                Icons.straighten,
                size: 16,
                color: Theme.of(context).textTheme.bodySmall?.color,
              ),
              const SizedBox(width: 4),
              Text(
                '${catch_['length']} inches',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          if (catch_['technique'] != null) ...[
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.fishing,
                  size: 16,
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
                const SizedBox(width: 4),
                Text(
                  catch_['technique'],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildEventDetails() {
    final event = widget.post.metadata?['event'];
    if (event == null) return const SizedBox();

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '📅 ${event['title']}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 16,
                color: Theme.of(context).textTheme.bodySmall?.color,
              ),
              const SizedBox(width: 4),
              Text(
                event['date'],
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          if (event['location'] != null) ...[
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
                const SizedBox(width: 4),
                Text(
                  event['location'],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildAchievementDetails() {
    final achievement = widget.post.metadata?['achievement'];
    if (achievement == null) return const SizedBox();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.amber.withOpacity(0.1),
            Colors.amber.withOpacity(0.05),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.emoji_events,
                color: Colors.amber[700],
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                achievement['title'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            achievement['description'],
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          if (achievement['progress'] != null) ...[
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: achievement['progress'].toDouble(),
              backgroundColor: Colors.amber.withOpacity(0.2),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.amber[700]!),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildMediaGallery() {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            aspectRatio: 1,
            viewportFraction: 1,
            enableInfiniteScroll: widget.post.mediaUrls.length > 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentImageIndex = index;
              });
            },
          ),
          items: widget.post.mediaUrls.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Image.network(
                  url,
                  fit: BoxFit.cover,
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
                );
              },
            );
          }).toList(),
        ),
        if (widget.post.mediaUrls.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.post.mediaUrls.asMap().entries.map((entry) {
              return Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 4,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor.withOpacity(
                        _currentImageIndex == entry.key ? 0.9 : 0.4,
                      ),
                ),
              );
            }).toList(),
          ),
      ],
    );
  }

  Widget _buildLocation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            size: 16,
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
          const SizedBox(width: 4),
          Text(
            widget.post.getDisplayLocation(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _buildEngagement() {
    final stats = widget.post.getEngagementStats();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Text(
            '${stats['likes']} likes',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(width: 16),
          Text(
            '${stats['comments']} comments',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          if (stats['shares'] > 0) ...[
            const SizedBox(width: 16),
            Text(
              '${stats['shares']} shares',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildActionButton(
          icon: Icons.favorite_border,
          label: 'Like',
          onTap: () => widget.onLike(widget.post.id),
        ),
        _buildActionButton(
          icon: Icons.comment_outlined,
          label: 'Comment',
          onTap: () => widget.onComment(widget.post.id),
        ),
        _buildActionButton(
          icon: Icons.share_outlined,
          label: 'Share',
          onTap: () => widget.onShare(widget.post.id),
        ),
        _buildActionButton(
          icon: Icons.bookmark_border,
          label: 'Save',
          onTap: () => widget.onSave(widget.post.id),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
            const SizedBox(width: 4),
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
