// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuth _$UserAuthFromJson(Map<String, dynamic> json) {
  return _UserAuth.fromJson(json);
}

/// @nodoc
mixin _$UserAuth {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  bool get isMfaEnabled => throw _privateConstructorUsedError;
  List<String> get mfaMethods => throw _privateConstructorUsedError;
  List<String> get linkedSocialAccounts => throw _privateConstructorUsedError;
  DateTime get lastLogin => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthCopyWith<UserAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthCopyWith<$Res> {
  factory $UserAuthCopyWith(UserAuth value, $Res Function(UserAuth) then) =
      _$UserAuthCopyWithImpl<$Res, UserAuth>;
  @useResult
  $Res call(
      {String id,
      String email,
      bool isEmailVerified,
      bool isMfaEnabled,
      List<String> mfaMethods,
      List<String> linkedSocialAccounts,
      DateTime lastLogin,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$UserAuthCopyWithImpl<$Res, $Val extends UserAuth>
    implements $UserAuthCopyWith<$Res> {
  _$UserAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? isEmailVerified = null,
    Object? isMfaEnabled = null,
    Object? mfaMethods = null,
    Object? linkedSocialAccounts = null,
    Object? lastLogin = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isMfaEnabled: null == isMfaEnabled
          ? _value.isMfaEnabled
          : isMfaEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mfaMethods: null == mfaMethods
          ? _value.mfaMethods
          : mfaMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      linkedSocialAccounts: null == linkedSocialAccounts
          ? _value.linkedSocialAccounts
          : linkedSocialAccounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastLogin: null == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthImplCopyWith<$Res>
    implements $UserAuthCopyWith<$Res> {
  factory _$$UserAuthImplCopyWith(
          _$UserAuthImpl value, $Res Function(_$UserAuthImpl) then) =
      __$$UserAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      bool isEmailVerified,
      bool isMfaEnabled,
      List<String> mfaMethods,
      List<String> linkedSocialAccounts,
      DateTime lastLogin,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$UserAuthImplCopyWithImpl<$Res>
    extends _$UserAuthCopyWithImpl<$Res, _$UserAuthImpl>
    implements _$$UserAuthImplCopyWith<$Res> {
  __$$UserAuthImplCopyWithImpl(
      _$UserAuthImpl _value, $Res Function(_$UserAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? isEmailVerified = null,
    Object? isMfaEnabled = null,
    Object? mfaMethods = null,
    Object? linkedSocialAccounts = null,
    Object? lastLogin = null,
    Object? metadata = null,
  }) {
    return _then(_$UserAuthImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isMfaEnabled: null == isMfaEnabled
          ? _value.isMfaEnabled
          : isMfaEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mfaMethods: null == mfaMethods
          ? _value._mfaMethods
          : mfaMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      linkedSocialAccounts: null == linkedSocialAccounts
          ? _value._linkedSocialAccounts
          : linkedSocialAccounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastLogin: null == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthImpl with DiagnosticableTreeMixin implements _UserAuth {
  const _$UserAuthImpl(
      {required this.id,
      required this.email,
      required this.isEmailVerified,
      required this.isMfaEnabled,
      required final List<String> mfaMethods,
      required final List<String> linkedSocialAccounts,
      required this.lastLogin,
      required final Map<String, dynamic> metadata})
      : _mfaMethods = mfaMethods,
        _linkedSocialAccounts = linkedSocialAccounts,
        _metadata = metadata;

  factory _$UserAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final bool isEmailVerified;
  @override
  final bool isMfaEnabled;
  final List<String> _mfaMethods;
  @override
  List<String> get mfaMethods {
    if (_mfaMethods is EqualUnmodifiableListView) return _mfaMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mfaMethods);
  }

  final List<String> _linkedSocialAccounts;
  @override
  List<String> get linkedSocialAccounts {
    if (_linkedSocialAccounts is EqualUnmodifiableListView)
      return _linkedSocialAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkedSocialAccounts);
  }

  @override
  final DateTime lastLogin;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserAuth(id: $id, email: $email, isEmailVerified: $isEmailVerified, isMfaEnabled: $isMfaEnabled, mfaMethods: $mfaMethods, linkedSocialAccounts: $linkedSocialAccounts, lastLogin: $lastLogin, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAuth'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('isEmailVerified', isEmailVerified))
      ..add(DiagnosticsProperty('isMfaEnabled', isMfaEnabled))
      ..add(DiagnosticsProperty('mfaMethods', mfaMethods))
      ..add(DiagnosticsProperty('linkedSocialAccounts', linkedSocialAccounts))
      ..add(DiagnosticsProperty('lastLogin', lastLogin))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isMfaEnabled, isMfaEnabled) ||
                other.isMfaEnabled == isMfaEnabled) &&
            const DeepCollectionEquality()
                .equals(other._mfaMethods, _mfaMethods) &&
            const DeepCollectionEquality()
                .equals(other._linkedSocialAccounts, _linkedSocialAccounts) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      isEmailVerified,
      isMfaEnabled,
      const DeepCollectionEquality().hash(_mfaMethods),
      const DeepCollectionEquality().hash(_linkedSocialAccounts),
      lastLogin,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthImplCopyWith<_$UserAuthImpl> get copyWith =>
      __$$UserAuthImplCopyWithImpl<_$UserAuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthImplToJson(
      this,
    );
  }
}

abstract class _UserAuth implements UserAuth {
  const factory _UserAuth(
      {required final String id,
      required final String email,
      required final bool isEmailVerified,
      required final bool isMfaEnabled,
      required final List<String> mfaMethods,
      required final List<String> linkedSocialAccounts,
      required final DateTime lastLogin,
      required final Map<String, dynamic> metadata}) = _$UserAuthImpl;

  factory _UserAuth.fromJson(Map<String, dynamic> json) =
      _$UserAuthImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  bool get isEmailVerified;
  @override
  bool get isMfaEnabled;
  @override
  List<String> get mfaMethods;
  @override
  List<String> get linkedSocialAccounts;
  @override
  DateTime get lastLogin;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UserAuthImplCopyWith<_$UserAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MfaMethod _$MfaMethodFromJson(Map<String, dynamic> json) {
  return _MfaMethod.fromJson(json);
}

/// @nodoc
mixin _$MfaMethod {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastUsed => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MfaMethodCopyWith<MfaMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MfaMethodCopyWith<$Res> {
  factory $MfaMethodCopyWith(MfaMethod value, $Res Function(MfaMethod) then) =
      _$MfaMethodCopyWithImpl<$Res, MfaMethod>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String type,
      bool isEnabled,
      DateTime createdAt,
      DateTime lastUsed,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$MfaMethodCopyWithImpl<$Res, $Val extends MfaMethod>
    implements $MfaMethodCopyWith<$Res> {
  _$MfaMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? isEnabled = null,
    Object? createdAt = null,
    Object? lastUsed = null,
    Object? metadata = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUsed: null == lastUsed
          ? _value.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MfaMethodImplCopyWith<$Res>
    implements $MfaMethodCopyWith<$Res> {
  factory _$$MfaMethodImplCopyWith(
          _$MfaMethodImpl value, $Res Function(_$MfaMethodImpl) then) =
      __$$MfaMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String type,
      bool isEnabled,
      DateTime createdAt,
      DateTime lastUsed,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$MfaMethodImplCopyWithImpl<$Res>
    extends _$MfaMethodCopyWithImpl<$Res, _$MfaMethodImpl>
    implements _$$MfaMethodImplCopyWith<$Res> {
  __$$MfaMethodImplCopyWithImpl(
      _$MfaMethodImpl _value, $Res Function(_$MfaMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? isEnabled = null,
    Object? createdAt = null,
    Object? lastUsed = null,
    Object? metadata = null,
  }) {
    return _then(_$MfaMethodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUsed: null == lastUsed
          ? _value.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MfaMethodImpl with DiagnosticableTreeMixin implements _MfaMethod {
  const _$MfaMethodImpl(
      {required this.id,
      required this.userId,
      required this.type,
      required this.isEnabled,
      required this.createdAt,
      required this.lastUsed,
      required final Map<String, dynamic> metadata})
      : _metadata = metadata;

  factory _$MfaMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$MfaMethodImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String type;
  @override
  final bool isEnabled;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastUsed;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MfaMethod(id: $id, userId: $userId, type: $type, isEnabled: $isEnabled, createdAt: $createdAt, lastUsed: $lastUsed, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MfaMethod'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('isEnabled', isEnabled))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('lastUsed', lastUsed))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MfaMethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastUsed, lastUsed) ||
                other.lastUsed == lastUsed) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, type, isEnabled,
      createdAt, lastUsed, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MfaMethodImplCopyWith<_$MfaMethodImpl> get copyWith =>
      __$$MfaMethodImplCopyWithImpl<_$MfaMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MfaMethodImplToJson(
      this,
    );
  }
}

abstract class _MfaMethod implements MfaMethod {
  const factory _MfaMethod(
      {required final String id,
      required final String userId,
      required final String type,
      required final bool isEnabled,
      required final DateTime createdAt,
      required final DateTime lastUsed,
      required final Map<String, dynamic> metadata}) = _$MfaMethodImpl;

  factory _MfaMethod.fromJson(Map<String, dynamic> json) =
      _$MfaMethodImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get type;
  @override
  bool get isEnabled;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastUsed;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$MfaMethodImplCopyWith<_$MfaMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSession _$UserSessionFromJson(Map<String, dynamic> json) {
  return _UserSession.fromJson(json);
}

/// @nodoc
mixin _$UserSession {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get ipAddress => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSessionCopyWith<UserSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSessionCopyWith<$Res> {
  factory $UserSessionCopyWith(
          UserSession value, $Res Function(UserSession) then) =
      _$UserSessionCopyWithImpl<$Res, UserSession>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String deviceId,
      String ipAddress,
      DateTime createdAt,
      DateTime expiresAt,
      bool isActive,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$UserSessionCopyWithImpl<$Res, $Val extends UserSession>
    implements $UserSessionCopyWith<$Res> {
  _$UserSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? deviceId = null,
    Object? ipAddress = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? isActive = null,
    Object? metadata = null,
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
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSessionImplCopyWith<$Res>
    implements $UserSessionCopyWith<$Res> {
  factory _$$UserSessionImplCopyWith(
          _$UserSessionImpl value, $Res Function(_$UserSessionImpl) then) =
      __$$UserSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String deviceId,
      String ipAddress,
      DateTime createdAt,
      DateTime expiresAt,
      bool isActive,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$UserSessionImplCopyWithImpl<$Res>
    extends _$UserSessionCopyWithImpl<$Res, _$UserSessionImpl>
    implements _$$UserSessionImplCopyWith<$Res> {
  __$$UserSessionImplCopyWithImpl(
      _$UserSessionImpl _value, $Res Function(_$UserSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? deviceId = null,
    Object? ipAddress = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? isActive = null,
    Object? metadata = null,
  }) {
    return _then(_$UserSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSessionImpl with DiagnosticableTreeMixin implements _UserSession {
  const _$UserSessionImpl(
      {required this.id,
      required this.userId,
      required this.deviceId,
      required this.ipAddress,
      required this.createdAt,
      required this.expiresAt,
      required this.isActive,
      required final Map<String, dynamic> metadata})
      : _metadata = metadata;

  factory _$UserSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSessionImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String deviceId;
  @override
  final String ipAddress;
  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final bool isActive;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserSession(id: $id, userId: $userId, deviceId: $deviceId, ipAddress: $ipAddress, createdAt: $createdAt, expiresAt: $expiresAt, isActive: $isActive, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserSession'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('ipAddress', ipAddress))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('expiresAt', expiresAt))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      deviceId,
      ipAddress,
      createdAt,
      expiresAt,
      isActive,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSessionImplCopyWith<_$UserSessionImpl> get copyWith =>
      __$$UserSessionImplCopyWithImpl<_$UserSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSessionImplToJson(
      this,
    );
  }
}

abstract class _UserSession implements UserSession {
  const factory _UserSession(
      {required final String id,
      required final String userId,
      required final String deviceId,
      required final String ipAddress,
      required final DateTime createdAt,
      required final DateTime expiresAt,
      required final bool isActive,
      required final Map<String, dynamic> metadata}) = _$UserSessionImpl;

  factory _UserSession.fromJson(Map<String, dynamic> json) =
      _$UserSessionImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get deviceId;
  @override
  String get ipAddress;
  @override
  DateTime get createdAt;
  @override
  DateTime get expiresAt;
  @override
  bool get isActive;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UserSessionImplCopyWith<_$UserSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PasswordPolicy _$PasswordPolicyFromJson(Map<String, dynamic> json) {
  return _PasswordPolicy.fromJson(json);
}

/// @nodoc
mixin _$PasswordPolicy {
  int get minLength => throw _privateConstructorUsedError;
  bool get requireUppercase => throw _privateConstructorUsedError;
  bool get requireLowercase => throw _privateConstructorUsedError;
  bool get requireNumbers => throw _privateConstructorUsedError;
  bool get requireSpecialChars => throw _privateConstructorUsedError;
  int get maxAge => throw _privateConstructorUsedError;
  int get historyCount => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordPolicyCopyWith<PasswordPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordPolicyCopyWith<$Res> {
  factory $PasswordPolicyCopyWith(
          PasswordPolicy value, $Res Function(PasswordPolicy) then) =
      _$PasswordPolicyCopyWithImpl<$Res, PasswordPolicy>;
  @useResult
  $Res call(
      {int minLength,
      bool requireUppercase,
      bool requireLowercase,
      bool requireNumbers,
      bool requireSpecialChars,
      int maxAge,
      int historyCount,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$PasswordPolicyCopyWithImpl<$Res, $Val extends PasswordPolicy>
    implements $PasswordPolicyCopyWith<$Res> {
  _$PasswordPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLength = null,
    Object? requireUppercase = null,
    Object? requireLowercase = null,
    Object? requireNumbers = null,
    Object? requireSpecialChars = null,
    Object? maxAge = null,
    Object? historyCount = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      minLength: null == minLength
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int,
      requireUppercase: null == requireUppercase
          ? _value.requireUppercase
          : requireUppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      requireLowercase: null == requireLowercase
          ? _value.requireLowercase
          : requireLowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      requireNumbers: null == requireNumbers
          ? _value.requireNumbers
          : requireNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      requireSpecialChars: null == requireSpecialChars
          ? _value.requireSpecialChars
          : requireSpecialChars // ignore: cast_nullable_to_non_nullable
              as bool,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
      historyCount: null == historyCount
          ? _value.historyCount
          : historyCount // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordPolicyImplCopyWith<$Res>
    implements $PasswordPolicyCopyWith<$Res> {
  factory _$$PasswordPolicyImplCopyWith(_$PasswordPolicyImpl value,
          $Res Function(_$PasswordPolicyImpl) then) =
      __$$PasswordPolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int minLength,
      bool requireUppercase,
      bool requireLowercase,
      bool requireNumbers,
      bool requireSpecialChars,
      int maxAge,
      int historyCount,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$PasswordPolicyImplCopyWithImpl<$Res>
    extends _$PasswordPolicyCopyWithImpl<$Res, _$PasswordPolicyImpl>
    implements _$$PasswordPolicyImplCopyWith<$Res> {
  __$$PasswordPolicyImplCopyWithImpl(
      _$PasswordPolicyImpl _value, $Res Function(_$PasswordPolicyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLength = null,
    Object? requireUppercase = null,
    Object? requireLowercase = null,
    Object? requireNumbers = null,
    Object? requireSpecialChars = null,
    Object? maxAge = null,
    Object? historyCount = null,
    Object? metadata = null,
  }) {
    return _then(_$PasswordPolicyImpl(
      minLength: null == minLength
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int,
      requireUppercase: null == requireUppercase
          ? _value.requireUppercase
          : requireUppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      requireLowercase: null == requireLowercase
          ? _value.requireLowercase
          : requireLowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      requireNumbers: null == requireNumbers
          ? _value.requireNumbers
          : requireNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      requireSpecialChars: null == requireSpecialChars
          ? _value.requireSpecialChars
          : requireSpecialChars // ignore: cast_nullable_to_non_nullable
              as bool,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
      historyCount: null == historyCount
          ? _value.historyCount
          : historyCount // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordPolicyImpl
    with DiagnosticableTreeMixin
    implements _PasswordPolicy {
  const _$PasswordPolicyImpl(
      {required this.minLength,
      required this.requireUppercase,
      required this.requireLowercase,
      required this.requireNumbers,
      required this.requireSpecialChars,
      required this.maxAge,
      required this.historyCount,
      required final Map<String, dynamic> metadata})
      : _metadata = metadata;

  factory _$PasswordPolicyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordPolicyImplFromJson(json);

  @override
  final int minLength;
  @override
  final bool requireUppercase;
  @override
  final bool requireLowercase;
  @override
  final bool requireNumbers;
  @override
  final bool requireSpecialChars;
  @override
  final int maxAge;
  @override
  final int historyCount;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordPolicy(minLength: $minLength, requireUppercase: $requireUppercase, requireLowercase: $requireLowercase, requireNumbers: $requireNumbers, requireSpecialChars: $requireSpecialChars, maxAge: $maxAge, historyCount: $historyCount, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasswordPolicy'))
      ..add(DiagnosticsProperty('minLength', minLength))
      ..add(DiagnosticsProperty('requireUppercase', requireUppercase))
      ..add(DiagnosticsProperty('requireLowercase', requireLowercase))
      ..add(DiagnosticsProperty('requireNumbers', requireNumbers))
      ..add(DiagnosticsProperty('requireSpecialChars', requireSpecialChars))
      ..add(DiagnosticsProperty('maxAge', maxAge))
      ..add(DiagnosticsProperty('historyCount', historyCount))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordPolicyImpl &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength) &&
            (identical(other.requireUppercase, requireUppercase) ||
                other.requireUppercase == requireUppercase) &&
            (identical(other.requireLowercase, requireLowercase) ||
                other.requireLowercase == requireLowercase) &&
            (identical(other.requireNumbers, requireNumbers) ||
                other.requireNumbers == requireNumbers) &&
            (identical(other.requireSpecialChars, requireSpecialChars) ||
                other.requireSpecialChars == requireSpecialChars) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge) &&
            (identical(other.historyCount, historyCount) ||
                other.historyCount == historyCount) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      minLength,
      requireUppercase,
      requireLowercase,
      requireNumbers,
      requireSpecialChars,
      maxAge,
      historyCount,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordPolicyImplCopyWith<_$PasswordPolicyImpl> get copyWith =>
      __$$PasswordPolicyImplCopyWithImpl<_$PasswordPolicyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordPolicyImplToJson(
      this,
    );
  }
}

abstract class _PasswordPolicy implements PasswordPolicy {
  const factory _PasswordPolicy(
      {required final int minLength,
      required final bool requireUppercase,
      required final bool requireLowercase,
      required final bool requireNumbers,
      required final bool requireSpecialChars,
      required final int maxAge,
      required final int historyCount,
      required final Map<String, dynamic> metadata}) = _$PasswordPolicyImpl;

  factory _PasswordPolicy.fromJson(Map<String, dynamic> json) =
      _$PasswordPolicyImpl.fromJson;

  @override
  int get minLength;
  @override
  bool get requireUppercase;
  @override
  bool get requireLowercase;
  @override
  bool get requireNumbers;
  @override
  bool get requireSpecialChars;
  @override
  int get maxAge;
  @override
  int get historyCount;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PasswordPolicyImplCopyWith<_$PasswordPolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecoveryOption _$RecoveryOptionFromJson(Map<String, dynamic> json) {
  return _RecoveryOption.fromJson(json);
}

/// @nodoc
mixin _$RecoveryOption {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get lastUsed => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecoveryOptionCopyWith<RecoveryOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryOptionCopyWith<$Res> {
  factory $RecoveryOptionCopyWith(
          RecoveryOption value, $Res Function(RecoveryOption) then) =
      _$RecoveryOptionCopyWithImpl<$Res, RecoveryOption>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String type,
      String value,
      bool isVerified,
      DateTime createdAt,
      DateTime? lastUsed,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$RecoveryOptionCopyWithImpl<$Res, $Val extends RecoveryOption>
    implements $RecoveryOptionCopyWith<$Res> {
  _$RecoveryOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? value = null,
    Object? isVerified = null,
    Object? createdAt = null,
    Object? lastUsed = freezed,
    Object? metadata = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUsed: freezed == lastUsed
          ? _value.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecoveryOptionImplCopyWith<$Res>
    implements $RecoveryOptionCopyWith<$Res> {
  factory _$$RecoveryOptionImplCopyWith(_$RecoveryOptionImpl value,
          $Res Function(_$RecoveryOptionImpl) then) =
      __$$RecoveryOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String type,
      String value,
      bool isVerified,
      DateTime createdAt,
      DateTime? lastUsed,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$RecoveryOptionImplCopyWithImpl<$Res>
    extends _$RecoveryOptionCopyWithImpl<$Res, _$RecoveryOptionImpl>
    implements _$$RecoveryOptionImplCopyWith<$Res> {
  __$$RecoveryOptionImplCopyWithImpl(
      _$RecoveryOptionImpl _value, $Res Function(_$RecoveryOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? value = null,
    Object? isVerified = null,
    Object? createdAt = null,
    Object? lastUsed = freezed,
    Object? metadata = null,
  }) {
    return _then(_$RecoveryOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUsed: freezed == lastUsed
          ? _value.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecoveryOptionImpl
    with DiagnosticableTreeMixin
    implements _RecoveryOption {
  const _$RecoveryOptionImpl(
      {required this.id,
      required this.userId,
      required this.type,
      required this.value,
      required this.isVerified,
      required this.createdAt,
      required this.lastUsed,
      required final Map<String, dynamic> metadata})
      : _metadata = metadata;

  factory _$RecoveryOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecoveryOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String type;
  @override
  final String value;
  @override
  final bool isVerified;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastUsed;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecoveryOption(id: $id, userId: $userId, type: $type, value: $value, isVerified: $isVerified, createdAt: $createdAt, lastUsed: $lastUsed, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecoveryOption'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('isVerified', isVerified))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('lastUsed', lastUsed))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastUsed, lastUsed) ||
                other.lastUsed == lastUsed) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      type,
      value,
      isVerified,
      createdAt,
      lastUsed,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoveryOptionImplCopyWith<_$RecoveryOptionImpl> get copyWith =>
      __$$RecoveryOptionImplCopyWithImpl<_$RecoveryOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecoveryOptionImplToJson(
      this,
    );
  }
}

abstract class _RecoveryOption implements RecoveryOption {
  const factory _RecoveryOption(
      {required final String id,
      required final String userId,
      required final String type,
      required final String value,
      required final bool isVerified,
      required final DateTime createdAt,
      required final DateTime? lastUsed,
      required final Map<String, dynamic> metadata}) = _$RecoveryOptionImpl;

  factory _RecoveryOption.fromJson(Map<String, dynamic> json) =
      _$RecoveryOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get type;
  @override
  String get value;
  @override
  bool get isVerified;
  @override
  DateTime get createdAt;
  @override
  DateTime? get lastUsed;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$RecoveryOptionImplCopyWith<_$RecoveryOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginAttempt _$LoginAttemptFromJson(Map<String, dynamic> json) {
  return _LoginAttempt.fromJson(json);
}

/// @nodoc
mixin _$LoginAttempt {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get ipAddress => throw _privateConstructorUsedError;
  String get deviceInfo => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  String get failureReason => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginAttemptCopyWith<LoginAttempt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginAttemptCopyWith<$Res> {
  factory $LoginAttemptCopyWith(
          LoginAttempt value, $Res Function(LoginAttempt) then) =
      _$LoginAttemptCopyWithImpl<$Res, LoginAttempt>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String ipAddress,
      String deviceInfo,
      bool isSuccessful,
      String failureReason,
      DateTime timestamp,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$LoginAttemptCopyWithImpl<$Res, $Val extends LoginAttempt>
    implements $LoginAttemptCopyWith<$Res> {
  _$LoginAttemptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? ipAddress = null,
    Object? deviceInfo = null,
    Object? isSuccessful = null,
    Object? failureReason = null,
    Object? timestamp = null,
    Object? metadata = null,
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
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      failureReason: null == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginAttemptImplCopyWith<$Res>
    implements $LoginAttemptCopyWith<$Res> {
  factory _$$LoginAttemptImplCopyWith(
          _$LoginAttemptImpl value, $Res Function(_$LoginAttemptImpl) then) =
      __$$LoginAttemptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String ipAddress,
      String deviceInfo,
      bool isSuccessful,
      String failureReason,
      DateTime timestamp,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$LoginAttemptImplCopyWithImpl<$Res>
    extends _$LoginAttemptCopyWithImpl<$Res, _$LoginAttemptImpl>
    implements _$$LoginAttemptImplCopyWith<$Res> {
  __$$LoginAttemptImplCopyWithImpl(
      _$LoginAttemptImpl _value, $Res Function(_$LoginAttemptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? ipAddress = null,
    Object? deviceInfo = null,
    Object? isSuccessful = null,
    Object? failureReason = null,
    Object? timestamp = null,
    Object? metadata = null,
  }) {
    return _then(_$LoginAttemptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      failureReason: null == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginAttemptImpl with DiagnosticableTreeMixin implements _LoginAttempt {
  const _$LoginAttemptImpl(
      {required this.id,
      required this.userId,
      required this.ipAddress,
      required this.deviceInfo,
      required this.isSuccessful,
      required this.failureReason,
      required this.timestamp,
      required final Map<String, dynamic> metadata})
      : _metadata = metadata;

  factory _$LoginAttemptImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginAttemptImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String ipAddress;
  @override
  final String deviceInfo;
  @override
  final bool isSuccessful;
  @override
  final String failureReason;
  @override
  final DateTime timestamp;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginAttempt(id: $id, userId: $userId, ipAddress: $ipAddress, deviceInfo: $deviceInfo, isSuccessful: $isSuccessful, failureReason: $failureReason, timestamp: $timestamp, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginAttempt'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('ipAddress', ipAddress))
      ..add(DiagnosticsProperty('deviceInfo', deviceInfo))
      ..add(DiagnosticsProperty('isSuccessful', isSuccessful))
      ..add(DiagnosticsProperty('failureReason', failureReason))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginAttemptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      ipAddress,
      deviceInfo,
      isSuccessful,
      failureReason,
      timestamp,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginAttemptImplCopyWith<_$LoginAttemptImpl> get copyWith =>
      __$$LoginAttemptImplCopyWithImpl<_$LoginAttemptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginAttemptImplToJson(
      this,
    );
  }
}

abstract class _LoginAttempt implements LoginAttempt {
  const factory _LoginAttempt(
      {required final String id,
      required final String userId,
      required final String ipAddress,
      required final String deviceInfo,
      required final bool isSuccessful,
      required final String failureReason,
      required final DateTime timestamp,
      required final Map<String, dynamic> metadata}) = _$LoginAttemptImpl;

  factory _LoginAttempt.fromJson(Map<String, dynamic> json) =
      _$LoginAttemptImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get ipAddress;
  @override
  String get deviceInfo;
  @override
  bool get isSuccessful;
  @override
  String get failureReason;
  @override
  DateTime get timestamp;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$LoginAttemptImplCopyWith<_$LoginAttemptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
