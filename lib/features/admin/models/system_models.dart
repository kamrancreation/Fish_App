import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_models.freezed.dart';
part 'system_models.g.dart';

@freezed
class ServerMetrics with _$ServerMetrics {
  const factory ServerMetrics({
    required String id,
    required String serverName,
    required DateTime timestamp,
    required double cpuUsage,
    required double memoryUsage,
    required double diskUsage,
    required Map<String, double> networkTraffic,
    required int activeConnections,
    required Map<String, int> requestCounts,
    required Map<String, double> responseTime,
    Map<String, dynamic>? customMetrics,
  }) = _ServerMetrics;

  factory ServerMetrics.fromJson(Map<String, dynamic> json) =>
      _$ServerMetricsFromJson(json);
}

@freezed
class DatabaseMetrics with _$DatabaseMetrics {
  const factory DatabaseMetrics({
    required String id,
    required String databaseName,
    required DateTime timestamp,
    required int activeConnections,
    required int queryCount,
    required double queryLatency,
    required double storageUsage,
    required int documentsCount,
    required Map<String, int> collectionSizes,
    required Map<String, double> indexPerformance,
    required List<String> slowQueries,
    Map<String, dynamic>? replicationStatus,
  }) = _DatabaseMetrics;

  factory DatabaseMetrics.fromJson(Map<String, dynamic> json) =>
      _$DatabaseMetricsFromJson(json);
}

@freezed
class BackupStatus with _$BackupStatus {
  const factory BackupStatus({
    required String id,
    required DateTime timestamp,
    required String backupType,
    required BackupState state,
    required String location,
    required int sizeBytes,
    required Duration duration,
    required bool isEncrypted,
    required Map<String, bool> includedServices,
    String? error,
    DateTime? lastSuccessful,
  }) = _BackupStatus;

  factory BackupStatus.fromJson(Map<String, dynamic> json) =>
      _$BackupStatusFromJson(json);
}

enum BackupState {
  pending,
  inProgress,
  completed,
  failed,
  verified;

  bool get isPending => this == BackupState.pending;
  bool get isInProgress => this == BackupState.inProgress;
  bool get isCompleted => this == BackupState.completed;
  bool get isFailed => this == BackupState.failed;
  bool get isVerified => this == BackupState.verified;
}

@freezed
class SecurityAudit with _$SecurityAudit {
  const factory SecurityAudit({
    required String id,
    required DateTime timestamp,
    required Map<String, SecurityStatus> endpoints,
    required Map<String, List<String>> vulnerabilities,
    required Map<String, AuthStats> authentication,
    required List<SecurityIncident> recentIncidents,
    required Map<String, dynamic> permissions,
    required bool firewallEnabled,
    required Map<String, dynamic> securityRules,
  }) = _SecurityAudit;

  factory SecurityAudit.fromJson(Map<String, dynamic> json) =>
      _$SecurityAuditFromJson(json);
}

@freezed
class SecurityStatus with _$SecurityStatus {
  const factory SecurityStatus({
    required bool isSecure,
    required List<String> issues,
    required DateTime lastChecked,
    required String protocol,
    required Map<String, dynamic> headers,
  }) = _SecurityStatus;

  factory SecurityStatus.fromJson(Map<String, dynamic> json) =>
      _$SecurityStatusFromJson(json);
}

@freezed
class AuthStats with _$AuthStats {
  const factory AuthStats({
    required int totalAttempts,
    required int successfulAttempts,
    required int failedAttempts,
    required List<String> blockedIPs,
    required Map<String, int> methodStats,
  }) = _AuthStats;

  factory AuthStats.fromJson(Map<String, dynamic> json) =>
      _$AuthStatsFromJson(json);
}

@freezed
class SecurityIncident with _$SecurityIncident {
  const factory SecurityIncident({
    required String id,
    required DateTime timestamp,
    required String type,
    required String description,
    required SecuritySeverity severity,
    required String sourceIP,
    required String targetEndpoint,
    required IncidentStatus status,
    String? resolution,
  }) = _SecurityIncident;

  factory SecurityIncident.fromJson(Map<String, dynamic> json) =>
      _$SecurityIncidentFromJson(json);
}

enum SecuritySeverity {
  critical,
  high,
  medium,
  low;

  bool get isCritical => this == SecuritySeverity.critical;
  bool get isHigh => this == SecuritySeverity.high;
  bool get isMedium => this == SecuritySeverity.medium;
  bool get isLow => this == SecuritySeverity.low;
}

enum IncidentStatus {
  detected,
  investigating,
  mitigated,
  resolved;

  bool get isDetected => this == IncidentStatus.detected;
  bool get isInvestigating => this == IncidentStatus.investigating;
  bool get isMitigated => this == IncidentStatus.mitigated;
  bool get isResolved => this == IncidentStatus.resolved;
}

@freezed
class ApiMetrics with _$ApiMetrics {
  const factory ApiMetrics({
    required String id,
    required String endpoint,
    required DateTime timestamp,
    required int requestCount,
    required double averageResponseTime,
    required Map<String, int> statusCodes,
    required Map<String, int> errorRates,
    required double uptime,
    required List<String> slowestEndpoints,
    required Map<String, dynamic> rateLimit,
    Map<String, dynamic>? customMetrics,
  }) = _ApiMetrics;

  factory ApiMetrics.fromJson(Map<String, dynamic> json) =>
      _$ApiMetricsFromJson(json);
}

@freezed
class ServiceHealth with _$ServiceHealth {
  const factory ServiceHealth({
    required String id,
    required String serviceName,
    required DateTime timestamp,
    required ServiceStatus status,
    required double uptime,
    required int errorCount,
    required double responseTime,
    required Map<String, bool> dependencies,
    required Map<String, HealthMetric> metrics,
    required List<String> activeAlerts,
    String? lastError,
  }) = _ServiceHealth;

  factory ServiceHealth.fromJson(Map<String, dynamic> json) =>
      _$ServiceHealthFromJson(json);
}

@freezed
class HealthMetric with _$HealthMetric {
  const factory HealthMetric({
    required String name,
    required double value,
    required String unit,
    required bool isHealthy,
    required DateTime lastUpdated,
    String? threshold,
  }) = _HealthMetric;

  factory HealthMetric.fromJson(Map<String, dynamic> json) =>
      _$HealthMetricFromJson(json);
}

enum ServiceStatus {
  healthy,
  degraded,
  down,
  maintenance;

  bool get isHealthy => this == ServiceStatus.healthy;
  bool get isDegraded => this == ServiceStatus.degraded;
  bool get isDown => this == ServiceStatus.down;
  bool get isMaintenance => this == ServiceStatus.maintenance;
}

@freezed
class SystemDashboard with _$SystemDashboard {
  const factory SystemDashboard({
    required String id,
    required DateTime timestamp,
    required List<ServerMetrics> servers,
    required List<DatabaseMetrics> databases,
    required List<BackupStatus> backups,
    required SecurityAudit security,
    required List<ApiMetrics> apis,
    required List<ServiceHealth> services,
    required Map<String, dynamic> alerts,
    required Map<String, List<double>> trends,
  }) = _SystemDashboard;

  factory SystemDashboard.fromJson(Map<String, dynamic> json) =>
      _$SystemDashboardFromJson(json);
}
