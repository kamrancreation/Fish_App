import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:crypto/crypto.dart';

part 'upload_metadata.freezed.dart';
part 'upload_metadata.g.dart';

DateTime _parseDateTime(dynamic value) {
  if (value is DateTime) return value;
  if (value is String) return DateTime.parse(value);
  throw ArgumentError('Invalid DateTime value: $value');
}

String? _dateToString(DateTime? date) => date?.toIso8601String();

String _validateContentType(String? value) {
  if (value == null || value.isEmpty) {
    return 'application/octet-stream';
  }
  // Basic MIME type validation
  final parts = value.split('/');
  if (parts.length != 2) {
    return 'application/octet-stream';
  }
  return value.toLowerCase();
}

Map<String, dynamic>? _validateCustomMetadata(Map<String, dynamic>? metadata) {
  if (metadata == null) return null;
  
  // Remove null values and ensure string values
  return Map.fromEntries(
    metadata.entries.where((e) => e.value != null).map(
      (e) => MapEntry(e.key, e.value.toString()),
    ),
  );
}

@freezed
class UploadMetadata with _$UploadMetadata {
  const factory UploadMetadata({
    required String userId,
    required String category,
    required String originalFileName,
    @JsonKey(fromJson: _validateContentType) required String contentType,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) required DateTime uploadTime,
    required int fileSize,
    String? description,
    @JsonKey(fromJson: _validateCustomMetadata) Map<String, dynamic>? customMetadata,
    @Default(false) bool isPublic,
    String? checksum,
    @JsonKey(fromJson: _parseDateTime, toJson: _dateToString) DateTime? lastModified,
    @Default([]) List<String> tags,
    String? geoLocation,
    @Default(0) int downloadCount,
  }) = _UploadMetadata;

  factory UploadMetadata.fromJson(Map<String, dynamic> json) =>
      _$UploadMetadataFromJson(json);

  static String generateChecksum(List<int> bytes) {
    final digest = md5.convert(bytes);
    return digest.toString();
  }

  static UploadMetadata createFromFile({
    required String userId,
    required String category,
    required String originalFileName,
    required String contentType,
    required int fileSize,
    required List<int> fileBytes,
    String? description,
    Map<String, dynamic>? customMetadata,
    bool isPublic = false,
    List<String> tags = const [],
    String? geoLocation,
  }) {
    return UploadMetadata(
      userId: userId,
      category: category,
      originalFileName: originalFileName,
      contentType: contentType,
      uploadTime: DateTime.now(),
      fileSize: fileSize,
      description: description,
      customMetadata: customMetadata,
      isPublic: isPublic,
      checksum: generateChecksum(fileBytes),
      lastModified: DateTime.now(),
      tags: tags,
      geoLocation: geoLocation,
      downloadCount: 0,
    );
  }

  bool isValidForUpload() {
    if (userId.isEmpty || category.isEmpty || originalFileName.isEmpty) {
      return false;
    }
    if (fileSize <= 0) {
      return false;
    }
    if (tags.any((tag) => tag.isEmpty)) {
      return false;
    }
    return true;
  }

  UploadMetadata incrementDownloadCount() {
    return copyWith(downloadCount: downloadCount + 1);
  }

  UploadMetadata updateLastModified() {
    return copyWith(lastModified: DateTime.now());
  }

  UploadMetadata addTags(List<String> newTags) {
    final uniqueTags = {...tags, ...newTags}.toList();
    return copyWith(tags: uniqueTags);
  }

  UploadMetadata removeTags(List<String> tagsToRemove) {
    final updatedTags = tags.where((tag) => !tagsToRemove.contains(tag)).toList();
    return copyWith(tags: updatedTags);
  }
}
