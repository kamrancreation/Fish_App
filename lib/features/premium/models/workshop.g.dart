// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workshop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkshopImpl _$$WorkshopImplFromJson(Map<String, dynamic> json) =>
    _$WorkshopImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      expertId: json['expertId'] as String,
      expertName: json['expertName'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      maxParticipants: (json['maxParticipants'] as num).toInt(),
      status: $enumDecode(_$WorkshopStatusEnumMap, json['status']),
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
      requirements: json['requirements'] as Map<String, dynamic>,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      recordingUrl: json['recordingUrl'] as String?,
      currentParticipants: (json['currentParticipants'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      materials: (json['materials'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      interactionStats: json['interactionStats'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WorkshopImplToJson(_$WorkshopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'expertId': instance.expertId,
      'expertName': instance.expertName,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'maxParticipants': instance.maxParticipants,
      'status': _$WorkshopStatusEnumMap[instance.status]!,
      'topics': instance.topics,
      'requirements': instance.requirements,
      'thumbnailUrl': instance.thumbnailUrl,
      'recordingUrl': instance.recordingUrl,
      'currentParticipants': instance.currentParticipants,
      'rating': instance.rating,
      'materials': instance.materials,
      'interactionStats': instance.interactionStats,
    };

const _$WorkshopStatusEnumMap = {
  WorkshopStatus.upcoming: 'upcoming',
  WorkshopStatus.live: 'live',
  WorkshopStatus.completed: 'completed',
  WorkshopStatus.cancelled: 'cancelled',
};
