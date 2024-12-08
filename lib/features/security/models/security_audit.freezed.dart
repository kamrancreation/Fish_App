// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_audit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecurityAudit _$SecurityAuditFromJson(Map<String, dynamic> json) {
  return _SecurityAudit.fromJson(json);
}

/// @nodoc
mixin _$SecurityAudit {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;
  String get initiatedBy => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Map<String, dynamic>? get results => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityAuditCopyWith<SecurityAudit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityAuditCopyWith<$Res> {
  factory $SecurityAuditCopyWith(
          SecurityAudit value, $Res Function(SecurityAudit) then) =
      _$SecurityAuditCopyWithImpl<$Res, SecurityAudit>;
  @useResult
  $Res call(
      {String id,
      String type,
      String description,
      Map<String, dynamic> parameters,
      String initiatedBy,
      DateTime startTime,
      String? status,
      Map<String, dynamic>? results,
      String? errorMessage,
      DateTime? endTime});
}

/// @nodoc
class _$SecurityAuditCopyWithImpl<$Res, $Val extends SecurityAudit>
    implements $SecurityAuditCopyWith<$Res> {
  _$SecurityAuditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? description = null,
    Object? parameters = null,
    Object? initiatedBy = null,
    Object? startTime = null,
    Object? status = freezed,
    Object? results = freezed,
    Object? errorMessage = freezed,
    Object? endTime = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      initiatedBy: null == initiatedBy
          ? _value.initiatedBy
          : initiatedBy // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecurityAuditImplCopyWith<$Res>
    implements $SecurityAuditCopyWith<$Res> {
  factory _$$SecurityAuditImplCopyWith(
          _$SecurityAuditImpl value, $Res Function(_$SecurityAuditImpl) then) =
      __$$SecurityAuditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String description,
      Map<String, dynamic> parameters,
      String initiatedBy,
      DateTime startTime,
      String? status,
      Map<String, dynamic>? results,
      String? errorMessage,
      DateTime? endTime});
}

/// @nodoc
class __$$SecurityAuditImplCopyWithImpl<$Res>
    extends _$SecurityAuditCopyWithImpl<$Res, _$SecurityAuditImpl>
    implements _$$SecurityAuditImplCopyWith<$Res> {
  __$$SecurityAuditImplCopyWithImpl(
      _$SecurityAuditImpl _value, $Res Function(_$SecurityAuditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? description = null,
    Object? parameters = null,
    Object? initiatedBy = null,
    Object? startTime = null,
    Object? status = freezed,
    Object? results = freezed,
    Object? errorMessage = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$SecurityAuditImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      initiatedBy: null == initiatedBy
          ? _value.initiatedBy
          : initiatedBy // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityAuditImpl implements _SecurityAudit {
  const _$SecurityAuditImpl(
      {required this.id,
      required this.type,
      required this.description,
      required final Map<String, dynamic> parameters,
      required this.initiatedBy,
      required this.startTime,
      this.status,
      final Map<String, dynamic>? results,
      this.errorMessage,
      this.endTime})
      : _parameters = parameters,
        _results = results;

  factory _$SecurityAuditImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityAuditImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String description;
  final Map<String, dynamic> _parameters;
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  final String initiatedBy;
  @override
  final DateTime startTime;
  @override
  final String? status;
  final Map<String, dynamic>? _results;
  @override
  Map<String, dynamic>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableMapView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? errorMessage;
  @override
  final DateTime? endTime;

  @override
  String toString() {
    return 'SecurityAudit(id: $id, type: $type, description: $description, parameters: $parameters, initiatedBy: $initiatedBy, startTime: $startTime, status: $status, results: $results, errorMessage: $errorMessage, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityAuditImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.initiatedBy, initiatedBy) ||
                other.initiatedBy == initiatedBy) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      description,
      const DeepCollectionEquality().hash(_parameters),
      initiatedBy,
      startTime,
      status,
      const DeepCollectionEquality().hash(_results),
      errorMessage,
      endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityAuditImplCopyWith<_$SecurityAuditImpl> get copyWith =>
      __$$SecurityAuditImplCopyWithImpl<_$SecurityAuditImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityAuditImplToJson(
      this,
    );
  }
}

abstract class _SecurityAudit implements SecurityAudit {
  const factory _SecurityAudit(
      {required final String id,
      required final String type,
      required final String description,
      required final Map<String, dynamic> parameters,
      required final String initiatedBy,
      required final DateTime startTime,
      final String? status,
      final Map<String, dynamic>? results,
      final String? errorMessage,
      final DateTime? endTime}) = _$SecurityAuditImpl;

  factory _SecurityAudit.fromJson(Map<String, dynamic> json) =
      _$SecurityAuditImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get description;
  @override
  Map<String, dynamic> get parameters;
  @override
  String get initiatedBy;
  @override
  DateTime get startTime;
  @override
  String? get status;
  @override
  Map<String, dynamic>? get results;
  @override
  String? get errorMessage;
  @override
  DateTime? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$SecurityAuditImplCopyWith<_$SecurityAuditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
