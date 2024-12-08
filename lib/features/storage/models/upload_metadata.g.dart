// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadMetadataImpl _$$UploadMetadataImplFromJson(Map<String, dynamic> json) =>
    _$UploadMetadataImpl(
      userId: json['userId'] as String,
      category: json['category'] as String,
      originalFileName: json['originalFileName'] as String,
      contentType: _validateContentType(json['contentType'] as String?),
      uploadTime: _parseDateTime(json['uploadTime']),
      fileSize: (json['fileSize'] as num).toInt(),
      description: json['description'] as String?,
      customMetadata: _validateCustomMetadata(
          json['customMetadata'] as Map<String, dynamic>?),
      isPublic: json['isPublic'] as bool? ?? false,
      checksum: json['checksum'] as String?,
      lastModified: _parseDateTime(json['lastModified']),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      geoLocation: json['geoLocation'] as String?,
      downloadCount: (json['downloadCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UploadMetadataImplToJson(
        _$UploadMetadataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'category': instance.category,
      'originalFileName': instance.originalFileName,
      'contentType': instance.contentType,
      'uploadTime': _dateToString(instance.uploadTime),
      'fileSize': instance.fileSize,
      'description': instance.description,
      'customMetadata': instance.customMetadata,
      'isPublic': instance.isPublic,
      'checksum': instance.checksum,
      'lastModified': _dateToString(instance.lastModified),
      'tags': instance.tags,
      'geoLocation': instance.geoLocation,
      'downloadCount': instance.downloadCount,
    };
