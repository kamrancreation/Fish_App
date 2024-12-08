import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_models.freezed.dart';
part 'admin_models.g.dart';

DateTime _parseDateTime(dynamic value) {
  if (value is DateTime) return value;
  if (value is String) return DateTime.parse(value);
  throw ArgumentError('Invalid DateTime value: $value');
}

DateTime? _parseDateTimeNullable(dynamic value) {
  if (value == null) return null;
  if (value is DateTime) return value;
  if (value is String) return DateTime.parse(value);
  throw ArgumentError('Invalid DateTime value: $value');
}

String _dateToString(DateTime date) => date.toIso8601String();

String? _dateToStringNullable(DateTime? date) => date?.toIso8601String();

@freezed
class AdminUser with _$AdminUser {
  const factory AdminUser({
    required String id,
    required String email,
    required List<UserRole> roles,
    required AdminPermissions permissions,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime createdAt,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime lastLogin,
    String? name,
    String? avatarUrl,
    Map<String, dynamic>? metadata,
  }) = _AdminUser;

  factory AdminUser.fromJson(Map<String, dynamic> json) => _$AdminUserFromJson(json);
}

enum UserRole {
  superAdmin,
  admin,
  moderator,
  support,
  contentManager,
  analyst;

  bool get isSuperAdmin => this == UserRole.superAdmin;
  bool get isAdmin => this == UserRole.admin;
  bool get isModerator => this == UserRole.moderator;
  bool get isSupport => this == UserRole.support;
  bool get isContentManager => this == UserRole.contentManager;
  bool get isAnalyst => this == UserRole.analyst;
}

@freezed
class AdminPermissions with _$AdminPermissions {
  const factory AdminPermissions({
    @Default(false) bool canManageUsers,
    @Default(false) bool canManageRoles,
    @Default(false) bool canViewAnalytics,
    @Default(false) bool canManageContent,
    @Default(false) bool canHandleSupport,
    @Default(false) bool canManageBans,
    @Default(false) bool canAccessLogs,
    @Default(false) bool canManageSettings,
    @Default(false) bool canExportData,
    @Default(false) bool canManagePayments,
  }) = _AdminPermissions;

  factory AdminPermissions.fromJson(Map<String, dynamic> json) => _$AdminPermissionsFromJson(json);

  factory AdminPermissions.forRole(UserRole role) {
    switch (role) {
      case UserRole.superAdmin:
        return const AdminPermissions(
          canManageUsers: true,
          canManageRoles: true,
          canViewAnalytics: true,
          canManageContent: true,
          canHandleSupport: true,
          canManageBans: true,
          canAccessLogs: true,
          canManageSettings: true,
          canExportData: true,
          canManagePayments: true,
        );
      case UserRole.admin:
        return const AdminPermissions(
          canManageUsers: true,
          canViewAnalytics: true,
          canManageContent: true,
          canHandleSupport: true,
          canManageBans: true,
          canAccessLogs: true,
          canExportData: true,
        );
      case UserRole.moderator:
        return const AdminPermissions(
          canManageContent: true,
          canHandleSupport: true,
          canManageBans: true,
        );
      case UserRole.support:
        return const AdminPermissions(
          canHandleSupport: true,
        );
      case UserRole.contentManager:
        return const AdminPermissions(
          canManageContent: true,
        );
      case UserRole.analyst:
        return const AdminPermissions(
          canViewAnalytics: true,
          canExportData: true,
        );
    }
  }
}

@freezed
class UserBan with _$UserBan {
  const factory UserBan({
    required String userId,
    required String reason,
    required String adminId,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime startTime,
    @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable) DateTime? endTime,
    String? notes,
    List<String>? evidenceUrls,
    BanType? type,
    Map<String, dynamic>? metadata,
  }) = _UserBan;

  factory UserBan.fromJson(Map<String, dynamic> json) => _$UserBanFromJson(json);
}

enum BanType {
  temporary,
  permanent,
  contentRestriction,
  shadowBan,
  ipBan,
}

@freezed
class UserAnalytics with _$UserAnalytics {
  const factory UserAnalytics({
    required String userId,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime lastActive,
    required int totalLogins,
    required int contentCount,
    required Map<String, int> activityMetrics,
    required Map<String, double> engagementScores,
    Map<String, dynamic>? customMetrics,
  }) = _UserAnalytics;

  factory UserAnalytics.fromJson(Map<String, dynamic> json) => _$UserAnalyticsFromJson(json);
}

@freezed
class SupportTicket with _$SupportTicket {
  const factory SupportTicket({
    required String id,
    required String userId,
    required String subject,
    required String description,
    required TicketStatus status,
    required TicketPriority priority,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime createdAt,
    String? assignedTo,
    @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable) DateTime? resolvedAt,
    List<String>? tags,
    List<TicketUpdate>? updates,
  }) = _SupportTicket;

  factory SupportTicket.fromJson(Map<String, dynamic> json) => _$SupportTicketFromJson(json);
}

enum TicketStatus {
  open,
  inProgress,
  waitingForUser,
  resolved,
  closed,
}

enum TicketPriority {
  low,
  medium,
  high,
  urgent,
}

@freezed
class TicketUpdate with _$TicketUpdate {
  const factory TicketUpdate({
    required String id,
    required String ticketId,
    required String userId,
    required String message,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime timestamp,
    List<String>? attachments,
    bool? isInternal,
  }) = _TicketUpdate;

  factory TicketUpdate.fromJson(Map<String, dynamic> json) => _$TicketUpdateFromJson(json);
}
