import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../models/feed_models.dart';
import 'media_carousel.dart';
import 'catch_report_card.dart';
import 'weather_info_card.dart';
import 'location_card.dart';

class FeedPostCard extends StatelessWidget {
  final FeedPost post;
  final VoidCallback onLike;
  final VoidCallback onComment;
  final VoidCallback onShare;
  final VoidCallback onReport;

  const FeedPostCard({
    super.key,
    required this.post,
    required this.onLike,
    required this.onComment,
    required this.onShare,
    required this.onReport,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          if (post.media.isNotEmpty) _buildMediaSection(),
          _buildContent(context),
          if (post.catchReport != null) _buildCatchReport(context),
          if (post.location != null || post.weatherInfo != null)
            _buildLocationAndWeather(context),
          _buildEngagementBar(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(
          post.metadata?['userAvatar'] ?? 'default_avatar_url',
        ),
      ),
      title: Text(
        post.metadata?['userName'] ?? 'Unknown User',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        timeago.format(post.timestamp),
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: PopupMenuButton<String>(
        onSelected: (value) {
          if (value == 'report') {
            onReport();
          }
        },
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'report',
            child: Text('Report Post'),
          ),
        ],
      ),
    );
  }

  Widget _buildMediaSection() {
    return MediaCarousel(
      mediaUrls: post.media,
      aspectRatio: 16 / 9,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            post.content,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          if (post.hashtags.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Wrap(
                spacing: 4,
                children: post.hashtags
                    .map((tag) => Chip(
                          label: Text(
                            '#$tag',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.1),
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCatchReport(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CatchReportCard(catchReport: post.catchReport!),
    );
  }

  Widget _buildLocationAndWeather(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          if (post.location != null)
            Expanded(
              child: LocationCard(location: post.location!),
            ),
          if (post.location != null && post.weatherInfo != null)
            const SizedBox(width: 8),
          if (post.weatherInfo != null)
            Expanded(
              child: WeatherInfoCard(weatherInfo: post.weatherInfo!),
            ),
        ],
      ),
    );
  }

  Widget _buildEngagementBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildEngagementButton(
            icon: Icons.favorite_border,
            label: '${post.likeCount}',
            onPressed: onLike,
          ),
          _buildEngagementButton(
            icon: Icons.chat_bubble_outline,
            label: '${post.commentCount}',
            onPressed: onComment,
          ),
          _buildEngagementButton(
            icon: Icons.share_outlined,
            label: '${post.shareCount}',
            onPressed: onShare,
          ),
        ],
      ),
    );
  }

  Widget _buildEngagementButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Icon(icon, size: 20),
            const SizedBox(width: 4),
            Text(label),
          ],
        ),
      ),
    );
  }
}
