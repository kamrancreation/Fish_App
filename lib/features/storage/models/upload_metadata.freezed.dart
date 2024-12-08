// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadMetadata _$UploadMetadataFromJson(Map<String, dynamic> json) {
  return _UploadMetadata.fromJson(json);
}

/// @nodoc
mixin _$UploadMetadata {
  String get userId => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get originalFileName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _validateContentType)
  String get contentType => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get uploadTime => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _validateCustomMetadata)
  Map<String, dynamic>? get customMetadata =>
      throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  String? get checksum => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime? get lastModified => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String? get geoLocation => throw _privateConstructorUsedError;
  int get downloadCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadMetadataCopyWith<UploadMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadMetadataCopyWith<$Res> {
  factory $UploadMetadataCopyWith(
          UploadMetadata value, $Res Function(UploadMetadata) then) =
      _$UploadMetadataCopyWithImpl<$Res, UploadMetadata>;
  @useResult
  $Res call(
      {String userId,
      String category,
      String originalFileName,
      @JsonKey(fromJson: _validateContentType) String contentType,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime uploadTime,
      int fileSize,
      String? description,
      @JsonKey(fromJson: _validateCustomMetadata)
      Map<String, dynamic>? customMetadata,
      bool isPublic,
      String? checksum,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime? lastModified,
      List<String> tags,
      String? geoLocation,
      int downloadCount});
}

/// @nodoc
class _$UploadMetadataCopyWithImpl<$Res, $Val extends UploadMetadata>
    implements $UploadMetadataCopyWith<$Res> {
  _$UploadMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? category = null,
    Object? originalFileName = null,
    Object? contentType = null,
    Object? uploadTime = null,
    Object? fileSize = null,
    Object? description = freezed,
    Object? customMetadata = freezed,
    Object? isPublic = null,
    Object? checksum = freezed,
    Object? lastModified = freezed,
    Object? tags = null,
    Object? geoLocation = freezed,
    Object? downloadCount = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      originalFileName: null == originalFileName
          ? _value.originalFileName
          : originalFileName // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      uploadTime: null == uploadTime
          ? _value.uploadTime
          : uploadTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      customMetadata: freezed == customMetadata
          ? _value.customMetadata
          : customMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      checksum: freezed == checksum
          ? _value.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      geoLocation: freezed == geoLocation
          ? _value.geoLocation
          : geoLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadCount: null == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadMetadataImplCopyWith<$Res>
    implements $UploadMetadataCopyWith<$Res> {
  factory _$$UploadMetadataImplCopyWith(_$UploadMetadataImpl value,
          $Res Function(_$UploadMetadataImpl) then) =
      __$$UploadMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String category,
      String originalFileName,
      @JsonKey(fromJson: _validateContentType) String contentType,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime uploadTime,
      int fileSize,
      String? description,
      @JsonKey(fromJson: _validateCustomMetadata)
      Map<String, dynamic>? customMetadata,
      bool isPublic,
      String? checksum,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime? lastModified,
      List<String> tags,
      String? geoLocation,
      int downloadCount});
}

