enum ReferralStatus {
  pending,
  completed,
  expired;

  bool get isActive => this == ReferralStatus.pending;
}

class Referral {
  final String id;
  final String referrerId;
  final String? refereeId;
  final String code;
  final DateTime createdAt;
  final DateTime expiresAt;
  final ReferralStatus status;
  final Map<String, dynamic> rewards;
  final bool isReferrerRewarded;
  final bool isRefereeRewarded;

  const Referral({
    required this.id,
    required this.referrerId,
    this.refereeId,
    required this.code,
    required this.createdAt,
    required this.expiresAt,
    this.status = ReferralStatus.pending,
    this.rewards = const {},
    this.isReferrerRewarded = false,
    this.isRefereeRewarded = false,
  });

  bool get isExpired => 
      status == ReferralStatus.expired || 
      expiresAt.isBefore(DateTime.now());

  bool get isCompleted => status == ReferralStatus.completed;

  bool get canRewardReferrer => 
      isCompleted && !isReferrerRewarded;

  bool get canRewardReferee =>
      isCompleted && !isRefereeRewarded && refereeId != null;

  Duration get timeLeft => 
      isExpired ? Duration.zero : expiresAt.difference(DateTime.now());

  Map<String, dynamic> toJson() => {
    'id': id,
    'referrerId': referrerId,
    'refereeId': refereeId,
    'code': code,
    'createdAt': createdAt.toIso8601String(),
    'expiresAt': expiresAt.toIso8601String(),
    'status': status.name,
    'rewards': rewards,
    'isReferrerRewarded': isReferrerRewarded,
    'isRefereeRewarded': isRefereeRewarded,
  };

  factory Referral.fromJson(Map<String, dynamic> json) {
    return Referral(
      id: json['id'],
      referrerId: json['referrerId'],
      refereeId: json['refereeId'],
      code: json['code'],
      createdAt: DateTime.parse(json['createdAt']),
      expiresAt: DateTime.parse(json['expiresAt']),
      status: ReferralStatus.values.firstWhere(
        (e) => e.name == json['status'],
        orElse: () => ReferralStatus.pending,
      ),
      rewards: json['rewards'] ?? {},
      isReferrerRewarded: json['isReferrerRewarded'] ?? false,
      isRefereeRewarded: json['isRefereeRewarded'] ?? false,
    );
  }

  Referral copyWith({
    String? id,
    String? referrerId,
    String? refereeId,
    String? code,
    DateTime? createdAt,
    DateTime? expiresAt,
    ReferralStatus? status,
    Map<String, dynamic>? rewards,
    bool? isReferrerRewarded,
    bool? isRefereeRewarded,
  }) {
    return Referral(
      id: id ?? this.id,
      referrerId: referrerId ?? this.referrerId,
      refereeId: refereeId ?? this.refereeId,
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      expiresAt: expiresAt ?? this.expiresAt,
      status: status ?? this.status,
      rewards: rewards ?? this.rewards,
      isReferrerRewarded: isReferrerRewarded ?? this.isReferrerRewarded,
      isRefereeRewarded: isRefereeRewarded ?? this.isRefereeRewarded,
    );
  }
}
