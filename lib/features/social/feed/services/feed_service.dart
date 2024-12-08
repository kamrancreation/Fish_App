import 'dart:async';
import '../models/feed_models.dart';
import '../repositories/feed_repository.dart';
import '../../notifications/services/push_notification_service.dart';
import '../../../moderation/services/content_moderation_service.dart';

class FeedService {
  final FeedRepository _feedRepository;
  final PushNotificationService _notificationService;
  final ContentModerationService _moderationService;

  final _feedControllers = <String, StreamController<List<FeedPost>>>{};
  final _commentControllers = <String, StreamController<List<Comment>>>{};

  FeedService({
    FeedRepository? feedRepository,
    PushNotificationService? notificationService,
    ContentModerationService? moderationService,
  })  : _feedRepository = feedRepository ?? FeedRepository(),
        _notificationService = notificationService ?? PushNotificationService(),
        _moderationService = moderationService ?? ContentModerationService();

  // Create post
  Future<FeedPost> createPost({
    required String userId,
    required String content,
    required String type,
    List<String>? media,
    List<String>? hashtags,
    List<String>? mentions,
    Location? location,
    CatchReport? catchReport,
    WeatherInfo? weatherInfo,
    Map<String, dynamic>? metadata,
  }) async {
    // Moderate content
    final moderationResult = await _moderationService.moderateContent(content);
    if (!moderationResult.isApproved) {
      throw Exception(
          'Content violates community guidelines: ${moderationResult.reason}');
    }

    // Create post
    final post = FeedPost(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      userId: userId,
      content: content,
      type: type,
      timestamp: DateTime.now(),
      media: media ?? [],
      hashtags: hashtags ?? [],
      mentions: mentions ?? [],
      location: location,
      catchReport: catchReport,
      weatherInfo: weatherInfo,
      metadata: metadata,
    );

    await _feedRepository.createPost(post);

    // Notify mentioned users
    if (mentions != null && mentions.isNotEmpty) {
      for (final mention in mentions) {
        await _notificationService.sendSocialNotification(
          recipient: mention,
          title: 'New Mention',
          body: 'You were mentioned in a post',
          data: {
            'type': 'mention',
            'postId': post.id,
            'userId': userId,
          },
        );
      }
    }

    return post;
  }

  // Stream feed
  Stream<List<FeedPost>> streamFeed({
    required String userId,
    FeedFilter? filter,
  }) {
    final key = '${userId}_${filter?.hashCode}';
    if (!_feedControllers.containsKey(key)) {
      _feedControllers[key] = StreamController<List<FeedPost>>.broadcast();
      _feedRepository.streamFeed(userId, filter: filter).listen(
            (posts) => _feedControllers[key]?.add(posts),
            onError: (error) => _feedControllers[key]?.addError(error),
          );
    }
    return _feedControllers[key]!.stream;
  }

  // Add comment
  Future<Comment> addComment({
    required String postId,
    required String userId,
    required String content,
    String? parentId,
    List<String>? mentions,
    List<String>? media,
    Map<String, dynamic>? metadata,
  }) async {
    // Moderate content
    final moderationResult = await _moderationService.moderateContent(content);
    if (!moderationResult.isApproved) {
      throw Exception(
          'Comment violates community guidelines: ${moderationResult.reason}');
    }

    final comment = Comment(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      postId: postId,
      userId: userId,
      content: content,
      timestamp: DateTime.now(),
      parentId: parentId,
      mentions: mentions ?? [],
      media: media ?? [],
      metadata: metadata,
    );

    await _feedRepository.addComment(comment);

    // Update post comment count
    await _feedRepository.incrementCommentCount(postId);

    // Notify post owner
    final post = await _feedRepository.getPost(postId);
    if (post != null && post.userId != userId) {
      await _notificationService.sendSocialNotification(
        recipient: post.userId,
        title: 'New Comment',
        body: 'Someone commented on your post',
        data: {
          'type': 'comment',
          'postId': postId,
          'commentId': comment.id,
          'userId': userId,
        },
      );
    }

    return comment;
  }

  // Stream comments
  Stream<List<Comment>> streamComments(String postId) {
    if (!_commentControllers.containsKey(postId)) {
      _commentControllers[postId] = StreamController<List<Comment>>.broadcast();
      _feedRepository.streamComments(postId).listen(
            (comments) => _commentControllers[postId]?.add(comments),
            onError: (error) => _commentControllers[postId]?.addError(error),
          );
    }
    return _commentControllers[postId]!.stream;
  }

  // Like post or comment
  Future<void> addLike({
    required String targetId,
    required String targetType,
    required String userId,
  }) async {
    final like = Like(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      targetId: targetId,
      targetType: targetType,
      userId: userId,
      timestamp: DateTime.now(),
    );

    await _feedRepository.addLike(like);

    // Update like count
    if (targetType == 'post') {
      await _feedRepository.incrementLikeCount(targetId);

      // Notify post owner
      final post = await _feedRepository.getPost(targetId);
      if (post != null && post.userId != userId) {
        await _notificationService.sendSocialNotification(
          recipient: post.userId,
          title: 'New Like',
          body: 'Someone liked your post',
          data: {
            'type': 'like',
            'postId': targetId,
            'userId': userId,
          },
        );
      }
    }
  }

  // Share post
  Future<Share> sharePost({
    required String postId,
    required String userId,
    String? caption,
    Map<String, dynamic>? metadata,
  }) async {
    final share = Share(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      postId: postId,
      userId: userId,
      timestamp: DateTime.now(),
      caption: caption,
      metadata: metadata,
    );

    await _feedRepository.addShare(share);
    await _feedRepository.incrementShareCount(postId);

    // Notify post owner
    final post = await _feedRepository.getPost(postId);
    if (post != null && post.userId != userId) {
      await _notificationService.sendSocialNotification(
        recipient: post.userId,
        title: 'New Share',
        body: 'Someone shared your post',
        data: {
          'type': 'share',
          'postId': postId,
          'userId': userId,
        },
      );
    }

    return share;
  }

  // Delete post
  Future<void> deletePost(String postId) async {
    await _feedRepository.deletePost(postId);
  }

  // Delete comment
  Future<void> deleteComment(String commentId, String postId) async {
    await _feedRepository.deleteComment(commentId);
    await _feedRepository.decrementCommentCount(postId);
  }

  // Remove like
  Future<void> removeLike({
    required String targetId,
    required String targetType,
    required String userId,
  }) async {
    await _feedRepository.removeLike(targetId, userId);
    if (targetType == 'post') {
      await _feedRepository.decrementLikeCount(targetId);
    }
  }

  // Get feed analytics
  Future<FeedAnalytics> getFeedAnalytics(String postId) async {
    return _feedRepository.getFeedAnalytics(postId);
  }

  // Update feed engagement
  Future<void> updateFeedEngagement({
    required String userId,
    required String action,
    required String targetId,
  }) async {
    await _feedRepository.updateFeedEngagement(
      userId: userId,
      action: action,
      targetId: targetId,
    );
  }

  // Dispose
  void dispose() {
    for (var controller in _feedControllers.values) {
      controller.close();
    }
    for (var controller in _commentControllers.values) {
      controller.close();
    }
    _feedControllers.clear();
    _commentControllers.clear();
  }
}
