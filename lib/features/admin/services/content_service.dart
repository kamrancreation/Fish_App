import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/content_models.dart';
import '../repositories/content_repository.dart';

final contentServiceProvider = Provider((ref) {
  return ContentService(ref.watch(contentRepositoryProvider));
});

class ContentService {
  final ContentRepository _repository;

  ContentService(this._repository);

  // Content Management
  Future<String> createContent(ContentItem content) async {
    return _repository.createContent(content);
  }

  Future<void> updateContent(ContentItem content) async {
    await _repository.updateContent(content);
  }

  Future<void> deleteContent(String contentId) async {
    await _repository.deleteContent(contentId);
  }

  Future<ContentItem?> getContent(String contentId) async {
    return _repository.getContent(contentId);
  }

  Future<List<ContentItem>> searchContent({
    String? query,
    List<String>? types,
    ContentStatus? status,
    ContentVisibility? visibility,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.searchContent(
      query: query,
      types: types,
      status: status,
      visibility: visibility,
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Tournament Management
  Future<String> createTournament(Tournament tournament) async {
    return _repository.createTournament(tournament);
  }

  Future<void> updateTournament(Tournament tournament) async {
    await _repository.updateTournament(tournament);
  }

  Future<void> cancelTournament(String tournamentId, {String? reason}) async {
    final tournament = await _repository.getTournament(tournamentId);
    if (tournament == null) throw Exception('Tournament not found');

    await _repository.updateTournament(
      tournament.copyWith(
        status: TournamentStatus.cancelled,
        metadata: {
          ...tournament.settings ?? {},
          'cancellationReason': reason,
          'cancelledAt': DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  Future<void> updateTournamentLeaderboard(
    String tournamentId,
    Map<String, dynamic> leaderboard,
  ) async {
    final tournament = await _repository.getTournament(tournamentId);
    if (tournament == null) throw Exception('Tournament not found');

    await _repository.updateTournament(
      tournament.copyWith(leaderboard: leaderboard),
    );
  }

  Future<List<Tournament>> getActiveTournaments() async {
    return _repository.getTournaments(
      status: [TournamentStatus.registration, TournamentStatus.active],
    );
  }

  // Content Moderation
  Future<void> flagContent(String contentId, String reason) async {
    final content = await _repository.getContent(contentId);
    if (content == null) throw Exception('Content not found');

    await _repository.updateContent(
      content.copyWith(
        status: ContentStatus.flagged,
        metadata: {
          ...content.metadata,
          'flagReason': reason,
          'flaggedAt': DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  Future<void> approveContent(String contentId) async {
    final content = await _repository.getContent(contentId);
    if (content == null) throw Exception('Content not found');

    await _repository.updateContent(
      content.copyWith(
        status: ContentStatus.published,
        metadata: {
          ...content.metadata,
          'approvedAt': DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  // Report Handling
  Future<String> createReport(ContentReport report) async {
    return _repository.createReport(report);
  }

  Future<void> updateReport(ContentReport report) async {
    await _repository.updateReport(report);
  }

  Future<void> resolveReport(
    String reportId, {
    required String resolution,
    required String moderatorId,
  }) async {
    final report = await _repository.getReport(reportId);
    if (report == null) throw Exception('Report not found');

    await _repository.updateReport(
      report.copyWith(
        status: ReportStatus.resolved,
        resolution: resolution,
        moderatorId: moderatorId,
        resolvedAt: DateTime.now(),
      ),
    );
  }

  Future<List<ContentReport>> getPendingReports() async {
    return _repository.getReports(
      status: [ReportStatus.pending, ReportStatus.investigating],
    );
  }

  // Announcement System
  Future<String> createAnnouncement(Announcement announcement) async {
    return _repository.createAnnouncement(announcement);
  }

  Future<void> updateAnnouncement(Announcement announcement) async {
    await _repository.updateAnnouncement(announcement);
  }

  Future<void> deleteAnnouncement(String announcementId) async {
    await _repository.deleteAnnouncement(announcementId);
  }

  Future<List<Announcement>> getActiveAnnouncements({
    List<AnnouncementType>? types,
    List<String>? audience,
  }) async {
    return _repository.getAnnouncements(
      active: true,
      types: types,
      audience: audience,
    );
  }

  // Resource Management
  Future<String> createResource(Resource resource) async {
    return _repository.createResource(resource);
  }

  Future<void> updateResource(Resource resource) async {
    await _repository.updateResource(resource);
  }

  Future<void> deleteResource(String resourceId) async {
    await _repository.deleteResource(resourceId);
  }

  Future<void> trackResourceUsage(String resourceId, String metric) async {
    await _repository.incrementResourceUsage(resourceId, metric);
  }

  Future<List<Resource>> getActiveResources({
    String? type,
    List<String>? tags,
  }) async {
    return _repository.getResources(
      status: ResourceStatus.active,
      type: type,
      tags: tags,
    );
  }

  // Batch Operations
  Future<void> bulkUpdateContentStatus({
    required List<String> contentIds,
    required ContentStatus status,
    String? reason,
  }) async {
    for (final id in contentIds) {
      try {
        final content = await getContent(id);
        if (content == null) continue;

        await updateContent(
          content.copyWith(
            status: status,
            metadata: {
              ...content.metadata,
              'statusUpdateReason': reason,
              'statusUpdatedAt': DateTime.now().toIso8601String(),
            },
          ),
        );
      } catch (e) {
        print('Failed to update content $id: $e');
        continue;
      }
    }
  }

  Future<void> bulkDeleteAnnouncements(List<String> announcementIds) async {
    for (final id in announcementIds) {
      try {
        await deleteAnnouncement(id);
      } catch (e) {
        print('Failed to delete announcement $id: $e');
        continue;
      }
    }
  }

  // Analytics
  Future<Map<String, dynamic>> getContentStats({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getContentStats(
      startDate: startDate,
      endDate: endDate,
    );
  }

  Future<Map<String, dynamic>> getTournamentStats({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getTournamentStats(
      startDate: startDate,
      endDate: endDate,
    );
  }

  Future<Map<String, dynamic>> getResourceUsageStats({
    String? resourceId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getResourceUsageStats(
      resourceId: resourceId,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
