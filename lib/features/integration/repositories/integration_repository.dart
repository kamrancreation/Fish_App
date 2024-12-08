import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/integration_models.dart';

final integrationRepositoryProvider = Provider((ref) => IntegrationRepository());

class IntegrationRepository {
  final _weatherCollection = FirebaseFirestore.instance.collection('weather_data');
  final _mapCollection = FirebaseFirestore.instance.collection('map_providers');
  final _paymentCollection = FirebaseFirestore.instance.collection('payment_processors');
  final _socialCollection = FirebaseFirestore.instance.collection('social_integrations');
  final _cloudCollection = FirebaseFirestore.instance.collection('cloud_services');
  final _analyticsCollection = FirebaseFirestore.instance.collection('analytics_platforms');
  final _integrationCollection = FirebaseFirestore.instance.collection('integrations');
  final _iotDeviceCollection = FirebaseFirestore.instance.collection('iot_devices');
  final _iotSensorCollection = FirebaseFirestore.instance.collection('iot_sensors');
  final _iotNetworkCollection = FirebaseFirestore.instance.collection('iot_networks');
  final _iotAutomationCollection = FirebaseFirestore.instance.collection('iot_automations');
  final _iotFirmwareCollection = FirebaseFirestore.instance.collection('iot_firmware');
  final _socialProfileCollection = FirebaseFirestore.instance.collection('social_profiles');
  final _socialPostCollection = FirebaseFirestore.instance.collection('social_posts');
  final _socialActivityCollection = FirebaseFirestore.instance.collection('social_activities');
  final _socialAuthCollection = FirebaseFirestore.instance.collection('social_auth');
  final _socialNotificationCollection = FirebaseFirestore.instance.collection('social_notifications');

  // Weather Services
  Future<WeatherData> getWeatherData(String location) async {
    final response = await _weatherCollection
        .doc(location)
        .get();
    return WeatherData.fromJson(response.data()!);
  }

