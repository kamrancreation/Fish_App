import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/models/social_model.dart';

class CommentThreadWidget extends ConsumerStatefulWidget {
  final String postId;
  final Comment comment;
  final Function(String) onReply;
  final VoidCallback onDelete;
  final bool isReply;

  const CommentThreadWidget({
    super.key,
    required this.postId,
    required this.comment,
    required this.onReply,
    required this.onDelete,
    this.isReply = false,
  });

  @override
  ConsumerState<CommentThreadWidget> createState() =>
      _CommentThreadWidgetState();
}

class _CommentThreadWidgetState extends ConsumerState<CommentThreadWidget> {
  bool _isReplying = false;
  final TextEditingController _replyController = TextEditingController();
  final FocusNode _replyFocusNode = FocusNode();
  bool _showReplies = false;

  @override
  void dispose() {
    _replyController.dispose();
    _replyFocusNode.dispose();
    super.dispose();
  }

  void _toggleReply() {
    setState(() {
      _isReplying = !_isReplying;
      if (_isReplying) {
        Future.delayed(const Duration(milliseconds: 100), () {
          _replyFocusNode.requestFocus();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: widget.isReply ? 0 : 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          'https://via.placeholder.com/32',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.comment.userId,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.comment.content,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        _getTimeAgo(widget.comment.createdAt),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(width: 16),
                      if (!widget.isReply)
                        TextButton(
                          onPressed: _toggleReply,
                          child: const Text('Reply'),
                        ),
                      if (widget.comment.replies?.isNotEmpty ?? false)
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _showReplies = !_showReplies;
                            });
                          },
                          child: Text(
                            _showReplies ? 'Hide Replies' : 'Show Replies',
                          ),
                        ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {
                          _showCommentOptions(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (_isReplying)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _replyController,
                      focusNode: _replyFocusNode,
                      decoration: const InputDecoration(
                        hintText: 'Write a reply...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      if (_replyController.text.isNotEmpty) {
                        widget.onReply(_replyController.text);
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
          if (_showReplies && (widget.comment.replies?.isNotEmpty ?? false))
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                children: widget.comment.replies!
                    .map(
                      (reply) => CommentThreadWidget(
                        postId: widget.postId,
                        comment: reply,
                        onReply: widget.onReply,
                        onDelete: widget.onDelete,
                        isReply: true,
                      ),
                    )
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }

  void _showCommentOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.flag),
                title: const Text('Report'),
                onTap: () {
                  Navigator.pop(context);
                  // Implement report functionality
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text('Delete'),
                onTap: () {
                  Navigator.pop(context);
                  widget.onDelete();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  String _getTimeAgo(DateTime dateTime) {
    final difference = DateTime.now().difference(dateTime);
    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()}y';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()}mo';
    } else if (difference.inDays > 0) {
      return '${difference.inDays}d';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m';
    } else {
      return 'now';
    }
  }
}
