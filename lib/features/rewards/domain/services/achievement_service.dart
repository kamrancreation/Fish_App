import 'dart:async';
import '../models/achievement.dart';
import '../models/reward.dart';
import '../../../core/services/analytics_service.dart';
import '../../../core/services/storage_service.dart';

class AchievementService {
  final StorageService _storage;
  final AnalyticsService _analytics;
  
  final _achievementController = StreamController<List<Achievement>>.broadcast();
  final _progressController = StreamController<Map<String, double>>.broadcast();

  Stream<List<Achievement>> get achievements => _achievementController.stream;
  Stream<Map<String, double>> get progress => _progressController.stream;

  AchievementService({
    StorageService? storage,
    AnalyticsService? analytics,
  }) : 
    _storage = storage ?? StorageService(),
    _analytics = analytics ?? AnalyticsService();

  Future<void> initialize() async {
    await _loadAchievements();
    await _loadProgress();
  }

  Future<void> checkAchievements(String action, Map<String, dynamic> data) async {
    final achievements = await _getAchievements();
    final progress = await _getProgress();

    for (final achievement in achievements) {
      if (achievement.isUnlocked) continue;

      final newProgress = await _calculateProgress(
        achievement,
        action,
        data,
        progress[achievement.id] ?? 0.0,
      );

      if (newProgress != progress[achievement.id]) {
        progress[achievement.id] = newProgress;
        await _saveProgress(progress);
        _progressController.add(progress);

        if (newProgress >= 1.0) {
          await _unlockAchievement(achievement);
        }
      }
    }
  }

  Future<List<Achievement>> getUnlockedAchievements() async {
    final achievements = await _getAchievements();
    return achievements.where((a) => a.isUnlocked).toList();
  }

  Future<List<Achievement>> getInProgressAchievements() async {
    final achievements = await _getAchievements();
    final progress = await _getProgress();
    
    return achievements.where((a) => 
      !a.isUnlocked && 
      (progress[a.id] ?? 0.0) > 0.0
    ).toList();
  }

  Future<List<Achievement>> getAvailableAchievements() async {
    final achievements = await _getAchievements();
    return achievements.where((a) => !a.isSecret || a.isUnlocked).toList();
  }

  Future<double> getProgress(String achievementId) async {
    final progress = await _getProgress();
    return progress[achievementId] ?? 0.0;
  }

  Future<void> _unlockAchievement(Achievement achievement) async {
    final achievements = await _getAchievements();
    final index = achievements.indexWhere((a) => a.id == achievement.id);
    
    if (index != -1) {
      achievements[index] = achievement.copyWith(
        unlockedAt: DateTime.now(),
        progress: 1.0,
      );

      await _saveAchievements(achievements);
      _achievementController.add(achievements);

      // Create rewards
      for (final rewardId in achievement.rewards) {
        await _createReward(rewardId, achievement);
      }

      // Track analytics
      await _analytics.trackEvent(
        'achievement_unlocked',
        parameters: {
          'achievement_id': achievement.id,
          'category': achievement.category.name,
          'points': achievement.points,
        },
      );
    }
  }

  Future<void> _createReward(String rewardId, Achievement achievement) async {
    final reward = Reward(
      id: rewardId,
      title: 'Achievement Reward',
      description: 'Reward for unlocking ${achievement.title}',
      type: RewardType.points,
      value: achievement.points,
      source: 'achievement:${achievement.id}',
    );

    // Save reward (implement reward service)
  }

  Future<double> _calculateProgress(
    Achievement achievement,
    String action,
    Map<String, dynamic> data,
    double currentProgress,
  ) async {
    // Example progress calculation based on criteria
    switch (achievement.id) {
      case 'first_catch':
        return data['catch_count'] > 0 ? 1.0 : 0.0;
      
      case 'catch_variety':
        final speciesCount = data['unique_species_count'] ?? 0;
        final targetCount = achievement.criteria['species_count'] ?? 10;
        return (speciesCount / targetCount).clamp(0.0, 1.0);
      
      case 'social_butterfly':
        final friendCount = data['friend_count'] ?? 0;
        final targetCount = achievement.criteria['friend_count'] ?? 5;
        return (friendCount / targetCount).clamp(0.0, 1.0);
      
      default:
        return currentProgress;
    }
  }

  Future<List<Achievement>> _getAchievements() async {
    final json = await _storage.getJson('achievements');
    if (json == null) return [];
    
    return (json as List)
        .map((item) => Achievement.fromJson(item))
        .toList();
  }

  Future<Map<String, double>> _getProgress() async {
    final json = await _storage.getJson('achievement_progress');
    if (json == null) return {};
    
    return Map<String, double>.from(json);
  }

  Future<void> _loadAchievements() async {
    final achievements = await _getAchievements();
    _achievementController.add(achievements);
  }

  Future<void> _loadProgress() async {
    final progress = await _getProgress();
    _progressController.add(progress);
  }

  Future<void> _saveAchievements(List<Achievement> achievements) async {
    await _storage.setJson(
      'achievements',
      achievements.map((a) => a.toJson()).toList(),
    );
  }

  Future<void> _saveProgress(Map<String, double> progress) async {
    await _storage.setJson('achievement_progress', progress);
  }

  void dispose() {
    _achievementController.close();
    _progressController.close();
  }
}
