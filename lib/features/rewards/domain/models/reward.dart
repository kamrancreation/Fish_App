enum RewardType {
  points,
  premium,
  feature,
  badge,
  item,
  currency;

  String get icon {
    switch (this) {
      case RewardType.points:
        return '🏆';
      case RewardType.premium:
        return '⭐';
      case RewardType.feature:
        return '🎁';
      case RewardType.badge:
        return '🏅';
      case RewardType.item:
        return '🎯';
      case RewardType.currency:
        return '💰';
    }
  }
}

class Reward {
  final String id;
  final String title;
  final String description;
  final RewardType type;
  final int value;
  final String? icon;
  final DateTime? expiresAt;
  final bool isRedeemed;
  final DateTime? redeemedAt;
  final String source;
  final bool isPremium;

  const Reward({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.value,
    required this.source,
    this.icon,
    this.expiresAt,
    this.isRedeemed = false,
    this.redeemedAt,
    this.isPremium = false,
  });

  bool get isExpired => 
      expiresAt != null && expiresAt!.isBefore(DateTime.now());

  bool get canRedeem => !isRedeemed && !isExpired;

  String get displayIcon => icon ?? type.icon;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'type': type.name,
    'value': value,
    'icon': icon,
    'expiresAt': expiresAt?.toIso8601String(),
    'isRedeemed': isRedeemed,
    'redeemedAt': redeemedAt?.toIso8601String(),
    'source': source,
    'isPremium': isPremium,
  };

  factory Reward.fromJson(Map<String, dynamic> json) {
    return Reward(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      type: RewardType.values.firstWhere(
        (e) => e.name == json['type'],
      ),
      value: json['value'],
      icon: json['icon'],
      expiresAt: json['expiresAt'] != null 
          ? DateTime.parse(json['expiresAt'])
          : null,
      isRedeemed: json['isRedeemed'] ?? false,
      redeemedAt: json['redeemedAt'] != null 
          ? DateTime.parse(json['redeemedAt'])
          : null,
      source: json['source'],
      isPremium: json['isPremium'] ?? false,
    );
  }

  Reward copyWith({
    String? id,
    String? title,
    String? description,
    RewardType? type,
    int? value,
    String? icon,
    DateTime? expiresAt,
    bool? isRedeemed,
    DateTime? redeemedAt,
    String? source,
    bool? isPremium,
  }) {
    return Reward(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      value: value ?? this.value,
      icon: icon ?? this.icon,
      expiresAt: expiresAt ?? this.expiresAt,
      isRedeemed: isRedeemed ?? this.isRedeemed,
      redeemedAt: redeemedAt ?? this.redeemedAt,
      source: source ?? this.source,
      isPremium: isPremium ?? this.isPremium,
    );
  }
}
