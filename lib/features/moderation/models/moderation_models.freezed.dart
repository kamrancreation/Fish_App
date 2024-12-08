// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderation_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModerationResult _$ModerationResultFromJson(Map<String, dynamic> json) {
  return _ModerationResult.fromJson(json);
}

/// @nodoc
mixin _$ModerationResult {
  bool get isApproved => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  Map<String, dynamic>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModerationResultCopyWith<ModerationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationResultCopyWith<$Res> {
  factory $ModerationResultCopyWith(
          ModerationResult value, $Res Function(ModerationResult) then) =
      _$ModerationResultCopyWithImpl<$Res, ModerationResult>;
  @useResult
  $Res call(
      {bool isApproved,
      double confidence,
      String reason,
      Map<String, dynamic>? details});
}

/// @nodoc
class _$ModerationResultCopyWithImpl<$Res, $Val extends ModerationResult>
    implements $ModerationResultCopyWith<$Res> {
  _$ModerationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isApproved = null,
    Object? confidence = null,
    Object? reason = null,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerationResultImplCopyWith<$Res>
    implements $ModerationResultCopyWith<$Res> {
  factory _$$ModerationResultImplCopyWith(_$ModerationResultImpl value,
          $Res Function(_$ModerationResultImpl) then) =
      __$$ModerationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isApproved,
      double confidence,
      String reason,
      Map<String, dynamic>? details});
}

