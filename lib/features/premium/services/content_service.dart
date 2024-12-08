import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/expert_content.dart';
import '../models/workshop.dart';
import '../repositories/content_repository.dart';

final contentServiceProvider = Provider((ref) => ContentService(ref));

class ContentService {
  final Ref _ref;

  ContentService(this._ref);

  Future<List<ExpertContent>> getFeaturedContent() async {
    final repository = _ref.read(contentRepositoryProvider);
    return repository.getFeaturedContent();
  }

  Future<List<ExpertContent>> getContentByCategory(ContentCategory category) async {
    final repository = _ref.read(contentRepositoryProvider);
    return repository.getContentByCategory(category);
  }

  Future<List<ExpertContent>> searchContent(String query) async {
    final repository = _ref.read(contentRepositoryProvider);
    return repository.searchContent(query);
  }

  Future<void> bookmarkContent(String contentId) async {
    final repository = _ref.read(contentRepositoryProvider);
    await repository.bookmarkContent(contentId);
  }

  Future<List<Workshop>> getUpcomingWorkshops() async {
    final repository = _ref.read(contentRepositoryProvider);
    return repository.getUpcomingWorkshops();
  }

  Future<void> registerForWorkshop(String workshopId) async {
    final repository = _ref.read(contentRepositoryProvider);
    await repository.registerForWorkshop(workshopId);
  }

  Future<void> submitQuestion({
    required String question,
    required String category,
    List<String>? tags,
    List<String>? attachments,
  }) async {
    final repository = _ref.read(contentRepositoryProvider);
    await repository.submitQuestion(
      question: question,
      category: category,
      tags: tags,
      attachments: attachments,
    );
  }

  Future<List<ExpertContent>> getRelatedContent(String contentId) async {
    final repository = _ref.read(contentRepositoryProvider);
    return repository.getRelatedContent(contentId);
  }

  Future<Map<String, dynamic>> getContentAnalytics(String contentId) async {
    final repository = _ref.read(contentRepositoryProvider);
    return repository.getContentAnalytics(contentId);
  }

  Stream<List<String>> getLiveWorkshopChat(String workshopId) {
    final repository = _ref.read(contentRepositoryProvider);
    return repository.getLiveWorkshopChat(workshopId);
  }

  Future<void> submitWorkshopQuestion(String workshopId, String question) async {
    final repository = _ref.read(contentRepositoryProvider);
    await repository.submitWorkshopQuestion(workshopId, question);
  }

  Future<void> rateContent(String contentId, double rating, String? review) async {
    final repository = _ref.read(contentRepositoryProvider);
    await repository.rateContent(contentId, rating, review);
  }
}
