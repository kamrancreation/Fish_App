// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsageMetricsImpl _$$UsageMetricsImplFromJson(Map<String, dynamic> json) =>
    _$UsageMetricsImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      dailyActiveUsers: (json['dailyActiveUsers'] as num).toInt(),
      monthlyActiveUsers: (json['monthlyActiveUsers'] as num).toInt(),
      sessionCounts: Map<String, int>.from(json['sessionCounts'] as Map),
      averageSessionDuration:
          (json['averageSessionDuration'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      featureUsage: Map<String, int>.from(json['featureUsage'] as Map),
      screenViews: Map<String, int>.from(json['screenViews'] as Map),
      retentionRates: (json['retentionRates'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      customMetrics: json['customMetrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UsageMetricsImplToJson(_$UsageMetricsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'dailyActiveUsers': instance.dailyActiveUsers,
      'monthlyActiveUsers': instance.monthlyActiveUsers,
      'sessionCounts': instance.sessionCounts,
      'averageSessionDuration': instance.averageSessionDuration,
      'featureUsage': instance.featureUsage,
      'screenViews': instance.screenViews,
      'retentionRates': instance.retentionRates,
      'customMetrics': instance.customMetrics,
    };

_$PerformanceMetricsImpl _$$PerformanceMetricsImplFromJson(
        Map<String, dynamic> json) =>
    _$PerformanceMetricsImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      apiLatency: (json['apiLatency'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      errorCounts: Map<String, int>.from(json['errorCounts'] as Map),
      loadTimes: (json['loadTimes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      crashCounts: Map<String, int>.from(json['crashCounts'] as Map),
      appStartTime: (json['appStartTime'] as num).toDouble(),
      frameRate: (json['frameRate'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      memoryUsage: Map<String, int>.from(json['memoryUsage'] as Map),
      batteryImpact: (json['batteryImpact'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      customMetrics: json['customMetrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PerformanceMetricsImplToJson(
        _$PerformanceMetricsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'apiLatency': instance.apiLatency,
      'errorCounts': instance.errorCounts,
      'loadTimes': instance.loadTimes,
      'crashCounts': instance.crashCounts,
      'appStartTime': instance.appStartTime,
      'frameRate': instance.frameRate,
      'memoryUsage': instance.memoryUsage,
      'batteryImpact': instance.batteryImpact,
      'customMetrics': instance.customMetrics,
    };

_$EngagementMetricsImpl _$$EngagementMetricsImplFromJson(
        Map<String, dynamic> json) =>
    _$EngagementMetricsImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      contentInteractions:
          Map<String, int>.from(json['contentInteractions'] as Map),
      averageEngagementTime:
          (json['averageEngagementTime'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      socialInteractions:
          Map<String, int>.from(json['socialInteractions'] as Map),
      conversionRates: (json['conversionRates'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      userContributions:
          Map<String, int>.from(json['userContributions'] as Map),
      featureAdoption: (json['featureAdoption'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      customMetrics: json['customMetrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$EngagementMetricsImplToJson(
        _$EngagementMetricsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'contentInteractions': instance.contentInteractions,
      'averageEngagementTime': instance.averageEngagementTime,
      'socialInteractions': instance.socialInteractions,
      'conversionRates': instance.conversionRates,
      'userContributions': instance.userContributions,
      'featureAdoption': instance.featureAdoption,
      'customMetrics': instance.customMetrics,
    };

_$RevenueMetricsImpl _$$RevenueMetricsImplFromJson(Map<String, dynamic> json) =>
    _$RevenueMetricsImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      totalRevenue: (json['totalRevenue'] as num).toDouble(),
      revenueBySource: (json['revenueBySource'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      transactionCounts:
          Map<String, int>.from(json['transactionCounts'] as Map),
      averageOrderValue: (json['averageOrderValue'] as num).toDouble(),
      subscriptionRevenue:
          (json['subscriptionRevenue'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      subscriptionCounts:
          Map<String, int>.from(json['subscriptionCounts'] as Map),
      churnRate: (json['churnRate'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      customerLifetimeValue: (json['customerLifetimeValue'] as num).toDouble(),
      customMetrics: json['customMetrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RevenueMetricsImplToJson(
        _$RevenueMetricsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'totalRevenue': instance.totalRevenue,
      'revenueBySource': instance.revenueBySource,
      'transactionCounts': instance.transactionCounts,
      'averageOrderValue': instance.averageOrderValue,
      'subscriptionRevenue': instance.subscriptionRevenue,
      'subscriptionCounts': instance.subscriptionCounts,
      'churnRate': instance.churnRate,
      'customerLifetimeValue': instance.customerLifetimeValue,
      'customMetrics': instance.customMetrics,
    };

_$FeatureAdoptionMetricsImpl _$$FeatureAdoptionMetricsImplFromJson(
        Map<String, dynamic> json) =>
    _$FeatureAdoptionMetricsImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      featureUsage: Map<String, int>.from(json['featureUsage'] as Map),
      adoptionRate: (json['adoptionRate'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      retentionRate: (json['retentionRate'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      activeUsers: Map<String, int>.from(json['activeUsers'] as Map),
      satisfactionScore:
          (json['satisfactionScore'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      abandonmentRate: Map<String, int>.from(json['abandonmentRate'] as Map),
      customMetrics: json['customMetrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$FeatureAdoptionMetricsImplToJson(
        _$FeatureAdoptionMetricsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'featureUsage': instance.featureUsage,
      'adoptionRate': instance.adoptionRate,
      'retentionRate': instance.retentionRate,
      'activeUsers': instance.activeUsers,
      'satisfactionScore': instance.satisfactionScore,
      'abandonmentRate': instance.abandonmentRate,
      'customMetrics': instance.customMetrics,
    };

_$ErrorMetricsImpl _$$ErrorMetricsImplFromJson(Map<String, dynamic> json) =>
    _$ErrorMetricsImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      errorType: json['errorType'] as String,
      errorMessage: json['errorMessage'] as String,
      stackTrace: json['stackTrace'] as String,
      deviceInfo: json['deviceInfo'] as String,
      appVersion: json['appVersion'] as String,
      userId: json['userId'] as String,
      context: json['context'] as Map<String, dynamic>,
      severity: $enumDecode(_$ErrorSeverityEnumMap, json['severity']),
      status: $enumDecode(_$ErrorStatusEnumMap, json['status']),
      resolution: json['resolution'] as String?,
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
    );

Map<String, dynamic> _$$ErrorMetricsImplToJson(_$ErrorMetricsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'errorType': instance.errorType,
      'errorMessage': instance.errorMessage,
      'stackTrace': instance.stackTrace,
      'deviceInfo': instance.deviceInfo,
      'appVersion': instance.appVersion,
      'userId': instance.userId,
      'context': instance.context,
      'severity': _$ErrorSeverityEnumMap[instance.severity]!,
      'status': _$ErrorStatusEnumMap[instance.status]!,
      'resolution': instance.resolution,
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
    };

const _$ErrorSeverityEnumMap = {
  ErrorSeverity.critical: 'critical',
  ErrorSeverity.high: 'high',
  ErrorSeverity.medium: 'medium',
  ErrorSeverity.low: 'low',
};

const _$ErrorStatusEnumMap = {
  ErrorStatus.initial: 'new',
  ErrorStatus.investigating: 'investigating',
  ErrorStatus.resolved: 'resolved',
  ErrorStatus.ignored: 'ignored',
};

_$AnalyticsDashboardImpl _$$AnalyticsDashboardImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsDashboardImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      usage: UsageMetrics.fromJson(json['usage'] as Map<String, dynamic>),
      performance: PerformanceMetrics.fromJson(
          json['performance'] as Map<String, dynamic>),
      engagement: EngagementMetrics.fromJson(
          json['engagement'] as Map<String, dynamic>),
      revenue: RevenueMetrics.fromJson(json['revenue'] as Map<String, dynamic>),
      featureAdoption: FeatureAdoptionMetrics.fromJson(
          json['featureAdoption'] as Map<String, dynamic>),
      recentErrors: (json['recentErrors'] as List<dynamic>)
          .map((e) => ErrorMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      keyInsights: json['keyInsights'] as Map<String, dynamic>,
      trends: (json['trends'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, (e as List<dynamic>).map((e) => (e as num).toDouble()).toList()),
      ),
    );

Map<String, dynamic> _$$AnalyticsDashboardImplToJson(
        _$AnalyticsDashboardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'usage': instance.usage,
      'performance': instance.performance,
      'engagement': instance.engagement,
      'revenue': instance.revenue,
      'featureAdoption': instance.featureAdoption,
      'recentErrors': instance.recentErrors,
      'keyInsights': instance.keyInsights,
      'trends': instance.trends,
    };