/// @nodoc
class __$$ModerationResultImplCopyWithImpl<$Res>
    extends _$ModerationResultCopyWithImpl<$Res, _$ModerationResultImpl>
    implements _$$ModerationResultImplCopyWith<$Res> {
  __$$ModerationResultImplCopyWithImpl(_$ModerationResultImpl _value,
      $Res Function(_$ModerationResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isApproved = null,
    Object? confidence = null,
    Object? reason = null,
    Object? details = freezed,
  }) {
    return _then(_$ModerationResultImpl(
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationResultImpl
    with DiagnosticableTreeMixin
    implements _ModerationResult {
  const _$ModerationResultImpl(
      {required this.isApproved,
      required this.confidence,
      required this.reason,
      final Map<String, dynamic>? details})
      : _details = details;

  factory _$ModerationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModerationResultImplFromJson(json);

  @override
  final bool isApproved;
  @override
  final double confidence;
  @override
  final String reason;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModerationResult(isApproved: $isApproved, confidence: $confidence, reason: $reason, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ModerationResult'))
      ..add(DiagnosticsProperty('isApproved', isApproved))
      ..add(DiagnosticsProperty('confidence', confidence))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationResultImpl &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isApproved, confidence, reason,
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationResultImplCopyWith<_$ModerationResultImpl> get copyWith =>
      __$$ModerationResultImplCopyWithImpl<_$ModerationResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationResultImplToJson(
      this,
    );
  }
}

abstract class _ModerationResult implements ModerationResult {
  const factory _ModerationResult(
      {required final bool isApproved,
      required final double confidence,
      required final String reason,
      final Map<String, dynamic>? details}) = _$ModerationResultImpl;

  factory _ModerationResult.fromJson(Map<String, dynamic> json) =
      _$ModerationResultImpl.fromJson;

  @override
  bool get isApproved;
  @override
  double get confidence;
  @override
  String get reason;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(ignore: true)
  _$$ModerationResultImplCopyWith<_$ModerationResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentReport _$ContentReportFromJson(Map<String, dynamic> json) {
  return _ContentReport.fromJson(json);
}

/// @nodoc
mixin _$ContentReport {
  String get id => throw _privateConstructorUsedError;
  String get contentId => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;
  String get reporterId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get moderatorId => throw _privateConstructorUsedError;
  String? get moderatorNotes => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentReportCopyWith<ContentReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentReportCopyWith<$Res> {
  factory $ContentReportCopyWith(
          ContentReport value, $Res Function(ContentReport) then) =
      _$ContentReportCopyWithImpl<$Res, ContentReport>;
  @useResult
  $Res call(
      {String id,
      String contentId,
      String contentType,
      String reporterId,
      String reason,
      DateTime timestamp,
      String status,
      String? moderatorId,
      String? moderatorNotes,
      DateTime? reviewedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ContentReportCopyWithImpl<$Res, $Val extends ContentReport>
    implements $ContentReportCopyWith<$Res> {
  _$ContentReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentId = null,
    Object? contentType = null,
    Object? reporterId = null,
    Object? reason = null,
    Object? timestamp = null,
    Object? status = null,
    Object? moderatorId = freezed,
    Object? moderatorNotes = freezed,
    Object? reviewedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      moderatorNotes: freezed == moderatorNotes
          ? _value.moderatorNotes
          : moderatorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentReportImplCopyWith<$Res>
    implements $ContentReportCopyWith<$Res> {
  factory _$$ContentReportImplCopyWith(
          _$ContentReportImpl value, $Res Function(_$ContentReportImpl) then) =
      __$$ContentReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String contentId,
      String contentType,
      String reporterId,
      String reason,
      DateTime timestamp,
      String status,
      String? moderatorId,
      String? moderatorNotes,
      DateTime? reviewedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ContentReportImplCopyWithImpl<$Res>
    extends _$ContentReportCopyWithImpl<$Res, _$ContentReportImpl>
    implements _$$ContentReportImplCopyWith<$Res> {
  __$$ContentReportImplCopyWithImpl(
      _$ContentReportImpl _value, $Res Function(_$ContentReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentId = null,
    Object? contentType = null,
    Object? reporterId = null,
    Object? reason = null,
    Object? timestamp = null,
    Object? status = null,
    Object? moderatorId = freezed,
    Object? moderatorNotes = freezed,
    Object? reviewedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ContentReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      moderatorNotes: freezed == moderatorNotes
          ? _value.moderatorNotes
          : moderatorNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentReportImpl
    with DiagnosticableTreeMixin
    implements _ContentReport {
  const _$ContentReportImpl(
      {required this.id,
      required this.contentId,
      required this.contentType,
      required this.reporterId,
      required this.reason,
      required this.timestamp,
      required this.status,
      this.moderatorId,
      this.moderatorNotes,
      this.reviewedAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ContentReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentReportImplFromJson(json);

  @override
  final String id;
  @override
  final String contentId;
  @override
  final String contentType;
  @override
  final String reporterId;
  @override
  final String reason;
  @override
  final DateTime timestamp;
  @override
  final String status;
  @override
  final String? moderatorId;
  @override
  final String? moderatorNotes;
  @override
  final DateTime? reviewedAt;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContentReport(id: $id, contentId: $contentId, contentType: $contentType, reporterId: $reporterId, reason: $reason, timestamp: $timestamp, status: $status, moderatorId: $moderatorId, moderatorNotes: $moderatorNotes, reviewedAt: $reviewedAt, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContentReport'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('contentId', contentId))
      ..add(DiagnosticsProperty('contentType', contentType))
      ..add(DiagnosticsProperty('reporterId', reporterId))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('moderatorId', moderatorId))
      ..add(DiagnosticsProperty('moderatorNotes', moderatorNotes))
      ..add(DiagnosticsProperty('reviewedAt', reviewedAt))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.reporterId, reporterId) ||
                other.reporterId == reporterId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.moderatorNotes, moderatorNotes) ||
                other.moderatorNotes == moderatorNotes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      contentId,
      contentType,
      reporterId,
      reason,
      timestamp,
      status,
      moderatorId,
      moderatorNotes,
      reviewedAt,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentReportImplCopyWith<_$ContentReportImpl> get copyWith =>
      __$$ContentReportImplCopyWithImpl<_$ContentReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentReportImplToJson(
      this,
    );
  }
}

abstract class _ContentReport implements ContentReport {
  const factory _ContentReport(
      {required final String id,
      required final String contentId,
      required final String contentType,
      required final String reporterId,
      required final String reason,
      required final DateTime timestamp,
      required final String status,
      final String? moderatorId,
      final String? moderatorNotes,
      final DateTime? reviewedAt,
      final Map<String, dynamic>? metadata}) = _$ContentReportImpl;

  factory _ContentReport.fromJson(Map<String, dynamic> json) =
      _$ContentReportImpl.fromJson;

  @override
  String get id;
  @override
  String get contentId;
  @override
  String get contentType;
  @override
  String get reporterId;
  @override
  String get reason;
  @override
  DateTime get timestamp;
  @override
  String get status;
  @override
  String? get moderatorId;
  @override
  String? get moderatorNotes;
  @override
  DateTime? get reviewedAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ContentReportImplCopyWith<_$ContentReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBan _$UserBanFromJson(Map<String, dynamic> json) {
  return _UserBan.fromJson(json);
}

/// @nodoc
mixin _$UserBan {
  String get userId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get bannedBy => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get liftedAt => throw _privateConstructorUsedError;
  String? get liftedBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBanCopyWith<UserBan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBanCopyWith<$Res> {
  factory $UserBanCopyWith(UserBan value, $Res Function(UserBan) then) =
      _$UserBanCopyWithImpl<$Res, UserBan>;
  @useResult
  $Res call(
      {String userId,
      String reason,
      DateTime startTime,
      DateTime endTime,
      String bannedBy,
      String? notes,
      bool isActive,
      DateTime? liftedAt,
      String? liftedBy,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UserBanCopyWithImpl<$Res, $Val extends UserBan>
    implements $UserBanCopyWith<$Res> {
  _$UserBanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? reason = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? bannedBy = null,
    Object? notes = freezed,
    Object? isActive = null,
    Object? liftedAt = freezed,
    Object? liftedBy = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bannedBy: null == bannedBy
          ? _value.bannedBy
          : bannedBy // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      liftedAt: freezed == liftedAt
          ? _value.liftedAt
          : liftedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liftedBy: freezed == liftedBy
          ? _value.liftedBy
          : liftedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBanImplCopyWith<$Res> implements $UserBanCopyWith<$Res> {
  factory _$$UserBanImplCopyWith(
          _$UserBanImpl value, $Res Function(_$UserBanImpl) then) =
      __$$UserBanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String reason,
      DateTime startTime,
      DateTime endTime,
      String bannedBy,
      String? notes,
      bool isActive,
      DateTime? liftedAt,
      String? liftedBy,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UserBanImplCopyWithImpl<$Res>
    extends _$UserBanCopyWithImpl<$Res, _$UserBanImpl>
    implements _$$UserBanImplCopyWith<$Res> {
  __$$UserBanImplCopyWithImpl(
      _$UserBanImpl _value, $Res Function(_$UserBanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? reason = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? bannedBy = null,
    Object? notes = freezed,
    Object? isActive = null,
    Object? liftedAt = freezed,
    Object? liftedBy = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UserBanImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bannedBy: null == bannedBy
          ? _value.bannedBy
          : bannedBy // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      liftedAt: freezed == liftedAt
          ? _value.liftedAt
          : liftedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liftedBy: freezed == liftedBy
          ? _value.liftedBy
          : liftedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBanImpl with DiagnosticableTreeMixin implements _UserBan {
  const _$UserBanImpl(
      {required this.userId,
      required this.reason,
      required this.startTime,
      required this.endTime,
      required this.bannedBy,
      this.notes,
      this.isActive = false,
      this.liftedAt,
      this.liftedBy,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UserBanImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBanImplFromJson(json);

  @override
  final String userId;
  @override
  final String reason;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String bannedBy;
  @override
  final String? notes;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final DateTime? liftedAt;
  @override
  final String? liftedBy;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserBan(userId: $userId, reason: $reason, startTime: $startTime, endTime: $endTime, bannedBy: $bannedBy, notes: $notes, isActive: $isActive, liftedAt: $liftedAt, liftedBy: $liftedBy, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserBan'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('endTime', endTime))
      ..add(DiagnosticsProperty('bannedBy', bannedBy))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('liftedAt', liftedAt))
      ..add(DiagnosticsProperty('liftedBy', liftedBy))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBanImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.bannedBy, bannedBy) ||
                other.bannedBy == bannedBy) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.liftedAt, liftedAt) ||
                other.liftedAt == liftedAt) &&
            (identical(other.liftedBy, liftedBy) ||
                other.liftedBy == liftedBy) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      reason,
      startTime,
      endTime,
      bannedBy,
      notes,
      isActive,
      liftedAt,
      liftedBy,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBanImplCopyWith<_$UserBanImpl> get copyWith =>
      __$$UserBanImplCopyWithImpl<_$UserBanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBanImplToJson(
      this,
    );
  }
}

abstract class _UserBan implements UserBan {
  const factory _UserBan(
      {required final String userId,
      required final String reason,
      required final DateTime startTime,
      required final DateTime endTime,
      required final String bannedBy,
      final String? notes,
      final bool isActive,
      final DateTime? liftedAt,
      final String? liftedBy,
      final Map<String, dynamic>? metadata}) = _$UserBanImpl;

  factory _UserBan.fromJson(Map<String, dynamic> json) = _$UserBanImpl.fromJson;

  @override
  String get userId;
  @override
  String get reason;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get bannedBy;
  @override
  String? get notes;
  @override
  bool get isActive;
  @override
  DateTime? get liftedAt;
  @override
  String? get liftedBy;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UserBanImplCopyWith<_$UserBanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModerationAction _$ModerationActionFromJson(Map<String, dynamic> json) {
  return _ModerationAction.fromJson(json);
}

/// @nodoc
mixin _$ModerationAction {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get targetId => throw _privateConstructorUsedError;
  String get moderatorId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModerationActionCopyWith<ModerationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationActionCopyWith<$Res> {
  factory $ModerationActionCopyWith(
          ModerationAction value, $Res Function(ModerationAction) then) =
      _$ModerationActionCopyWithImpl<$Res, ModerationAction>;
  @useResult
  $Res call(
      {String id,
      String type,
      String targetId,
      String moderatorId,
      DateTime timestamp,
      String action,
      String? reason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ModerationActionCopyWithImpl<$Res, $Val extends ModerationAction>
    implements $ModerationActionCopyWith<$Res> {
  _$ModerationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? targetId = null,
    Object? moderatorId = null,
    Object? timestamp = null,
    Object? action = null,
    Object? reason = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorId: null == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerationActionImplCopyWith<$Res>
    implements $ModerationActionCopyWith<$Res> {
  factory _$$ModerationActionImplCopyWith(_$ModerationActionImpl value,
          $Res Function(_$ModerationActionImpl) then) =
      __$$ModerationActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String targetId,
      String moderatorId,
      DateTime timestamp,
      String action,
      String? reason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ModerationActionImplCopyWithImpl<$Res>
    extends _$ModerationActionCopyWithImpl<$Res, _$ModerationActionImpl>
    implements _$$ModerationActionImplCopyWith<$Res> {
  __$$ModerationActionImplCopyWithImpl(_$ModerationActionImpl _value,
      $Res Function(_$ModerationActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? targetId = null,
    Object? moderatorId = null,
    Object? timestamp = null,
    Object? action = null,
    Object? reason = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ModerationActionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorId: null == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationActionImpl
    with DiagnosticableTreeMixin
    implements _ModerationAction {
  const _$ModerationActionImpl(
      {required this.id,
      required this.type,
      required this.targetId,
      required this.moderatorId,
      required this.timestamp,
      required this.action,
      this.reason,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ModerationActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModerationActionImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String targetId;
  @override
  final String moderatorId;
  @override
  final DateTime timestamp;
  @override
  final String action;
  @override
  final String? reason;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModerationAction(id: $id, type: $type, targetId: $targetId, moderatorId: $moderatorId, timestamp: $timestamp, action: $action, reason: $reason, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ModerationAction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('targetId', targetId))
      ..add(DiagnosticsProperty('moderatorId', moderatorId))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('action', action))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationActionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      targetId,
      moderatorId,
      timestamp,
      action,
      reason,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationActionImplCopyWith<_$ModerationActionImpl> get copyWith =>
      __$$ModerationActionImplCopyWithImpl<_$ModerationActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationActionImplToJson(
      this,
    );
  }
}

abstract class _ModerationAction implements ModerationAction {
  const factory _ModerationAction(
      {required final String id,
      required final String type,
      required final String targetId,
      required final String moderatorId,
      required final DateTime timestamp,
      required final String action,
      final String? reason,
      final Map<String, dynamic>? metadata}) = _$ModerationActionImpl;

  factory _ModerationAction.fromJson(Map<String, dynamic> json) =
      _$ModerationActionImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get targetId;
  @override
  String get moderatorId;
  @override
  DateTime get timestamp;
  @override
  String get action;
  @override
  String? get reason;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ModerationActionImplCopyWith<_$ModerationActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModerationRule _$ModerationRuleFromJson(Map<String, dynamic> json) {
  return _ModerationRule.fromJson(json);
}

/// @nodoc
mixin _$ModerationRule {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  double get severity => throw _privateConstructorUsedError;
  Map<String, dynamic>? get conditions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get actions => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  String? get updatedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModerationRuleCopyWith<ModerationRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationRuleCopyWith<$Res> {
  factory $ModerationRuleCopyWith(
          ModerationRule value, $Res Function(ModerationRule) then) =
      _$ModerationRuleCopyWithImpl<$Res, ModerationRule>;
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      String description,
      bool isActive,
      double severity,
      Map<String, dynamic>? conditions,
      Map<String, dynamic>? actions,
      DateTime? lastUpdated,
      String? updatedBy});
}

/// @nodoc
class _$ModerationRuleCopyWithImpl<$Res, $Val extends ModerationRule>
    implements $ModerationRuleCopyWith<$Res> {
  _$ModerationRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? description = null,
    Object? isActive = null,
    Object? severity = null,
    Object? conditions = freezed,
    Object? actions = freezed,
    Object? lastUpdated = freezed,
    Object? updatedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as double,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerationRuleImplCopyWith<$Res>
    implements $ModerationRuleCopyWith<$Res> {
  factory _$$ModerationRuleImplCopyWith(_$ModerationRuleImpl value,
          $Res Function(_$ModerationRuleImpl) then) =
      __$$ModerationRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      String description,
      bool isActive,
      double severity,
      Map<String, dynamic>? conditions,
      Map<String, dynamic>? actions,
      DateTime? lastUpdated,
      String? updatedBy});
}

/// @nodoc
class __$$ModerationRuleImplCopyWithImpl<$Res>
    extends _$ModerationRuleCopyWithImpl<$Res, _$ModerationRuleImpl>
    implements _$$ModerationRuleImplCopyWith<$Res> {
  __$$ModerationRuleImplCopyWithImpl(
      _$ModerationRuleImpl _value, $Res Function(_$ModerationRuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? description = null,
    Object? isActive = null,
    Object? severity = null,
    Object? conditions = freezed,
    Object? actions = freezed,
    Object? lastUpdated = freezed,
    Object? updatedBy = freezed,
  }) {
    return _then(_$ModerationRuleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as double,
      conditions: freezed == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actions: freezed == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationRuleImpl
    with DiagnosticableTreeMixin
    implements _ModerationRule {
  const _$ModerationRuleImpl(
      {required this.id,
      required this.type,
      required this.name,
      required this.description,
      required this.isActive,
      required this.severity,
      final Map<String, dynamic>? conditions,
      final Map<String, dynamic>? actions,
      this.lastUpdated,
      this.updatedBy})
      : _conditions = conditions,
        _actions = actions;

  factory _$ModerationRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModerationRuleImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool isActive;
  @override
  final double severity;
  final Map<String, dynamic>? _conditions;
  @override
  Map<String, dynamic>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableMapView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _actions;
  @override
  Map<String, dynamic>? get actions {
    final value = _actions;
    if (value == null) return null;
    if (_actions is EqualUnmodifiableMapView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? lastUpdated;
  @override
  final String? updatedBy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModerationRule(id: $id, type: $type, name: $name, description: $description, isActive: $isActive, severity: $severity, conditions: $conditions, actions: $actions, lastUpdated: $lastUpdated, updatedBy: $updatedBy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ModerationRule'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('severity', severity))
      ..add(DiagnosticsProperty('conditions', conditions))
      ..add(DiagnosticsProperty('actions', actions))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated))
      ..add(DiagnosticsProperty('updatedBy', updatedBy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationRuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      name,
      description,
      isActive,
      severity,
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_actions),
      lastUpdated,
      updatedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationRuleImplCopyWith<_$ModerationRuleImpl> get copyWith =>
      __$$ModerationRuleImplCopyWithImpl<_$ModerationRuleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationRuleImplToJson(
      this,
    );
  }
}

abstract class _ModerationRule implements ModerationRule {
  const factory _ModerationRule(
      {required final String id,
      required final String type,
      required final String name,
      required final String description,
      required final bool isActive,
      required final double severity,
      final Map<String, dynamic>? conditions,
      final Map<String, dynamic>? actions,
      final DateTime? lastUpdated,
      final String? updatedBy}) = _$ModerationRuleImpl;

  factory _ModerationRule.fromJson(Map<String, dynamic> json) =
      _$ModerationRuleImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  double get severity;
  @override
  Map<String, dynamic>? get conditions;
  @override
  Map<String, dynamic>? get actions;
  @override
  DateTime? get lastUpdated;
  @override
  String? get updatedBy;
  @override
  @JsonKey(ignore: true)
  _$$ModerationRuleImplCopyWith<_$ModerationRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AutoModerationConfig _$AutoModerationConfigFromJson(Map<String, dynamic> json) {
  return _AutoModerationConfig.fromJson(json);
}

/// @nodoc
mixin _$AutoModerationConfig {
  bool get enabled => throw _privateConstructorUsedError;
  double get confidenceThreshold => throw _privateConstructorUsedError;
  Map<String, double> get categoryThresholds =>
      throw _privateConstructorUsedError;
  List<String> get bannedWords => throw _privateConstructorUsedError;
  Map<String, String> get autoResponses => throw _privateConstructorUsedError;
  bool get notifyModerators => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customRules => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoModerationConfigCopyWith<AutoModerationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoModerationConfigCopyWith<$Res> {
  factory $AutoModerationConfigCopyWith(AutoModerationConfig value,
          $Res Function(AutoModerationConfig) then) =
      _$AutoModerationConfigCopyWithImpl<$Res, AutoModerationConfig>;
  @useResult
  $Res call(
      {bool enabled,
      double confidenceThreshold,
      Map<String, double> categoryThresholds,
      List<String> bannedWords,
      Map<String, String> autoResponses,
      bool notifyModerators,
      Map<String, dynamic>? customRules});
}

/// @nodoc
class _$AutoModerationConfigCopyWithImpl<$Res,
        $Val extends AutoModerationConfig>
    implements $AutoModerationConfigCopyWith<$Res> {
  _$AutoModerationConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? confidenceThreshold = null,
    Object? categoryThresholds = null,
    Object? bannedWords = null,
    Object? autoResponses = null,
    Object? notifyModerators = null,
    Object? customRules = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      confidenceThreshold: null == confidenceThreshold
          ? _value.confidenceThreshold
          : confidenceThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      categoryThresholds: null == categoryThresholds
          ? _value.categoryThresholds
          : categoryThresholds // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      bannedWords: null == bannedWords
          ? _value.bannedWords
          : bannedWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      autoResponses: null == autoResponses
          ? _value.autoResponses
          : autoResponses // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      notifyModerators: null == notifyModerators
          ? _value.notifyModerators
          : notifyModerators // ignore: cast_nullable_to_non_nullable
              as bool,
      customRules: freezed == customRules
          ? _value.customRules
          : customRules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoModerationConfigImplCopyWith<$Res>
    implements $AutoModerationConfigCopyWith<$Res> {
  factory _$$AutoModerationConfigImplCopyWith(_$AutoModerationConfigImpl value,
          $Res Function(_$AutoModerationConfigImpl) then) =
      __$$AutoModerationConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool enabled,
      double confidenceThreshold,
      Map<String, double> categoryThresholds,
      List<String> bannedWords,
      Map<String, String> autoResponses,
      bool notifyModerators,
      Map<String, dynamic>? customRules});
}

/// @nodoc
class __$$AutoModerationConfigImplCopyWithImpl<$Res>
    extends _$AutoModerationConfigCopyWithImpl<$Res, _$AutoModerationConfigImpl>
    implements _$$AutoModerationConfigImplCopyWith<$Res> {
  __$$AutoModerationConfigImplCopyWithImpl(_$AutoModerationConfigImpl _value,
      $Res Function(_$AutoModerationConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? confidenceThreshold = null,
    Object? categoryThresholds = null,
    Object? bannedWords = null,
    Object? autoResponses = null,
    Object? notifyModerators = null,
    Object? customRules = freezed,
  }) {
    return _then(_$AutoModerationConfigImpl(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      confidenceThreshold: null == confidenceThreshold
          ? _value.confidenceThreshold
          : confidenceThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      categoryThresholds: null == categoryThresholds
          ? _value._categoryThresholds
          : categoryThresholds // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      bannedWords: null == bannedWords
          ? _value._bannedWords
          : bannedWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      autoResponses: null == autoResponses
          ? _value._autoResponses
          : autoResponses // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      notifyModerators: null == notifyModerators
          ? _value.notifyModerators
          : notifyModerators // ignore: cast_nullable_to_non_nullable
              as bool,
      customRules: freezed == customRules
          ? _value._customRules
          : customRules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoModerationConfigImpl
    with DiagnosticableTreeMixin
    implements _AutoModerationConfig {
  const _$AutoModerationConfigImpl(
      {required this.enabled,
      required this.confidenceThreshold,
      required final Map<String, double> categoryThresholds,
      required final List<String> bannedWords,
      required final Map<String, String> autoResponses,
      this.notifyModerators = true,
      final Map<String, dynamic>? customRules})
      : _categoryThresholds = categoryThresholds,
        _bannedWords = bannedWords,
        _autoResponses = autoResponses,
        _customRules = customRules;

  factory _$AutoModerationConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoModerationConfigImplFromJson(json);

  @override
  final bool enabled;
  @override
  final double confidenceThreshold;
  final Map<String, double> _categoryThresholds;
  @override
  Map<String, double> get categoryThresholds {
    if (_categoryThresholds is EqualUnmodifiableMapView)
      return _categoryThresholds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoryThresholds);
  }

  final List<String> _bannedWords;
  @override
  List<String> get bannedWords {
    if (_bannedWords is EqualUnmodifiableListView) return _bannedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bannedWords);
  }

  final Map<String, String> _autoResponses;
  @override
  Map<String, String> get autoResponses {
    if (_autoResponses is EqualUnmodifiableMapView) return _autoResponses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_autoResponses);
  }

  @override
  @JsonKey()
  final bool notifyModerators;
  final Map<String, dynamic>? _customRules;
  @override
  Map<String, dynamic>? get customRules {
    final value = _customRules;
    if (value == null) return null;
    if (_customRules is EqualUnmodifiableMapView) return _customRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AutoModerationConfig(enabled: $enabled, confidenceThreshold: $confidenceThreshold, categoryThresholds: $categoryThresholds, bannedWords: $bannedWords, autoResponses: $autoResponses, notifyModerators: $notifyModerators, customRules: $customRules)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AutoModerationConfig'))
      ..add(DiagnosticsProperty('enabled', enabled))
      ..add(DiagnosticsProperty('confidenceThreshold', confidenceThreshold))
      ..add(DiagnosticsProperty('categoryThresholds', categoryThresholds))
      ..add(DiagnosticsProperty('bannedWords', bannedWords))
      ..add(DiagnosticsProperty('autoResponses', autoResponses))
      ..add(DiagnosticsProperty('notifyModerators', notifyModerators))
      ..add(DiagnosticsProperty('customRules', customRules));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoModerationConfigImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.confidenceThreshold, confidenceThreshold) ||
                other.confidenceThreshold == confidenceThreshold) &&
            const DeepCollectionEquality()
                .equals(other._categoryThresholds, _categoryThresholds) &&
            const DeepCollectionEquality()
                .equals(other._bannedWords, _bannedWords) &&
            const DeepCollectionEquality()
                .equals(other._autoResponses, _autoResponses) &&
            (identical(other.notifyModerators, notifyModerators) ||
                other.notifyModerators == notifyModerators) &&
            const DeepCollectionEquality()
                .equals(other._customRules, _customRules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      enabled,
      confidenceThreshold,
      const DeepCollectionEquality().hash(_categoryThresholds),
      const DeepCollectionEquality().hash(_bannedWords),
      const DeepCollectionEquality().hash(_autoResponses),
      notifyModerators,
      const DeepCollectionEquality().hash(_customRules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoModerationConfigImplCopyWith<_$AutoModerationConfigImpl>
      get copyWith =>
          __$$AutoModerationConfigImplCopyWithImpl<_$AutoModerationConfigImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoModerationConfigImplToJson(
      this,
    );
  }
}

abstract class _AutoModerationConfig implements AutoModerationConfig {
  const factory _AutoModerationConfig(
      {required final bool enabled,
      required final double confidenceThreshold,
      required final Map<String, double> categoryThresholds,
      required final List<String> bannedWords,
      required final Map<String, String> autoResponses,
      final bool notifyModerators,
      final Map<String, dynamic>? customRules}) = _$AutoModerationConfigImpl;

  factory _AutoModerationConfig.fromJson(Map<String, dynamic> json) =
      _$AutoModerationConfigImpl.fromJson;

  @override
  bool get enabled;
  @override
  double get confidenceThreshold;
  @override
  Map<String, double> get categoryThresholds;
  @override
  List<String> get bannedWords;
  @override
  Map<String, String> get autoResponses;
  @override
  bool get notifyModerators;
  @override
  Map<String, dynamic>? get customRules;
  @override
  @JsonKey(ignore: true)
  _$$AutoModerationConfigImplCopyWith<_$AutoModerationConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationStats _$ModerationStatsFromJson(Map<String, dynamic> json) {
  return _ModerationStats.fromJson(json);
}

/// @nodoc
mixin _$ModerationStats {
  String get period => throw _privateConstructorUsedError;
  int get totalReports => throw _privateConstructorUsedError;
  int get processedReports => throw _privateConstructorUsedError;
  int get pendingReports => throw _privateConstructorUsedError;
  Map<String, int> get reportTypes => throw _privateConstructorUsedError;
  Map<String, int> get actionsTaken => throw _privateConstructorUsedError;
  double get averageResponseTime => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalMetrics =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModerationStatsCopyWith<ModerationStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationStatsCopyWith<$Res> {
  factory $ModerationStatsCopyWith(
          ModerationStats value, $Res Function(ModerationStats) then) =
      _$ModerationStatsCopyWithImpl<$Res, ModerationStats>;
  @useResult
  $Res call(
      {String period,
      int totalReports,
      int processedReports,
      int pendingReports,
      Map<String, int> reportTypes,
      Map<String, int> actionsTaken,
      double averageResponseTime,
      Map<String, dynamic>? additionalMetrics});
}

/// @nodoc
class _$ModerationStatsCopyWithImpl<$Res, $Val extends ModerationStats>
    implements $ModerationStatsCopyWith<$Res> {
  _$ModerationStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? totalReports = null,
    Object? processedReports = null,
    Object? pendingReports = null,
    Object? reportTypes = null,
    Object? actionsTaken = null,
    Object? averageResponseTime = null,
    Object? additionalMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      totalReports: null == totalReports
          ? _value.totalReports
          : totalReports // ignore: cast_nullable_to_non_nullable
              as int,
      processedReports: null == processedReports
          ? _value.processedReports
          : processedReports // ignore: cast_nullable_to_non_nullable
              as int,
      pendingReports: null == pendingReports
          ? _value.pendingReports
          : pendingReports // ignore: cast_nullable_to_non_nullable
              as int,
      reportTypes: null == reportTypes
          ? _value.reportTypes
          : reportTypes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      actionsTaken: null == actionsTaken
          ? _value.actionsTaken
          : actionsTaken // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageResponseTime: null == averageResponseTime
          ? _value.averageResponseTime
          : averageResponseTime // ignore: cast_nullable_to_non_nullable
              as double,
      additionalMetrics: freezed == additionalMetrics
          ? _value.additionalMetrics
          : additionalMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerationStatsImplCopyWith<$Res>
    implements $ModerationStatsCopyWith<$Res> {
  factory _$$ModerationStatsImplCopyWith(_$ModerationStatsImpl value,
          $Res Function(_$ModerationStatsImpl) then) =
      __$$ModerationStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String period,
      int totalReports,
      int processedReports,
      int pendingReports,
      Map<String, int> reportTypes,
      Map<String, int> actionsTaken,
      double averageResponseTime,
      Map<String, dynamic>? additionalMetrics});
}

/// @nodoc
class __$$ModerationStatsImplCopyWithImpl<$Res>
    extends _$ModerationStatsCopyWithImpl<$Res, _$ModerationStatsImpl>
    implements _$$ModerationStatsImplCopyWith<$Res> {
  __$$ModerationStatsImplCopyWithImpl(
      _$ModerationStatsImpl _value, $Res Function(_$ModerationStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? totalReports = null,
    Object? processedReports = null,
    Object? pendingReports = null,
    Object? reportTypes = null,
    Object? actionsTaken = null,
    Object? averageResponseTime = null,
    Object? additionalMetrics = freezed,
  }) {
    return _then(_$ModerationStatsImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      totalReports: null == totalReports
          ? _value.totalReports
          : totalReports // ignore: cast_nullable_to_non_nullable
              as int,
      processedReports: null == processedReports
          ? _value.processedReports
          : processedReports // ignore: cast_nullable_to_non_nullable
              as int,
      pendingReports: null == pendingReports
          ? _value.pendingReports
          : pendingReports // ignore: cast_nullable_to_non_nullable
              as int,
      reportTypes: null == reportTypes
          ? _value._reportTypes
          : reportTypes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      actionsTaken: null == actionsTaken
          ? _value._actionsTaken
          : actionsTaken // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageResponseTime: null == averageResponseTime
          ? _value.averageResponseTime
          : averageResponseTime // ignore: cast_nullable_to_non_nullable
              as double,
      additionalMetrics: freezed == additionalMetrics
          ? _value._additionalMetrics
          : additionalMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationStatsImpl
    with DiagnosticableTreeMixin
    implements _ModerationStats {
  const _$ModerationStatsImpl(
      {required this.period,
      required this.totalReports,
      required this.processedReports,
      required this.pendingReports,
      required final Map<String, int> reportTypes,
      required final Map<String, int> actionsTaken,
      required this.averageResponseTime,
      final Map<String, dynamic>? additionalMetrics})
      : _reportTypes = reportTypes,
        _actionsTaken = actionsTaken,
        _additionalMetrics = additionalMetrics;

  factory _$ModerationStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModerationStatsImplFromJson(json);

  @override
  final String period;
  @override
  final int totalReports;
  @override
  final int processedReports;
  @override
  final int pendingReports;
  final Map<String, int> _reportTypes;
  @override
  Map<String, int> get reportTypes {
    if (_reportTypes is EqualUnmodifiableMapView) return _reportTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reportTypes);
  }

  final Map<String, int> _actionsTaken;
  @override
  Map<String, int> get actionsTaken {
    if (_actionsTaken is EqualUnmodifiableMapView) return _actionsTaken;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_actionsTaken);
  }

  @override
  final double averageResponseTime;
  final Map<String, dynamic>? _additionalMetrics;
  @override
  Map<String, dynamic>? get additionalMetrics {
    final value = _additionalMetrics;
    if (value == null) return null;
    if (_additionalMetrics is EqualUnmodifiableMapView)
      return _additionalMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModerationStats(period: $period, totalReports: $totalReports, processedReports: $processedReports, pendingReports: $pendingReports, reportTypes: $reportTypes, actionsTaken: $actionsTaken, averageResponseTime: $averageResponseTime, additionalMetrics: $additionalMetrics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ModerationStats'))
      ..add(DiagnosticsProperty('period', period))
      ..add(DiagnosticsProperty('totalReports', totalReports))
      ..add(DiagnosticsProperty('processedReports', processedReports))
      ..add(DiagnosticsProperty('pendingReports', pendingReports))
      ..add(DiagnosticsProperty('reportTypes', reportTypes))
      ..add(DiagnosticsProperty('actionsTaken', actionsTaken))
      ..add(DiagnosticsProperty('averageResponseTime', averageResponseTime))
      ..add(DiagnosticsProperty('additionalMetrics', additionalMetrics));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationStatsImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.totalReports, totalReports) ||
                other.totalReports == totalReports) &&
            (identical(other.processedReports, processedReports) ||
                other.processedReports == processedReports) &&
            (identical(other.pendingReports, pendingReports) ||
                other.pendingReports == pendingReports) &&
            const DeepCollectionEquality()
                .equals(other._reportTypes, _reportTypes) &&
            const DeepCollectionEquality()
                .equals(other._actionsTaken, _actionsTaken) &&
            (identical(other.averageResponseTime, averageResponseTime) ||
                other.averageResponseTime == averageResponseTime) &&
            const DeepCollectionEquality()
                .equals(other._additionalMetrics, _additionalMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      period,
      totalReports,
      processedReports,
      pendingReports,
      const DeepCollectionEquality().hash(_reportTypes),
      const DeepCollectionEquality().hash(_actionsTaken),
      averageResponseTime,
      const DeepCollectionEquality().hash(_additionalMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationStatsImplCopyWith<_$ModerationStatsImpl> get copyWith =>
      __$$ModerationStatsImplCopyWithImpl<_$ModerationStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationStatsImplToJson(
      this,
    );
  }
}

abstract class _ModerationStats implements ModerationStats {
  const factory _ModerationStats(
      {required final String period,
      required final int totalReports,
      required final int processedReports,
      required final int pendingReports,
      required final Map<String, int> reportTypes,
      required final Map<String, int> actionsTaken,
      required final double averageResponseTime,
      final Map<String, dynamic>? additionalMetrics}) = _$ModerationStatsImpl;

  factory _ModerationStats.fromJson(Map<String, dynamic> json) =
      _$ModerationStatsImpl.fromJson;

  @override
  String get period;
  @override
  int get totalReports;
  @override
  int get processedReports;
  @override
  int get pendingReports;
  @override
  Map<String, int> get reportTypes;
  @override
  Map<String, int> get actionsTaken;
  @override
  double get averageResponseTime;
  @override
  Map<String, dynamic>? get additionalMetrics;
  @override
  @JsonKey(ignore: true)
  _$$ModerationStatsImplCopyWith<_$ModerationStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModerationQueue _$ModerationQueueFromJson(Map<String, dynamic> json) {
  return _ModerationQueue.fromJson(json);
}

/// @nodoc
mixin _$ModerationQueue {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get moderatorIds => throw _privateConstructorUsedError;
  List<String> get contentTypes => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  Map<String, dynamic> get rules => throw _privateConstructorUsedError;
  int get currentSize => throw _privateConstructorUsedError;
  DateTime? get lastProcessed => throw _privateConstructorUsedError;
  Map<String, dynamic>? get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModerationQueueCopyWith<ModerationQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationQueueCopyWith<$Res> {
  factory $ModerationQueueCopyWith(
          ModerationQueue value, $Res Function(ModerationQueue) then) =
      _$ModerationQueueCopyWithImpl<$Res, ModerationQueue>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> moderatorIds,
      List<String> contentTypes,
      int priority,
      Map<String, dynamic> rules,
      int currentSize,
      DateTime? lastProcessed,
      Map<String, dynamic>? settings});
}

/// @nodoc
class _$ModerationQueueCopyWithImpl<$Res, $Val extends ModerationQueue>
    implements $ModerationQueueCopyWith<$Res> {
  _$ModerationQueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? moderatorIds = null,
    Object? contentTypes = null,
    Object? priority = null,
    Object? rules = null,
    Object? currentSize = null,
    Object? lastProcessed = freezed,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorIds: null == moderatorIds
          ? _value.moderatorIds
          : moderatorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contentTypes: null == contentTypes
          ? _value.contentTypes
          : contentTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      currentSize: null == currentSize
          ? _value.currentSize
          : currentSize // ignore: cast_nullable_to_non_nullable
              as int,
      lastProcessed: freezed == lastProcessed
          ? _value.lastProcessed
          : lastProcessed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerationQueueImplCopyWith<$Res>
    implements $ModerationQueueCopyWith<$Res> {
  factory _$$ModerationQueueImplCopyWith(_$ModerationQueueImpl value,
          $Res Function(_$ModerationQueueImpl) then) =
      __$$ModerationQueueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String> moderatorIds,
      List<String> contentTypes,
      int priority,
      Map<String, dynamic> rules,
      int currentSize,
      DateTime? lastProcessed,
      Map<String, dynamic>? settings});
}

/// @nodoc
class __$$ModerationQueueImplCopyWithImpl<$Res>
    extends _$ModerationQueueCopyWithImpl<$Res, _$ModerationQueueImpl>
    implements _$$ModerationQueueImplCopyWith<$Res> {
  __$$ModerationQueueImplCopyWithImpl(
      _$ModerationQueueImpl _value, $Res Function(_$ModerationQueueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? moderatorIds = null,
    Object? contentTypes = null,
    Object? priority = null,
    Object? rules = null,
    Object? currentSize = null,
    Object? lastProcessed = freezed,
    Object? settings = freezed,
  }) {
    return _then(_$ModerationQueueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorIds: null == moderatorIds
          ? _value._moderatorIds
          : moderatorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contentTypes: null == contentTypes
          ? _value._contentTypes
          : contentTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      currentSize: null == currentSize
          ? _value.currentSize
          : currentSize // ignore: cast_nullable_to_non_nullable
              as int,
      lastProcessed: freezed == lastProcessed
          ? _value.lastProcessed
          : lastProcessed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      settings: freezed == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationQueueImpl
    with DiagnosticableTreeMixin
    implements _ModerationQueue {
  const _$ModerationQueueImpl(
      {required this.id,
      required this.name,
      required final List<String> moderatorIds,
      required final List<String> contentTypes,
      required this.priority,
      required final Map<String, dynamic> rules,
      this.currentSize = 0,
      this.lastProcessed,
      final Map<String, dynamic>? settings})
      : _moderatorIds = moderatorIds,
        _contentTypes = contentTypes,
        _rules = rules,
        _settings = settings;

  factory _$ModerationQueueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModerationQueueImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _moderatorIds;
  @override
  List<String> get moderatorIds {
    if (_moderatorIds is EqualUnmodifiableListView) return _moderatorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderatorIds);
  }

  final List<String> _contentTypes;
  @override
  List<String> get contentTypes {
    if (_contentTypes is EqualUnmodifiableListView) return _contentTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contentTypes);
  }

  @override
  final int priority;
  final Map<String, dynamic> _rules;
  @override
  Map<String, dynamic> get rules {
    if (_rules is EqualUnmodifiableMapView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rules);
  }

  @override
  @JsonKey()
  final int currentSize;
  @override
  final DateTime? lastProcessed;
  final Map<String, dynamic>? _settings;
  @override
  Map<String, dynamic>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModerationQueue(id: $id, name: $name, moderatorIds: $moderatorIds, contentTypes: $contentTypes, priority: $priority, rules: $rules, currentSize: $currentSize, lastProcessed: $lastProcessed, settings: $settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ModerationQueue'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('moderatorIds', moderatorIds))
      ..add(DiagnosticsProperty('contentTypes', contentTypes))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('rules', rules))
      ..add(DiagnosticsProperty('currentSize', currentSize))
      ..add(DiagnosticsProperty('lastProcessed', lastProcessed))
      ..add(DiagnosticsProperty('settings', settings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationQueueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._moderatorIds, _moderatorIds) &&
            const DeepCollectionEquality()
                .equals(other._contentTypes, _contentTypes) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            (identical(other.currentSize, currentSize) ||
                other.currentSize == currentSize) &&
            (identical(other.lastProcessed, lastProcessed) ||
                other.lastProcessed == lastProcessed) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_moderatorIds),
      const DeepCollectionEquality().hash(_contentTypes),
      priority,
      const DeepCollectionEquality().hash(_rules),
      currentSize,
      lastProcessed,
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationQueueImplCopyWith<_$ModerationQueueImpl> get copyWith =>
      __$$ModerationQueueImplCopyWithImpl<_$ModerationQueueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationQueueImplToJson(
      this,
    );
  }
}

abstract class _ModerationQueue implements ModerationQueue {
  const factory _ModerationQueue(
      {required final String id,
      required final String name,
      required final List<String> moderatorIds,
      required final List<String> contentTypes,
      required final int priority,
      required final Map<String, dynamic> rules,
      final int currentSize,
      final DateTime? lastProcessed,
      final Map<String, dynamic>? settings}) = _$ModerationQueueImpl;

  factory _ModerationQueue.fromJson(Map<String, dynamic> json) =
      _$ModerationQueueImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get moderatorIds;
  @override
  List<String> get contentTypes;
  @override
  int get priority;
  @override
  Map<String, dynamic> get rules;
  @override
  int get currentSize;
  @override
  DateTime? get lastProcessed;
  @override
  Map<String, dynamic>? get settings;
  @override
  @JsonKey(ignore: true)
  _$$ModerationQueueImplCopyWith<_$ModerationQueueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
