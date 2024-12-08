import 'package:freezed_annotation/freezed_annotation.dart';

part 'expert_content.freezed.dart';
part 'expert_content.g.dart';

enum ContentCategory {
  tip,
  tutorial,
  technique,
  location,
  gearReview,
  qa,
  workshop
}

enum ContentFormat {
  text,
  video,
  interactive,
  live
}

enum ExpertLevel {
  beginner,
  intermediate,
  advanced,
  pro
}

@freezed
class ExpertContent with _$ExpertContent {
  const factory ExpertContent({
    required String id,
    required String title,
    required String description,
    required ContentCategory category,
    required ContentFormat format,
    required ExpertLevel level,
    required String authorId,
    required String authorName,
    required DateTime publishDate,
    required List<String> tags,
    required Map<String, dynamic> content,
    String? thumbnailUrl,
    String? videoUrl,
    double? rating,
    int? viewCount,
    int? bookmarkCount,
    List<String>? relatedContentIds,
    Map<String, dynamic>? metadata,
  }) = _ExpertContent;

  factory ExpertContent.fromJson(Map<String, dynamic> json) =>
      _$ExpertContentFromJson(json);
}
