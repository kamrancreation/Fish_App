class Achievement {
  final String id;
  final String name;
  final String description;
  final String icon;
  final DateTime unlockedAt;

  const Achievement({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.unlockedAt,
  });

  Achievement copyWith({
    String? name,
    String? description,
    String? icon,
    DateTime? unlockedAt,
  }) {
    return Achievement(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      unlockedAt: unlockedAt ?? this.unlockedAt,
    );
  }
}
