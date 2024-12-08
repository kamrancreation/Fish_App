// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerMetricsImpl _$$ServerMetricsImplFromJson(Map<String, dynamic> json) =>
    _$ServerMetricsImpl(
      id: json['id'] as String,
      serverName: json['serverName'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      cpuUsage: (json['cpuUsage'] as num).toDouble(),
      memoryUsage: (json['memoryUsage'] as num).toDouble(),
      diskUsage: (json['diskUsage'] as num).toDouble(),
      networkTraffic: (json['networkTraffic'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      activeConnections: (json['activeConnections'] as num).toInt(),
      requestCounts: Map<String, int>.from(json['requestCounts'] as Map),
      responseTime: (json['responseTime'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      customMetrics: json['customMetrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ServerMetricsImplToJson(_$ServerMetricsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serverName': instance.serverName,
      'timestamp': instance.timestamp.toIso8601String(),
      'cpuUsage': instance.cpuUsage,
      'memoryUsage': instance.memoryUsage,
      'diskUsage': instance.diskUsage,
      'networkTraffic': instance.networkTraffic,
      'activeConnections': instance.activeConnections,
      'requestCounts': instance.requestCounts,
      'responseTime': instance.responseTime,
      'customMetrics': instance.customMetrics,
    };

_$DatabaseMetricsImpl _$$DatabaseMetricsImplFromJson(
        Map<String, dynamic> json) =>
    _$DatabaseMetricsImpl(
      id: json['id'] as String,
      databaseName: json['databaseName'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      activeConnections: (json['activeConnections'] as num).toInt(),
      queryCount: (json['queryCount'] as num).toInt(),
      queryLatency: (json['queryLatency'] as num).toDouble(),
      storageUsage: (json['storageUsage'] as num).toDouble(),
      documentsCount: (json['documentsCount'] as num).toInt(),
      collectionSizes: Map<String, int>.from(json['collectionSizes'] as Map),
      indexPerformance: (json['indexPerformance'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      slowQueries: (json['slowQueries'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      replicationStatus: json['replicationStatus'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DatabaseMetricsImplToJson(
        _$DatabaseMetricsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'databaseName': instance.databaseName,
      'timestamp': instance.timestamp.toIso8601String(),
      'activeConnections': instance.activeConnections,
      'queryCount': instance.queryCount,
      'queryLatency': instance.queryLatency,
      'storageUsage': instance.storageUsage,
      'documentsCount': instance.documentsCount,
      'collectionSizes': instance.collectionSizes,
      'indexPerformance': instance.indexPerformance,
      'slowQueries': instance.slowQueries,
      'replicationStatus': instance.replicationStatus,
    };

_$BackupStatusImpl _$$BackupStatusImplFromJson(Map<String, dynamic> json) =>
    _$BackupStatusImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      backupType: json['backupType'] as String,
      state: $enumDecode(_$BackupStateEnumMap, json['state']),
      location: json['location'] as String,
      sizeBytes: (json['sizeBytes'] as num).toInt(),
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
      isEncrypted: json['isEncrypted'] as bool,
      includedServices: Map<String, bool>.from(json['includedServices'] as Map),
      error: json['error'] as String?,
      lastSuccessful: json['lastSuccessful'] == null
          ? null
          : DateTime.parse(json['lastSuccessful'] as String),
    );

Map<String, dynamic> _$$BackupStatusImplToJson(_$BackupStatusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'backupType': instance.backupType,
      'state': _$BackupStateEnumMap[instance.state]!,
      'location': instance.location,
      'sizeBytes': instance.sizeBytes,
      'duration': instance.duration.inMicroseconds,
      'isEncrypted': instance.isEncrypted,
      'includedServices': instance.includedServices,
      'error': instance.error,
      'lastSuccessful': instance.lastSuccessful?.toIso8601String(),
    };

const _$BackupStateEnumMap = {
  BackupState.pending: 'pending',
  BackupState.inProgress: 'inProgress',
  BackupState.completed: 'completed',
  BackupState.failed: 'failed',
  BackupState.verified: 'verified',
};

_$SecurityAuditImpl _$$SecurityAuditImplFromJson(Map<String, dynamic> json) =>
    _$SecurityAuditImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      endpoints: (json['endpoints'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, SecurityStatus.fromJson(e as Map<String, dynamic>)),
      ),
      vulnerabilities: (json['vulnerabilities'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      authentication: (json['authentication'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, AuthStats.fromJson(e as Map<String, dynamic>)),
      ),
      recentIncidents: (json['recentIncidents'] as List<dynamic>)
          .map((e) => SecurityIncident.fromJson(e as Map<String, dynamic>))
          .toList(),
      permissions: json['permissions'] as Map<String, dynamic>,
      firewallEnabled: json['firewallEnabled'] as bool,
      securityRules: json['securityRules'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$SecurityAuditImplToJson(_$SecurityAuditImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'endpoints': instance.endpoints,
      'vulnerabilities': instance.vulnerabilities,
      'authentication': instance.authentication,
      'recentIncidents': instance.recentIncidents,
      'permissions': instance.permissions,
      'firewallEnabled': instance.firewallEnabled,
      'securityRules': instance.securityRules,
    };

_$SecurityStatusImpl _$$SecurityStatusImplFromJson(Map<String, dynamic> json) =>
    _$SecurityStatusImpl(
      isSecure: json['isSecure'] as bool,
      issues:
          (json['issues'] as List<dynamic>).map((e) => e as String).toList(),
      lastChecked: DateTime.parse(json['lastChecked'] as String),
      protocol: json['protocol'] as String,
      headers: json['headers'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$SecurityStatusImplToJson(
        _$SecurityStatusImpl instance) =>
    <String, dynamic>{
      'isSecure': instance.isSecure,
      'issues': instance.issues,
      'lastChecked': instance.lastChecked.toIso8601String(),
      'protocol': instance.protocol,
      'headers': instance.headers,
    };

_$AuthStatsImpl _$$AuthStatsImplFromJson(Map<String, dynamic> json) =>
    _$AuthStatsImpl(
      totalAttempts: (json['totalAttempts'] as num).toInt(),
      successfulAttempts: (json['successfulAttempts'] as num).toInt(),
      failedAttempts: (json['failedAttempts'] as num).toInt(),
      blockedIPs: (json['blockedIPs'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      methodStats: Map<String, int>.from(json['methodStats'] as Map),
    );

Map<String, dynamic> _$$AuthStatsImplToJson(_$AuthStatsImpl instance) =>
    <String, dynamic>{
      'totalAttempts': instance.totalAttempts,
      'successfulAttempts': instance.successfulAttempts,
      'failedAttempts': instance.failedAttempts,
      'blockedIPs': instance.blockedIPs,
      'methodStats': instance.methodStats,
    };

_$SecurityIncidentImpl _$$SecurityIncidentImplFromJson(
        Map<String, dynamic> json) =>
    _$SecurityIncidentImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      type: json['type'] as String,
      description: json['description'] as String,
      severity: $enumDecode(_$SecuritySeverityEnumMap, json['severity']),
      sourceIP: json['sourceIP'] as String,
      targetEndpoint: json['targetEndpoint'] as String,
      status: $enumDecode(_$IncidentStatusEnumMap, json['status']),
      resolution: json['resolution'] as String?,
    );

Map<String, dynamic> _$$SecurityIncidentImplToJson(
        _$SecurityIncidentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'type': instance.type,
      'description': instance.description,
      'severity': _$SecuritySeverityEnumMap[instance.severity]!,
      'sourceIP': instance.sourceIP,
      'targetEndpoint': instance.targetEndpoint,
      'status': _$IncidentStatusEnumMap[instance.status]!,
      'resolution': instance.resolution,
    };

const _$SecuritySeverityEnumMap = {
  SecuritySeverity.critical: 'critical',
  SecuritySeverity.high: 'high',
  SecuritySeverity.medium: 'medium',
  SecuritySeverity.low: 'low',
};

const _$IncidentStatusEnumMap = {
  IncidentStatus.detected: 'detected',
  IncidentStatus.investigating: 'investigating',
  IncidentStatus.mitigated: 'mitigated',
  IncidentStatus.resolved: 'resolved',
};

_$ApiMetricsImpl _$$ApiMetricsImplFromJson(Map<String, dynamic> json) =>
    _$ApiMetricsImpl(
      id: json['id'] as String,
      endpoint: json['endpoint'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      requestCount: (json['requestCount'] as num).toInt(),
      averageResponseTime: (json['averageResponseTime'] as num).toDouble(),
      statusCodes: Map<String, int>.from(json['statusCodes'] as Map),
      errorRates: Map<String, int>.from(json['errorRates'] as Map),
      uptime: (json['uptime'] as num).toDouble(),
      slowestEndpoints: (json['slowestEndpoints'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      rateLimit: json['rateLimit'] as Map<String, dynamic>,
      customMetrics: json['customMetrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ApiMetricsImplToJson(_$ApiMetricsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'endpoint': instance.endpoint,
      'timestamp': instance.timestamp.toIso8601String(),
      'requestCount': instance.requestCount,
      'averageResponseTime': instance.averageResponseTime,
      'statusCodes': instance.statusCodes,
      'errorRates': instance.errorRates,
      'uptime': instance.uptime,
      'slowestEndpoints': instance.slowestEndpoints,
      'rateLimit': instance.rateLimit,
      'customMetrics': instance.customMetrics,
    };

_$ServiceHealthImpl _$$ServiceHealthImplFromJson(Map<String, dynamic> json) =>
    _$ServiceHealthImpl(
      id: json['id'] as String,
      serviceName: json['serviceName'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      status: $enumDecode(_$ServiceStatusEnumMap, json['status']),
      uptime: (json['uptime'] as num).toDouble(),
      errorCount: (json['errorCount'] as num).toInt(),
      responseTime: (json['responseTime'] as num).toDouble(),
      dependencies: Map<String, bool>.from(json['dependencies'] as Map),
      metrics: (json['metrics'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, HealthMetric.fromJson(e as Map<String, dynamic>)),
      ),
      activeAlerts: (json['activeAlerts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      lastError: json['lastError'] as String?,
    );

Map<String, dynamic> _$$ServiceHealthImplToJson(_$ServiceHealthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceName': instance.serviceName,
      'timestamp': instance.timestamp.toIso8601String(),
      'status': _$ServiceStatusEnumMap[instance.status]!,
      'uptime': instance.uptime,
      'errorCount': instance.errorCount,
      'responseTime': instance.responseTime,
      'dependencies': instance.dependencies,
      'metrics': instance.metrics,
      'activeAlerts': instance.activeAlerts,
      'lastError': instance.lastError,
    };

const _$ServiceStatusEnumMap = {
  ServiceStatus.healthy: 'healthy',
  ServiceStatus.degraded: 'degraded',
  ServiceStatus.down: 'down',
  ServiceStatus.maintenance: 'maintenance',
};

_$HealthMetricImpl _$$HealthMetricImplFromJson(Map<String, dynamic> json) =>
    _$HealthMetricImpl(
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
      isHealthy: json['isHealthy'] as bool,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      threshold: json['threshold'] as String?,
    );

Map<String, dynamic> _$$HealthMetricImplToJson(_$HealthMetricImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'unit': instance.unit,
      'isHealthy': instance.isHealthy,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'threshold': instance.threshold,
    };

_$SystemDashboardImpl _$$SystemDashboardImplFromJson(
        Map<String, dynamic> json) =>
    _$SystemDashboardImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      servers: (json['servers'] as List<dynamic>)
          .map((e) => ServerMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      databases: (json['databases'] as List<dynamic>)
          .map((e) => DatabaseMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      backups: (json['backups'] as List<dynamic>)
          .map((e) => BackupStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      security:
          SecurityAudit.fromJson(json['security'] as Map<String, dynamic>),
      apis: (json['apis'] as List<dynamic>)
          .map((e) => ApiMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceHealth.fromJson(e as Map<String, dynamic>))
          .toList(),
      alerts: json['alerts'] as Map<String, dynamic>,
      trends: (json['trends'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, (e as List<dynamic>).map((e) => (e as num).toDouble()).toList()),
      ),
    );

Map<String, dynamic> _$$SystemDashboardImplToJson(
        _$SystemDashboardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'servers': instance.servers,
      'databases': instance.databases,
      'backups': instance.backups,
      'security': instance.security,
      'apis': instance.apis,
      'services': instance.services,
      'alerts': instance.alerts,
      'trends': instance.trends,
    };