  Future<Map<DateTime, WeatherForecast>> getWeatherForecast({
    required String location,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final response = await _weatherCollection
        .doc(location)
        .collection('forecasts')
        .where('time', isGreaterThanOrEqualTo: startDate)
        .where('time', isLessThanOrEqualTo: endDate)
        .get();

    return Map.fromEntries(
      response.docs.map((doc) => MapEntry(
        DateTime.parse(doc.id),
        WeatherForecast.fromJson(doc.data()),
      )),
    );
  }

  Future<void> setWeatherAlerts({
    required String location,
    required Map<String, dynamic> conditions,
  }) async {
    await _weatherCollection
        .doc(location)
        .collection('alerts')
        .add({
      'conditions': conditions,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  // Map Providers
  Future<MapProvider> configureMapProvider({
    required String provider,
    required String apiKey,
    required MapFeatures features,
    required Map<String, dynamic> settings,
  }) async {
    final doc = await _mapCollection.add({
      'provider': provider,
      'apiKey': apiKey,
      'features': features.toJson(),
      'settings': settings,
      'isActive': true,
      'timestamp': FieldValue.serverTimestamp(),
    });

    return MapProvider(
      id: doc.id,
      name: provider,
      apiKey: apiKey,
      isActive: true,
      features: features,
      settings: settings,
    );
  }

  Future<Map<String, dynamic>> getMapData({
    required String location,
    required List<String> layers,
    Map<String, dynamic>? options,
  }) async {
    // Implement map data retrieval logic
    return {};
  }

  // Payment Processors
  Future<PaymentProcessor> configurePaymentProcessor({
    required String provider,
    required Map<String, dynamic> config,
    required PaymentFeatures features,
  }) async {
    final doc = await _paymentCollection.add({
      'provider': provider,
      'configuration': config,
      'features': features.toJson(),
      'isActive': true,
      'timestamp': FieldValue.serverTimestamp(),
    });

    return PaymentProcessor(
      id: doc.id,
      name: provider,
      provider: provider,
      isActive: true,
      supportedMethods: config['supportedMethods'] ?? [],
      configuration: config,
      features: features,
    );
  }

  Future<Map<String, dynamic>> processPayment({
    required String processor,
    required double amount,
    required String currency,
    required Map<String, dynamic> paymentDetails,
  }) async {
    // Implement payment processing logic
    return {};
  }

  Future<void> handlePaymentWebhook({
    required String processor,
    required Map<String, dynamic> payload,
  }) async {
    await _paymentCollection
        .doc(processor)
        .collection('webhooks')
        .add({
      'payload': payload,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  // Social Media
  Future<SocialMediaIntegration> configureSocialPlatform({
    required String platform,
    required String accessToken,
    required SocialFeatures features,
    required Map<String, dynamic> settings,
  }) async {
    final doc = await _socialCollection.add({
      'platform': platform,
      'accessToken': accessToken,
      'features': features.toJson(),
      'settings': settings,
      'isActive': true,
      'tokenExpiry': DateTime.now().add(const Duration(days: 60)),
      'timestamp': FieldValue.serverTimestamp(),
    });

    return SocialMediaIntegration(
      platform: platform,
      accessToken: accessToken,
      tokenExpiry: DateTime.now().add(const Duration(days: 60)),
      isActive: true,
      features: features,
      settings: settings,
    );
  }

  Future<Map<String, dynamic>> shareSocialContent({
    required String platform,
    required Map<String, dynamic> content,
    Map<String, dynamic>? options,
  }) async {
    // Implement social sharing logic
    return {};
  }

  Future<Map<String, dynamic>> getSocialFeed({
    required String platform,
    required String userId,
    Map<String, dynamic>? filters,
  }) async {
    // Implement social feed retrieval logic
    return {};
  }

  // Social Media Sharing
  Future<SocialPost> shareContent({
    required String platform,
    required String content,
    required List<String> mediaUrls,
    required List<String> tags,
    required String visibility,
    Map<String, dynamic>? crossPostData,
  }) async {
    final doc = await _socialPostCollection.add({
      'platform': platform,
      'userId': 'current_user_id', // Replace with actual user ID
      'content': content,
      'mediaUrls': mediaUrls,
      'metadata': {'source': 'fishpro'},
      'postedAt': FieldValue.serverTimestamp(),
      'tags': tags,
      'engagement': {'likes': 0, 'comments': 0, 'shares': 0},
      'visibility': visibility,
      'crossPostData': crossPostData,
    });

    return SocialPost(
      id: doc.id,
      platform: platform,
      userId: 'current_user_id',
      content: content,
      mediaUrls: mediaUrls,
      metadata: {'source': 'fishpro'},
      postedAt: DateTime.now(),
      tags: tags,
      engagement: {'likes': 0, 'comments': 0, 'shares': 0},
      visibility: visibility,
      crossPostData: crossPostData,
    );
  }

  Future<void> deletePost({
    required String platform,
    required String postId,
  }) async {
    await _socialPostCollection.doc(postId).delete();
  }

  // Friend Finding
  Future<List<SocialProfile>> findFriends({
    required String platform,
    required String query,
    Map<String, dynamic>? filters,
  }) async {
    var queryRef = _socialProfileCollection
        .where('platform', isEqualTo: platform);

    if (filters != null) {
      filters.forEach((key, value) {
        queryRef = queryRef.where(key, isEqualTo: value);
      });
    }

    final snapshot = await queryRef.get();
    return snapshot.docs
        .map((doc) => SocialProfile.fromJson(doc.data()))
        .where((profile) =>
            profile.username.toLowerCase().contains(query.toLowerCase()) ||
            profile.displayName.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  Future<List<SocialProfile>> getSuggestedFriends({
    required String platform,
    required int limit,
    Map<String, dynamic>? criteria,
  }) async {
    var queryRef = _socialProfileCollection
        .where('platform', isEqualTo: platform)
        .limit(limit);

    if (criteria != null) {
      criteria.forEach((key, value) {
        queryRef = queryRef.where(key, isEqualTo: value);
      });
    }

    final snapshot = await queryRef.get();
    return snapshot.docs
        .map((doc) => SocialProfile.fromJson(doc.data()))
        .toList();
  }

  // Content Cross-posting
  Future<Map<String, String>> crossPostContent({
    required String sourcePostId,
    required List<String> targetPlatforms,
    Map<String, Map<String, dynamic>>? platformSpecificContent,
  }) async {
    final sourcePost = await _socialPostCollection.doc(sourcePostId).get();
    final sourceData = sourcePost.data()!;
    
    final results = <String, String>{};
    
    for (final platform in targetPlatforms) {
      final content = platformSpecificContent?[platform] ?? sourceData;
      final doc = await _socialPostCollection.add({
        ...content,
        'platform': platform,
        'crossPostData': {
          'sourceId': sourcePostId,
          'sourcePlatform': sourceData['platform'],
        },
        'postedAt': FieldValue.serverTimestamp(),
      });
      results[platform] = doc.id;
    }

    return results;
  }

  Future<void> syncCrossPostedContent({
    required String sourcePostId,
    required Map<String, String> platformPostIds,
  }) async {
    final batch = FirebaseFirestore.instance.batch();
    
    platformPostIds.forEach((platform, postId) {
      batch.update(
        _socialPostCollection.doc(postId),
        {
          'crossPostData.synced': true,
          'crossPostData.lastSync': FieldValue.serverTimestamp(),
        },
      );
    });

    await batch.commit();
  }

  // Profile Linking
  Future<SocialProfile> linkProfile({
    required String platform,
    required String platformUserId,
    required Map<String, dynamic> profileData,
  }) async {
    final doc = await _socialProfileCollection.add({
      'platform': platform,
      'platformUserId': platformUserId,
      'username': profileData['username'],
      'displayName': profileData['displayName'],
      'profileUrl': profileData['profileUrl'],
      'avatarUrl': profileData['avatarUrl'],
      'metadata': profileData['metadata'] ?? {},
      'isVerified': false,
      'lastSync': FieldValue.serverTimestamp(),
    });

    return SocialProfile(
      id: doc.id,
      platform: platform,
      platformUserId: platformUserId,
      username: profileData['username'],
      displayName: profileData['displayName'],
      profileUrl: profileData['profileUrl'],
      avatarUrl: profileData['avatarUrl'],
      metadata: profileData['metadata'] ?? {},
      isVerified: false,
      lastSync: DateTime.now(),
    );
  }

  Future<void> unlinkProfile({
    required String platform,
    required String profileId,
  }) async {
    await _socialProfileCollection.doc(profileId).delete();
  }

  // Social Login
  Future<SocialAuth> socialLogin({
    required String platform,
    required String accessToken,
    required String? refreshToken,
    required Map<String, dynamic> userData,
  }) async {
    final doc = await _socialAuthCollection.add({
      'platform': platform,
      'userId': 'current_user_id', // Replace with actual user ID
      'accessToken': accessToken,
      'refreshToken': refreshToken,
      'tokenExpiry': DateTime.now().add(const Duration(days: 60)).toIso8601String(),
      'scopes': userData['scopes'] ?? [],
      'userData': userData,
      'timestamp': FieldValue.serverTimestamp(),
    });

    return SocialAuth(
      id: doc.id,
      userId: 'current_user_id',
      platform: platform,
      accessToken: accessToken,
      refreshToken: refreshToken,
      tokenExpiry: DateTime.now().add(const Duration(days: 60)),
      scopes: userData['scopes'] ?? [],
      userData: userData,
    );
  }

  Future<void> refreshSocialToken({
    required String platform,
    required String refreshToken,
  }) async {
    // Implement token refresh logic using platform-specific OAuth
  }

  // Activity Sharing
  Future<SocialActivity> shareActivity({
    required String platform,
    required String activityType,
    required Map<String, dynamic> data,
    required bool isPublic,
    required List<String> tags,
  }) async {
    final doc = await _socialActivityCollection.add({
      'platform': platform,
      'userId': 'current_user_id', // Replace with actual user ID
      'activityType': activityType,
      'data': data,
      'isPublic': isPublic,
      'tags': tags,
      'timestamp': FieldValue.serverTimestamp(),
    });

    return SocialActivity(
      id: doc.id,
      userId: 'current_user_id',
      platform: platform,
      activityType: activityType,
      data: data,
      timestamp: DateTime.now(),
      isPublic: isPublic,
      tags: tags,
    );
  }

  Future<List<SocialActivity>> getUserActivities({
    required String platform,
    required String userId,
    required DateTime startDate,
    required DateTime endDate,
    Map<String, dynamic>? filters,
  }) async {
    var queryRef = _socialActivityCollection
        .where('platform', isEqualTo: platform)
        .where('userId', isEqualTo: userId)
        .where('timestamp', isGreaterThanOrEqualTo: startDate)
        .where('timestamp', isLessThanOrEqualTo: endDate)
        .orderBy('timestamp', descending: true);

    if (filters != null) {
      filters.forEach((key, value) {
        queryRef = queryRef.where(key, isEqualTo: value);
      });
    }

    final snapshot = await queryRef.get();
    return snapshot.docs
        .map((doc) => SocialActivity.fromJson(doc.data()))
        .toList();
  }

  // Social Interactions
  Future<void> createInteraction({
    required String platform,
    required String interactionType,
    required String targetId,
    required Map<String, dynamic> data,
  }) async {
    await _socialPostCollection
        .doc(targetId)
        .collection('interactions')
        .add({
      'platform': platform,
      'userId': 'current_user_id', // Replace with actual user ID
      'interactionType': interactionType,
      'data': data,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<List<SocialInteraction>> getInteractions({
    required String platform,
    required String targetId,
    required String? interactionType,
  }) async {
    var queryRef = _socialPostCollection
        .doc(targetId)
        .collection('interactions')
        .where('platform', isEqualTo: platform);

    if (interactionType != null) {
      queryRef = queryRef.where('interactionType', isEqualTo: interactionType);
    }

    final snapshot = await queryRef.get();
    return snapshot.docs
        .map((doc) => SocialInteraction.fromJson(doc.data()))
        .toList();
  }

  // Social Notifications
  Future<void> createNotification({
    required String platform,
    required String userId,
    required String type,
    required Map<String, dynamic> data,
    required String priority,
  }) async {
    await _socialNotificationCollection.add({
      'platform': platform,
      'userId': userId,
      'type': type,
      'data': data,
      'priority': priority,
      'isRead': false,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<List<SocialNotification>> getNotifications({
    required String platform,
    required String userId,
    required bool unreadOnly,
    DateTime? since,
  }) async {
    var queryRef = _socialNotificationCollection
        .where('platform', isEqualTo: platform)
        .where('userId', isEqualTo: userId)
        .orderBy('timestamp', descending: true);

    if (unreadOnly) {
      queryRef = queryRef.where('isRead', isEqualTo: false);
    }
    if (since != null) {
      queryRef = queryRef.where('timestamp', isGreaterThanOrEqualTo: since);
    }

    final snapshot = await queryRef.get();
    return snapshot.docs
        .map((doc) => SocialNotification.fromJson(doc.data()))
        .toList();
  }

  // Cloud Services
  Future<CloudService> configureCloudService({
    required String provider,
    required String service,
    required CloudFeatures features,
    required Map<String, dynamic> config,
  }) async {
    final doc = await _cloudCollection.add({
      'provider': provider,
      'service': service,
      'features': features.toJson(),
      'configuration': config,
      'isActive': true,
      'timestamp': FieldValue.serverTimestamp(),
    });

    return CloudService(
      id: doc.id,
      provider: provider,
      service: service,
      isActive: true,
      features: features,
      configuration: config,
      quotas: config['quotas'] ?? {},
    );
  }

  Future<Map<String, dynamic>> useCloudService({
    required String serviceId,
    required String operation,
    required Map<String, dynamic> params,
  }) async {
    // Implement cloud service operation logic
    return {};
  }

  Future<Map<String, dynamic>> getCloudMetrics({
    required String serviceId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final response = await _cloudCollection
        .doc(serviceId)
        .collection('metrics')
        .where('timestamp', isGreaterThanOrEqualTo: startDate)
        .where('timestamp', isLessThanOrEqualTo: endDate)
        .get();

    return Map.fromEntries(
      response.docs.map((doc) => MapEntry(doc.id, doc.data())),
    );
  }

  // Analytics Platforms
  Future<AnalyticsPlatform> configureAnalyticsPlatform({
    required String provider,
    required AnalyticsFeatures features,
    required Map<String, dynamic> config,
  }) async {
    final doc = await _analyticsCollection.add({
      'provider': provider,
      'features': features.toJson(),
      'configuration': config,
      'isActive': true,
      'timestamp': FieldValue.serverTimestamp(),
    });

    return AnalyticsPlatform(
      id: doc.id,
      name: provider,
      provider: provider,
      isActive: true,
      features: features,
      configuration: config,
      tracking: config['tracking'] ?? {},
    );
  }

  Future<void> trackAnalyticsEvent({
    required String platform,
    required String event,
    required Map<String, dynamic> properties,
    String? userId,
  }) async {
    await _analyticsCollection
        .doc(platform)
        .collection('events')
        .add({
      'event': event,
      'properties': properties,
      'userId': userId,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<Map<String, dynamic>> getAnalyticsReport({
    required String platform,
    required String reportType,
    required DateTime startDate,
    required DateTime endDate,
    Map<String, dynamic>? filters,
  }) async {
    final response = await _analyticsCollection
        .doc(platform)
        .collection('reports')
        .where('type', isEqualTo: reportType)
        .where('timestamp', isGreaterThanOrEqualTo: startDate)
        .where('timestamp', isLessThanOrEqualTo: endDate)
        .get();

    return Map.fromEntries(
      response.docs.map((doc) => MapEntry(doc.id, doc.data())),
    );
  }

  // Integration Management
  Future<List<IntegrationStatus>> getIntegrationStatus({
    List<String>? integrationIds,
    String? type,
  }) async {
    var query = _integrationCollection.where('isActive', isEqualTo: true);

    if (integrationIds != null && integrationIds.isNotEmpty) {
      query = query.where(FieldPath.documentId, whereIn: integrationIds);
    }
    if (type != null) {
      query = query.where('type', isEqualTo: type);
    }

    final response = await query.get();
    return response.docs
        .map((doc) => IntegrationStatus.fromJson(doc.data()))
        .toList();
  }

  Future<void> updateIntegrationConfig({
    required String integrationId,
    required Map<String, dynamic> config,
  }) async {
    await _integrationCollection.doc(integrationId).update({
      'config': config,
      'lastUpdated': FieldValue.serverTimestamp(),
    });
  }

  Future<ApiUsage> getApiUsage({
    required String integrationId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final response = await _integrationCollection
        .doc(integrationId)
        .collection('usage')
        .where('timestamp', isGreaterThanOrEqualTo: startDate)
        .where('timestamp', isLessThanOrEqualTo: endDate)
        .get();

    if (response.docs.isEmpty) {
      throw Exception('No usage data found for the specified period');
    }

    return ApiUsage.fromJson(response.docs.first.data());
  }

  Future<void> handleIntegrationWebhook({
    required String integrationId,
    required String event,
    required Map<String, dynamic> payload,
  }) async {
    await _integrationCollection
        .doc(integrationId)
        .collection('webhooks')
        .add({
      'event': event,
      'payload': payload,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  // Error Handling
  Future<void> logIntegrationError({
    required String integrationId,
    required String error,
    required Map<String, dynamic> context,
  }) async {
    await _integrationCollection
        .doc(integrationId)
        .collection('errors')
        .add({
      'error': error,
      'context': context,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<void> retryFailedOperation({
    required String integrationId,
    required String operationId,
  }) async {
    await _integrationCollection
        .doc(integrationId)
        .collection('retries')
        .add({
      'operationId': operationId,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  // IoT Device Management
  Future<IoTDevice> registerDevice({
    required String name,
    required String type,
    required String manufacturer,
    required String model,
    required IoTFeatures features,
    required Map<String, dynamic> configuration,
  }) async {
    final doc = await _iotDeviceCollection.add({
      'name': name,
      'type': type,
      'manufacturer': manufacturer,
      'model': model,
      'firmwareVersion': '1.0.0',
      'isOnline': true,
      'lastSeen': FieldValue.serverTimestamp(),
      'features': features.toJson(),
      'configuration': configuration,
      'status': {'state': 'initialized'},
      'timestamp': FieldValue.serverTimestamp(),
    });

    return IoTDevice(
      id: doc.id,
      name: name,
      type: type,
      manufacturer: manufacturer,
      model: model,
      firmwareVersion: '1.0.0',
      isOnline: true,
      lastSeen: DateTime.now(),
      features: features,
      configuration: configuration,
      status: {'state': 'initialized'},
    );
  }

  Future<void> updateDeviceStatus({
    required String deviceId,
    required Map<String, dynamic> status,
  }) async {
    await _iotDeviceCollection.doc(deviceId).update({
      'status': status,
      'lastSeen': FieldValue.serverTimestamp(),
    });
  }

  Future<void> updateDeviceConfiguration({
    required String deviceId,
    required Map<String, dynamic> configuration,
  }) async {
    await _iotDeviceCollection.doc(deviceId).update({
      'configuration': configuration,
      'lastUpdated': FieldValue.serverTimestamp(),
    });
  }

  // Sensor Networks
  Future<IoTSensor> registerSensor({
    required String deviceId,
    required String type,
    required String unit,
    required Map<String, dynamic> configuration,
  }) async {
    final doc = await _iotSensorCollection.add({
      'deviceId': deviceId,
      'type': type,
      'unit': unit,
      'value': 0.0,
      'isActive': true,
      'configuration': configuration,
      'timestamp': FieldValue.serverTimestamp(),
    });

    return IoTSensor(
      id: doc.id,
      deviceId: deviceId,
      type: type,
      unit: unit,
      value: 0.0,
      timestamp: DateTime.now(),
      isActive: true,
      configuration: configuration,
    );
  }

  Future<void> updateSensorValue({
    required String sensorId,
    required double value,
    Map<String, dynamic>? metadata,
  }) async {
    await _iotSensorCollection.doc(sensorId).update({
      'value': value,
      'metadata': metadata,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<List<IoTSensor>> getDeviceSensors(String deviceId) async {
    final snapshot = await _iotSensorCollection
        .where('deviceId', isEqualTo: deviceId)
        .where('isActive', isEqualTo: true)
        .get();

    return snapshot.docs
        .map((doc) => IoTSensor.fromJson(doc.data()))
        .toList();
  }

  // Data Collection
  Future<void> recordTelemetry({
    required String deviceId,
    required Map<String, double> metrics,
    required Map<String, String> status,
    required Map<String, dynamic> diagnostics,
  }) async {
    await _iotDeviceCollection
        .doc(deviceId)
        .collection('telemetry')
        .add({
      'metrics': metrics,
      'status': status,
      'diagnostics': diagnostics,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<List<IoTTelemetry>> getDeviceTelemetry({
    required String deviceId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final snapshot = await _iotDeviceCollection
        .doc(deviceId)
        .collection('telemetry')
        .where('timestamp', isGreaterThanOrEqualTo: startDate)
        .where('timestamp', isLessThanOrEqualTo: endDate)
        .orderBy('timestamp', descending: true)
        .get();

    return snapshot.docs
        .map((doc) => IoTTelemetry.fromJson(doc.data()))
        .toList();
  }

  // Device Management
  Future<void> updateFirmware({
    required String deviceId,
    required String version,
    required String url,
  }) async {
    await _iotDeviceCollection.doc(deviceId).update({
      'firmwareVersion': version,
      'firmwareUpdateUrl': url,
      'firmwareUpdateStatus': 'pending',
      'lastUpdateAttempt': FieldValue.serverTimestamp(),
    });
  }

  Future<List<IoTFirmware>> getAvailableFirmwareUpdates(String deviceId) async {
    final device = await _iotDeviceCollection.doc(deviceId).get();
    final deviceData = device.data()!;

    final snapshot = await _iotFirmwareCollection
        .where('deviceType', isEqualTo: deviceData['type'])
        .where('version', isGreaterThan: deviceData['firmwareVersion'])
        .orderBy('version', descending: true)
        .get();

    return snapshot.docs
        .map((doc) => IoTFirmware.fromJson(doc.data()))
        .toList();
  }

  Future<void> rebootDevice(String deviceId) async {
    await _iotDeviceCollection.doc(deviceId).update({
      'status.state': 'rebooting',
      'lastReboot': FieldValue.serverTimestamp(),
    });
  }

  // Automation Rules
  Future<IoTAutomation> createAutomation({
    required String name,
    required String trigger,
    required Map<String, dynamic> conditions,
    required List<Map<String, dynamic>> actions,
    required Map<String, dynamic> configuration,
  }) async {
    final doc = await _iotAutomationCollection.add({
      'name': name,
      'isActive': true,
      'trigger': trigger,
      'conditions': conditions,
      'actions': actions,
      'configuration': configuration,
      'lastTriggered': FieldValue.serverTimestamp(),
      'timestamp': FieldValue.serverTimestamp(),
    });

    return IoTAutomation(
      id: doc.id,
      name: name,
      isActive: true,
      trigger: trigger,
      conditions: conditions,
      actions: actions,
      lastTriggered: DateTime.now(),
      configuration: configuration,
    );
  }

  Future<void> updateAutomation({
    required String automationId,
    required Map<String, dynamic> updates,
  }) async {
    await _iotAutomationCollection.doc(automationId).update({
      ...updates,
      'lastUpdated': FieldValue.serverTimestamp(),
    });
  }

  Future<List<IoTAutomation>> getDeviceAutomations(String deviceId) async {
    final snapshot = await _iotAutomationCollection
        .where('configuration.deviceId', isEqualTo: deviceId)
        .where('isActive', isEqualTo: true)
        .get();

    return snapshot.docs
        .map((doc) => IoTAutomation.fromJson(doc.data()))
        .toList();
  }

  // Status Monitoring
  Future<IoTNetwork> createNetwork({
    required String name,
    required String type,
    required Map<String, dynamic> configuration,
    required Map<String, dynamic> security,
  }) async {
    final doc = await _iotNetworkCollection.add({
      'name': name,
      'type': type,
      'isActive': true,
      'devices': [],
      'configuration': configuration,
      'security': security,
      'timestamp': FieldValue.serverTimestamp(),
    });

    return IoTNetwork(
      id: doc.id,
      name: name,
      type: type,
      isActive: true,
      devices: [],
      configuration: configuration,
      security: security,
    );
  }

  Future<void> addDeviceToNetwork({
    required String networkId,
    required String deviceId,
  }) async {
    await _iotNetworkCollection.doc(networkId).update({
      'devices': FieldValue.arrayUnion([deviceId]),
      'lastUpdated': FieldValue.serverTimestamp(),
    });
  }

  Future<Map<String, dynamic>> getNetworkStatus(String networkId) async {
    final network = await _iotNetworkCollection.doc(networkId).get();
    final devices = await Future.wait(
      (network.data()!['devices'] as List<String>).map(
        (deviceId) => _iotDeviceCollection.doc(deviceId).get(),
      ),
    );

    return {
      'network': network.data(),
      'devices': devices.map((d) => d.data()).toList(),
    };
  }

  Future<void> handleDeviceAlert({
    required String deviceId,
    required String alertType,
    required Map<String, dynamic> alertData,
  }) async {
    await _iotDeviceCollection
        .doc(deviceId)
        .collection('alerts')
        .add({
      'type': alertType,
      'data': alertData,
      'status': 'new',
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}
