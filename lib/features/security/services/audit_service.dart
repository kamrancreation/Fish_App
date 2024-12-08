import '../models/security_models.dart';
import '../repositories/security_repository.dart';

class AuditService {
  final SecurityRepository _securityRepository;

  AuditService({SecurityRepository? securityRepository})
      : _securityRepository = securityRepository ?? SecurityRepository();

  // Log security event
  Future<void> logSecurityEvent({
    required String userId,
    required String eventType,
    required String description,
    required String severity,
    Map<String, dynamic>? metadata,
    String? ipAddress,
    String? deviceInfo,
  }) async {
    final event = SecurityEvent(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      userId: userId,
      eventType: eventType,
      description: description,
      severity: severity,
      timestamp: DateTime.now(),
      metadata: metadata ?? {},
      ipAddress: ipAddress,
      deviceInfo: deviceInfo,
    );

    await _securityRepository.logSecurityEvent(event);
  }

  // Get user security events
  Future<List<SecurityEvent>> getUserSecurityEvents(
    String userId, {
    DateTime? startDate,
    DateTime? endDate,
    String? severity,
    String? eventType,
    int limit = 100,
  }) async {
    return _securityRepository.getUserSecurityEvents(
      userId,
      startDate: startDate,
      endDate: endDate,
      severity: severity,
      eventType: eventType,
      limit: limit,
    );
  }

  // Get security events by type
  Future<List<SecurityEvent>> getSecurityEventsByType(
    String eventType, {
    DateTime? startDate,
    DateTime? endDate,
    String? severity,
    int limit = 100,
  }) async {
    return _securityRepository.getSecurityEventsByType(
      eventType,
      startDate: startDate,
      endDate: endDate,
      severity: severity,
      limit: limit,
    );
  }

  // Get security events by severity
  Future<List<SecurityEvent>> getSecurityEventsBySeverity(
    String severity, {
    DateTime? startDate,
    DateTime? endDate,
    String? eventType,
    int limit = 100,
  }) async {
    return _securityRepository.getSecurityEventsBySeverity(
      severity,
      startDate: startDate,
      endDate: endDate,
      eventType: eventType,
      limit: limit,
    );
  }

  // Create security audit
  Future<SecurityAudit> createSecurityAudit({
    required String type,
    required String description,
    required Map<String, dynamic> parameters,
    required String initiatedBy,
  }) async {
    final audit = SecurityAudit(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      type: type,
      description: description,
      parameters: parameters,
      initiatedBy: initiatedBy,
      startTime: DateTime.now(),
      status: 'in_progress',
    );

    await _securityRepository.createSecurityAudit(audit);
    return audit;
  }

  // Update security audit
  Future<void> updateSecurityAudit({
    required String auditId,
    String? status,
    Map<String, dynamic>? results,
    String? errorMessage,
  }) async {
    final updates = <String, dynamic>{
      if (status != null) 'status': status,
      if (results != null) 'results': results,
      if (errorMessage != null) 'errorMessage': errorMessage,
      if (status == 'completed' || status == 'failed')
        'endTime': DateTime.now().toIso8601String(),
    };

    await _securityRepository.updateSecurityAudit(auditId, updates);
  }

  // Get security audit
  Future<SecurityAudit?> getSecurityAudit(String auditId) async {
    return _securityRepository.getSecurityAudit(auditId);
  }

  // Get security audits
  Future<List<SecurityAudit>> getSecurityAudits({
    String? type,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    int limit = 100,
  }) async {
    return _securityRepository.getSecurityAudits(
      type: type,
      status: status,
      startDate: startDate,
      endDate: endDate,
      limit: limit,
    );
  }

  // Create access log
  Future<void> logAccess({
    required String userId,
    required String resource,
    required String action,
    required bool success,
    String? errorMessage,
    Map<String, dynamic>? metadata,
    String? ipAddress,
    String? deviceInfo,
  }) async {
    final accessLog = AccessLog(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      userId: userId,
      resource: resource,
      action: action,
      timestamp: DateTime.now(),
      success: success,
      errorMessage: errorMessage,
      metadata: metadata ?? {},
      ipAddress: ipAddress,
      deviceInfo: deviceInfo,
    );

    await _securityRepository.logAccess(accessLog);
  }

  // Get access logs
  Future<List<AccessLog>> getAccessLogs({
    String? userId,
    String? resource,
    String? action,
    bool? success,
    DateTime? startDate,
    DateTime? endDate,
    int limit = 100,
  }) async {
    return _securityRepository.getAccessLogs(
      userId: userId,
      resource: resource,
      action: action,
      success: success,
      startDate: startDate,
      endDate: endDate,
      limit: limit,
    );
  }

  // Clean up old logs
  Future<void> cleanupOldLogs({Duration? retentionPeriod}) async {
    final cutoffDate = DateTime.now().subtract(
      retentionPeriod ?? const Duration(days: 90),
    );
    await _securityRepository.cleanupOldLogs(cutoffDate);
  }

  // Generate audit report
  Future<Map<String, dynamic>> generateAuditReport({
    DateTime? startDate,
    DateTime? endDate,
    List<String>? eventTypes,
    List<String>? severities,
  }) async {
    final events = await _securityRepository.getSecurityEvents(
      startDate: startDate,
      endDate: endDate,
      eventTypes: eventTypes,
      severities: severities,
    );

    final accessLogs = await _securityRepository.getAccessLogs(
      startDate: startDate,
      endDate: endDate,
    );

    final audits = await _securityRepository.getSecurityAudits(
      startDate: startDate,
      endDate: endDate,
    );

    return {
      'generatedAt': DateTime.now().toIso8601String(),
      'period': {
        'start': startDate?.toIso8601String(),
        'end': endDate?.toIso8601String(),
      },
      'statistics': {
        'totalEvents': events.length,
        'totalAccessLogs': accessLogs.length,
        'totalAudits': audits.length,
        'eventsByType': _groupEventsByType(events),
        'eventsBySeverity': _groupEventsBySeverity(events),
        'accessLogsByResource': _groupAccessLogsByResource(accessLogs),
        'auditsByType': _groupAuditsByType(audits),
      },
      'events': events.map((e) => e.toJson()).toList(),
      'accessLogs': accessLogs.map((l) => l.toJson()).toList(),
      'audits': audits.map((a) => a.toJson()).toList(),
    };
  }

  Map<String, int> _groupEventsByType(List<SecurityEvent> events) {
    return events.fold<Map<String, int>>({}, (map, event) {
      map[event.eventType] = (map[event.eventType] ?? 0) + 1;
      return map;
    });
  }

  Map<String, int> _groupEventsBySeverity(List<SecurityEvent> events) {
    return events.fold<Map<String, int>>({}, (map, event) {
      map[event.severity] = (map[event.severity] ?? 0) + 1;
      return map;
    });
  }

  Map<String, int> _groupAccessLogsByResource(List<AccessLog> logs) {
    return logs.fold<Map<String, int>>({}, (map, log) {
      map[log.resource] = (map[log.resource] ?? 0) + 1;
      return map;
    });
  }

  Map<String, int> _groupAuditsByType(List<SecurityAudit> audits) {
    return audits.fold<Map<String, int>>({}, (map, audit) {
      map[audit.type] = (map[audit.type] ?? 0) + 1;
      return map;
    });
  }
}
