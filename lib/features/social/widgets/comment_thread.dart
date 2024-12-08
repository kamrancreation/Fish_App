import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../models/social_post.dart';

class CommentThread extends StatefulWidget {
  final PostComment comment;
  final List<PostComment> replies;
  final Function(String) onLike;
  final Function(String, String?) onReply;
  final Function(String)? onDelete;
  final Function(String)? onReport;
  final String currentUserId;
  final bool showReplies;

  const CommentThread({
    super.key,
    required this.comment,
    required this.replies,
    required this.onLike,
    required this.onReply,
    required this.currentUserId,
    this.onDelete,
    this.onReport,
    this.showReplies = true,
  });

  @override
  State<CommentThread> createState() => _CommentThreadState();
}

class _CommentThreadState extends State<CommentThread> {
  bool _isReplying = false;
  final _replyController = TextEditingController();

  @override
  void dispose() {
    _replyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildComment(
          widget.comment,
          isReply: false,
        ),
        if (widget.showReplies && widget.replies.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Column(
              children: widget.replies
                  .map((reply) => _buildComment(reply, isReply: true))
                  .toList(),
            ),
          ),
        if (_isReplying)
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 16, top: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _replyController,
                    decoration: InputDecoration(
                      hintText: 'Write a reply...',
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    maxLines: null,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (_replyController.text.isNotEmpty) {
                      widget.onReply(
                        _replyController.text,
                        widget.comment.id,
                      );
                      _replyController.clear();
                      setState(() {
                        _isReplying = false;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildComment(PostComment comment, {required bool isReply}) {
    final isCurrentUser = comment.userId == widget.currentUserId;

    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: isReply ? 8 : 16,
        bottom: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: isReply ? 16 : 20,
            backgroundImage: NetworkImage(
              comment.metadata?['userAvatar'] ?? 'https://via.placeholder.com/40',
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            comment.metadata?['userName'] ?? 'Unknown User',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '• ${timeago.format(comment.createdAt)}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(comment.content),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 4),
                  child: Row(
                    children: [
                      _buildActionButton(
                        icon: Icons.favorite_border,
                        label: comment.stats['likes']?.toString() ?? '0',
                        onTap: () => widget.onLike(comment.id),
                      ),
                      if (!isReply)
                        _buildActionButton(
                          icon: Icons.reply,
                          label: 'Reply',
                          onTap: () {
                            setState(() {
                              _isReplying = !_isReplying;
                            });
                          },
                        ),
                      if (isCurrentUser && widget.onDelete != null)
                        _buildActionButton(
                          icon: Icons.delete_outline,
                          label: 'Delete',
                          onTap: () => widget.onDelete!(comment.id),
                        ),
                      if (!isCurrentUser && widget.onReport != null)
                        _buildActionButton(
                          icon: Icons.flag_outlined,
                          label: 'Report',
                          onTap: () => widget.onReport!(comment.id),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 16,
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
