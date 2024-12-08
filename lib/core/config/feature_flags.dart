import 'package:firebase_remote_config/firebase_remote_config.dart';
import '../error/app_error.dart';
import '../monitoring/monitoring_service.dart';

enum Feature {
  pushNotifications,
  locationTracking,
  weatherAlerts,
  safetyCheckins,
  premiumFeatures,
  socialFeatures,
  aiAssistant,
  offlineMode,
  betaFeatures,
}

class FeatureFlags {
  final FirebaseRemoteConfig _remoteConfig;
  final MonitoringService _monitoring;
  static FeatureFlags? _instance;

  FeatureFlags._({
    FirebaseRemoteConfig? remoteConfig,
    MonitoringService? monitoring,
  })  : _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance,
        _monitoring = monitoring ?? MonitoringService.instance;

  static FeatureFlags get instance {
    _instance ??= FeatureFlags._();
    return _instance!;
  }

  Future<void> initialize() async {
    try {
      _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(hours: 1),
      ));

      await _remoteConfig.setDefaults({
        for (var feature in Feature.values)
          _getFeatureKey(feature): _getDefaultValue(feature),
      });

      await _remoteConfig.fetchAndActivate();
    } catch (error, stackTrace) {
      _monitoring.recordError(
        AppError(
          code: ErrorCodes.preconditionError,
          message: 'Failed to initialize feature flags',
          stackTrace: stackTrace,
        ),
      );
      throw AppError(
        code: ErrorCodes.preconditionError,
        message: 'Failed to initialize feature flags',
        stackTrace: stackTrace,
      );
    }
  }

  bool isEnabled(Feature feature) {
    try {
      return _remoteConfig.getBool(_getFeatureKey(feature));
    } catch (error, stackTrace) {
      _monitoring.recordError(
        AppError(
          code: ErrorCodes.preconditionError,
          message: 'Failed to get feature flag: ${feature.name}',
          stackTrace: stackTrace,
        ),
      );
      return _getDefaultValue(feature);
    }
  }

  Map<String, dynamic> getFeatureConfig(Feature feature) {
    try {
      return _remoteConfig.getValue(_getConfigKey(feature)).asString().isNotEmpty
          ? Map<String, dynamic>.from(
              _remoteConfig.getValue(_getConfigKey(feature)).asString() as Map)
          : {};
    } catch (error, stackTrace) {
      _monitoring.recordError(
        AppError(
          code: ErrorCodes.preconditionError,
          message: 'Failed to get feature config: ${feature.name}',
          stackTrace: stackTrace,
        ),
      );
      return {};
    }
  }

  String _getFeatureKey(Feature feature) => 'enable_${feature.name}';
  String _getConfigKey(Feature feature) => 'config_${feature.name}';

  bool _getDefaultValue(Feature feature) {
    switch (feature) {
      case Feature.pushNotifications:
      case Feature.locationTracking:
      case Feature.weatherAlerts:
      case Feature.safetyCheckins:
        return true;
      case Feature.premiumFeatures:
      case Feature.socialFeatures:
      case Feature.aiAssistant:
      case Feature.offlineMode:
      case Feature.betaFeatures:
        return false;
    }
  }
}
