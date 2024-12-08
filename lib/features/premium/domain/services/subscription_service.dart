import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import '../models/subscription_plan.dart';
import '../models/subscription_status.dart';
import '../../../core/services/analytics_service.dart';
import '../../../core/services/storage_service.dart';

class SubscriptionService {
  final InAppPurchase _iap;
  final StorageService _storage;
  final AnalyticsService _analytics;

  final StreamController<SubscriptionStatus> _statusController =
      StreamController<SubscriptionStatus>.broadcast();

  Stream<SubscriptionStatus> get statusStream => _statusController.stream;

  SubscriptionService({
    InAppPurchase? iap,
    StorageService? storage,
    AnalyticsService? analytics,
  })  : _iap = iap ?? InAppPurchase.instance,
        _storage = storage ?? StorageService(),
        _analytics = analytics ?? AnalyticsService();

  Future<void> initialize() async {
    final available = await _iap.isAvailable();
    if (!available) {
      throw Exception('In-app purchases not available');
    }

    // Set up IAP subscription stream
    _iap.purchaseStream.listen(_handlePurchaseUpdate);

    // Load initial subscription status
    await _loadSubscriptionStatus();
  }

  Future<List<SubscriptionPlan>> getAvailablePlans() async {
    final response = await _iap.queryProductDetails({
      'fishpro.sub.basic',
      'fishpro.sub.pro',
      'fishpro.sub.elite',
    });

    return response.productDetails.map((product) {
      // Map product details to subscription plan
      return SubscriptionPlan(
        id: product.id,
        name: product.title,
        description: product.description,
        price: product.rawPrice,
        currencyCode: product.currencyCode,
        duration: _getDurationFromId(product.id),
        features: _getFeaturesForPlan(product.id),
        isPopular: product.id == 'fishpro.sub.pro',
      );
    }).toList();
  }

  Future<void> startSubscription(SubscriptionPlan plan) async {
    final purchaseParam = PurchaseParam(
      productDetails: await _getProductDetails(plan.id),
    );

    await _iap.buyNonConsumable(purchaseParam: purchaseParam);
  }

  Future<void> cancelSubscription() async {
    // Implement subscription cancellation logic
    // This might redirect to the store or handle it through your backend
  }

  Future<void> restorePurchases() async {
    await _iap.restorePurchases();
  }

  Future<bool> checkFeatureAccess(String featureId) async {
    final status = await _loadSubscriptionStatus();
    switch (featureId) {
      case 'offline_maps':
        return status.tier == SubscriptionTier.pro ||
            status.tier == SubscriptionTier.elite;
      case 'advanced_filters':
        return status.tier != SubscriptionTier.free;
      case 'premium_spots':
        return status.tier == SubscriptionTier.elite;
      default:
        return false;
    }
  }

  void _handlePurchaseUpdate(List<PurchaseDetails> purchaseDetails) {
    for (var purchase in purchaseDetails) {
      if (purchase.status == PurchaseStatus.purchased ||
          purchase.status == PurchaseStatus.restored) {
        _verifyAndDeliverSubscription(purchase);
      }
    }
  }

  Future<void> _verifyAndDeliverSubscription(PurchaseDetails purchase) async {
    // Verify the purchase with your backend
    final isValid = await _verifyPurchase(purchase);
    if (!isValid) {
      throw Exception('Invalid purchase');
    }

    // Update subscription status
    final tier = _getTierFromProductId(purchase.productID);
    final status = SubscriptionStatus(
      userId: 'current_user_id', // Get from auth service
      tier: tier,
      startDate: DateTime.now(),
      endDate: _calculateEndDate(purchase.productID),
      autoRenew: true,
      subscriptionId: purchase.purchaseID,
    );

    await _storage.setJson('subscription_status', status.toJson());
    _statusController.add(status);

    // Track analytics
    await _analytics.trackEvent(
      'subscription_started',
      parameters: {
        'tier': tier.name,
        'product_id': purchase.productID,
      },
    );
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchase) async {
    // Implement purchase verification with your backend
    return true;
  }

  Future<SubscriptionStatus> _loadSubscriptionStatus() async {
    final json = await _storage.getJson('subscription_status');
    if (json == null) {
      return const SubscriptionStatus(
        userId: 'current_user_id', // Get from auth service
        tier: SubscriptionTier.free,
      );
    }
    return SubscriptionStatus.fromJson(json);
  }

  Duration _getDurationFromId(String productId) {
    // Example: 'fishpro.sub.basic.monthly' or 'fishpro.sub.pro.yearly'
    if (productId.contains('yearly')) {
      return const Duration(days: 365);
    }
    return const Duration(days: 30);
  }

  List<String> _getFeaturesForPlan(String productId) {
    switch (productId) {
      case 'fishpro.sub.basic':
        return [
          'Ad-free experience',
          'Basic fishing spots',
          'Weather forecasts',
          'Catch logging',
        ];
      case 'fishpro.sub.pro':
        return [
          'All Basic features',
          'Offline maps',
          'Advanced filters',
          'Detailed statistics',
          'Premium support',
        ];
      case 'fishpro.sub.elite':
        return [
          'All Pro features',
          'Premium fishing spots',
          'Early access',
          'Priority support',
          'Custom reports',
        ];
      default:
        return [];
    }
  }

  SubscriptionTier _getTierFromProductId(String productId) {
    if (productId.contains('elite')) return SubscriptionTier.elite;
    if (productId.contains('pro')) return SubscriptionTier.pro;
    if (productId.contains('basic')) return SubscriptionTier.basic;
    return SubscriptionTier.free;
  }

  DateTime _calculateEndDate(String productId) {
    final duration = _getDurationFromId(productId);
    return DateTime.now().add(duration);
  }

  Future<ProductDetails> _getProductDetails(String productId) async {
    final response = await _iap.queryProductDetails({productId});
    if (response.productDetails.isEmpty) {
      throw Exception('Product not found');
    }
    return response.productDetails.first;
  }

  void dispose() {
    _statusController.close();
  }
}
