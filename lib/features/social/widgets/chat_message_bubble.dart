import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../models/chat_message.dart';

class ChatMessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool isCurrentUser;
  final VoidCallback? onLongPress;
  final Function(String)? onUserTap;

  const ChatMessageBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
    this.onLongPress,
    this.onUserTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment:
            isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isCurrentUser) ...[
            GestureDetector(
              onTap: () => onUserTap?.call(message.senderId),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                  message.metadata?['senderAvatar'] ??
                      'https://via.placeholder.com/32',
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: GestureDetector(
              onLongPress: onLongPress,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: isCurrentUser
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: isCurrentUser
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    if (!isCurrentUser)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(
                          message.metadata?['senderName'] ?? 'Unknown',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    _buildMessageContent(context),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          timeago.format(message.timestamp),
                          style: TextStyle(
                            fontSize: 12,
                            color: isCurrentUser
                                ? Colors.white70
                                : Theme.of(context).textTheme.bodySmall?.color,
                          ),
                        ),
                        if (message.isEdited) ...[
                          const SizedBox(width: 4),
                          Icon(
                            Icons.edit,
                            size: 12,
                            color: isCurrentUser
                                ? Colors.white70
                                : Theme.of(context).textTheme.bodySmall?.color,
                          ),
                        ],
                        if (isCurrentUser) ...[
                          const SizedBox(width: 4),
                          Icon(
                            message.readBy.isEmpty
                                ? Icons.check
                                : Icons.done_all,
                            size: 16,
                            color:
                                message.readBy.isEmpty ? Colors.white70 : Colors.blue,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (isCurrentUser) const SizedBox(width: 24),
        ],
      ),
    );
  }

  Widget _buildMessageContent(BuildContext context) {
    switch (message.type) {
      case MessageType.text:
        return Text(
          message.content,
          style: TextStyle(
            color: isCurrentUser ? Colors.white : null,
          ),
        );

      case MessageType.image:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                message.content,
                width: 200,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const SizedBox(
                    width: 200,
                    height: 150,
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
              ),
            ),
            if (message.metadata?['caption'] != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  message.metadata!['caption'],
                  style: TextStyle(
                    color: isCurrentUser ? Colors.white : null,
                  ),
                ),
              ),
          ],
        );

      case MessageType.location:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://maps.googleapis.com/maps/api/staticmap?'
                    'center=${message.metadata!['latitude']},${message.metadata!['longitude']}'
                    '&zoom=15&size=400x300&markers=color:red'
                    '|${message.metadata!['latitude']},${message.metadata!['longitude']}'
                    '&key=YOUR_API_KEY',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                message.metadata?['locationName'] ?? 'Shared Location',
                style: TextStyle(
                  color: isCurrentUser ? Colors.white : null,
                ),
              ),
            ),
          ],
        );

      case MessageType.fishCatch:
        return Container(
          width: 250,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isCurrentUser
                ? Colors.white.withOpacity(0.1)
                : Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (message.metadata?['catchImage'] != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    message.metadata!['catchImage'],
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  '🎣 ${message.metadata?['species']}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isCurrentUser ? Colors.white : null,
                  ),
                ),
              ),
              Text(
                'Weight: ${message.metadata?['weight']} lb',
                style: TextStyle(
                  color: isCurrentUser ? Colors.white70 : null,
                ),
              ),
              if (message.metadata?['location'] != null)
                Text(
                  '📍 ${message.metadata!['location']}',
                  style: TextStyle(
                    color: isCurrentUser ? Colors.white70 : null,
                  ),
                ),
            ],
          ),
        );

      case MessageType.event:
        return Container(
          width: 250,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isCurrentUser
                ? Colors.white.withOpacity(0.1)
                : Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '📅 ${message.metadata?['title']}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isCurrentUser ? Colors.white : null,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                message.metadata?['date'] ?? '',
                style: TextStyle(
                  color: isCurrentUser ? Colors.white70 : null,
                ),
              ),
              if (message.metadata?['location'] != null)
                Text(
                  '📍 ${message.metadata!['location']}',
                  style: TextStyle(
                    color: isCurrentUser ? Colors.white70 : null,
                  ),
                ),
            ],
          ),
        );

      case MessageType.announcement:
        return Container(
          width: 250,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.orange.withOpacity(0.3),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.campaign, color: Colors.orange),
                  SizedBox(width: 8),
                  Text(
                    'Announcement',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                message.content,
                style: TextStyle(
                  color: isCurrentUser ? Colors.white : null,
                ),
              ),
            ],
          ),
        );
    }
  }
}
