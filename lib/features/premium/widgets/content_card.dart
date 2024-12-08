import 'package:flutter/material.dart';
import '../models/expert_content.dart';

class ContentCard extends StatelessWidget {
  final ExpertContent content;
  final VoidCallback onTap;

  const ContentCard({
    super.key,
    required this.content,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (content.thumbnailUrl != null)
              Stack(
                children: [
                  Image.network(
                    content.thumbnailUrl!,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  if (content.format == ContentFormat.video)
                    const Positioned.fill(
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: _buildFormatChip(),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    content.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    content.description,
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(
                          content.metadata?['authorAvatar'] ??
                              'https://via.placeholder.com/24',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          content.authorName,
                          style: Theme.of(context).textTheme.bodySmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildRating(),
                      _buildStats(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormatChip() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: _getFormatColor(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _getFormatIcon(),
            color: Colors.white,
            size: 16,
          ),
          const SizedBox(width: 4),
          Text(
            content.format.name.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRating() {
    if (content.rating == null) return const SizedBox.shrink();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          size: 16,
          color: Colors.amber.shade600,
        ),
        const SizedBox(width: 4),
        Text(
          content.rating!.toStringAsFixed(1),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildStats() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (content.viewCount != null) ...[
          const Icon(Icons.visibility, size: 16),
          const SizedBox(width: 4),
          Text(
            _formatCount(content.viewCount!),
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(width: 8),
        ],
        if (content.bookmarkCount != null) ...[
          const Icon(Icons.bookmark_border, size: 16),
          const SizedBox(width: 4),
          Text(
            _formatCount(content.bookmarkCount!),
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ],
    );
  }

  Color _getFormatColor() {
    return switch (content.format) {
      ContentFormat.video => Colors.red.shade600,
      ContentFormat.interactive => Colors.purple.shade600,
      ContentFormat.live => Colors.green.shade600,
      _ => Colors.blue.shade600,
    };
  }

  IconData _getFormatIcon() {
    return switch (content.format) {
      ContentFormat.video => Icons.play_circle_outline,
      ContentFormat.interactive => Icons.touch_app,
      ContentFormat.live => Icons.live_tv,
      _ => Icons.article,
    };
  }

  String _formatCount(int count) {
    if (count >= 1000000) {
      return '${(count / 1000000).toStringAsFixed(1)}M';
    }
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}K';
    }
    return count.toString();
  }
}
