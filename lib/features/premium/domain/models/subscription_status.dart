enum SubscriptionTier {
  free,
  basic,
  pro,
  elite;

  bool get isPremium => this != SubscriptionTier.free;
}

class SubscriptionStatus {
  final String userId;
  final SubscriptionTier tier;
  final DateTime? startDate;
  final DateTime? endDate;
  final bool autoRenew;
  final String? subscriptionId;
  final String? paymentMethod;
  final bool isTrialUsed;

  const SubscriptionStatus({
    required this.userId,
    required this.tier,
    this.startDate,
    this.endDate,
    this.autoRenew = false,
    this.subscriptionId,
    this.paymentMethod,
    this.isTrialUsed = false,
  });

  bool get isActive => 
      tier.isPremium && 
      startDate != null && 
      (endDate == null || endDate!.isAfter(DateTime.now()));

  bool get isExpiringSoon =>
      isActive &&
      endDate != null &&
      endDate!.difference(DateTime.now()).inDays <= 7;

  Duration get remainingTime =>
      endDate?.difference(DateTime.now()) ?? Duration.zero;

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'tier': tier.name,
    'startDate': startDate?.toIso8601String(),
    'endDate': endDate?.toIso8601String(),
    'autoRenew': autoRenew,
    'subscriptionId': subscriptionId,
    'paymentMethod': paymentMethod,
    'isTrialUsed': isTrialUsed,
  };

  factory SubscriptionStatus.fromJson(Map<String, dynamic> json) {
    return SubscriptionStatus(
      userId: json['userId'],
      tier: SubscriptionTier.values.firstWhere(
        (e) => e.name == json['tier'],
        orElse: () => SubscriptionTier.free,
      ),
      startDate: json['startDate'] != null 
          ? DateTime.parse(json['startDate'])
          : null,
      endDate: json['endDate'] != null 
          ? DateTime.parse(json['endDate'])
          : null,
      autoRenew: json['autoRenew'] ?? false,
      subscriptionId: json['subscriptionId'],
      paymentMethod: json['paymentMethod'],
      isTrialUsed: json['isTrialUsed'] ?? false,
    );
  }

  SubscriptionStatus copyWith({
    String? userId,
    SubscriptionTier? tier,
    DateTime? startDate,
    DateTime? endDate,
    bool? autoRenew,
    String? subscriptionId,
    String? paymentMethod,
    bool? isTrialUsed,
  }) {
    return SubscriptionStatus(
      userId: userId ?? this.userId,
      tier: tier ?? this.tier,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      autoRenew: autoRenew ?? this.autoRenew,
      subscriptionId: subscriptionId ?? this.subscriptionId,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      isTrialUsed: isTrialUsed ?? this.isTrialUsed,
    );
  }
}
