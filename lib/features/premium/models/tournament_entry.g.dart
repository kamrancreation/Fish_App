// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TournamentEntryImpl _$$TournamentEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$TournamentEntryImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      tournamentId: json['tournamentId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      fishMeasurements: (json['fishMeasurements'] as List<dynamic>)
          .map((e) => FishMeasurement.fromJson(e as Map<String, dynamic>))
          .toList(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      location: json['location'] as Map<String, dynamic>,
      description: json['description'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      verificationData: json['verificationData'] as Map<String, dynamic>?,
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TournamentEntryImplToJson(
        _$TournamentEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'tournamentId': instance.tournamentId,
      'timestamp': instance.timestamp.toIso8601String(),
      'fishMeasurements': instance.fishMeasurements,
      'images': instance.images,
      'location': instance.location,
      'description': instance.description,
      'tags': instance.tags,
      'verificationData': instance.verificationData,
      'additionalData': instance.additionalData,
    };
