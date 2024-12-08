import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/system_models.dart';
import '../repositories/system_repository.dart';

final systemServiceProvider = Provider((ref) {
  return SystemService(ref.watch(systemRepositoryProvider));
});

class SystemService {
  final SystemRepository _repository;

  SystemService(this._repository);

  // Server Monitoring
  Future<void> trackServerMetrics({
    required String serverName,
    required double cpuUsage,
    required double memoryUsage,
    required double diskUsage,
    required Map<String, double> networkTraffic,
    required int activeConnections,
    required Map<String, int> requestCounts,
    required Map<String, double> responseTime,
  }) async {
    await _repository.trackServerMetrics(
      serverName: serverName,
      cpuUsage: cpuUsage,
      memoryUsage: memoryUsage,
      diskUsage: diskUsage,
      networkTraffic: networkTraffic,
      activeConnections: activeConnections,
      requestCounts: requestCounts,
      responseTime: responseTime,
    );
  }

  Future<List<ServerMetrics>> getServerMetrics({
    List<String>? serverNames,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getServerMetrics(
      serverNames: serverNames,
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Database Management
  Future<void> trackDatabaseMetrics({
    required String databaseName,
    required int activeConnections,
    required int queryCount,
    required double queryLatency,
    required double storageUsage,
    required int documentsCount,
    required Map<String, int> collectionSizes,
    required Map<String, double> indexPerformance,
    required List<String> slowQueries,
  }) async {
    await _repository.trackDatabaseMetrics(
      databaseName: databaseName,
      activeConnections: activeConnections,
      queryCount: queryCount,
      queryLatency: queryLatency,
      storageUsage: storageUsage,
      documentsCount: documentsCount,
      collectionSizes: collectionSizes,
      indexPerformance: indexPerformance,
      slowQueries: slowQueries,
    );
  }

  Future<DatabaseMetrics> getDatabaseMetrics(String databaseName) async {
    return _repository.getDatabaseMetrics(databaseName);
  }

  Future<void> optimizeDatabase(String databaseName) async {
    await _repository.optimizeDatabase(databaseName);
  }

  // Backup Systems
  Future<String> initiateBackup({
    required String backupType,
    required Map<String, bool> includedServices,
    required bool encrypt,
  }) async {
    return _repository.initiateBackup(
      backupType: backupType,
      includedServices: includedServices,
      encrypt: encrypt,
    );
  }

  Future<BackupStatus> getBackupStatus(String backupId) async {
    return _repository.getBackupStatus(backupId);
  }

  Future<void> restoreFromBackup({
    required String backupId,
    required Map<String, bool> services,
  }) async {
    await _repository.restoreFromBackup(
      backupId: backupId,
      services: services,
    );
  }

  // Security Controls
  Future<SecurityAudit> performSecurityAudit() async {
    return _repository.performSecurityAudit();
  }

  Future<void> updateSecurityRules(Map<String, dynamic> rules) async {
    await _repository.updateSecurityRules(rules);
  }

  Future<void> trackSecurityIncident(SecurityIncident incident) async {
    await _repository.trackSecurityIncident(incident);
  }

  Future<List<SecurityIncident>> getSecurityIncidents({
    SecuritySeverity? minSeverity,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getSecurityIncidents(
      minSeverity: minSeverity,
      startDate: startDate,
      endDate: endDate,
    );
  }

  // API Management
  Future<void> trackApiMetrics({
    required String endpoint,
    required int requestCount,
    required double responseTime,
    required Map<String, int> statusCodes,
    required Map<String, int> errorRates,
  }) async {
    await _repository.trackApiMetrics(
      endpoint: endpoint,
      requestCount: requestCount,
      responseTime: responseTime,
      statusCodes: statusCodes,
      errorRates: errorRates,
    );
  }

  Future<List<ApiMetrics>> getApiMetrics({
    List<String>? endpoints,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return _repository.getApiMetrics(
      endpoints: endpoints,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Future<void> updateApiRateLimit({
    required String endpoint,
    required Map<String, dynamic> limits,
  }) async {
    await _repository.updateApiRateLimit(
      endpoint: endpoint,
      limits: limits,
    );
  }

  // Service Health
  Future<void> updateServiceHealth({
    required String serviceName,
    required ServiceStatus status,
    required double uptime,
    required int errorCount,
    required double responseTime,
    required Map<String, bool> dependencies,
    required Map<String, HealthMetric> metrics,
  }) async {
    await _repository.updateServiceHealth(
      serviceName: serviceName,
      status: status,
      uptime: uptime,
      errorCount: errorCount,
      responseTime: responseTime,
      dependencies: dependencies,
      metrics: metrics,
    );
  }

  Future<List<ServiceHealth>> getServiceHealth({
    List<String>? serviceNames,
    ServiceStatus? minStatus,
  }) async {
    return _repository.getServiceHealth(
      serviceNames: serviceNames,
      minStatus: minStatus,
    );
  }

  // System Dashboard
  Future<SystemDashboard> getSystemDashboard() async {
    return _repository.getSystemDashboard();
  }

  // Alert Management
  Future<void> setSystemAlert({
    required String metric,
    required String condition,
    required double threshold,
    required String severity,
    required String notificationChannel,
  }) async {
    await _repository.setSystemAlert(
      metric: metric,
      condition: condition,
      threshold: threshold,
      severity: severity,
      notificationChannel: notificationChannel,
    );
  }

  Future<void> checkSystemAlerts() async {
    await _repository.checkSystemAlerts();
  }

  // Maintenance
  Future<void> scheduleSystemMaintenance({
    required String service,
    required DateTime startTime,
    required Duration duration,
    required String description,
    required bool notifyUsers,
  }) async {
    await _repository.scheduleSystemMaintenance(
      service: service,
      startTime: startTime,
      duration: duration,
      description: description,
      notifyUsers: notifyUsers,
    );
  }

  Future<void> performSystemHealthCheck() async {
    await _repository.performSystemHealthCheck();
  }

  // Resource Management
  Future<Map<String, dynamic>> getResourceUtilization() async {
    return _repository.getResourceUtilization();
  }

  Future<void> optimizeResources({
    required List<String> services,
    required Map<String, dynamic> parameters,
  }) async {
    await _repository.optimizeResources(
      services: services,
      parameters: parameters,
    );
  }
}
