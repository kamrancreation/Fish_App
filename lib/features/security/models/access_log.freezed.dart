// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccessLog _$AccessLogFromJson(Map<String, dynamic> json) {
  return _AccessLog.fromJson(json);
}

/// @nodoc
mixin _$AccessLog {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get resource => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get deviceInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessLogCopyWith<AccessLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessLogCopyWith<$Res> {
  factory $AccessLogCopyWith(AccessLog value, $Res Function(AccessLog) then) =
      _$AccessLogCopyWithImpl<$Res, AccessLog>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String resource,
      String action,
      DateTime timestamp,
      bool success,
      String? errorMessage,
      Map<String, dynamic>? metadata,
      String? ipAddress,
      String? deviceInfo});
}

/// @nodoc
class _$AccessLogCopyWithImpl<$Res, $Val extends AccessLog>
    implements $AccessLogCopyWith<$Res> {
  _$AccessLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? resource = null,
    Object? action = null,
    Object? timestamp = null,
    Object? success = null,
    Object? errorMessage = freezed,
    Object? metadata = freezed,
    Object? ipAddress = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessLogImplCopyWith<$Res>
    implements $AccessLogCopyWith<$Res> {
  factory _$$AccessLogImplCopyWith(
          _$AccessLogImpl value, $Res Function(_$AccessLogImpl) then) =
      __$$AccessLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String resource,
      String action,
      DateTime timestamp,
      bool success,
      String? errorMessage,
      Map<String, dynamic>? metadata,
      String? ipAddress,
      String? deviceInfo});
}

/// @nodoc
class __$$AccessLogImplCopyWithImpl<$Res>
    extends _$AccessLogCopyWithImpl<$Res, _$AccessLogImpl>
    implements _$$AccessLogImplCopyWith<$Res> {
  __$$AccessLogImplCopyWithImpl(
      _$AccessLogImpl _value, $Res Function(_$AccessLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? resource = null,
    Object? action = null,
    Object? timestamp = null,
    Object? success = null,
    Object? errorMessage = freezed,
    Object? metadata = freezed,
    Object? ipAddress = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_$AccessLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessLogImpl implements _AccessLog {
  const _$AccessLogImpl(
      {required this.id,
      required this.userId,
      required this.resource,
      required this.action,
      required this.timestamp,
      required this.success,
      this.errorMessage,
      final Map<String, dynamic>? metadata,
      this.ipAddress,
      this.deviceInfo})
      : _metadata = metadata;

  factory _$AccessLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessLogImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String resource;
  @override
  final String action;
  @override
  final DateTime timestamp;
  @override
  final bool success;
  @override
  final String? errorMessage;
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
  final String? ipAddress;
  @override
  final String? deviceInfo;

  @override
  String toString() {
    return 'AccessLog(id: $id, userId: $userId, resource: $resource, action: $action, timestamp: $timestamp, success: $success, errorMessage: $errorMessage, metadata: $metadata, ipAddress: $ipAddress, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      resource,
      action,
      timestamp,
      success,
      errorMessage,
      const DeepCollectionEquality().hash(_metadata),
      ipAddress,
      deviceInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessLogImplCopyWith<_$AccessLogImpl> get copyWith =>
      __$$AccessLogImplCopyWithImpl<_$AccessLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessLogImplToJson(
      this,
    );
  }
}

abstract class _AccessLog implements AccessLog {
  const factory _AccessLog(
      {required final String id,
      required final String userId,
      required final String resource,
      required final String action,
      required final DateTime timestamp,
      required final bool success,
      final String? errorMessage,
      final Map<String, dynamic>? metadata,
      final String? ipAddress,
      final String? deviceInfo}) = _$AccessLogImpl;

  factory _AccessLog.fromJson(Map<String, dynamic> json) =
      _$AccessLogImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get resource;
  @override
  String get action;
  @override
  DateTime get timestamp;
  @override
  bool get success;
  @override
  String? get errorMessage;
  @override
  Map<String, dynamic>? get metadata;
  @override
  String? get ipAddress;
  @override
  String? get deviceInfo;
  @override
  @JsonKey(ignore: true)
  _$$AccessLogImplCopyWith<_$AccessLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
