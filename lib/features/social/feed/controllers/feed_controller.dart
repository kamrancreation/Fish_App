import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../models/feed_models.dart';
import '../repositories/feed_repository.dart';
import '../../notifications/services/push_notification_service.dart';
import '../../../moderation/services/content_moderation_service.dart';
import '../../../core/services/location_service.dart';
import '../../../core/services/weather_service.dart';

final feedControllerProvider =
    StateNotifierProvider<FeedController, FeedState>((ref) {
  return FeedController(
    feedRepository: FeedRepository(),
    notificationService: PushNotificationService(),
    moderationService: ContentModerationService(),
    locationService: LocationService(),
    weatherService: WeatherService(),
  );
});

class FeedState {
  final List<FeedPost> posts;
  final bool isLoading;
  final bool isLoadingMore;
  final String? error;
  final FeedFilter? currentFilter;

  FeedState({
    this.posts = const [],
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
    this.currentFilter,
  });

  FeedState copyWith({
    List<FeedPost>? posts,
    bool? isLoading,
    bool? isLoadingMore,
    String? error,
    FeedFilter? currentFilter,
  }) {
    return FeedState(
      posts: posts ?? this.posts,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error,
      currentFilter: currentFilter ?? this.currentFilter,
    );
  }
}

class FeedController extends StateNotifier<FeedState> {
  final FeedRepository _feedRepository;
  final PushNotificationService _notificationService;
  final ContentModerationService _moderationService;
  final LocationService _locationService;
  final WeatherService _weatherService;

  FeedController({
    required FeedRepository feedRepository,
    required PushNotificationService notificationService,
    required ContentModerationService moderationService,
    required LocationService locationService,
    required WeatherService weatherService,
  })  : _feedRepository = feedRepository,
        _notificationService = notificationService,
        _moderationService = moderationService,
        _locationService = locationService,
        _weatherService = weatherService,
        super(FeedState()) {
    refreshFeed();
  }

  Future<void> refreshFeed() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      
      final posts = await _feedRepository
          .streamFeed('currentUserId', filter: state.currentFilter)
          .first;
      
      state = state.copyWith(
        posts: posts,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to load feed: $e',
      );
    }
  }

  Future<void> loadMorePosts() async {
    if (state.isLoadingMore) return;

    try {
      state = state.copyWith(isLoadingMore: true);
      
      final lastPost = state.posts.last;
      final morePosts = await _feedRepository
          .streamFeed(
            'currentUserId',
            filter: state.currentFilter,
            // Add pagination parameters
          )
          .first;

      state = state.copyWith(
        posts: [...state.posts, ...morePosts],
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoadingMore: false,
        error: 'Failed to load more posts: $e',
      );
    }
  }

  void applyFilter(FeedFilter filter) {
    state = state.copyWith(currentFilter: filter);
    refreshFeed();
  }

  Future<void> createPost({
    required String content,
    required List<String> media,
    List<String>? hashtags,
    CatchReport? catchReport,
    Location? location,
    WeatherInfo? weatherInfo,
  }) async {
    try {
      // Moderate content
      final contentResult = await _moderationService.moderateContent(content);
      if (!contentResult.isApproved) {
        throw Exception(contentResult.reason);
      }

      // Moderate media
      for (final mediaUrl in media) {
        // Implement media moderation
      }

      await _feedRepository.createPost(
        FeedPost(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          userId: 'currentUserId',
          content: content,
          type: 'regular',
          timestamp: DateTime.now(),
          media: media,
          hashtags: hashtags ?? [],
          catchReport: catchReport,
          location: location,
          weatherInfo: weatherInfo,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<List<String>> uploadMedia(List<XFile> mediaFiles) async {
    try {
      final urls = <String>[];
      for (final file in mediaFiles) {
        final bytes = await file.readAsBytes();
        
        // Moderate media content
        final moderationResult = await _moderationService.moderateImage(bytes);
        if (!moderationResult.isApproved) {
          throw Exception(moderationResult.reason);
        }

        // Upload to storage
        final url = await _feedRepository.uploadMedia(
          '${DateTime.now().millisecondsSinceEpoch}_${file.name}',
          bytes,
        );
        urls.add(url);
      }
      return urls;
    } catch (e) {
      rethrow;
    }
  }

  Future<({Location location, WeatherInfo weather})> getLocationDetails({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final location = await _locationService.getLocationDetails(
        latitude: latitude,
        longitude: longitude,
      );
      
      final weather = await _weatherService.getCurrentWeather(
        latitude: latitude,
        longitude: longitude,
      );

      return (location: location, weather: weather);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> likePost(String postId) async {
    try {
      await _feedRepository.addLike(Like(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        targetId: postId,
        targetType: 'post',
        userId: 'currentUserId',
        timestamp: DateTime.now(),
      ));

      // Update local state
      state = state.copyWith(
        posts: state.posts.map((post) {
          if (post.id == postId) {
            return post.copyWith(likeCount: post.likeCount + 1);
          }
          return post;
        }).toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> sharePost(String postId) async {
    try {
      await _feedRepository.addShare(Share(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        postId: postId,
        userId: 'currentUserId',
        timestamp: DateTime.now(),
      ));

      // Update local state
      state = state.copyWith(
        posts: state.posts.map((post) {
          if (post.id == postId) {
            return post.copyWith(shareCount: post.shareCount + 1);
          }
          return post;
        }).toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> refreshPost(String postId) async {
    try {
      final updatedPost = await _feedRepository.getPost(postId);
      if (updatedPost != null) {
        state = state.copyWith(
          posts: state.posts.map((post) {
            if (post.id == postId) {
              return updatedPost;
            }
            return post;
          }).toList(),
        );
      }
    } catch (e) {
      rethrow;
    }
  }
}
