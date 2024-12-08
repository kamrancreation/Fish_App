// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDataImpl _$$WeatherDataImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDataImpl(
      location: json['location'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      temperature: (json['temperature'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
      windDirection: json['windDirection'] as String,
      pressure: (json['pressure'] as num).toDouble(),
      precipitation: (json['precipitation'] as num).toDouble(),
      condition: json['condition'] as String,
      waterConditions: (json['waterConditions'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      hourlyForecast: (json['hourlyForecast'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k),
            WeatherForecast.fromJson(e as Map<String, dynamic>)),
      ),
      dailyForecast: (json['dailyForecast'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k),
            WeatherForecast.fromJson(e as Map<String, dynamic>)),
      ),
      alerts: json['alerts'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WeatherDataImplToJson(_$WeatherDataImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'timestamp': instance.timestamp.toIso8601String(),
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
      'windDirection': instance.windDirection,
      'pressure': instance.pressure,
      'precipitation': instance.precipitation,
      'condition': instance.condition,
      'waterConditions': instance.waterConditions,
      'hourlyForecast': instance.hourlyForecast
          .map((k, e) => MapEntry(k.toIso8601String(), e)),
      'dailyForecast': instance.dailyForecast
          .map((k, e) => MapEntry(k.toIso8601String(), e)),
      'alerts': instance.alerts,
    };

_$WeatherForecastImpl _$$WeatherForecastImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastImpl(
      time: DateTime.parse(json['time'] as String),
      temperature: (json['temperature'] as num).toDouble(),
      precipitation: (json['precipitation'] as num).toDouble(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
      condition: json['condition'] as String,
      details: json['details'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WeatherForecastImplToJson(
        _$WeatherForecastImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'temperature': instance.temperature,
      'precipitation': instance.precipitation,
      'windSpeed': instance.windSpeed,
      'condition': instance.condition,
      'details': instance.details,
    };

_$MapProviderImpl _$$MapProviderImplFromJson(Map<String, dynamic> json) =>
    _$MapProviderImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      apiKey: json['apiKey'] as String,
      isActive: json['isActive'] as bool,
      features: MapFeatures.fromJson(json['features'] as Map<String, dynamic>),
      settings: json['settings'] as Map<String, dynamic>,
      usage: json['usage'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MapProviderImplToJson(_$MapProviderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'apiKey': instance.apiKey,
      'isActive': instance.isActive,
      'features': instance.features,
      'settings': instance.settings,
      'usage': instance.usage,
    };

_$MapFeaturesImpl _$$MapFeaturesImplFromJson(Map<String, dynamic> json) =>
    _$MapFeaturesImpl(
      satellite: json['satellite'] as bool,
      terrain: json['terrain'] as bool,
      traffic: json['traffic'] as bool,
      places: json['places'] as bool,
      directions: json['directions'] as bool,
      geocoding: json['geocoding'] as bool,
      clustering: json['clustering'] as bool,
      heatmap: json['heatmap'] as bool,
    );

Map<String, dynamic> _$$MapFeaturesImplToJson(_$MapFeaturesImpl instance) =>
    <String, dynamic>{
      'satellite': instance.satellite,
      'terrain': instance.terrain,
      'traffic': instance.traffic,
      'places': instance.places,
      'directions': instance.directions,
      'geocoding': instance.geocoding,
      'clustering': instance.clustering,
      'heatmap': instance.heatmap,
    };

_$PaymentProcessorImpl _$$PaymentProcessorImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentProcessorImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      provider: json['provider'] as String,
      isActive: json['isActive'] as bool,
      supportedMethods: (json['supportedMethods'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      configuration: json['configuration'] as Map<String, dynamic>,
      features:
          PaymentFeatures.fromJson(json['features'] as Map<String, dynamic>),
      analytics: json['analytics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PaymentProcessorImplToJson(
        _$PaymentProcessorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'provider': instance.provider,
      'isActive': instance.isActive,
      'supportedMethods': instance.supportedMethods,
      'configuration': instance.configuration,
      'features': instance.features,
      'analytics': instance.analytics,
    };

_$PaymentFeaturesImpl _$$PaymentFeaturesImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentFeaturesImpl(
      recurring: json['recurring'] as bool,
      refunds: json['refunds'] as bool,
      disputes: json['disputes'] as bool,
      splitPayments: json['splitPayments'] as bool,
      internationalPayments: json['internationalPayments'] as bool,
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PaymentFeaturesImplToJson(
        _$PaymentFeaturesImpl instance) =>
    <String, dynamic>{
      'recurring': instance.recurring,
      'refunds': instance.refunds,
      'disputes': instance.disputes,
      'splitPayments': instance.splitPayments,
      'internationalPayments': instance.internationalPayments,
      'currencies': instance.currencies,
    };

_$SocialMediaIntegrationImpl _$$SocialMediaIntegrationImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialMediaIntegrationImpl(
      platform: json['platform'] as String,
      accessToken: json['accessToken'] as String,
      tokenExpiry: DateTime.parse(json['tokenExpiry'] as String),
      isActive: json['isActive'] as bool,
      features:
          SocialFeatures.fromJson(json['features'] as Map<String, dynamic>),
      settings: json['settings'] as Map<String, dynamic>,
      analytics: json['analytics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocialMediaIntegrationImplToJson(
        _$SocialMediaIntegrationImpl instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'accessToken': instance.accessToken,
      'tokenExpiry': instance.tokenExpiry.toIso8601String(),
      'isActive': instance.isActive,
      'features': instance.features,
      'settings': instance.settings,
      'analytics': instance.analytics,
    };

_$SocialFeaturesImpl _$$SocialFeaturesImplFromJson(Map<String, dynamic> json) =>
    _$SocialFeaturesImpl(
      sharing: json['sharing'] as bool,
      authentication: json['authentication'] as bool,
      feed: json['feed'] as bool,
      messaging: json['messaging'] as bool,
      notifications: json['notifications'] as bool,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SocialFeaturesImplToJson(
        _$SocialFeaturesImpl instance) =>
    <String, dynamic>{
      'sharing': instance.sharing,
      'authentication': instance.authentication,
      'feed': instance.feed,
      'messaging': instance.messaging,
      'notifications': instance.notifications,
      'permissions': instance.permissions,
    };

_$CloudServiceImpl _$$CloudServiceImplFromJson(Map<String, dynamic> json) =>
    _$CloudServiceImpl(
      id: json['id'] as String,
      provider: json['provider'] as String,
      service: json['service'] as String,
      isActive: json['isActive'] as bool,
      features:
          CloudFeatures.fromJson(json['features'] as Map<String, dynamic>),
      configuration: json['configuration'] as Map<String, dynamic>,
      quotas: json['quotas'] as Map<String, dynamic>,
      usage: json['usage'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CloudServiceImplToJson(_$CloudServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'service': instance.service,
      'isActive': instance.isActive,
      'features': instance.features,
      'configuration': instance.configuration,
      'quotas': instance.quotas,
      'usage': instance.usage,
    };

_$CloudFeaturesImpl _$$CloudFeaturesImplFromJson(Map<String, dynamic> json) =>
    _$CloudFeaturesImpl(
      storage: json['storage'] as bool,
      computing: json['computing'] as bool,
      database: json['database'] as bool,
      analytics: json['analytics'] as bool,
      ml: json['ml'] as bool,
      apis: (json['apis'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CloudFeaturesImplToJson(_$CloudFeaturesImpl instance) =>
    <String, dynamic>{
      'storage': instance.storage,
      'computing': instance.computing,
      'database': instance.database,
      'analytics': instance.analytics,
      'ml': instance.ml,
      'apis': instance.apis,
    };

_$AnalyticsPlatformImpl _$$AnalyticsPlatformImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsPlatformImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      provider: json['provider'] as String,
      isActive: json['isActive'] as bool,
      features:
          AnalyticsFeatures.fromJson(json['features'] as Map<String, dynamic>),
      configuration: json['configuration'] as Map<String, dynamic>,
      tracking: json['tracking'] as Map<String, dynamic>,
      metrics: json['metrics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AnalyticsPlatformImplToJson(
        _$AnalyticsPlatformImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'provider': instance.provider,
      'isActive': instance.isActive,
      'features': instance.features,
      'configuration': instance.configuration,
      'tracking': instance.tracking,
      'metrics': instance.metrics,
    };

_$AnalyticsFeaturesImpl _$$AnalyticsFeaturesImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsFeaturesImpl(
      events: json['events'] as bool,
      userProperties: json['userProperties'] as bool,
      conversions: json['conversions'] as bool,
      funnels: json['funnels'] as bool,
      retention: json['retention'] as bool,
      realtime: json['realtime'] as bool,
      dimensions: (json['dimensions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AnalyticsFeaturesImplToJson(
        _$AnalyticsFeaturesImpl instance) =>
    <String, dynamic>{
      'events': instance.events,
      'userProperties': instance.userProperties,
      'conversions': instance.conversions,
      'funnels': instance.funnels,
      'retention': instance.retention,
      'realtime': instance.realtime,
      'dimensions': instance.dimensions,
    };

_$IntegrationStatusImpl _$$IntegrationStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$IntegrationStatusImpl(
      integrationId: json['integrationId'] as String,
      type: json['type'] as String,
      isActive: json['isActive'] as bool,
      lastCheck: DateTime.parse(json['lastCheck'] as String),
      isHealthy: json['isHealthy'] as bool,
      features: Map<String, bool>.from(json['features'] as Map),
      metrics: json['metrics'] as Map<String, dynamic>,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$IntegrationStatusImplToJson(
        _$IntegrationStatusImpl instance) =>
    <String, dynamic>{
      'integrationId': instance.integrationId,
      'type': instance.type,
      'isActive': instance.isActive,
      'lastCheck': instance.lastCheck.toIso8601String(),
      'isHealthy': instance.isHealthy,
      'features': instance.features,
      'metrics': instance.metrics,
      'error': instance.error,
    };

_$ApiUsageImpl _$$ApiUsageImplFromJson(Map<String, dynamic> json) =>
    _$ApiUsageImpl(
      apiId: json['apiId'] as String,
      period: DateTime.parse(json['period'] as String),
      requests: (json['requests'] as num).toInt(),
      errors: (json['errors'] as num).toInt(),
      latency: (json['latency'] as num).toDouble(),
      endpoints: Map<String, int>.from(json['endpoints'] as Map),
      costs: (json['costs'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      quotas: json['quotas'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ApiUsageImplToJson(_$ApiUsageImpl instance) =>
    <String, dynamic>{
      'apiId': instance.apiId,
      'period': instance.period.toIso8601String(),
      'requests': instance.requests,
      'errors': instance.errors,
      'latency': instance.latency,
      'endpoints': instance.endpoints,
      'costs': instance.costs,
      'quotas': instance.quotas,
    };

_$IntegrationConfigImpl _$$IntegrationConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$IntegrationConfigImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      credentials: Map<String, String>.from(json['credentials'] as Map),
      settings: json['settings'] as Map<String, dynamic>,
      features: Map<String, bool>.from(json['features'] as Map),
      isActive: json['isActive'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IntegrationConfigImplToJson(
        _$IntegrationConfigImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'credentials': instance.credentials,
      'settings': instance.settings,
      'features': instance.features,
      'isActive': instance.isActive,
      'metadata': instance.metadata,
    };

_$IoTDeviceImpl _$$IoTDeviceImplFromJson(Map<String, dynamic> json) =>
    _$IoTDeviceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      manufacturer: json['manufacturer'] as String,
      model: json['model'] as String,
      firmwareVersion: json['firmwareVersion'] as String,
      isOnline: json['isOnline'] as bool,
      lastSeen: DateTime.parse(json['lastSeen'] as String),
      features: IoTFeatures.fromJson(json['features'] as Map<String, dynamic>),
      configuration: json['configuration'] as Map<String, dynamic>,
      status: json['status'] as Map<String, dynamic>,
      telemetry: json['telemetry'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IoTDeviceImplToJson(_$IoTDeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'firmwareVersion': instance.firmwareVersion,
      'isOnline': instance.isOnline,
      'lastSeen': instance.lastSeen.toIso8601String(),
      'features': instance.features,
      'configuration': instance.configuration,
      'status': instance.status,
      'telemetry': instance.telemetry,
    };

_$IoTFeaturesImpl _$$IoTFeaturesImplFromJson(Map<String, dynamic> json) =>
    _$IoTFeaturesImpl(
      sensors: json['sensors'] as bool,
      actuators: json['actuators'] as bool,
      telemetry: json['telemetry'] as bool,
      automation: json['automation'] as bool,
      firmware: json['firmware'] as bool,
      remote: json['remote'] as bool,
      protocols:
          (json['protocols'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$IoTFeaturesImplToJson(_$IoTFeaturesImpl instance) =>
    <String, dynamic>{
      'sensors': instance.sensors,
      'actuators': instance.actuators,
      'telemetry': instance.telemetry,
      'automation': instance.automation,
      'firmware': instance.firmware,
      'remote': instance.remote,
      'protocols': instance.protocols,
    };

_$IoTSensorImpl _$$IoTSensorImplFromJson(Map<String, dynamic> json) =>
    _$IoTSensorImpl(
      id: json['id'] as String,
      deviceId: json['deviceId'] as String,
      type: json['type'] as String,
      unit: json['unit'] as String,
      value: (json['value'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      isActive: json['isActive'] as bool,
      configuration: json['configuration'] as Map<String, dynamic>,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IoTSensorImplToJson(_$IoTSensorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'type': instance.type,
      'unit': instance.unit,
      'value': instance.value,
      'timestamp': instance.timestamp.toIso8601String(),
      'isActive': instance.isActive,
      'configuration': instance.configuration,
      'metadata': instance.metadata,
    };

_$IoTAutomationImpl _$$IoTAutomationImplFromJson(Map<String, dynamic> json) =>
    _$IoTAutomationImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      isActive: json['isActive'] as bool,
      trigger: json['trigger'] as String,
      conditions: json['conditions'] as Map<String, dynamic>,
      actions: (json['actions'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      lastTriggered: DateTime.parse(json['lastTriggered'] as String),
      configuration: json['configuration'] as Map<String, dynamic>,
      history: json['history'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IoTAutomationImplToJson(_$IoTAutomationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isActive': instance.isActive,
      'trigger': instance.trigger,
      'conditions': instance.conditions,
      'actions': instance.actions,
      'lastTriggered': instance.lastTriggered.toIso8601String(),
      'configuration': instance.configuration,
      'history': instance.history,
    };

_$IoTNetworkImpl _$$IoTNetworkImplFromJson(Map<String, dynamic> json) =>
    _$IoTNetworkImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      isActive: json['isActive'] as bool,
      devices:
          (json['devices'] as List<dynamic>).map((e) => e as String).toList(),
      configuration: json['configuration'] as Map<String, dynamic>,
      security: json['security'] as Map<String, dynamic>,
      status: json['status'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IoTNetworkImplToJson(_$IoTNetworkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'isActive': instance.isActive,
      'devices': instance.devices,
      'configuration': instance.configuration,
      'security': instance.security,
      'status': instance.status,
    };

_$IoTTelemetryImpl _$$IoTTelemetryImplFromJson(Map<String, dynamic> json) =>
    _$IoTTelemetryImpl(
      deviceId: json['deviceId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      metrics: (json['metrics'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      status: Map<String, String>.from(json['status'] as Map),
      diagnostics: json['diagnostics'] as Map<String, dynamic>,
      alerts: json['alerts'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IoTTelemetryImplToJson(_$IoTTelemetryImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'timestamp': instance.timestamp.toIso8601String(),
      'metrics': instance.metrics,
      'status': instance.status,
      'diagnostics': instance.diagnostics,
      'alerts': instance.alerts,
    };

_$IoTFirmwareImpl _$$IoTFirmwareImplFromJson(Map<String, dynamic> json) =>
    _$IoTFirmwareImpl(
      version: json['version'] as String,
      deviceType: json['deviceType'] as String,
      url: json['url'] as String,
      checksum: json['checksum'] as String,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      changes:
          (json['changes'] as List<dynamic>).map((e) => e as String).toList(),
      compatibility: json['compatibility'] as Map<String, dynamic>,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IoTFirmwareImplToJson(_$IoTFirmwareImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'deviceType': instance.deviceType,
      'url': instance.url,
      'checksum': instance.checksum,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'changes': instance.changes,
      'compatibility': instance.compatibility,
      'metadata': instance.metadata,
    };

_$SocialProfileImpl _$$SocialProfileImplFromJson(Map<String, dynamic> json) =>
    _$SocialProfileImpl(
      id: json['id'] as String,
      platform: json['platform'] as String,
      platformUserId: json['platformUserId'] as String,
      username: json['username'] as String,
      displayName: json['displayName'] as String,
      profileUrl: json['profileUrl'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>,
      isVerified: json['isVerified'] as bool,
      lastSync: DateTime.parse(json['lastSync'] as String),
      settings: json['settings'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocialProfileImplToJson(_$SocialProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platform': instance.platform,
      'platformUserId': instance.platformUserId,
      'username': instance.username,
      'displayName': instance.displayName,
      'profileUrl': instance.profileUrl,
      'avatarUrl': instance.avatarUrl,
      'metadata': instance.metadata,
      'isVerified': instance.isVerified,
      'lastSync': instance.lastSync.toIso8601String(),
      'settings': instance.settings,
    };

_$SocialConnectionImpl _$$SocialConnectionImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialConnectionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      platform: json['platform'] as String,
      connectionId: json['connectionId'] as String,
      connectionType: json['connectionType'] as String,
      connectedAt: DateTime.parse(json['connectedAt'] as String),
      isMutual: json['isMutual'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>,
      settings: json['settings'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocialConnectionImplToJson(
        _$SocialConnectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'platform': instance.platform,
      'connectionId': instance.connectionId,
      'connectionType': instance.connectionType,
      'connectedAt': instance.connectedAt.toIso8601String(),
      'isMutual': instance.isMutual,
      'metadata': instance.metadata,
      'settings': instance.settings,
    };

_$SocialPostImpl _$$SocialPostImplFromJson(Map<String, dynamic> json) =>
    _$SocialPostImpl(
      id: json['id'] as String,
      platform: json['platform'] as String,
      userId: json['userId'] as String,
      content: json['content'] as String,
      mediaUrls:
          (json['mediaUrls'] as List<dynamic>).map((e) => e as String).toList(),
      metadata: json['metadata'] as Map<String, dynamic>,
      postedAt: DateTime.parse(json['postedAt'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      engagement: Map<String, int>.from(json['engagement'] as Map),
      visibility: json['visibility'] as String,
      crossPostData: json['crossPostData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocialPostImplToJson(_$SocialPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platform': instance.platform,
      'userId': instance.userId,
      'content': instance.content,
      'mediaUrls': instance.mediaUrls,
      'metadata': instance.metadata,
      'postedAt': instance.postedAt.toIso8601String(),
      'tags': instance.tags,
      'engagement': instance.engagement,
      'visibility': instance.visibility,
      'crossPostData': instance.crossPostData,
    };

_$SocialActivityImpl _$$SocialActivityImplFromJson(Map<String, dynamic> json) =>
    _$SocialActivityImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      platform: json['platform'] as String,
      activityType: json['activityType'] as String,
      data: json['data'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isPublic: json['isPublic'] as bool,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocialActivityImplToJson(
        _$SocialActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'platform': instance.platform,
      'activityType': instance.activityType,
      'data': instance.data,
      'timestamp': instance.timestamp.toIso8601String(),
      'isPublic': instance.isPublic,
      'tags': instance.tags,
      'metadata': instance.metadata,
    };

_$SocialAuthImpl _$$SocialAuthImplFromJson(Map<String, dynamic> json) =>
    _$SocialAuthImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      platform: json['platform'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String?,
      tokenExpiry: DateTime.parse(json['tokenExpiry'] as String),
      scopes:
          (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
      userData: json['userData'] as Map<String, dynamic>,
      settings: json['settings'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocialAuthImplToJson(_$SocialAuthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'platform': instance.platform,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenExpiry': instance.tokenExpiry.toIso8601String(),
      'scopes': instance.scopes,
      'userData': instance.userData,
      'settings': instance.settings,
    };

_$SocialInteractionImpl _$$SocialInteractionImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialInteractionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      platform: json['platform'] as String,
      interactionType: json['interactionType'] as String,
      targetId: json['targetId'] as String,
      data: json['data'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isPublic: json['isPublic'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocialInteractionImplToJson(
        _$SocialInteractionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'platform': instance.platform,
      'interactionType': instance.interactionType,
      'targetId': instance.targetId,
      'data': instance.data,
      'timestamp': instance.timestamp.toIso8601String(),
      'isPublic': instance.isPublic,
      'metadata': instance.metadata,
    };

_$SocialNotificationImpl _$$SocialNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialNotificationImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      platform: json['platform'] as String,
      type: json['type'] as String,
      data: json['data'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isRead: json['isRead'] as bool,
      priority: json['priority'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocialNotificationImplToJson(
        _$SocialNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'platform': instance.platform,
      'type': instance.type,
      'data': instance.data,
      'timestamp': instance.timestamp.toIso8601String(),
      'isRead': instance.isRead,
      'priority': instance.priority,
      'metadata': instance.metadata,
    };
