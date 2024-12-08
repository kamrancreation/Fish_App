import 'package:freezed_annotation/freezed_annotation.dart';

part 'integration_models.freezed.dart';
part 'integration_models.g.dart';

@freezed
class WeatherData with _$WeatherData {
  const factory WeatherData({
    required String location,
    required DateTime timestamp,
    required double temperature,
    required double humidity,
    required double windSpeed,
    required String windDirection,
    required double pressure,
    required double precipitation,
    required String condition,
    required Map<String, double> waterConditions,
    required Map<DateTime, WeatherForecast> hourlyForecast,
    required Map<DateTime, WeatherForecast> dailyForecast,
    Map<String, dynamic>? alerts,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
}

@freezed
class WeatherForecast with _$WeatherForecast {
  const factory WeatherForecast({
    required DateTime time,
    required double temperature,
    required double precipitation,
    required double windSpeed,
    required String condition,
    Map<String, dynamic>? details,
  }) = _WeatherForecast;

  factory WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastFromJson(json);
}

@freezed
class MapProvider with _$MapProvider {
  const factory MapProvider({
    required String id,
    required String name,
    required String apiKey,
    required bool isActive,
    required MapFeatures features,
    required Map<String, dynamic> settings,
    Map<String, dynamic>? usage,
  }) = _MapProvider;

  factory MapProvider.fromJson(Map<String, dynamic> json) =>
      _$MapProviderFromJson(json);
}

@freezed
class MapFeatures with _$MapFeatures {
  const factory MapFeatures({
    required bool satellite,
    required bool terrain,
    required bool traffic,
    required bool places,
    required bool directions,
    required bool geocoding,
    required bool clustering,
    required bool heatmap,
  }) = _MapFeatures;

  factory MapFeatures.fromJson(Map<String, dynamic> json) =>
      _$MapFeaturesFromJson(json);
}

@freezed
class PaymentProcessor with _$PaymentProcessor {
  const factory PaymentProcessor({
    required String id,
    required String name,
    required String provider,
    required bool isActive,
    required List<String> supportedMethods,
    required Map<String, dynamic> configuration,
    required PaymentFeatures features,
    Map<String, dynamic>? analytics,
  }) = _PaymentProcessor;

  factory PaymentProcessor.fromJson(Map<String, dynamic> json) =>
      _$PaymentProcessorFromJson(json);
}

@freezed
class PaymentFeatures with _$PaymentFeatures {
  const factory PaymentFeatures({
    required bool recurring,
    required bool refunds,
    required bool disputes,
    required bool splitPayments,
    required bool internationalPayments,
    required List<String> currencies,
  }) = _PaymentFeatures;

  factory PaymentFeatures.fromJson(Map<String, dynamic> json) =>
      _$PaymentFeaturesFromJson(json);
}

@freezed
class SocialMediaIntegration with _$SocialMediaIntegration {
  const factory SocialMediaIntegration({
    required String platform,
    required String accessToken,
    required DateTime tokenExpiry,
    required bool isActive,
    required SocialFeatures features,
    required Map<String, dynamic> settings,
    Map<String, dynamic>? analytics,
  }) = _SocialMediaIntegration;

  factory SocialMediaIntegration.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaIntegrationFromJson(json);
}

@freezed
class SocialFeatures with _$SocialFeatures {
  const factory SocialFeatures({
    required bool sharing,
    required bool authentication,
    required bool feed,
    required bool messaging,
    required bool notifications,
    required List<String> permissions,
  }) = _SocialFeatures;

  factory SocialFeatures.fromJson(Map<String, dynamic> json) =>
      _$SocialFeaturesFromJson(json);
}

@freezed
class CloudService with _$CloudService {
  const factory CloudService({
    required String id,
    required String provider,
    required String service,
    required bool isActive,
    required CloudFeatures features,
    required Map<String, dynamic> configuration,
    required Map<String, dynamic> quotas,
    Map<String, dynamic>? usage,
  }) = _CloudService;

  factory CloudService.fromJson(Map<String, dynamic> json) =>
      _$CloudServiceFromJson(json);
}

@freezed
class CloudFeatures with _$CloudFeatures {
  const factory CloudFeatures({
    required bool storage,
    required bool computing,
    required bool database,
    required bool analytics,
    required bool ml,
    required List<String> apis,
  }) = _CloudFeatures;

  factory CloudFeatures.fromJson(Map<String, dynamic> json) =>
      _$CloudFeaturesFromJson(json);
}

@freezed
class AnalyticsPlatform with _$AnalyticsPlatform {
  const factory AnalyticsPlatform({
    required String id,
    required String name,
    required String provider,
    required bool isActive,
    required AnalyticsFeatures features,
    required Map<String, dynamic> configuration,
    required Map<String, dynamic> tracking,
    Map<String, dynamic>? metrics,
  }) = _AnalyticsPlatform;

  factory AnalyticsPlatform.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsPlatformFromJson(json);
}

@freezed
class AnalyticsFeatures with _$AnalyticsFeatures {
  const factory AnalyticsFeatures({
    required bool events,
    required bool userProperties,
    required bool conversions,
    required bool funnels,
    required bool retention,
    required bool realtime,
    required List<String> dimensions,
  }) = _AnalyticsFeatures;

  factory AnalyticsFeatures.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsFeaturesFromJson(json);
}

@freezed
class IntegrationStatus with _$IntegrationStatus {
  const factory IntegrationStatus({
    required String integrationId,
    required String type,
    required bool isActive,
    required DateTime lastCheck,
    required bool isHealthy,
    required Map<String, bool> features,
    required Map<String, dynamic> metrics,
    String? error,
  }) = _IntegrationStatus;

  factory IntegrationStatus.fromJson(Map<String, dynamic> json) =>
      _$IntegrationStatusFromJson(json);
}

@freezed
class ApiUsage with _$ApiUsage {
  const factory ApiUsage({
    required String apiId,
    required DateTime period,
    required int requests,
    required int errors,
    required double latency,
    required Map<String, int> endpoints,
    required Map<String, double> costs,
    Map<String, dynamic>? quotas,
  }) = _ApiUsage;

  factory ApiUsage.fromJson(Map<String, dynamic> json) =>
      _$ApiUsageFromJson(json);
}

@freezed
class IntegrationConfig with _$IntegrationConfig {
  const factory IntegrationConfig({
    required String id,
    required String type,
    required Map<String, String> credentials,
    required Map<String, dynamic> settings,
    required Map<String, bool> features,
    required bool isActive,
    Map<String, dynamic>? metadata,
  }) = _IntegrationConfig;

  factory IntegrationConfig.fromJson(Map<String, dynamic> json) =>
      _$IntegrationConfigFromJson(json);
}

@freezed
class IoTDevice with _$IoTDevice {
  const factory IoTDevice({
    required String id,
    required String name,
    required String type,
    required String manufacturer,
    required String model,
    required String firmwareVersion,
    required bool isOnline,
    required DateTime lastSeen,
    required IoTFeatures features,
    required Map<String, dynamic> configuration,
    required Map<String, dynamic> status,
    Map<String, dynamic>? telemetry,
  }) = _IoTDevice;

  factory IoTDevice.fromJson(Map<String, dynamic> json) =>
      _$IoTDeviceFromJson(json);
}

@freezed
class IoTFeatures with _$IoTFeatures {
  const factory IoTFeatures({
    required bool sensors,
    required bool actuators,
    required bool telemetry,
    required bool automation,
    required bool firmware,
    required bool remote,
    required List<String> protocols,
  }) = _IoTFeatures;

  factory IoTFeatures.fromJson(Map<String, dynamic> json) =>
      _$IoTFeaturesFromJson(json);
}

@freezed
class IoTSensor with _$IoTSensor {
  const factory IoTSensor({
    required String id,
    required String deviceId,
    required String type,
    required String unit,
    required double value,
    required DateTime timestamp,
    required bool isActive,
    required Map<String, dynamic> configuration,
    Map<String, dynamic>? metadata,
  }) = _IoTSensor;

  factory IoTSensor.fromJson(Map<String, dynamic> json) =>
      _$IoTSensorFromJson(json);
}

@freezed
class IoTAutomation with _$IoTAutomation {
  const factory IoTAutomation({
    required String id,
    required String name,
    required bool isActive,
    required String trigger,
    required Map<String, dynamic> conditions,
    required List<Map<String, dynamic>> actions,
    required DateTime lastTriggered,
    required Map<String, dynamic> configuration,
    Map<String, dynamic>? history,
  }) = _IoTAutomation;

  factory IoTAutomation.fromJson(Map<String, dynamic> json) =>
      _$IoTAutomationFromJson(json);
}

@freezed
class IoTNetwork with _$IoTNetwork {
  const factory IoTNetwork({
    required String id,
    required String name,
    required String type,
    required bool isActive,
    required List<String> devices,
    required Map<String, dynamic> configuration,
    required Map<String, dynamic> security,
    Map<String, dynamic>? status,
  }) = _IoTNetwork;

  factory IoTNetwork.fromJson(Map<String, dynamic> json) =>
      _$IoTNetworkFromJson(json);
}

@freezed
class IoTTelemetry with _$IoTTelemetry {
  const factory IoTTelemetry({
    required String deviceId,
    required DateTime timestamp,
    required Map<String, double> metrics,
    required Map<String, String> status,
    required Map<String, dynamic> diagnostics,
    Map<String, dynamic>? alerts,
  }) = _IoTTelemetry;

  factory IoTTelemetry.fromJson(Map<String, dynamic> json) =>
      _$IoTTelemetryFromJson(json);
}

@freezed
class IoTFirmware with _$IoTFirmware {
  const factory IoTFirmware({
    required String version,
    required String deviceType,
    required String url,
    required String checksum,
    required DateTime releaseDate,
    required List<String> changes,
    required Map<String, dynamic> compatibility,
    Map<String, dynamic>? metadata,
  }) = _IoTFirmware;

  factory IoTFirmware.fromJson(Map<String, dynamic> json) =>
      _$IoTFirmwareFromJson(json);
}

@freezed
class SocialProfile with _$SocialProfile {
  const factory SocialProfile({
    required String id,
    required String platform,
    required String platformUserId,
    required String username,
    required String displayName,
    required String? profileUrl,
    required String? avatarUrl,
    required Map<String, dynamic> metadata,
    required bool isVerified,
    required DateTime lastSync,
    Map<String, dynamic>? settings,
  }) = _SocialProfile;

  factory SocialProfile.fromJson(Map<String, dynamic> json) =>
      _$SocialProfileFromJson(json);
}

@freezed
class SocialConnection with _$SocialConnection {
  const factory SocialConnection({
    required String id,
    required String userId,
    required String platform,
    required String connectionId,
    required String connectionType,
    required DateTime connectedAt,
    required bool isMutual,
    required Map<String, dynamic> metadata,
    Map<String, dynamic>? settings,
  }) = _SocialConnection;

  factory SocialConnection.fromJson(Map<String, dynamic> json) =>
      _$SocialConnectionFromJson(json);
}

@freezed
class SocialPost with _$SocialPost {
  const factory SocialPost({
    required String id,
    required String platform,
    required String userId,
    required String content,
    required List<String> mediaUrls,
    required Map<String, dynamic> metadata,
    required DateTime postedAt,
    required List<String> tags,
    required Map<String, int> engagement,
    required String visibility,
    Map<String, dynamic>? crossPostData,
  }) = _SocialPost;

  factory SocialPost.fromJson(Map<String, dynamic> json) =>
      _$SocialPostFromJson(json);
}

@freezed
class SocialActivity with _$SocialActivity {
  const factory SocialActivity({
    required String id,
    required String userId,
    required String platform,
    required String activityType,
    required Map<String, dynamic> data,
    required DateTime timestamp,
    required bool isPublic,
    required List<String> tags,
    Map<String, dynamic>? metadata,
  }) = _SocialActivity;

  factory SocialActivity.fromJson(Map<String, dynamic> json) =>
      _$SocialActivityFromJson(json);
}

@freezed
class SocialAuth with _$SocialAuth {
  const factory SocialAuth({
    required String id,
    required String userId,
    required String platform,
    required String accessToken,
    required String? refreshToken,
    required DateTime tokenExpiry,
    required List<String> scopes,
    required Map<String, dynamic> userData,
    Map<String, dynamic>? settings,
  }) = _SocialAuth;

  factory SocialAuth.fromJson(Map<String, dynamic> json) =>
      _$SocialAuthFromJson(json);
}

@freezed
class SocialInteraction with _$SocialInteraction {
  const factory SocialInteraction({
    required String id,
    required String userId,
    required String platform,
    required String interactionType,
    required String targetId,
    required Map<String, dynamic> data,
    required DateTime timestamp,
    required bool isPublic,
    Map<String, dynamic>? metadata,
  }) = _SocialInteraction;

  factory SocialInteraction.fromJson(Map<String, dynamic> json) =>
      _$SocialInteractionFromJson(json);
}

@freezed
class SocialNotification with _$SocialNotification {
  const factory SocialNotification({
    required String id,
    required String userId,
    required String platform,
    required String type,
    required Map<String, dynamic> data,
    required DateTime timestamp,
    required bool isRead,
    required String priority,
    Map<String, dynamic>? metadata,
  }) = _SocialNotification;

  factory SocialNotification.fromJson(Map<String, dynamic> json) =>
      _$SocialNotificationFromJson(json);
}
