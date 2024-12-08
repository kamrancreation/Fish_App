import 'dart:async';
import 'package:google_cloud_vision/google_cloud_vision.dart';
import 'package:google_cloud_language/google_cloud_language.dart';
import '../models/moderation_models.dart';
import '../repositories/moderation_repository.dart';

class ContentModerationService {
  final GoogleVision _visionApi;
  final LanguageServiceClient _languageApi;
  final ModerationRepository _moderationRepository;

  ContentModerationService({
    GoogleVision? visionApi,
    LanguageServiceClient? languageApi,
    ModerationRepository? moderationRepository,
  })  : _visionApi = visionApi ?? GoogleVision(),
        _languageApi = languageApi ?? LanguageServiceClient(),
        _moderationRepository = moderationRepository ?? ModerationRepository();

  Future<ModerationResult> moderateContent(String content) async {
    try {
      // Check against banned words and patterns
      final bannedWordsResult = await _checkBannedWords(content);
      if (!bannedWordsResult.isApproved) {
        return bannedWordsResult;
      }

      // Analyze sentiment and toxicity
      final sentimentResult = await _analyzeSentiment(content);
      if (!sentimentResult.isApproved) {
        return sentimentResult;
      }

      return const ModerationResult(
        isApproved: true,
        confidence: 1.0,
        reason: 'Content approved',
      );
    } catch (e) {
      // If moderation fails, we err on the side of caution
      return ModerationResult(
        isApproved: false,
        confidence: 1.0,
        reason: 'Moderation check failed: $e',
      );
    }
  }

  Future<ModerationResult> moderateImage(List<int> imageBytes) async {
    try {
      final requests = <AnnotateImageRequest>[
        AnnotateImageRequest(
          image: Image(content: imageBytes),
          features: [
            Feature(type: 'SAFE_SEARCH_DETECTION'),
            Feature(type: 'LABEL_DETECTION'),
          ],
        ),
      ];

      final response = await _visionApi.batchAnnotateImages(requests);

      for (var result in response.responses) {
        final safeSearch = result.safeSearchAnnotation;

        // Check for explicit content
        if (_isExplicitContent(safeSearch)) {
          return const ModerationResult(
            isApproved: false,
            confidence: 0.9,
            reason: 'Image contains inappropriate content',
          );
        }

        // Check if image contains fishing-related content
        final labels = result.labelAnnotations;
        if (!_containsFishingContent(labels)) {
          return const ModerationResult(
            isApproved: false,
            confidence: 0.8,
            reason: 'Image is not related to fishing',
          );
        }
      }

      return const ModerationResult(
        isApproved: true,
        confidence: 1.0,
        reason: 'Image approved',
      );
    } catch (e) {
      return ModerationResult(
        isApproved: false,
        confidence: 1.0,
        reason: 'Image moderation failed: $e',
      );
    }
  }

  Future<ModerationResult> _checkBannedWords(String content) async {
    try {
      final bannedWords = await _moderationRepository.getBannedWords();
      final contentLower = content.toLowerCase();

      for (final word in bannedWords) {
        if (contentLower.contains(word.toLowerCase())) {
          return const ModerationResult(
            isApproved: false,
            confidence: 1.0,
            reason: 'Content contains banned words',
          );
        }
      }

      return const ModerationResult(
        isApproved: true,
        confidence: 1.0,
        reason: 'No banned words found',
      );
    } catch (e) {
      throw Exception('Failed to check banned words: $e');
    }
  }

  Future<ModerationResult> _analyzeSentiment(String content) async {
    try {
      final document = Document(
        content: content,
        type: Type.PLAIN_TEXT,
      );

      final response = await _languageApi.analyzeSentiment(document);
      final sentiment = response.documentSentiment;

      // Check if content is too negative
      if (sentiment.score < -0.7 || sentiment.magnitude > 0.9) {
        return ModerationResult(
          isApproved: false,
          confidence: sentiment.magnitude,
          reason: 'Content appears overly negative or hostile',
        );
      }

      return ModerationResult(
        isApproved: true,
        confidence: sentiment.magnitude,
        reason: 'Sentiment analysis passed',
      );
    } catch (e) {
      throw Exception('Failed to analyze sentiment: $e');
    }
  }

  bool _isExplicitContent(SafeSearchAnnotation safeSearch) {
    // Convert likelihood to numeric values
    final Map<String, int> likelihoodValues = {
      'VERY_UNLIKELY': 1,
      'UNLIKELY': 2,
      'POSSIBLE': 3,
      'LIKELY': 4,
      'VERY_LIKELY': 5,
    };

    // Check various safety categories
    final adult = likelihoodValues[safeSearch.adult] ?? 1;
    final violence = likelihoodValues[safeSearch.violence] ?? 1;
    final racy = likelihoodValues[safeSearch.racy] ?? 1;

    // If any category is likely or very likely, reject the image
    return adult > 3 || violence > 3 || racy > 3;
  }

  bool _containsFishingContent(List<EntityAnnotation> labels) {
    final fishingRelatedTerms = [
      'fish',
      'fishing',
      'angling',
      'boat',
      'water',
      'lake',
      'river',
      'ocean',
      'rod',
      'reel',
      'tackle',
      'bait',
      'lure',
    ];

    for (final label in labels) {
      final description = label.description.toLowerCase();
      if (fishingRelatedTerms.any((term) => description.contains(term)) &&
          label.score > 0.7) {
        return true;
      }
    }

    return false;
  }

  Future<void> reportContent({
    required String contentId,
    required String contentType,
    required String reporterId,
    required String reason,
    Map<String, dynamic>? metadata,
  }) async {
    try {
      final report = ContentReport(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        contentId: contentId,
        contentType: contentType,
        reporterId: reporterId,
        reason: reason,
        timestamp: DateTime.now(),
        status: 'pending',
        metadata: metadata,
      );

      await _moderationRepository.createContentReport(report);
    } catch (e) {
      throw Exception('Failed to report content: $e');
    }
  }

  Future<List<ContentReport>> getPendingReports() async {
    try {
      return await _moderationRepository.getPendingReports();
    } catch (e) {
      throw Exception('Failed to get pending reports: $e');
    }
  }

  Future<void> updateReportStatus({
    required String reportId,
    required String status,
    String? moderatorNotes,
  }) async {
    try {
      await _moderationRepository.updateReportStatus(
        reportId: reportId,
        status: status,
        moderatorNotes: moderatorNotes,
      );
    } catch (e) {
      throw Exception('Failed to update report status: $e');
    }
  }

  Future<void> banUser({
    required String userId,
    required String reason,
    required Duration duration,
  }) async {
    try {
      await _moderationRepository.banUser(
        userId: userId,
        reason: reason,
        duration: duration,
      );
    } catch (e) {
      throw Exception('Failed to ban user: $e');
    }
  }

  Future<bool> isUserBanned(String userId) async {
    try {
      return await _moderationRepository.isUserBanned(userId);
    } catch (e) {
      throw Exception('Failed to check user ban status: $e');
    }
  }
}
