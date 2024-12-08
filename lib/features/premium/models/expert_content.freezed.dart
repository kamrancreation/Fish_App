// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expert_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpertContent _$ExpertContentFromJson(Map<String, dynamic> json) {
  return _ExpertContent.fromJson(json);
}

/// @nodoc
mixin _$ExpertContent {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ContentCategory get category => throw _privateConstructorUsedError;
  ContentFormat get format => throw _privateConstructorUsedError;
  ExpertLevel get level => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  DateTime get publishDate => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  Map<String, dynamic> get content => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get viewCount => throw _privateConstructorUsedError;
  int? get bookmarkCount => throw _privateConstructorUsedError;
  List<String>? get relatedContentIds => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertContentCopyWith<ExpertContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertContentCopyWith<$Res> {
  factory $ExpertContentCopyWith(
          ExpertContent value, $Res Function(ExpertContent) then) =
      _$ExpertContentCopyWithImpl<$Res, ExpertContent>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      ContentCategory category,
      ContentFormat format,
      ExpertLevel level,
      String authorId,
      String authorName,
      DateTime publishDate,
      List<String> tags,
      Map<String, dynamic> content,
      String? thumbnailUrl,
      String? videoUrl,
      double? rating,
      int? viewCount,
      int? bookmarkCount,
      List<String>? relatedContentIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ExpertContentCopyWithImpl<$Res, $Val extends ExpertContent>
    implements $ExpertContentCopyWith<$Res> {
  _$ExpertContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? format = null,
    Object? level = null,
    Object? authorId = null,
    Object? authorName = null,
    Object? publishDate = null,
    Object? tags = null,
    Object? content = null,
    Object? thumbnailUrl = freezed,
    Object? videoUrl = freezed,
    Object? rating = freezed,
    Object? viewCount = freezed,
    Object? bookmarkCount = freezed,
    Object? relatedContentIds = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ContentCategory,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as ContentFormat,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ExpertLevel,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmarkCount: freezed == bookmarkCount
          ? _value.bookmarkCount
          : bookmarkCount // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedContentIds: freezed == relatedContentIds
          ? _value.relatedContentIds
          : relatedContentIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpertContentImplCopyWith<$Res>
    implements $ExpertContentCopyWith<$Res> {
  factory _$$ExpertContentImplCopyWith(
          _$ExpertContentImpl value, $Res Function(_$ExpertContentImpl) then) =
      __$$ExpertContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      ContentCategory category,
      ContentFormat format,
      ExpertLevel level,
      String authorId,
      String authorName,
      DateTime publishDate,
      List<String> tags,
      Map<String, dynamic> content,
      String? thumbnailUrl,
      String? videoUrl,
      double? rating,
      int? viewCount,
      int? bookmarkCount,
      List<String>? relatedContentIds,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ExpertContentImplCopyWithImpl<$Res>
    extends _$ExpertContentCopyWithImpl<$Res, _$ExpertContentImpl>
    implements _$$ExpertContentImplCopyWith<$Res> {
  __$$ExpertContentImplCopyWithImpl(
      _$ExpertContentImpl _value, $Res Function(_$ExpertContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? format = null,
    Object? level = null,
    Object? authorId = null,
    Object? authorName = null,
    Object? publishDate = null,
    Object? tags = null,
    Object? content = null,
    Object? thumbnailUrl = freezed,
    Object? videoUrl = freezed,
    Object? rating = freezed,
    Object? viewCount = freezed,
    Object? bookmarkCount = freezed,
    Object? relatedContentIds = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ExpertContentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ContentCategory,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as ContentFormat,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ExpertLevel,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmarkCount: freezed == bookmarkCount
          ? _value.bookmarkCount
          : bookmarkCount // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedContentIds: freezed == relatedContentIds
          ? _value._relatedContentIds
          : relatedContentIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpertContentImpl implements _ExpertContent {
  const _$ExpertContentImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.format,
      required this.level,
      required this.authorId,
      required this.authorName,
      required this.publishDate,
      required final List<String> tags,
      required final Map<String, dynamic> content,
      this.thumbnailUrl,
      this.videoUrl,
      this.rating,
      this.viewCount,
      this.bookmarkCount,
      final List<String>? relatedContentIds,
      final Map<String, dynamic>? metadata})
      : _tags = tags,
        _content = content,
        _relatedContentIds = relatedContentIds,
        _metadata = metadata;

  factory _$ExpertContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpertContentImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final ContentCategory category;
  @override
  final ContentFormat format;
  @override
  final ExpertLevel level;
  @override
  final String authorId;
  @override
  final String authorName;
  @override
  final DateTime publishDate;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final Map<String, dynamic> _content;
  @override
  Map<String, dynamic> get content {
    if (_content is EqualUnmodifiableMapView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_content);
  }

  @override
  final String? thumbnailUrl;
  @override
  final String? videoUrl;
  @override
  final double? rating;
  @override
  final int? viewCount;
  @override
  final int? bookmarkCount;
  final List<String>? _relatedContentIds;
  @override
  List<String>? get relatedContentIds {
    final value = _relatedContentIds;
    if (value == null) return null;
    if (_relatedContentIds is EqualUnmodifiableListView)
      return _relatedContentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ExpertContent(id: $id, title: $title, description: $description, category: $category, format: $format, level: $level, authorId: $authorId, authorName: $authorName, publishDate: $publishDate, tags: $tags, content: $content, thumbnailUrl: $thumbnailUrl, videoUrl: $videoUrl, rating: $rating, viewCount: $viewCount, bookmarkCount: $bookmarkCount, relatedContentIds: $relatedContentIds, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertContentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.bookmarkCount, bookmarkCount) ||
                other.bookmarkCount == bookmarkCount) &&
            const DeepCollectionEquality()
                .equals(other._relatedContentIds, _relatedContentIds) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      category,
      format,
      level,
      authorId,
      authorName,
      publishDate,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_content),
      thumbnailUrl,
      videoUrl,
      rating,
      viewCount,
      bookmarkCount,
      const DeepCollectionEquality().hash(_relatedContentIds),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertContentImplCopyWith<_$ExpertContentImpl> get copyWith =>
      __$$ExpertContentImplCopyWithImpl<_$ExpertContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpertContentImplToJson(
      this,
    );
  }
}

abstract class _ExpertContent implements ExpertContent {
  const factory _ExpertContent(
      {required final String id,
      required final String title,
      required final String description,
      required final ContentCategory category,
      required final ContentFormat format,
      required final ExpertLevel level,
      required final String authorId,
      required final String authorName,
      required final DateTime publishDate,
      required final List<String> tags,
      required final Map<String, dynamic> content,
      final String? thumbnailUrl,
      final String? videoUrl,
      final double? rating,
      final int? viewCount,
      final int? bookmarkCount,
      final List<String>? relatedContentIds,
      final Map<String, dynamic>? metadata}) = _$ExpertContentImpl;

  factory _ExpertContent.fromJson(Map<String, dynamic> json) =
      _$ExpertContentImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  ContentCategory get category;
  @override
  ContentFormat get format;
  @override
  ExpertLevel get level;
  @override
  String get authorId;
  @override
  String get authorName;
  @override
  DateTime get publishDate;
  @override
  List<String> get tags;
  @override
  Map<String, dynamic> get content;
  @override
  String? get thumbnailUrl;
  @override
  String? get videoUrl;
  @override
  double? get rating;
  @override
  int? get viewCount;
  @override
  int? get bookmarkCount;
  @override
  List<String>? get relatedContentIds;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ExpertContentImplCopyWith<_$ExpertContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
