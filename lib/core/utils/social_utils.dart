class SocialUtils {
  static String formatLikeCount(int count) {
    if (count < 1000) return count.toString();
    if (count < 1000000) return '${(count / 1000).toStringAsFixed(1)}K';
    return '${(count / 1000000).toStringAsFixed(1)}M';
  }

  static String formatCommentCount(int count) {
    if (count == 0) return 'No comments';
    if (count == 1) return '1 comment';
    if (count < 1000) return '$count comments';
    return '${formatLikeCount(count)} comments';
  }

  static String formatShareCount(int count) {
    if (count == 0) return 'No shares';
    if (count == 1) return '1 share';
    if (count < 1000) return '$count shares';
    return '${formatLikeCount(count)} shares';
  }

  static List<String> extractHashtags(String text) {
    final regex = RegExp(r'#\w+');
    return regex.allMatches(text).map((match) => match.group(0)!).toList();
  }

  static List<String> extractMentions(String text) {
    final regex = RegExp(r'@\w+');
    return regex.allMatches(text).map((match) => match.group(0)!).toList();
  }

  static String truncateText(String text, {int maxLength = 100}) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }

  static bool isValidUsername(String username) {
    final regex = RegExp(r'^[a-zA-Z0-9_]{3,20}$');
    return regex.hasMatch(username);
  }

  static String generateShareText(Map<String, dynamic> post) {
    final username = post['username'] as String;
    final species = post['species'] as String?;
    final weight = post['weight'] as double?;
    final location = post['location'] as String?;

    final components = <String>[];
    components.add('Check out $username\'s catch!');

    if (species != null) components.add('Species: $species');
    if (weight != null) components.add('Weight: ${weight}kg');
    if (location != null) components.add('Location: $location');

    components.add('#FishPro #Fishing');
    return components.join('\n');
  }

  static Map<String, dynamic> calculatePostEngagement(
      Map<String, dynamic> post) {
    final likes = post['likes'] as int? ?? 0;
    final comments = post['comments'] as int? ?? 0;
    final shares = post['shares'] as int? ?? 0;
    final views = post['views'] as int? ?? 0;

    final engagement =
        (likes + comments * 2 + shares * 3) / (views > 0 ? views : 1) * 100;

    return {
      'engagementRate': engagement,
      'totalInteractions': likes + comments + shares,
      'interactionBreakdown': {
        'likes': likes,
        'comments': comments,
        'shares': shares,
      },
    };
  }

  static List<String> suggestHashtags(Map<String, dynamic> post) {
    final List<String> hashtags = ['#FishPro', '#Fishing'];

    final species = post['species'] as String?;
    if (species != null) {
      hashtags.add('#${species.replaceAll(' ', '')}');
    }

    final location = post['location'] as String?;
    if (location != null) {
      hashtags.add('#${location.replaceAll(' ', '')}Fishing');
    }

    final technique = post['technique'] as String?;
    if (technique != null) {
      hashtags.add('#${technique.replaceAll(' ', '')}');
    }

    return hashtags;
  }

  static String formatPostPrivacy(String privacy) {
    switch (privacy.toLowerCase()) {
      case 'public':
        return '🌍 Public';
      case 'friends':
        return '👥 Friends Only';
      case 'private':
        return '🔒 Private';
      default:
        return '🌍 Public';
    }
  }

  static bool canUserViewPost(
    Map<String, dynamic> post,
    String viewerId,
    List<String> viewerFriendIds,
  ) {
    final privacy = post['privacy'] as String? ?? 'public';
    final authorId = post['authorId'] as String;

    switch (privacy.toLowerCase()) {
      case 'private':
        return authorId == viewerId;
      case 'friends':
        return authorId == viewerId || viewerFriendIds.contains(authorId);
      case 'public':
      default:
        return true;
    }
  }

  static String generateNotificationText(Map<String, dynamic> interaction) {
    final type = interaction['type'] as String;
    final username = interaction['username'] as String;
    final postId = interaction['postId'] as String;

    switch (type) {
      case 'like':
        return '$username liked your post';
      case 'comment':
        return '$username commented on your post';
      case 'share':
        return '$username shared your post';
      case 'follow':
        return '$username started following you';
      case 'mention':
        return '$username mentioned you in a post';
      default:
        return '$username interacted with your post';
    }
  }
}
