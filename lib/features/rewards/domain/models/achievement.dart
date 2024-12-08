enum AchievementCategory {
  fishing,
  social,
  exploration,
  contribution,
  collection,
  skill,
  special;

  String get icon {
    switch (this) {
      case AchievementCategory.fishing:
        return '🎣';
      case AchievementCategory.social:
        return '👥';
      case AchievementCategory.exploration:
        return '🗺️';
      case AchievementCategory.contribution:
        return '🤝';
      case AchievementCategory.collection:
        return '📚';
      case AchievementCategory.skill:
        return '🎯';
      case AchievementCategory.special:
        return '⭐';
    }
  }
}

class Achievement {
  final String id;
  final String title;
  final String description;
  final AchievementCategory category;
  final int points;
  final Map<String, dynamic> criteria;
  final String? icon;
  final List<String> rewards;
  final bool isSecret;
  final bool isPremium;
  final DateTime? unlockedAt;
  final double progress;

  const Achievement({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.points,
    required this.criteria,
    this.icon,
    this.rewards = const [],
    this.isSecret = false,
    this.isPremium = false,
    this.unlockedAt,
    this.progress = 0.0,
  });

  bool get isUnlocked => unlockedAt != null;
  
  bool get isInProgress => !isUnlocked && progress > 0;

  String get displayIcon => icon ?? category.icon;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'category': category.name,
    'points': points,
    'criteria': criteria,
    'icon': icon,
    'rewards': rewards,
    'isSecret': isSecret,
    'isPremium': isPremium,
    'unlockedAt': unlockedAt?.toIso8601String(),
    'progress': progress,
  };

  factory Achievement.fromJson(Map<String, dynamic> json) {
    return Achievement(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: AchievementCategory.values.firstWhere(
        (e) => e.name == json['category'],
      ),
      points: json['points'],
      criteria: json['criteria'],
      icon: json['icon'],
      rewards: List<String>.from(json['rewards'] ?? []),
      isSecret: json['isSecret'] ?? false,
      isPremium: json['isPremium'] ?? false,
      unlockedAt: json['unlockedAt'] != null 
          ? DateTime.parse(json['unlockedAt'])
          : null,
      progress: json['progress']?.toDouble() ?? 0.0,
    );
  }

  Achievement copyWith({
    String? id,
    String? title,
    String? description,
    AchievementCategory? category,
    int? points,
    Map<String, dynamic>? criteria,
    String? icon,
    List<String>? rewards,
    bool? isSecret,
    bool? isPremium,
    DateTime? unlockedAt,
    double? progress,
  }) {
    return Achievement(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      points: points ?? this.points,
      criteria: criteria ?? this.criteria,
      icon: icon ?? this.icon,
      rewards: rewards ?? this.rewards,
      isSecret: isSecret ?? this.isSecret,
      isPremium: isPremium ?? this.isPremium,
      unlockedAt: unlockedAt ?? this.unlockedAt,
      progress: progress ?? this.progress,
    );
  }
}
