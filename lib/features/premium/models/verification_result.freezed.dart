// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationResult _$VerificationResultFromJson(Map<String, dynamic> json) {
  return _VerificationResult.fromJson(json);
}

/// @nodoc
mixin _$VerificationResult {
  bool get isValid => throw _privateConstructorUsedError;
  bool get measurementVerified => throw _privateConstructorUsedError;
  bool get imageVerified => throw _privateConstructorUsedError;
  bool get locationVerified => throw _privateConstructorUsedError;
  bool get timeVerified => throw _privateConstructorUsedError;
  DateTime get verificationTimestamp => throw _privateConstructorUsedError;
  Map<String, dynamic>? get details => throw _privateConstructorUsedError;
  String? get certificationHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationResultCopyWith<VerificationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResultCopyWith<$Res> {
  factory $VerificationResultCopyWith(
          VerificationResult value, $Res Function(VerificationResult) then) =
      _$VerificationResultCopyWithImpl<$Res, VerificationResult>;
  @useResult
  $Res call(
      {bool isValid,
      bool measurementVerified,
      bool imageVerified,
      bool locationVerified,
      bool timeVerified,
      DateTime verificationTimestamp,
      Map<String, dynamic>? details,
      String? certificationHash});
}

/// @nodoc
class _$VerificationResultCopyWithImpl<$Res, $Val extends VerificationResult>
    implements $VerificationResultCopyWith<$Res> {
  _$VerificationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? measurementVerified = null,
    Object? imageVerified = null,
    Object? locationVerified = null,
    Object? timeVerified = null,
    Object? verificationTimestamp = null,
    Object? details = freezed,
    Object? certificationHash = freezed,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      measurementVerified: null == measurementVerified
          ? _value.measurementVerified
          : measurementVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      imageVerified: null == imageVerified
          ? _value.imageVerified
          : imageVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      locationVerified: null == locationVerified
          ? _value.locationVerified
          : locationVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      timeVerified: null == timeVerified
          ? _value.timeVerified
          : timeVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationTimestamp: null == verificationTimestamp
          ? _value.verificationTimestamp
          : verificationTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      certificationHash: freezed == certificationHash
          ? _value.certificationHash
          : certificationHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationResultImplCopyWith<$Res>
    implements $VerificationResultCopyWith<$Res> {
  factory _$$VerificationResultImplCopyWith(_$VerificationResultImpl value,
          $Res Function(_$VerificationResultImpl) then) =
      __$$VerificationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isValid,
      bool measurementVerified,
      bool imageVerified,
      bool locationVerified,
      bool timeVerified,
      DateTime verificationTimestamp,
      Map<String, dynamic>? details,
      String? certificationHash});
}

/// @nodoc
class __$$VerificationResultImplCopyWithImpl<$Res>
    extends _$VerificationResultCopyWithImpl<$Res, _$VerificationResultImpl>
    implements _$$VerificationResultImplCopyWith<$Res> {
  __$$VerificationResultImplCopyWithImpl(_$VerificationResultImpl _value,
      $Res Function(_$VerificationResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? measurementVerified = null,
    Object? imageVerified = null,
    Object? locationVerified = null,
    Object? timeVerified = null,
    Object? verificationTimestamp = null,
    Object? details = freezed,
    Object? certificationHash = freezed,
  }) {
    return _then(_$VerificationResultImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      measurementVerified: null == measurementVerified
          ? _value.measurementVerified
          : measurementVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      imageVerified: null == imageVerified
          ? _value.imageVerified
          : imageVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      locationVerified: null == locationVerified
          ? _value.locationVerified
          : locationVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      timeVerified: null == timeVerified
          ? _value.timeVerified
          : timeVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationTimestamp: null == verificationTimestamp
          ? _value.verificationTimestamp
          : verificationTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      certificationHash: freezed == certificationHash
          ? _value.certificationHash
          : certificationHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationResultImpl implements _VerificationResult {
  const _$VerificationResultImpl(
      {required this.isValid,
      required this.measurementVerified,
      required this.imageVerified,
      required this.locationVerified,
      required this.timeVerified,
      required this.verificationTimestamp,
      final Map<String, dynamic>? details,
      this.certificationHash})
      : _details = details;

  factory _$VerificationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationResultImplFromJson(json);

  @override
  final bool isValid;
  @override
  final bool measurementVerified;
  @override
  final bool imageVerified;
  @override
  final bool locationVerified;
  @override
  final bool timeVerified;
  @override
  final DateTime verificationTimestamp;
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
  final String? certificationHash;

  @override
  String toString() {
    return 'VerificationResult(isValid: $isValid, measurementVerified: $measurementVerified, imageVerified: $imageVerified, locationVerified: $locationVerified, timeVerified: $timeVerified, verificationTimestamp: $verificationTimestamp, details: $details, certificationHash: $certificationHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationResultImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.measurementVerified, measurementVerified) ||
                other.measurementVerified == measurementVerified) &&
            (identical(other.imageVerified, imageVerified) ||
                other.imageVerified == imageVerified) &&
            (identical(other.locationVerified, locationVerified) ||
                other.locationVerified == locationVerified) &&
            (identical(other.timeVerified, timeVerified) ||
                other.timeVerified == timeVerified) &&
            (identical(other.verificationTimestamp, verificationTimestamp) ||
                other.verificationTimestamp == verificationTimestamp) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.certificationHash, certificationHash) ||
                other.certificationHash == certificationHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isValid,
      measurementVerified,
      imageVerified,
      locationVerified,
      timeVerified,
      verificationTimestamp,
      const DeepCollectionEquality().hash(_details),
      certificationHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationResultImplCopyWith<_$VerificationResultImpl> get copyWith =>
      __$$VerificationResultImplCopyWithImpl<_$VerificationResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationResultImplToJson(
      this,
    );
  }
}

abstract class _VerificationResult implements VerificationResult {
  const factory _VerificationResult(
      {required final bool isValid,
      required final bool measurementVerified,
      required final bool imageVerified,
      required final bool locationVerified,
      required final bool timeVerified,
      required final DateTime verificationTimestamp,
      final Map<String, dynamic>? details,
      final String? certificationHash}) = _$VerificationResultImpl;

  factory _VerificationResult.fromJson(Map<String, dynamic> json) =
      _$VerificationResultImpl.fromJson;

  @override
  bool get isValid;
  @override
  bool get measurementVerified;
  @override
  bool get imageVerified;
  @override
  bool get locationVerified;
  @override
  bool get timeVerified;
  @override
  DateTime get verificationTimestamp;
  @override
  Map<String, dynamic>? get details;
  @override
  String? get certificationHash;
  @override
  @JsonKey(ignore: true)
  _$$VerificationResultImplCopyWith<_$VerificationResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
