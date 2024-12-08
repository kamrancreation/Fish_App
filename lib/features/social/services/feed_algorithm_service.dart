import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/social_post.dart';

class FeedAlgorithmService {
  final FirebaseFirestore _firestore;

  FeedAlgorithmService(this._firestore);

  Future<List<SocialPost>> getPersonalizedFeed(
    String userId, {
    int limit = 20,
    DocumentSnapshot? startAfter,
  }) async {
    // Get user preferences and interactions
    final userPrefs = await _getUserPreferences(userId);
    final userInteractions = await _getUserInteractions(userId);

    // Get candidate posts
    final candidates = await _getCandidatePosts(
      userId,
      limit: limit * 2, // Get more candidates for ranking
      startAfter: startAfter,
    );

    // Rank posts
    final rankedPosts = await _rankPosts(
      candidates,
      userPrefs,
      userInteractions,
    );

    // Return top posts
    return rankedPosts.take(limit).toList();
  }

  Future<Map<String, dynamic>> _getUserPreferences(String userId) async {
    final userDoc = await _firestore.collection('users').doc(userId).get();
    final userData = userDoc.data() as Map<String, dynamic>;

    return {
      'preferredSpecies': userData['preferredSpecies'] ?? [],
      'preferredLocations': userData['preferredLocations'] ?? [],
      'preferredTechniques': userData['preferredTechniques'] ?? [],
      'followedTopics': userData['followedTopics'] ?? [],
    };
  }

  Future<Map<String, dynamic>> _getUserInteractions(String userId) async {
    // Get recent likes
    final likes = await _firestore
        .collection('likes')
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true)
        .limit(100)
        .get();

    // Get recent comments
    final comments = await _firestore
        .collection('comments')
        .where('userId', isEqualTo: userId)
        .orderBy('createdAt', descending: true)
        .limit(100)
        .get();

