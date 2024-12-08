import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/spot_review_models.dart';
import '../../core/error/error_handler.dart';
import '../../core/services/storage_service.dart';
import '../../core/services/analytics_service.dart';

class SpotReviewService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final StorageService _storage;
  final AnalyticsService _analytics;
  final ErrorHandler _errorHandler;

  SpotReviewService({
    StorageService? storage,
    AnalyticsService? analytics,
    ErrorHandler? errorHandler,
  })  : _storage = storage ?? StorageService(),
        _analytics = analytics ?? AnalyticsService(),
        _errorHandler = errorHandler ?? ErrorHandler();

  Future<SpotReview> addReview(
    SpotReview review, {
    List<String>? imageFiles,
  }) async {
    try {
      // Upload images if provided
      final uploadedImages = imageFiles != null
          ? await Future.wait(
              imageFiles.map((file) => _storage.uploadFile(
                    file,
                    'spot_reviews/${review.id}',
                  )))
          : <String>[];

      // Create review with uploaded image URLs
      final reviewWithImages = SpotReview(
        id: review.id,
        spotId: review.spotId,
        userId: review.userId,
        userName: review.userName,
        userAvatar: review.userAvatar,
        rating: review.rating,
        comment: review.comment,
        createdAt: review.createdAt,
        images: uploadedImages,
        tags: review.tags,
        isVerifiedVisit: review.isVerifiedVisit,
        metrics: review.metrics,
      );

      // Save review
      await _firestore
          .collection('spot_reviews')
          .doc(review.id)
          .set(reviewWithImages.toJson());

      // Update spot rating metrics
      await _updateSpotRatingMetrics(review.spotId);

      // Track analytics
      await _analytics.trackEvent(
        'spot_review_added',
        parameters: {
          'spot_id': review.spotId,
          'rating': review.rating,
          'has_images': imageFiles?.isNotEmpty ?? false,
        },
      );

      return reviewWithImages;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Adding spot review',
      );
    }
  }

  Future<void> updateReview(
    String reviewId,
    SpotReview updatedReview, {
    List<String>? newImageFiles,
    List<String>? deletedImageUrls,
  }) async {
    try {
      // Get current review
      final currentReview = await getReview(reviewId);
      final updatedImages = List<String>.from(currentReview.images);

      // Delete removed images
      if (deletedImageUrls != null) {
        await Future.wait(
          deletedImageUrls.map((url) => _storage.deleteFile(url)),
        );
        updatedImages.removeWhere((url) => deletedImageUrls.contains(url));
      }

      // Upload new images
      if (newImageFiles != null) {
        final newUrls = await Future.wait(
          newImageFiles.map((file) => _storage.uploadFile(
                file,
                'spot_reviews/$reviewId',
              )),
        );
        updatedImages.addAll(newUrls);
      }

      // Update review with new image list
      final finalReview = SpotReview(
        id: updatedReview.id,
        spotId: updatedReview.spotId,
        userId: updatedReview.userId,
        userName: updatedReview.userName,
        userAvatar: updatedReview.userAvatar,
        rating: updatedReview.rating,
        comment: updatedReview.comment,
        createdAt: updatedReview.createdAt,
        images: updatedImages,
        tags: updatedReview.tags,
        isVerifiedVisit: updatedReview.isVerifiedVisit,
        metrics: ReviewMetrics(
          helpfulCount: updatedReview.metrics.helpfulCount,
          notHelpfulCount: updatedReview.metrics.notHelpfulCount,
          reportCount: updatedReview.metrics.reportCount,
          reportReasons: updatedReview.metrics.reportReasons,
          isEdited: true,
          lastEditedAt: DateTime.now(),
        ),
      );

      await _firestore
          .collection('spot_reviews')
          .doc(reviewId)
          .update(finalReview.toJson());

      // Update spot rating metrics
      await _updateSpotRatingMetrics(updatedReview.spotId);

      // Track analytics
      await _analytics.trackEvent(
        'spot_review_updated',
        parameters: {
          'review_id': reviewId,
          'spot_id': updatedReview.spotId,
        },
      );
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Updating spot review',
      );
    }
  }

  Future<void> deleteReview(String reviewId) async {
    try {
      // Get review data for cleanup
      final review = await getReview(reviewId);

      // Delete all associated images
      await Future.wait(
        review.images.map((url) => _storage.deleteFile(url)),
      );

      // Delete review document
      await _firestore.collection('spot_reviews').doc(reviewId).delete();

      // Update spot rating metrics
      await _updateSpotRatingMetrics(review.spotId);

      // Track analytics
      await _analytics.trackEvent(
        'spot_review_deleted',
        parameters: {
          'review_id': reviewId,
          'spot_id': review.spotId,
        },
      );
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Deleting spot review',
      );
    }
  }

  Future<SpotReview> getReview(String reviewId) async {
    try {
      final doc = await _firestore.collection('spot_reviews').doc(reviewId).get();
      if (!doc.exists) {
        throw Exception('Review not found');
      }
      return SpotReview.fromJson(doc.data()!);
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Getting spot review',
      );
    }
  }

  Future<List<SpotReview>> getSpotReviews(
    String spotId, {
    int? limit,
    String? lastReviewId,
    String? sortBy = 'createdAt',
    bool descending = true,
  }) async {
    try {
      var query = _firestore
          .collection('spot_reviews')
          .where('spotId', isEqualTo: spotId);

      // Apply sorting
      query = query.orderBy(sortBy!, descending: descending);

      // Apply pagination
      if (lastReviewId != null) {
        final lastDoc = await _firestore
            .collection('spot_reviews')
            .doc(lastReviewId)
            .get();
        query = query.startAfterDocument(lastDoc);
      }

      if (limit != null) {
        query = query.limit(limit);
      }

      final reviews = await query.get();
      return reviews.docs
          .map((doc) => SpotReview.fromJson(doc.data()))
          .toList();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Getting spot reviews',
      );
    }
  }

  Future<List<SpotReview>> getUserReviews(
    String userId, {
    int? limit,
    String? lastReviewId,
  }) async {
    try {
      var query = _firestore
          .collection('spot_reviews')
          .where('userId', isEqualTo: userId)
          .orderBy('createdAt', descending: true);

      if (lastReviewId != null) {
        final lastDoc = await _firestore
            .collection('spot_reviews')
            .doc(lastReviewId)
            .get();
        query = query.startAfterDocument(lastDoc);
      }

      if (limit != null) {
        query = query.limit(limit);
      }

      final reviews = await query.get();
      return reviews.docs
          .map((doc) => SpotReview.fromJson(doc.data()))
          .toList();
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Getting user reviews',
      );
    }
  }

  Future<void> updateReviewMetrics(
    String reviewId, {
    bool? helpful,
    bool? report,
    String? reportReason,
  }) async {
    try {
      final review = await getReview(reviewId);
      final updatedMetrics = ReviewMetrics(
        helpfulCount: helpful == true
            ? review.metrics.helpfulCount + 1
            : review.metrics.helpfulCount,
        notHelpfulCount: helpful == false
            ? review.metrics.notHelpfulCount + 1
            : review.metrics.notHelpfulCount,
        reportCount: report == true
            ? review.metrics.reportCount + 1
            : review.metrics.reportCount,
        reportReasons: report == true && reportReason != null
            ? [...review.metrics.reportReasons, reportReason]
            : review.metrics.reportReasons,
        isEdited: review.metrics.isEdited,
        lastEditedAt: review.metrics.lastEditedAt,
      );

      await _firestore.collection('spot_reviews').doc(reviewId).update({
        'metrics': updatedMetrics.toJson(),
      });

      // Track analytics
      await _analytics.trackEvent(
        'review_metrics_updated',
        parameters: {
          'review_id': reviewId,
          'helpful': helpful,
          'reported': report,
        },
      );
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Updating review metrics',
      );
    }
  }

  Future<void> _updateSpotRatingMetrics(String spotId) async {
    try {
      final reviews = await getSpotReviews(spotId);
      
      if (reviews.isEmpty) {
        await _firestore.collection('spots').doc(spotId).update({
          'rating': 0.0,
          'reviewCount': 0,
        });
        return;
      }

      // Calculate average rating
      final totalRating = reviews.fold<double>(
        0,
        (sum, review) => sum + review.rating,
      );
      final averageRating = totalRating / reviews.length;

      // Calculate rating distribution
      final distribution = <int, int>{};
      for (var i = 1; i <= 5; i++) {
        distribution[i] = reviews
            .where((review) => review.rating.round() == i)
            .length;
      }

      // Calculate tag metrics
      final tagCounts = <String, int>{};
      for (var review in reviews) {
        for (var tag in review.tags) {
          tagCounts[tag] = (tagCounts[tag] ?? 0) + 1;
        }
      }

      // Get top tags
      final sortedTags = tagCounts.entries.toList()
        ..sort((a, b) => b.value.compareTo(a.value));
      final topTags = sortedTags
          .take(5)
          .map((e) => e.key)
          .toList();

      // Update spot metrics
      final metrics = SpotRatingMetrics(
        averageRating: averageRating,
        totalReviews: reviews.length,
        ratingDistribution: distribution,
        topTags: topTags,
        tagCounts: tagCounts,
      );

      await _firestore.collection('spots').doc(spotId).update({
        'ratingMetrics': metrics.toJson(),
      });
    } catch (error) {
      _errorHandler.handleError(
        () => Future.error(error),
        context: 'Updating spot rating metrics',
      );
    }
  }
}
