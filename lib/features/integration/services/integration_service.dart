import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/integration_models.dart';
import '../repositories/integration_repository.dart';

final integrationServiceProvider = Provider((ref) {
  return IntegrationService(ref.watch(integrationRepositoryProvider));
});

class IntegrationService {
  final IntegrationRepository _repository;

  IntegrationService(this._repository);

  // Weather Services
  Future<WeatherData> getWeatherData(String location) async {
    return _repository.getWeatherData(location);
  }

  Future<Map<DateTime, WeatherForecast>> getWeatherForecast({
    required String location,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    return _repository.getWeatherForecast(
      location: location,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Future<void> setWeatherAlerts({
    required String location,
    required Map<String, dynamic> conditions,
  }) async {
    await _repository.setWeatherAlerts(
      location: location,
      conditions: conditions,
    );
  }

  // Map Providers
  Future<MapProvider> configureMapProvider({
    required String provider,
    required String apiKey,
    required MapFeatures features,
    required Map<String, dynamic> settings,
  }) async {
    return _repository.configureMapProvider(
      provider: provider,
      apiKey: apiKey,
      features: features,
      settings: settings,
    );
  }

  Future<Map<String, dynamic>> getMapData({
    required String location,
    required List<String> layers,
    Map<String, dynamic>? options,
  }) async {
    return _repository.getMapData(
      location: location,
      layers: layers,
      options: options,
    );
  }

  // Payment Processors
  Future<PaymentProcessor> configurePaymentProcessor({
    required String provider,
    required Map<String, dynamic> config,
    required PaymentFeatures features,
  }) async {
    return _repository.configurePaymentProcessor(
      provider: provider,
      config: config,
      features: features,
    );
  }

  Future<Map<String, dynamic>> processPayment({
    required String processor,
    required double amount,
    required String currency,
    required Map<String, dynamic> paymentDetails,
  }) async {
    return _repository.processPayment(
      processor: processor,
      amount: amount,
      currency: currency,
      paymentDetails: paymentDetails,
    );
  }

  Future<void> handlePaymentWebhook({
    required String processor,
    required Map<String, dynamic> payload,
  }) async {
    await _repository.handlePaymentWebhook(
      processor: processor,
      payload: payload,
    );
  }

  // Social Media
  Future<SocialMediaIntegration> configureSocialPlatform({
    required String platform,
    required String accessToken,
    required SocialFeatures features,
    required Map<String, dynamic> settings,
  }) async {
    return _repository.configureSocialPlatform(
      platform: platform,
      accessToken: accessToken,
      features: features,
      settings: settings,
    );
  }

  Future<Map<String, dynamic>> shareSocialContent({
    required String platform,
    required Map<String, dynamic> content,
    Map<String, dynamic>? options,
  }) async {
    return _repository.shareSocialContent(
      platform: platform,
      content: content,
      options: options,
    );
  }

  Future<Map<String, dynamic>> getSocialFeed({
    required String platform,
    required String userId,
    Map<String, dynamic>? filters,
  }) async {
    return _repository.getSocialFeed(
      platform: platform,
      userId: userId,
      filters: filters,
    );
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
    return _repository.shareContent(
      platform: platform,
      content: content,
      mediaUrls: mediaUrls,
      tags: tags,
      visibility: visibility,
      crossPostData: crossPostData,
    );
  }

  Future<void> deletePost({
    required String platform,
    required String postId,
  }) async {
    await _repository.deletePost(
      platform: platform,
      postId: postId,
    );
  }

  // Friend Finding
  Future<List<SocialProfile>> findFriends({
    required String platform,
    required String query,
    Map<String, dynamic>? filters,
  }) async {
    return _repository.findFriends(
      platform: platform,
      query: query,
      filters: filters,
    );
  }

  Future<List<SocialProfile>> getSuggestedFriends({
    required String platform,
    required int limit,
    Map<String, dynamic>? criteria,
  }) async {
    return _repository.getSuggestedFriends(
      platform: platform,
      limit: limit,
      criteria: criteria,
    );
  }

  // Content Cross-posting
  Future<Map<String, String>> crossPostContent({
    required String sourcePostId,
    required List<String> targetPlatforms,
    Map<String, Map<String, dynamic>>? platformSpecificContent,
  }) async {
    return _repository.crossPostContent(
      sourcePostId: sourcePostId,
      targetPlatforms: targetPlatforms,
      platformSpecificContent: platformSpecificContent,
    );
  }

  Future<void> syncCrossPostedContent({
    required String sourcePostId,
    required Map<String, String> platformPostIds,
  }) async {
    await _repository.syncCrossPostedContent(
      sourcePostId: sourcePostId,
      platformPostIds: platformPostIds,
    );
  }

  // Profile Linking
  Future<SocialProfile> linkProfile({
    required String platform,
    required String platformUserId,
    required Map<String, dynamic> profileData,
  }) async {
    return _repository.linkProfile(
      platform: platform,
      platformUserId: platformUserId,
      profileData: profileData,
    );
  }

  Future<void> unlinkProfile({
    required String platform,
    required String profileId,
  }) async {
    await _repository.unlinkProfile(
      platform: platform,
      profileId: profileId,
    );
  }

  // Social Login
  Future<SocialAuth> socialLogin({
    required String platform,
    required String accessToken,
    required String? refreshToken,
    required Map<String, dynamic> userData,
  }) async {
    return _repository.socialLogin(
      platform: platform,
      accessToken: accessToken,
      refreshToken: refreshToken,
      userData: userData,
    );
  }

  Future<void> refreshSocialToken({
    required String platform,
    required String refreshToken,
  }) async {
    await _repository.refreshSocialToken(
      platform: platform,
      refreshToken: refreshToken,
    );
  }

  // Activity Sharing
  Future<SocialActivity> shareActivity({
    required String platform,
    required String activityType,
    required Map<String, dynamic> data,
    required bool isPublic,
    required List<String> tags,
  }) async {
    return _repository.shareActivity(
      platform: platform,
      activityType: activityType,
      data: data,
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
    return _repository.getUserActivities(
      platform: platform,
      userId: userId,
      startDate: startDate,
      endDate: endDate,
      filters: filters,
    );
  }

  // Social Interactions
  Future<void> createInteraction({
    required String platform,
    required String interactionType,
    required String targetId,
    required Map<String, dynamic> data,
  }) async {
    await _repository.createInteraction(
      platform: platform,
      interactionType: interactionType,
      targetId: targetId,
      data: data,
    );
  }

  Future<List<SocialInteraction>> getInteractions({
    required String platform,
    required String targetId,
    required String? interactionType,
  }) async {
    return _repository.getInteractions(
      platform: platform,
      targetId: targetId,
      interactionType: interactionType,
    );
  }

  // Social Notifications
  Future<void> createNotification({
    required String platform,
    required String userId,
    required String type,
    required Map<String, dynamic> data,
    required String priority,
  }) async {
    await _repository.createNotification(
      platform: platform,
      userId: userId,
      type: type,
      data: data,
      priority: priority,
    );
  }

  Future<List<SocialNotification>> getNotifications({
    required String platform,
    required String userId,
    required bool unreadOnly,
    DateTime? since,
  }) async {
    return _repository.getNotifications(
      platform: platform,
      userId: userId,
      unreadOnly: unreadOnly,
      since: since,
    );
  }

  // Cloud Services
  Future<CloudService> configureCloudService({
    required String provider,
    required String service,
    required CloudFeatures features,
    required Map<String, dynamic> config,
  }) async {
    return _repository.configureCloudService(
      provider: provider,
      service: service,
      features: features,
      config: config,
    );
  }

  Future<Map<String, dynamic>> useCloudService({
    required String serviceId,
    required String operation,
    required Map<String, dynamic> params,
  }) async {
    return _repository.useCloudService(
      serviceId: serviceId,
      operation: operation,
      params: params,
    );
  }

  Future<Map<String, dynamic>> getCloudMetrics({
    required String serviceId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    return _repository.getCloudMetrics(
      serviceId: serviceId,
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Analytics Platforms
  Future<AnalyticsPlatform> configureAnalyticsPlatform({
    required String provider,
    required AnalyticsFeatures features,
    required Map<String, dynamic> config,
  }) async {
    return _repository.configureAnalyticsPlatform(
      provider: provider,
      features: features,
      config: config,
    );
  }

  Future<void> trackAnalyticsEvent({
    required String platform,
    required String event,
    required Map<String, dynamic> properties,
    String? userId,
  }) async {
    await _repository.trackAnalyticsEvent(
      platform: platform,
      event: event,
      properties: properties,
      userId: userId,
    );
  }

  Future<Map<String, dynamic>> getAnalyticsReport({
    required String platform,
    required String reportType,
    required DateTime startDate,
    required DateTime endDate,
    Map<String, dynamic>? filters,
  }) async {
    return _repository.getAnalyticsReport(
      platform: platform,
      reportType: reportType,
      startDate: startDate,
      endDate: endDate,
      filters: filters,
    );
  }

  // Integration Management
  Future<List<IntegrationStatus>> getIntegrationStatus({
    List<String>? integrationIds,
    String? type,
  }) async {
    return _repository.getIntegrationStatus(
      integrationIds: integrationIds,
      type: type,
    );
  }

  Future<void> updateIntegrationConfig({
    required String integrationId,
    required Map<String, dynamic> config,
  }) async {
    await _repository.updateIntegrationConfig(
      integrationId: integrationId,
      config: config,
    );
  }

  Future<ApiUsage> getApiUsage({
    required String integrationId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    return _repository.getApiUsage(
      integrationId: integrationId,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Future<void> handleIntegrationWebhook({
    required String integrationId,
    required String event,
    required Map<String, dynamic> payload,
  }) async {
    await _repository.handleIntegrationWebhook(
      integrationId: integrationId,
      event: event,
      payload: payload,
    );
  }

  // Error Handling
  Future<void> logIntegrationError({
    required String integrationId,
    required String error,
    required Map<String, dynamic> context,
  }) async {
    await _repository.logIntegrationError(
      integrationId: integrationId,
      error: error,
      context: context,
    );
  }

  Future<void> retryFailedOperation({
    required String integrationId,
    required String operationId,
  }) async {
    await _repository.retryFailedOperation(
      integrationId: integrationId,
      operationId: operationId,
    );
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
    return _repository.registerDevice(
      name: name,
      type: type,
      manufacturer: manufacturer,
      model: model,
      features: features,
      configuration: configuration,
    );
  }

  Future<void> updateDeviceStatus({
    required String deviceId,
    required Map<String, dynamic> status,
  }) async {
    await _repository.updateDeviceStatus(
      deviceId: deviceId,
      status: status,
    );
  }

  Future<void> updateDeviceConfiguration({
    required String deviceId,
    required Map<String, dynamic> configuration,
  }) async {
    await _repository.updateDeviceConfiguration(
      deviceId: deviceId,
      configuration: configuration,
    );
  }

  // Sensor Networks
  Future<IoTSensor> registerSensor({
    required String deviceId,
    required String type,
    required String unit,
    required Map<String, dynamic> configuration,
  }) async {
    return _repository.registerSensor(
      deviceId: deviceId,
      type: type,
      unit: unit,
      configuration: configuration,
    );
  }

  Future<void> updateSensorValue({
    required String sensorId,
    required double value,
    Map<String, dynamic>? metadata,
  }) async {
    await _repository.updateSensorValue(
      sensorId: sensorId,
      value: value,
      metadata: metadata,
    );
  }

  Future<List<IoTSensor>> getDeviceSensors(String deviceId) async {
    return _repository.getDeviceSensors(deviceId);
  }

  // Data Collection
  Future<void> recordTelemetry({
    required String deviceId,
    required Map<String, double> metrics,
    required Map<String, String> status,
    required Map<String, dynamic> diagnostics,
  }) async {
    await _repository.recordTelemetry(
      deviceId: deviceId,
      metrics: metrics,
      status: status,
      diagnostics: diagnostics,
    );
  }

  Future<List<IoTTelemetry>> getDeviceTelemetry({
    required String deviceId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    return _repository.getDeviceTelemetry(
      deviceId: deviceId,
      startDate: startDate,
      endDate: endDate,
    );
  }

  // Device Management
  Future<void> updateFirmware({
    required String deviceId,
    required String version,
    required String url,
  }) async {
    await _repository.updateFirmware(
      deviceId: deviceId,
      version: version,
      url: url,
    );
  }

  Future<List<IoTFirmware>> getAvailableFirmwareUpdates(String deviceId) async {
    return _repository.getAvailableFirmwareUpdates(deviceId);
  }

  Future<void> rebootDevice(String deviceId) async {
    await _repository.rebootDevice(deviceId);
  }

  // Automation Rules
  Future<IoTAutomation> createAutomation({
    required String name,
    required String trigger,
    required Map<String, dynamic> conditions,
    required List<Map<String, dynamic>> actions,
    required Map<String, dynamic> configuration,
  }) async {
    return _repository.createAutomation(
      name: name,
      trigger: trigger,
      conditions: conditions,
      actions: actions,
      configuration: configuration,
    );
  }

  Future<void> updateAutomation({
    required String automationId,
    required Map<String, dynamic> updates,
  }) async {
    await _repository.updateAutomation(
      automationId: automationId,
      updates: updates,
    );
  }

  Future<List<IoTAutomation>> getDeviceAutomations(String deviceId) async {
    return _repository.getDeviceAutomations(deviceId);
  }

  // Status Monitoring
  Future<IoTNetwork> createNetwork({
    required String name,
    required String type,
    required Map<String, dynamic> configuration,
    required Map<String, dynamic> security,
  }) async {
    return _repository.createNetwork(
      name: name,
      type: type,
      configuration: configuration,
      security: security,
    );
  }

  Future<void> addDeviceToNetwork({
    required String networkId,
    required String deviceId,
  }) async {
    await _repository.addDeviceToNetwork(
      networkId: networkId,
      deviceId: deviceId,
    );
  }

  Future<Map<String, dynamic>> getNetworkStatus(String networkId) async {
    return _repository.getNetworkStatus(networkId);
  }

  Future<void> handleDeviceAlert({
    required String deviceId,
    required String alertType,
    required Map<String, dynamic> alertData,
  }) async {
    await _repository.handleDeviceAlert(
      deviceId: deviceId,
      alertType: alertType,
      alertData: alertData,
    );
  }
}
