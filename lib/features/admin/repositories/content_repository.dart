import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/content_models.dart';

final contentRepositoryProvider = Provider((ref) => ContentRepository());

class ContentRepository {
  final _contentCollection = FirebaseFirestore.instance.collection('content');
  final _tournamentsCollection = FirebaseFirestore.instance.collection('tournaments');
  final _reportsCollection = FirebaseFirestore.instance.collection('content_reports');
  final _announcementsCollection = FirebaseFirestore.instance.collection('announcements');
  final _resourcesCollection = FirebaseFirestore.instance.collection('resources');

  // Content Management
  Future<String> createContent(ContentItem content) async {
    final doc = await _contentCollection.add(content.toJson());
    return doc.id;
  }

  Future<void> updateContent(ContentItem content) async {
    await _contentCollection.doc(content.id).update(content.toJson());
  }

  Future<void> deleteContent(String contentId) async {
    await _contentCollection.doc(contentId).delete();
  }

  Future<ContentItem?> getContent(String contentId) async {
    final doc = await _contentCollection.doc(contentId).get();
    if (!doc.exists) return null;
    return ContentItem.fromJson(doc.data()!);
  }

  Future<List<ContentItem>> searchContent({
    String? query,
    List<String>? types,
    ContentStatus? status,
    ContentVisibility? visibility,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    var queryRef = _contentCollection.orderBy('createdAt', descending: true);

    if (types != null && types.isNotEmpty) {
      queryRef = queryRef.where('type', whereIn: types);
    }

    if (status != null) {
      queryRef = queryRef.where('status', isEqualTo: status.name);
    }

    if (visibility != null) {
      queryRef = queryRef.where('visibility', isEqualTo: visibility.name);
    }

    if (startDate != null) {
      queryRef = queryRef.where('createdAt', isGreaterThanOrEqualTo: startDate);
    }

    if (endDate != null) {
      queryRef = queryRef.where('createdAt', isLessThanOrEqualTo: endDate);
    }

    final snapshot = await queryRef.get();
    return snapshot.docs.map((doc) => ContentItem.fromJson(doc.data())).toList();
  }

  // Tournament Management
  Future<String> createTournament(Tournament tournament) async {
    final doc = await _tournamentsCollection.add(tournament.toJson());
    return doc.id;
  }

  Future<void> updateTournament(Tournament tournament) async {
    await _tournamentsCollection.doc(tournament.id).update(tournament.toJson());
  }

  Future<Tournament?> getTournament(String tournamentId) async {
    final doc = await _tournamentsCollection.doc(tournamentId).get();
    if (!doc.exists) return null;
    return Tournament.fromJson(doc.data()!);
  }

  Future<List<Tournament>> getTournaments({
    List<TournamentStatus>? status,
    DateTime? startAfter,
    DateTime? endBefore,
  }) async {
    var query = _tournamentsCollection.orderBy('startDate', descending: true);

    if (status != null && status.isNotEmpty) {
      query = query.where('status', whereIn: status.map((s) => s.name).toList());
    }

    if (startAfter != null) {
      query = query.where('startDate', isGreaterThan: startAfter);
    }

    if (endBefore != null) {
      query = query.where('endDate', isLessThan: endBefore);
    }

    final snapshot = await query.get();
    return snapshot.docs.map((doc) => Tournament.fromJson(doc.data())).toList();
  }

  // Report Management
  Future<String> createReport(ContentReport report) async {
    final doc = await _reportsCollection.add(report.toJson());
    return doc.id;
  }

  Future<void> updateReport(ContentReport report) async {
    await _reportsCollection.doc(report.id).update(report.toJson());
  }

  Future<ContentReport?> getReport(String reportId) async {
    final doc = await _reportsCollection.doc(reportId).get();
    if (!doc.exists) return null;
    return ContentReport.fromJson(doc.data()!);
  }

  Future<List<ContentReport>> getReports({
    List<ReportStatus>? status,
    String? moderatorId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    var query = _reportsCollection.orderBy('reportedAt', descending: true);

    if (status != null && status.isNotEmpty) {
      query = query.where('status', whereIn: status.map((s) => s.name).toList());
    }

    if (moderatorId != null) {
      query = query.where('moderatorId', isEqualTo: moderatorId);
    }

    if (startDate != null) {
      query = query.where('reportedAt', isGreaterThanOrEqualTo: startDate);
    }

    if (endDate != null) {
      query = query.where('reportedAt', isLessThanOrEqualTo: endDate);
    }

    final snapshot = await query.get();
    return snapshot.docs.map((doc) => ContentReport.fromJson(doc.data())).toList();
  }

  // Announcement Management
  Future<String> createAnnouncement(Announcement announcement) async {
    final doc = await _announcementsCollection.add(announcement.toJson());
    return doc.id;
  }

  Future<void> updateAnnouncement(Announcement announcement) async {
    await _announcementsCollection.doc(announcement.id).update(announcement.toJson());
  }

  Future<void> deleteAnnouncement(String announcementId) async {
    await _announcementsCollection.doc(announcementId).delete();
  }

  Future<List<Announcement>> getAnnouncements({
    bool? active,
    List<AnnouncementType>? types,
    List<String>? audience,
  }) async {
    var query = _announcementsCollection.orderBy('createdAt', descending: true);

    if (active != null) {
      query = query.where('isActive', isEqualTo: active);
    }

    if (types != null && types.isNotEmpty) {
      query = query.where('type', whereIn: types.map((t) => t.name).toList());
    }

    if (audience != null && audience.isNotEmpty) {
      query = query.where('targetAudience', arrayContainsAny: audience);
    }

    final snapshot = await query.get();
    return snapshot.docs.map((doc) => Announcement.fromJson(doc.data())).toList();
  }

  // Resource Management
  Future<String> createResource(Resource resource) async {
    final doc = await _resourcesCollection.add(resource.toJson());
    return doc.id;
  }

  Future<void> updateResource(Resource resource) async {
    await _resourcesCollection.doc(resource.id).update(resource.toJson());
  }

  Future<void> deleteResource(String resourceId) async {
    await _resourcesCollection.doc(resourceId).delete();
  }

  Future<void> incrementResourceUsage(String resourceId, String metric) async {
    await _resourcesCollection.doc(resourceId).update({
      'usage.$metric': FieldValue.increment(1),
    });
  }

  Future<List<Resource>> getResources({
    ResourceStatus? status,
    String? type,
    List<String>? tags,
  }) async {
    var query = _resourcesCollection.orderBy('createdAt', descending: true);

    if (status != null) {
      query = query.where('status', isEqualTo: status.name);
    }

    if (type != null) {
      query = query.where('type', isEqualTo: type);
    }

    if (tags != null && tags.isNotEmpty) {
      query = query.where('tags', arrayContainsAny: tags);
    }

    final snapshot = await query.get();
    return snapshot.docs.map((doc) => Resource.fromJson(doc.data())).toList();
  }

  // Statistics
  Future<Map<String, dynamic>> getContentStats({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    var query = _contentCollection;
    
    if (startDate != null) {
      query = query.where('createdAt', isGreaterThanOrEqualTo: startDate);
    }
    
    if (endDate != null) {
      query = query.where('createdAt', isLessThanOrEqualTo: endDate);
    }

    final snapshot = await query.get();
    final contents = snapshot.docs;

    return {
      'totalContent': contents.length,
      'byStatus': _groupByField(contents, 'status'),
      'byType': _groupByField(contents, 'type'),
      'byVisibility': _groupByField(contents, 'visibility'),
    };
  }

  Future<Map<String, dynamic>> getTournamentStats({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    var query = _tournamentsCollection;
    
    if (startDate != null) {
      query = query.where('startDate', isGreaterThanOrEqualTo: startDate);
    }
    
    if (endDate != null) {
      query = query.where('endDate', isLessThanOrEqualTo: endDate);
    }

    final snapshot = await query.get();
    final tournaments = snapshot.docs;

    return {
      'totalTournaments': tournaments.length,
      'byStatus': _groupByField(tournaments, 'status'),
      'totalParticipants': tournaments.fold(0, (sum, doc) => 
        sum + (doc.data()['participants'] as List).length),
      'averageParticipants': tournaments.isEmpty ? 0 : 
        tournaments.fold(0, (sum, doc) => 
          sum + (doc.data()['participants'] as List).length) / tournaments.length,
    };
  }

  Future<Map<String, dynamic>> getResourceUsageStats({
    String? resourceId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    var query = _resourcesCollection;
    
    if (resourceId != null) {
      query = query.where(FieldPath.documentId, isEqualTo: resourceId);
    }

    final snapshot = await query.get();
    final resources = snapshot.docs;

    return {
      'totalResources': resources.length,
      'byStatus': _groupByField(resources, 'status'),
      'byType': _groupByField(resources, 'type'),
      'totalUsage': resources.fold(0, (sum, doc) {
        final usage = (doc.data()['usage'] as Map<String, dynamic>).values;
        return sum + usage.fold(0, (sum, value) => sum + (value as int));
      }),
    };
  }

  Map<String, int> _groupByField(List<QueryDocumentSnapshot> docs, String field) {
    return docs.fold<Map<String, int>>({}, (map, doc) {
      final value = doc.data()[field]?.toString() ?? 'unknown';
      map[value] = (map[value] ?? 0) + 1;
      return map;
    });
  }
}
