import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_models.freezed.dart';
part 'content_models.g.dart';

@freezed
class ContentItem with _$ContentItem {
  const factory ContentItem({
    required String id,
    required String title,
    required String type,
    required String creatorId,
    required DateTime createdAt,
    required ContentStatus status,
    required Map<String, dynamic> metadata,
    String? description,
    List<String>? tags,
    List<String>? mediaUrls,
    DateTime? lastModified,
    String? modifiedBy,
    ContentVisibility? visibility,
  }) = _ContentItem;

  factory ContentItem.fromJson(Map<String, dynamic> json) =>
      _$ContentItemFromJson(json);
}

enum ContentStatus {
  draft,
  pending,
  published,
  archived,
  deleted,
  flagged;

  bool get isDraft => this == ContentStatus.draft;
  bool get isPending => this == ContentStatus.pending;
  bool get isPublished => this == ContentStatus.published;
  bool get isArchived => this == ContentStatus.archived;
  bool get isDeleted => this == ContentStatus.deleted;
  bool get isFlagged => this == ContentStatus.flagged;
}

enum ContentVisibility {
  public,
  private,
  membersOnly,
  premiumOnly;

  bool get isPublic => this == ContentVisibility.public;
  bool get isPrivate => this == ContentVisibility.private;
  bool get isMembersOnly => this == ContentVisibility.membersOnly;
  bool get isPremiumOnly => this == ContentVisibility.premiumOnly;
}

@freezed
class Tournament with _$Tournament {
  const factory Tournament({
    required String id,
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required TournamentStatus status,
    required Map<String, dynamic> rules,
    required List<String> participants,
    required List<String> moderators,
    String? sponsorId,
    Map<String, dynamic>? prizes,
    Map<String, dynamic>? leaderboard,
    List<String>? mediaUrls,
    Map<String, dynamic>? settings,
  }) = _Tournament;

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);
}

enum TournamentStatus {
  draft,
  registration,
  active,
  completed,
  cancelled;

  bool get isDraft => this == TournamentStatus.draft;
  bool get isRegistration => this == TournamentStatus.registration;
  bool get isActive => this == TournamentStatus.active;
  bool get isCompleted => this == TournamentStatus.completed;
  bool get isCancelled => this == TournamentStatus.cancelled;
}

@freezed
class ContentReport with _$ContentReport {
  const factory ContentReport({
    required String id,
    required String contentId,
    required String reporterId,
    required String reason,
    required DateTime reportedAt,
    required ReportStatus status,
    String? description,
    List<String>? evidenceUrls,
    String? moderatorId,
    String? resolution,
    DateTime? resolvedAt,
    List<String>? notes,
  }) = _ContentReport;

  factory ContentReport.fromJson(Map<String, dynamic> json) =>
      _$ContentReportFromJson(json);
}

enum ReportStatus {
  pending,
  investigating,
  resolved,
  dismissed;

  bool get isPending => this == ReportStatus.pending;
  bool get isInvestigating => this == ReportStatus.investigating;
  bool get isResolved => this == ReportStatus.resolved;
  bool get isDismissed => this == ReportStatus.dismissed;
}

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    required String id,
    required String title,
    required String content,
    required String authorId,
    required DateTime createdAt,
    required DateTime expiresAt,
    required AnnouncementType type,
    required List<String> targetAudience,
    required bool isActive,
    String? imageUrl,
    String? actionUrl,
    Map<String, dynamic>? metadata,
    List<String>? tags,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}

enum AnnouncementType {
  general,
  maintenance,
  update,
  event,
  promotion,
  emergency;

  bool get isGeneral => this == AnnouncementType.general;
  bool get isMaintenance => this == AnnouncementType.maintenance;
  bool get isUpdate => this == AnnouncementType.update;
  bool get isEvent => this == AnnouncementType.event;
  bool get isPromotion => this == AnnouncementType.promotion;
  bool get isEmergency => this == AnnouncementType.emergency;
}

@freezed
class Resource with _$Resource {
  const factory Resource({
    required String id,
    required String name,
    required String type,
    required String url,
    required DateTime createdAt,
    required ResourceStatus status,
    required Map<String, int> usage,
    String? description,
    Map<String, dynamic>? metadata,
    List<String>? tags,
    DateTime? expiresAt,
  }) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);
}

enum ResourceStatus {
  active,
  inactive,
  deprecated,
  maintenance;

  bool get isActive => this == ResourceStatus.active;
  bool get isInactive => this == ResourceStatus.inactive;
  bool get isDeprecated => this == ResourceStatus.deprecated;
  bool get isMaintenance => this == ResourceStatus.maintenance;
}
