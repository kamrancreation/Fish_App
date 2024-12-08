import 'package:flutter/material.dart';

enum BadgeCategory {
  catches,
  social,
  events,
  achievements,
  special
}

class FishingBadge {
  final String id;
  final String name;
  final String description;
  final String iconPath;
  final BadgeCategory category;
  final Map<String, dynamic> requirements;
  final Color color;
  final DateTime? earnedAt;

  const FishingBadge({
    required this.id,
    required this.name,
    required this.description,
    required this.iconPath,
    required this.category,
    required this.requirements,
    required this.color,
    this.earnedAt,
  });

  bool get isEarned => earnedAt != null;

  factory FishingBadge.fromMap(Map<String, dynamic> map) {
    return FishingBadge(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      iconPath: map['iconPath'],
      category: BadgeCategory.values.firstWhere(
        (e) => e.toString() == 'BadgeCategory.${map['category']}',
      ),
      requirements: Map<String, dynamic>.from(map['requirements']),
      color: Color(map['color']),
      earnedAt: map['earnedAt'] != null ? DateTime.parse(map['earnedAt']) : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'iconPath': iconPath,
      'category': category.toString().split('.').last,
      'requirements': requirements,
      'color': color.value,
      'earnedAt': earnedAt?.toIso8601String(),
    };
  }

  FishingBadge copyWith({
    String? id,
    String? name,
    String? description,
    String? iconPath,
    BadgeCategory? category,
    Map<String, dynamic>? requirements,
    Color? color,
    DateTime? earnedAt,
  }) {
    return FishingBadge(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      iconPath: iconPath ?? this.iconPath,
      category: category ?? this.category,
      requirements: requirements ?? this.requirements,
      color: color ?? this.color,
      earnedAt: earnedAt ?? this.earnedAt,
    );
  }
}
