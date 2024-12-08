# FishPro Integration Documentation

## Analytics Integration

### Firebase Analytics Setup

1. **Dependencies**
```yaml
dependencies:
  firebase_analytics: ^10.4.0
  firebase_analytics_web: ^0.5.4
```

2. **Initialization**
```dart
class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  final FirebaseAnalyticsObserver observer;

  AnalyticsService()
      : observer = FirebaseAnalyticsObserver(
          analytics: FirebaseAnalytics.instance,
        );

  // Enable analytics collection
  Future<void> setAnalyticsCollectionEnabled() async {
    await _analytics.setAnalyticsCollectionEnabled(true);
  }
}
```

3. **Event Tracking**
```dart
class AnalyticsEvents {
  static const String spotViewed = 'spot_viewed';
  static const String reviewAdded = 'review_added';
  static const String groupJoined = 'group_joined';
  static const String mapInteraction = 'map_interaction';
  static const String searchPerformed = 'search_performed';
  static const String filterApplied = 'filter_applied';
}

extension AnalyticsTracking on AnalyticsService {
  Future<void> trackSpotView(String spotId, String spotName) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.spotViewed,
      parameters: {
        'spot_id': spotId,
        'spot_name': spotName,
        'timestamp': DateTime.now().toIso8601String(),
      },
    );
  }

  Future<void> trackReviewAdded(String spotId, double rating) async {
    await _analytics.logEvent(
      name: AnalyticsEvents.reviewAdded,
      parameters: {
        'spot_id': spotId,
        'rating': rating,
        'timestamp': DateTime.now().toIso8601String(),
      },
    );
  }
}
```

### Custom Analytics Dashboard

1. **Key Metrics**
```dart
class AnalyticsMetrics {
  static const metrics = {
    'user_engagement': {
      'daily_active_users': 'DAU count',
      'session_duration': 'Average time in app',
      'feature_usage': 'Feature engagement rates',
    },
    'spot_metrics': {
      'views': 'Spot view counts',
      'reviews': 'Review submission rate',
      'favorites': 'Favorite spot counts',
    },
    'social_metrics': {
      'group_joins': 'Group membership growth',
      'shares': 'Content sharing rate',
      'interactions': 'User interaction count',
    },
  };
}
```

2. **Analytics Reports**
```dart
class AnalyticsReporting {
  static Future<Map<String, dynamic>> generateUserReport() async {
    final report = await FirebaseAnalytics.instance.getUserProperties();
    return {
      'user_segments': report.userSegments,
      'engagement_level': report.engagementMetrics,
      'feature_usage': report.featureUsage,
    };
  }
}
```

## Ad Platform Integration

### Google AdMob Setup

1. **Dependencies**
```yaml
dependencies:
  google_mobile_ads: ^3.0.0
```

2. **Initialization**
```dart
class AdService {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-xxx/yyy'; // Android ad unit ID
    } else if (Platform.isIOS) {
      return 'ca-app-pub-xxx/zzz'; // iOS ad unit ID
    }
    throw UnsupportedError('Unsupported platform');
  }

  static String get interstitialAdUnitId {
    // Similar platform-specific ad unit IDs
  }

  static String get rewardedAdUnitId {
    // Similar platform-specific ad unit IDs
  }

  static Future<void> initialize() async {
    await MobileAds.instance.initialize();
  }
}
```

3. **Ad Implementation**

#### Banner Ads
```dart
class BannerAdWidget extends StatefulWidget {
  @override
  _BannerAdWidgetState createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  void _loadAd() {
    _bannerAd = BannerAd(
      adUnitId: AdService.bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() => _isLoaded = true);
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_bannerAd == null || !_isLoaded) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      width: _bannerAd!.size.width.toDouble(),
      height: _bannerAd!.size.height.toDouble(),
      child: AdWidget(ad: _bannerAd!),
    );
  }
}
```

#### Interstitial Ads
```dart
class InterstitialAdManager {
  InterstitialAd? _interstitialAd;
  bool _isLoaded = false;

  Future<void> loadAd() async {
    await InterstitialAd.load(
      adUnitId: AdService.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _isLoaded = true;
        },
        onAdFailedToLoad: (error) {
          print('Interstitial ad failed to load: $error');
        },
      ),
    );
  }

  Future<void> showAd() async {
    if (!_isLoaded || _interstitialAd == null) {
      return;
    }

    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        loadAd(); // Preload next ad
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        loadAd(); // Retry loading
      },
    );

    await _interstitialAd!.show();
    _isLoaded = false;
  }
}
```

### Ad Strategy

1. **Placement Guidelines**
```dart
class AdPlacementStrategy {
  static const placements = {
    'spot_list': {
      'type': 'banner',
      'position': 'bottom',
      'frequency': 'continuous',
    },
    'spot_details': {
      'type': 'banner',
      'position': 'top',
      'frequency': 'continuous',
    },
    'search_results': {
      'type': 'native',
      'frequency': 'every_10_items',
    },
    'feature_unlock': {
      'type': 'rewarded',
      'trigger': 'user_action',
    },
  };
}
```

2. **User Experience**
```dart
class AdUserExperience {
  static const preferences = {
    'max_ads_per_session': 5,
    'min_time_between_ads': Duration(minutes: 3),
    'premium_features': [
      'ad_free_experience',
      'advanced_features',
      'priority_support',
    ],
  };
}
```

3. **Revenue Optimization**
```dart
class AdRevenue {
  static const strategy = {
    'targeting': {
      'user_segments': ['active', 'casual', 'new'],
      'frequency_caps': {
        'interstitial': 'every_3_minutes',
        'rewarded': 'user_initiated',
      },
    },
    'optimization': {
      'a_b_testing': true,
      'dynamic_allocation': true,
      'smart_pricing': true,
    },
  };
}
```

### Premium Features

1. **Subscription Management**
```dart
class PremiumFeatures {
  static const features = {
    'no_ads': 'Remove all advertisements',
    'advanced_search': 'Enhanced spot search capabilities',
    'offline_maps': 'Download maps for offline use',
    'priority_support': 'Premium customer support',
  };

  static Future<bool> isPremiumUser() async {
    // Check user subscription status
    return await SubscriptionService.checkStatus();
  }
}
```

2. **Ad-Free Experience**
```dart
class AdFreeExperience {
  static Future<bool> shouldShowAds() async {
    if (await PremiumFeatures.isPremiumUser()) {
      return false;
    }
    return true;
  }
}
```