    // Get saved posts
    final saved = await _firestore
        .collection('saved_posts')
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true)
        .limit(100)
        .get();

    return {
      'likedPosts': likes.docs.map((doc) => doc.data()['postId']).toList(),
      'commentedPosts':
          comments.docs.map((doc) => doc.data()['postId']).toList(),
      'savedPosts': saved.docs.map((doc) => doc.data()['postId']).toList(),
    };
  }

  Future<List<SocialPost>> _getCandidatePosts(
    String userId, {
    required int limit,
    DocumentSnapshot? startAfter,
  }) async {
    // Get followed users
    final following = await _firestore
        .collection('users')
        .doc(userId)
        .collection('following')
        .get();
    final followedIds = following.docs.map((doc) => doc.id).toList();

    // Get followed clubs
    final clubs = await _firestore
        .collection('users')
        .doc(userId)
        .collection('clubs')
        .get();
    final clubIds = clubs.docs.map((doc) => doc.id).toList();

    // Query posts from multiple sources
    Query query = _firestore.collection('posts').where(
      Filter.or(
        Filter('userId', whereIn: followedIds),
        Filter('clubId', whereIn: clubIds),
        Filter('privacy', isEqualTo: PostPrivacy.public.toString()),
      ),
    );

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    final posts = await query
        .orderBy('createdAt', descending: true)
        .limit(limit)
        .get();

    return posts.docs.map((doc) => SocialPost.fromFirestore(doc)).toList();
  }

  Future<List<SocialPost>> _rankPosts(
    List<SocialPost> posts,
    Map<String, dynamic> userPrefs,
    Map<String, dynamic> userInteractions,
  ) async {
    final scoredPosts = await Future.wait(
      posts.map((post) => _scorePost(post, userPrefs, userInteractions)),
    );

    // Sort by score
    scoredPosts.sort((a, b) => b.score.compareTo(a.score));

    return scoredPosts.map((scored) => scored.post).toList();
  }

  Future<ScoredPost> _scorePost(
    SocialPost post,
    Map<String, dynamic> userPrefs,
    Map<String, dynamic> userInteractions,
  ) async {
    double score = 0;

    // Base time decay (1 week half-life)
    final age = DateTime.now().difference(post.createdAt).inHours;
    final timeDecay = 1 / (1 + age / 168); // 168 hours in a week

    // Engagement score
    final engagementScore = _calculateEngagementScore(post);

    // Content relevance score
    final relevanceScore = _calculateRelevanceScore(post, userPrefs);

    // User affinity score
    final affinityScore = await _calculateAffinityScore(
      post,
      userInteractions,
    );

    // Quality score
    final qualityScore = _calculateQualityScore(post);

    // Combine scores with weights
    score = timeDecay *
        (0.3 * engagementScore +
            0.3 * relevanceScore +
            0.2 * affinityScore +
            0.2 * qualityScore);

    return ScoredPost(post, score);
  }

  double _calculateEngagementScore(SocialPost post) {
    final stats = post.stats;
    final likes = stats['likes'] ?? 0;
    final comments = stats['comments'] ?? 0;
    final shares = stats['shares'] ?? 0;
    final saves = stats['saves'] ?? 0;

    // Weight different types of engagement
    return (likes * 1 + comments * 2 + shares * 3 + saves * 4) /
        (post.createdAt.difference(DateTime.now()).inHours + 2);
  }

  double _calculateRelevanceScore(
    SocialPost post,
    Map<String, dynamic> userPrefs,
  ) {
    double score = 0;

    // Check species match
    if (post.metadata?['species'] != null &&
        userPrefs['preferredSpecies'].contains(post.metadata!['species'])) {
      score += 0.3;
    }

    // Check location match
    if (post.location != null &&
        userPrefs['preferredLocations'].any((loc) =>
            _calculateDistance(loc['lat'], loc['lng'], post.location!.latitude,
                post.location!.longitude) <
            50)) {
      score += 0.3;
    }

    // Check technique match
    if (post.metadata?['technique'] != null &&
        userPrefs['preferredTechniques']
            .contains(post.metadata!['technique'])) {
      score += 0.2;
    }

    // Check topics match
    final postTopics = post.hashtags
        .map((tag) => tag.toLowerCase().replaceAll('#', ''))
        .toList();
    if (userPrefs['followedTopics']
        .any((topic) => postTopics.contains(topic.toLowerCase()))) {
      score += 0.2;
    }

    return score;
  }

  Future<double> _calculateAffinityScore(
    SocialPost post,
    Map<String, dynamic> userInteractions,
  ) async {
    double score = 0;

    // Check if user has interacted with author's content before
    final authorInteractions = await _firestore
        .collection('posts')
        .where('userId', isEqualTo: post.userId)
        .where('id',
            whereIn: [
              ...userInteractions['likedPosts'],
              ...userInteractions['commentedPosts'],
              ...userInteractions['savedPosts'],
            ])
        .get();

    score += authorInteractions.size * 0.1;

    // Check if user has interacted with similar content
    if (userInteractions['likedPosts'].contains(post.id)) score += 0.4;
    if (userInteractions['commentedPosts'].contains(post.id)) score += 0.3;
    if (userInteractions['savedPosts'].contains(post.id)) score += 0.2;

    return score.clamp(0.0, 1.0);
  }

  double _calculateQualityScore(SocialPost post) {
    double score = 0;

    // Media richness
    if (post.hasMedia()) score += 0.3;

    // Content length
    if (post.content.length > 100) score += 0.2;

    // Hashtag usage (not too many, not too few)
    if (post.hashtags.length >= 2 && post.hashtags.length <= 5) score += 0.2;

    // Location data
    if (post.location != null) score += 0.1;

    // Catch details
    if (post.hasCatchDetails()) score += 0.2;

    return score;
  }

  double _calculateDistance(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    // Haversine formula
    const R = 6371.0; // Earth's radius in km
    final dLat = _toRadians(lat2 - lat1);
    final dLon = _toRadians(lon2 - lon1);
    final a = (dLat / 2).sin() * (dLat / 2).sin() +
        (lat1).cos() * (lat2).cos() * (dLon / 2).sin() * (dLon / 2).sin();
    final c = 2 * (a.sqrt()).asin();
    return R * c;
  }

  double _toRadians(double degree) {
    return degree * (3.141592653589793 / 180.0);
  }
}

class ScoredPost {
  final SocialPost post;
  final double score;

  ScoredPost(this.post, this.score);
}
