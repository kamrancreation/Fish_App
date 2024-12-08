// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfflineDataImpl _$$OfflineDataImplFromJson(Map<String, dynamic> json) =>
    _$OfflineDataImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      data: json['data'] as Map<String, dynamic>,
      lastModified: DateTime.parse(json['lastModified'] as String),
      isPending: json['isPending'] as bool,
    );

Map<String, dynamic> _$$OfflineDataImplToJson(_$OfflineDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'data': instance.data,
      'lastModified': instance.lastModified.toIso8601String(),
      'isPending': instance.isPending,
    };

_$OfflineDataBatchImpl _$$OfflineDataBatchImplFromJson(
        Map<String, dynamic> json) =>
    _$OfflineDataBatchImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => OfflineData.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$OfflineDataBatchImplToJson(
        _$OfflineDataBatchImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': instance.status,
    };

_$OfflineStorageStatsImpl _$$OfflineStorageStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$OfflineStorageStatsImpl(
      mapTilesCount: (json['mapTilesCount'] as num).toInt(),
      mapStorageBytes: (json['mapStorageBytes'] as num).toInt(),
      catchLogsCount: (json['catchLogsCount'] as num).toInt(),
      syncQueueCount: (json['syncQueueCount'] as num).toInt(),
      lastSync: DateTime.parse(json['lastSync'] as String),
    );

Map<String, dynamic> _$$OfflineStorageStatsImplToJson(
        _$OfflineStorageStatsImpl instance) =>
    <String, dynamic>{
      'mapTilesCount': instance.mapTilesCount,
      'mapStorageBytes': instance.mapStorageBytes,
      'catchLogsCount': instance.catchLogsCount,
      'syncQueueCount': instance.syncQueueCount,
      'lastSync': instance.lastSync.toIso8601String(),
    };