/// @nodoc
class __$$UploadMetadataImplCopyWithImpl<$Res>
    extends _$UploadMetadataCopyWithImpl<$Res, _$UploadMetadataImpl>
    implements _$$UploadMetadataImplCopyWith<$Res> {
  __$$UploadMetadataImplCopyWithImpl(
      _$UploadMetadataImpl _value, $Res Function(_$UploadMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? category = null,
    Object? originalFileName = null,
    Object? contentType = null,
    Object? uploadTime = null,
    Object? fileSize = null,
    Object? description = freezed,
    Object? customMetadata = freezed,
    Object? isPublic = null,
    Object? checksum = freezed,
    Object? lastModified = freezed,
    Object? tags = null,
    Object? geoLocation = freezed,
    Object? downloadCount = null,
  }) {
    return _then(_$UploadMetadataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      originalFileName: null == originalFileName
          ? _value.originalFileName
          : originalFileName // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      uploadTime: null == uploadTime
          ? _value.uploadTime
          : uploadTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      customMetadata: freezed == customMetadata
          ? _value._customMetadata
          : customMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      checksum: freezed == checksum
          ? _value.checksum
          : checksum // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      geoLocation: freezed == geoLocation
          ? _value.geoLocation
          : geoLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadCount: null == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadMetadataImpl implements _UploadMetadata {
  const _$UploadMetadataImpl(
      {required this.userId,
      required this.category,
      required this.originalFileName,
      @JsonKey(fromJson: _validateContentType) required this.contentType,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.uploadTime,
      required this.fileSize,
      this.description,
      @JsonKey(fromJson: _validateCustomMetadata)
      final Map<String, dynamic>? customMetadata,
      this.isPublic = false,
      this.checksum,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      this.lastModified,
      final List<String> tags = const [],
      this.geoLocation,
      this.downloadCount = 0})
      : _customMetadata = customMetadata,
        _tags = tags;

  factory _$UploadMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadMetadataImplFromJson(json);

  @override
  final String userId;
  @override
  final String category;
  @override
  final String originalFileName;
  @override
  @JsonKey(fromJson: _validateContentType)
  final String contentType;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime uploadTime;
  @override
  final int fileSize;
  @override
  final String? description;
  final Map<String, dynamic>? _customMetadata;
  @override
  @JsonKey(fromJson: _validateCustomMetadata)
  Map<String, dynamic>? get customMetadata {
    final value = _customMetadata;
    if (value == null) return null;
    if (_customMetadata is EqualUnmodifiableMapView) return _customMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool isPublic;
  @override
  final String? checksum;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime? lastModified;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? geoLocation;
  @override
  @JsonKey()
  final int downloadCount;

  @override
  String toString() {
    return 'UploadMetadata(userId: $userId, category: $category, originalFileName: $originalFileName, contentType: $contentType, uploadTime: $uploadTime, fileSize: $fileSize, description: $description, customMetadata: $customMetadata, isPublic: $isPublic, checksum: $checksum, lastModified: $lastModified, tags: $tags, geoLocation: $geoLocation, downloadCount: $downloadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadMetadataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.originalFileName, originalFileName) ||
                other.originalFileName == originalFileName) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.uploadTime, uploadTime) ||
                other.uploadTime == uploadTime) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._customMetadata, _customMetadata) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.checksum, checksum) ||
                other.checksum == checksum) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.geoLocation, geoLocation) ||
                other.geoLocation == geoLocation) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      category,
      originalFileName,
      contentType,
      uploadTime,
      fileSize,
      description,
      const DeepCollectionEquality().hash(_customMetadata),
      isPublic,
      checksum,
      lastModified,
      const DeepCollectionEquality().hash(_tags),
      geoLocation,
      downloadCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadMetadataImplCopyWith<_$UploadMetadataImpl> get copyWith =>
      __$$UploadMetadataImplCopyWithImpl<_$UploadMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadMetadataImplToJson(
      this,
    );
  }
}

abstract class _UploadMetadata implements UploadMetadata {
  const factory _UploadMetadata(
      {required final String userId,
      required final String category,
      required final String originalFileName,
      @JsonKey(fromJson: _validateContentType)
      required final String contentType,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime uploadTime,
      required final int fileSize,
      final String? description,
      @JsonKey(fromJson: _validateCustomMetadata)
      final Map<String, dynamic>? customMetadata,
      final bool isPublic,
      final String? checksum,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      final DateTime? lastModified,
      final List<String> tags,
      final String? geoLocation,
      final int downloadCount}) = _$UploadMetadataImpl;

  factory _UploadMetadata.fromJson(Map<String, dynamic> json) =
      _$UploadMetadataImpl.fromJson;

  @override
  String get userId;
  @override
  String get category;
  @override
  String get originalFileName;
  @override
  @JsonKey(fromJson: _validateContentType)
  String get contentType;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get uploadTime;
  @override
  int get fileSize;
  @override
  String? get description;
  @override
  @JsonKey(fromJson: _validateCustomMetadata)
  Map<String, dynamic>? get customMetadata;
  @override
  bool get isPublic;
  @override
  String? get checksum;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime? get lastModified;
  @override
  List<String> get tags;
  @override
  String? get geoLocation;
  @override
  int get downloadCount;
  @override
  @JsonKey(ignore: true)
  _$$UploadMetadataImplCopyWith<_$UploadMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
