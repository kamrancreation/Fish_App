import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

enum AchievementCategory {
  fishing,
  social,
  tournament,
  conservation,
  exploration,
  skill,
}

enum AchievementTier {
  bronze,
  silver,
  gold,
  platinum,
  diamond,
}

@immutable
class Achievement {
  final String id;
  final String title;
  final String description;
  final AchievementCategory category;
  final AchievementTier tier;
  final int points;
  final Map<String, dynamic> requirements;
  final String iconUrl;
  final DateTime? earnedAt;
  final Map<String, dynamic>? progress;

  const Achievement({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.tier,
    required this.points,
    required this.requirements,
    required this.iconUrl,
    this.earnedAt,
    this.progress,
  });

  factory Achievement.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Achievement(
      id: doc.id,
      title: data['title'] as String,
      description: data['description'] as String,
      category: AchievementCategory.values.firstWhere(
        (e) => e.toString() == 'AchievementCategory.${data['category']}',
      ),
      tier: AchievementTier.values.firstWhere(
        (e) => e.toString() == 'AchievementTier.${data['tier']}',
      ),
      points: data['points'] as int,
      requirements: Map<String, dynamic>.from(data['requirements'] as Map),
      iconUrl: data['iconUrl'] as String,
      earnedAt: data['earnedAt'] != null
          ? (data['earnedAt'] as Timestamp).toDate()
          : null,
      progress: data['progress'] != null
          ? Map<String, dynamic>.from(data['progress'] as Map)
          : null,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'description': description,
      'category': category.toString().split('.').last,
      'tier': tier.toString().split('.').last,
      'points': points,
      'requirements': requirements,
      'iconUrl': iconUrl,
      'earnedAt': earnedAt != null ? Timestamp.fromDate(earnedAt!) : null,
      'progress': progress,
    };
  }

  Achievement copyWith({
    String? id,
    String? title,
    String? description,
    AchievementCategory? category,
    AchievementTier? tier,
    int? points,
    Map<String, dynamic>? requirements,
    String? iconUrl,
    DateTime? earnedAt,
    Map<String, dynamic>? progress,
  }) {
    return Achievement(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      tier: tier ?? this.tier,
      points: points ?? this.points,
      requirements: requirements ?? this.requirements,
      iconUrl: iconUrl ?? this.iconUrl,
      earnedAt: earnedAt ?? this.earnedAt,
      progress: progress ?? this.progress,
    );
  }

  bool isEarned() => earnedAt != null;

  double getProgress() {
    if (progress == null || requirements.isEmpty) return 0.0;
    
    double totalProgress = 0;
    int totalRequirements = 0;

    requirements.forEach((key, value) {
      if (progress!.containsKey(key)) {
        final current = progress![key] as num;
        final required = value as num;
        totalProgress += (current / required).clamp(0.0, 1.0);
        totalRequirements++;
      }
    });

    return totalRequirements > 0 ? totalProgress / totalRequirements : 0.0;
  }

  String getProgressText() {
    if (isEarned()) return 'Earned ${earnedAt!.toString().split(' ')[0]}';
    
    final progress = getProgress();
    return '${(progress * 100).toInt()}% Complete';
  }

  Color getTierColor() {
    switch (tier) {
      case AchievementTier.bronze:
        return const Color(0xFFCD7F32);
      case AchievementTier.silver:
        return const Color(0xFFC0C0C0);
      case AchievementTier.gold:
        return const Color(0xFFFFD700);
      case AchievementTier.platinum:
        return const Color(0xFFE5E4E2);
      case AchievementTier.diamond:
        return const Color(0xFFB9F2FF);
    }
  }
}
