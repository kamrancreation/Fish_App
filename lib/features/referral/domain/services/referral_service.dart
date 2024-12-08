import 'dart:async';
import 'dart:math';
import 'package:share_plus/share_plus.dart';
import '../models/referral.dart';
import '../../rewards/domain/models/reward.dart';
import '../../../core/services/analytics_service.dart';
import '../../../core/services/storage_service.dart';

class ReferralService {
  final StorageService _storage;
  final AnalyticsService _analytics;

  final _referralController = StreamController<List<Referral>>.broadcast();

  Stream<List<Referral>> get referrals => _referralController.stream;

  ReferralService({
    StorageService? storage,
    AnalyticsService? analytics,
  })  : _storage = storage ?? StorageService(),
        _analytics = analytics ?? AnalyticsService();

  Future<void> initialize() async {
    await _loadReferrals();
  }

  Future<Referral> createReferralCode() async {
    final code = _generateReferralCode();

    final referral = Referral(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      referrerId: 'current_user_id', // Get from auth service
      code: code,
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().add(const Duration(days: 30)),
      rewards: {
        'referrer': {
          'type': RewardType.premium.name,
          'value': 30, // 30 days premium
        },
        'referee': {
          'type': RewardType.premium.name,
          'value': 7, // 7 days premium trial
        },
      },
    );

    await _saveReferral(referral);
    await _updateReferralsList();

    // Track analytics
    await _analytics.trackEvent(
      'referral_code_created',
      parameters: {
        'referral_id': referral.id,
        'code': code,
      },
    );

    return referral;
  }

  Future<void> shareReferralCode(Referral referral) async {
    final message = '''
🎣 Join me on FishPro!

Use my referral code "${referral.code}" to get a 7-day premium trial.

Download the app: [App Store/Play Store Link]
    ''';

    await Share.share(message);

    // Track analytics
    await _analytics.trackEvent(
      'referral_code_shared',
      parameters: {
        'referral_id': referral.id,
        'code': referral.code,
      },
    );
  }

  Future<bool> applyReferralCode(String code) async {
    final referral = await _findReferralByCode(code);

    if (referral == null || referral.isExpired || referral.isCompleted) {
      return false;
    }

    // Update referral status
    final updatedReferral = referral.copyWith(
      refereeId: 'current_user_id', // Get from auth service
      status: ReferralStatus.completed,
    );

    await _saveReferral(updatedReferral);
    await _updateReferralsList();

    // Create rewards
    if (updatedReferral.canRewardReferee) {
      await _createRefereeReward(updatedReferral);
    }

    if (updatedReferral.canRewardReferrer) {
      await _createReferrerReward(updatedReferral);
    }

    // Track analytics
    await _analytics.trackEvent(
      'referral_code_applied',
      parameters: {
        'referral_id': referral.id,
        'code': code,
      },
    );

    return true;
  }

  Future<List<Referral>> getActiveReferrals() async {
    final referrals = await _getReferrals();
    return referrals.where((r) => !r.isExpired && !r.isCompleted).toList();
  }

  Future<List<Referral>> getCompletedReferrals() async {
    final referrals = await _getReferrals();
    return referrals.where((r) => r.isCompleted).toList();
  }

  String _generateReferralCode() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    const codeLength = 8;

    return List.generate(codeLength, (index) {
      return chars[random.nextInt(chars.length)];
    }).join();
  }

  Future<void> _createRefereeReward(Referral referral) async {
    final rewardData = referral.rewards['referee'];
    if (rewardData == null) return;

    final reward = Reward(
      id: 'referee_${referral.id}',
      title: 'Welcome Bonus',
      description: 'Premium trial for joining with a referral code',
      type: RewardType.values.firstWhere(
        (e) => e.name == rewardData['type'],
      ),
      value: rewardData['value'],
      source: 'referral:${referral.id}',
    );

    // Save reward (implement reward service)
  }

  Future<void> _createReferrerReward(Referral referral) async {
    final rewardData = referral.rewards['referrer'];
    if (rewardData == null) return;

    final reward = Reward(
      id: 'referrer_${referral.id}',
      title: 'Referral Bonus',
      description: 'Reward for successful referral',
      type: RewardType.values.firstWhere(
        (e) => e.name == rewardData['type'],
      ),
      value: rewardData['value'],
      source: 'referral:${referral.id}',
    );

    // Save reward (implement reward service)
  }

  Future<List<Referral>> _getReferrals() async {
    final json = await _storage.getJson('referrals');
    if (json == null) return [];

    return (json as List).map((item) => Referral.fromJson(item)).toList();
  }

  Future<Referral?> _findReferralByCode(String code) async {
    final referrals = await _getReferrals();
    return referrals.firstWhere(
      (r) => r.code == code,
      orElse: () => null as Referral,
    );
  }

  Future<void> _loadReferrals() async {
    final referrals = await _getReferrals();
    _referralController.add(referrals);
  }

  Future<void> _saveReferral(Referral referral) async {
    final referrals = await _getReferrals();
    final index = referrals.indexWhere((r) => r.id == referral.id);

    if (index != -1) {
      referrals[index] = referral;
    } else {
      referrals.add(referral);
    }

    await _storage.setJson(
      'referrals',
      referrals.map((r) => r.toJson()).toList(),
    );
  }

  Future<void> _updateReferralsList() async {
    final referrals = await _getReferrals();
    _referralController.add(referrals);
  }

  void dispose() {
    _referralController.close();
  }
}
