// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TournamentImpl _$$TournamentImplFromJson(Map<String, dynamic> json) =>
    _$TournamentImpl(
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      rules: (json['rules'] as List<dynamic>).map((e) => e as String).toList(),
      prizes: json['prizes'] as Map<String, dynamic>,
      sponsors:
          (json['sponsors'] as List<dynamic>).map((e) => e as String).toList(),
      verificationRules: json['verificationRules'] as Map<String, dynamic>,
      status: $enumDecode(_$TournamentStatusEnumMap, json['status']),
      entries: (json['entries'] as List<dynamic>)
          .map((e) => TournamentEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      streams:
          (json['streams'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String?,
      bannerImage: json['bannerImage'] as String?,
      sponsorDetails: json['sponsorDetails'] as Map<String, dynamic>?,
      certificationData: json['certificationData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TournamentImplToJson(_$TournamentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'rules': instance.rules,
      'prizes': instance.prizes,
      'sponsors': instance.sponsors,
      'verificationRules': instance.verificationRules,
      'status': _$TournamentStatusEnumMap[instance.status]!,
      'entries': instance.entries,
      'streams': instance.streams,
      'description': instance.description,
      'bannerImage': instance.bannerImage,
      'sponsorDetails': instance.sponsorDetails,
      'certificationData': instance.certificationData,
    };

const _$TournamentStatusEnumMap = {
  TournamentStatus.upcoming: 'upcoming',
  TournamentStatus.active: 'active',
  TournamentStatus.completed: 'completed',
  TournamentStatus.cancelled: 'cancelled',
};
