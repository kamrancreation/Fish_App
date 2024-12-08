import 'package:freezed_annotation/freezed_annotation.dart';

part 'workshop.freezed.dart';
part 'workshop.g.dart';

enum WorkshopStatus {
  upcoming,
  live,
  completed,
  cancelled
}

@freezed
class Workshop with _$Workshop {
  const factory Workshop({
    required String id,
    required String title,
    required String description,
    required String expertId,
    required String expertName,
    required DateTime startTime,
    required DateTime endTime,
    required int maxParticipants,
    required WorkshopStatus status,
    required List<String> topics,
    required Map<String, dynamic> requirements,
    String? thumbnailUrl,
    String? recordingUrl,
    int? currentParticipants,
    double? rating,
    List<String>? materials,
    Map<String, dynamic>? interactionStats,
  }) = _Workshop;

  factory Workshop.fromJson(Map<String, dynamic> json) =>
      _$WorkshopFromJson(json);
}
