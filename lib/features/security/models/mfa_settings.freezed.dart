// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mfa_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MfaSettings _$MfaSettingsFromJson(Map<String, dynamic> json) {
  return _MfaSettings.fromJson(json);
}

/// @nodoc
mixin _$MfaSettings {
  String get userId => throw _privateConstructorUsedError;
  String get secret => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  List<String> get backupCodes => throw _privateConstructorUsedError;
  String? get lastVerified => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MfaSettingsCopyWith<MfaSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MfaSettingsCopyWith<$Res> {
  factory $MfaSettingsCopyWith(
          MfaSettings value, $Res Function(MfaSettings) then) =
      _$MfaSettingsCopyWithImpl<$Res, MfaSettings>;
  @useResult
  $Res call(
      {String userId,
      String secret,
      bool enabled,
      List<String> backupCodes,
      String? lastVerified,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$MfaSettingsCopyWithImpl<$Res, $Val extends MfaSettings>
    implements $MfaSettingsCopyWith<$Res> {
  _$MfaSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? secret = null,
    Object? enabled = null,
    Object? backupCodes = null,
    Object? lastVerified = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      backupCodes: null == backupCodes
          ? _value.backupCodes
          : backupCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastVerified: freezed == lastVerified
          ? _value.lastVerified
          : lastVerified // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MfaSettingsImplCopyWith<$Res>
    implements $MfaSettingsCopyWith<$Res> {
  factory _$$MfaSettingsImplCopyWith(
          _$MfaSettingsImpl value, $Res Function(_$MfaSettingsImpl) then) =
      __$$MfaSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String secret,
      bool enabled,
      List<String> backupCodes,
      String? lastVerified,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$MfaSettingsImplCopyWithImpl<$Res>
    extends _$MfaSettingsCopyWithImpl<$Res, _$MfaSettingsImpl>
    implements _$$MfaSettingsImplCopyWith<$Res> {
  __$$MfaSettingsImplCopyWithImpl(
      _$MfaSettingsImpl _value, $Res Function(_$MfaSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? secret = null,
    Object? enabled = null,
    Object? backupCodes = null,
    Object? lastVerified = freezed,
    Object? metadata = null,
  }) {
    return _then(_$MfaSettingsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      backupCodes: null == backupCodes
          ? _value._backupCodes
          : backupCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastVerified: freezed == lastVerified
          ? _value.lastVerified
          : lastVerified // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MfaSettingsImpl implements _MfaSettings {
  const _$MfaSettingsImpl(
      {required this.userId,
      this.secret = '',
      this.enabled = false,
      final List<String> backupCodes = const [],
      this.lastVerified,
      final Map<String, dynamic> metadata = const {}})
      : _backupCodes = backupCodes,
        _metadata = metadata;

  factory _$MfaSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MfaSettingsImplFromJson(json);

  @override
  final String userId;
  @override
  @JsonKey()
  final String secret;
  @override
  @JsonKey()
  final bool enabled;
  final List<String> _backupCodes;
  @override
  @JsonKey()
  List<String> get backupCodes {
    if (_backupCodes is EqualUnmodifiableListView) return _backupCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backupCodes);
  }

  @override
  final String? lastVerified;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'MfaSettings(userId: $userId, secret: $secret, enabled: $enabled, backupCodes: $backupCodes, lastVerified: $lastVerified, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MfaSettingsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._backupCodes, _backupCodes) &&
            (identical(other.lastVerified, lastVerified) ||
                other.lastVerified == lastVerified) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      secret,
      enabled,
      const DeepCollectionEquality().hash(_backupCodes),
      lastVerified,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MfaSettingsImplCopyWith<_$MfaSettingsImpl> get copyWith =>
      __$$MfaSettingsImplCopyWithImpl<_$MfaSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MfaSettingsImplToJson(
      this,
    );
  }
}

abstract class _MfaSettings implements MfaSettings {
  const factory _MfaSettings(
      {required final String userId,
      final String secret,
      final bool enabled,
      final List<String> backupCodes,
      final String? lastVerified,
      final Map<String, dynamic> metadata}) = _$MfaSettingsImpl;

  factory _MfaSettings.fromJson(Map<String, dynamic> json) =
      _$MfaSettingsImpl.fromJson;

  @override
  String get userId;
  @override
  String get secret;
  @override
  bool get enabled;
  @override
  List<String> get backupCodes;
  @override
  String? get lastVerified;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$MfaSettingsImplCopyWith<_$MfaSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
