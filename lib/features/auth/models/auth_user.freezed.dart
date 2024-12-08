// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthUser _$AuthUserFromJson(Map<String, dynamic> json) {
  return _AuthUser.fromJson(json);
}

/// @nodoc
mixin _$AuthUser {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastLoginAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  bool get isMfaEnabled => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  Map<String, bool> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserCopyWith<AuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserCopyWith<$Res> {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) then) =
      _$AuthUserCopyWithImpl<$Res, AuthUser>;
  @useResult
  $Res call(
      {String id,
      String email,
      String displayName,
      String? photoUrl,
      bool emailVerified,
      String? phoneNumber,
      DateTime createdAt,
      DateTime lastLoginAt,
      Map<String, dynamic> metadata,
      bool isMfaEnabled,
      List<String> roles,
      Map<String, bool> permissions});
}

/// @nodoc
class _$AuthUserCopyWithImpl<$Res, $Val extends AuthUser>
    implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoUrl = freezed,
    Object? emailVerified = null,
    Object? phoneNumber = freezed,
    Object? createdAt = null,
    Object? lastLoginAt = null,
    Object? metadata = null,
    Object? isMfaEnabled = null,
    Object? roles = null,
    Object? permissions = null,
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
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: null == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isMfaEnabled: null == isMfaEnabled
          ? _value.isMfaEnabled
          : isMfaEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserImplCopyWith<$Res>
    implements $AuthUserCopyWith<$Res> {
  factory _$$AuthUserImplCopyWith(
          _$AuthUserImpl value, $Res Function(_$AuthUserImpl) then) =
      __$$AuthUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String displayName,
      String? photoUrl,
      bool emailVerified,
      String? phoneNumber,
      DateTime createdAt,
      DateTime lastLoginAt,
      Map<String, dynamic> metadata,
      bool isMfaEnabled,
      List<String> roles,
      Map<String, bool> permissions});
}

/// @nodoc
class __$$AuthUserImplCopyWithImpl<$Res>
    extends _$AuthUserCopyWithImpl<$Res, _$AuthUserImpl>
    implements _$$AuthUserImplCopyWith<$Res> {
  __$$AuthUserImplCopyWithImpl(
      _$AuthUserImpl _value, $Res Function(_$AuthUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoUrl = freezed,
    Object? emailVerified = null,
    Object? phoneNumber = freezed,
    Object? createdAt = null,
    Object? lastLoginAt = null,
    Object? metadata = null,
    Object? isMfaEnabled = null,
    Object? roles = null,
    Object? permissions = null,
  }) {
    return _then(_$AuthUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: null == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isMfaEnabled: null == isMfaEnabled
          ? _value.isMfaEnabled
          : isMfaEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserImpl with DiagnosticableTreeMixin implements _AuthUser {
  const _$AuthUserImpl(
      {required this.id,
      required this.email,
      required this.displayName,
      this.photoUrl,
      required this.emailVerified,
      this.phoneNumber,
      required this.createdAt,
      required this.lastLoginAt,
      final Map<String, dynamic> metadata = const {},
      this.isMfaEnabled = false,
      final List<String> roles = const [],
      final Map<String, bool> permissions = const {}})
      : _metadata = metadata,
        _roles = roles,
        _permissions = permissions;

  factory _$AuthUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUserImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? photoUrl;
  @override
  final bool emailVerified;
  @override
  final String? phoneNumber;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastLoginAt;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  @JsonKey()
  final bool isMfaEnabled;
  final List<String> _roles;
  @override
  @JsonKey()
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  final Map<String, bool> _permissions;
  @override
  @JsonKey()
  Map<String, bool> get permissions {
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_permissions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthUser(id: $id, email: $email, displayName: $displayName, photoUrl: $photoUrl, emailVerified: $emailVerified, phoneNumber: $phoneNumber, createdAt: $createdAt, lastLoginAt: $lastLoginAt, metadata: $metadata, isMfaEnabled: $isMfaEnabled, roles: $roles, permissions: $permissions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('emailVerified', emailVerified))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('lastLoginAt', lastLoginAt))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('isMfaEnabled', isMfaEnabled))
      ..add(DiagnosticsProperty('roles', roles))
      ..add(DiagnosticsProperty('permissions', permissions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isMfaEnabled, isMfaEnabled) ||
                other.isMfaEnabled == isMfaEnabled) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      displayName,
      photoUrl,
      emailVerified,
      phoneNumber,
      createdAt,
      lastLoginAt,
      const DeepCollectionEquality().hash(_metadata),
      isMfaEnabled,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserImplCopyWith<_$AuthUserImpl> get copyWith =>
      __$$AuthUserImplCopyWithImpl<_$AuthUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserImplToJson(
      this,
    );
  }
}

abstract class _AuthUser implements AuthUser {
  const factory _AuthUser(
      {required final String id,
      required final String email,
      required final String displayName,
      final String? photoUrl,
      required final bool emailVerified,
      final String? phoneNumber,
      required final DateTime createdAt,
      required final DateTime lastLoginAt,
      final Map<String, dynamic> metadata,
      final bool isMfaEnabled,
      final List<String> roles,
      final Map<String, bool> permissions}) = _$AuthUserImpl;

  factory _AuthUser.fromJson(Map<String, dynamic> json) =
      _$AuthUserImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get photoUrl;
  @override
  bool get emailVerified;
  @override
  String? get phoneNumber;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastLoginAt;
  @override
  Map<String, dynamic> get metadata;
  @override
  bool get isMfaEnabled;
  @override
  List<String> get roles;
  @override
  Map<String, bool> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$AuthUserImplCopyWith<_$AuthUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthSession _$AuthSessionFromJson(Map<String, dynamic> json) {
  return _AuthSession.fromJson(json);
}

/// @nodoc
mixin _$AuthSession {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get deviceInfo => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  String get ipAddress => throw _privateConstructorUsedError;
  String get userAgent => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthSessionCopyWith<AuthSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSessionCopyWith<$Res> {
  factory $AuthSessionCopyWith(
          AuthSession value, $Res Function(AuthSession) then) =
      _$AuthSessionCopyWithImpl<$Res, AuthSession>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String deviceId,
      String deviceInfo,
      DateTime createdAt,
      DateTime expiresAt,
      String ipAddress,
      String userAgent,
      Map<String, dynamic> metadata,
      bool isActive});
}

/// @nodoc
class _$AuthSessionCopyWithImpl<$Res, $Val extends AuthSession>
    implements $AuthSessionCopyWith<$Res> {
  _$AuthSessionCopyWithImpl(this._value, this._then);

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
    Object? deviceInfo = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? ipAddress = null,
    Object? userAgent = null,
    Object? metadata = null,
    Object? isActive = null,
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
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthSessionImplCopyWith<$Res>
    implements $AuthSessionCopyWith<$Res> {
  factory _$$AuthSessionImplCopyWith(
          _$AuthSessionImpl value, $Res Function(_$AuthSessionImpl) then) =
      __$$AuthSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String deviceId,
      String deviceInfo,
      DateTime createdAt,
      DateTime expiresAt,
      String ipAddress,
      String userAgent,
      Map<String, dynamic> metadata,
      bool isActive});
}

/// @nodoc
class __$$AuthSessionImplCopyWithImpl<$Res>
    extends _$AuthSessionCopyWithImpl<$Res, _$AuthSessionImpl>
    implements _$$AuthSessionImplCopyWith<$Res> {
  __$$AuthSessionImplCopyWithImpl(
      _$AuthSessionImpl _value, $Res Function(_$AuthSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? deviceId = null,
    Object? deviceInfo = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? ipAddress = null,
    Object? userAgent = null,
    Object? metadata = null,
    Object? isActive = null,
  }) {
    return _then(_$AuthSessionImpl(
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
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthSessionImpl with DiagnosticableTreeMixin implements _AuthSession {
  const _$AuthSessionImpl(
      {required this.id,
      required this.userId,
      required this.deviceId,
      required this.deviceInfo,
      required this.createdAt,
      required this.expiresAt,
      required this.ipAddress,
      required this.userAgent,
      final Map<String, dynamic> metadata = const {},
      this.isActive = true})
      : _metadata = metadata;

  factory _$AuthSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthSessionImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String deviceId;
  @override
  final String deviceInfo;
  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final String ipAddress;
  @override
  final String userAgent;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthSession(id: $id, userId: $userId, deviceId: $deviceId, deviceInfo: $deviceInfo, createdAt: $createdAt, expiresAt: $expiresAt, ipAddress: $ipAddress, userAgent: $userAgent, metadata: $metadata, isActive: $isActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthSession'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('deviceInfo', deviceInfo))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('expiresAt', expiresAt))
      ..add(DiagnosticsProperty('ipAddress', ipAddress))
      ..add(DiagnosticsProperty('userAgent', userAgent))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('isActive', isActive));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      deviceId,
      deviceInfo,
      createdAt,
      expiresAt,
      ipAddress,
      userAgent,
      const DeepCollectionEquality().hash(_metadata),
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSessionImplCopyWith<_$AuthSessionImpl> get copyWith =>
      __$$AuthSessionImplCopyWithImpl<_$AuthSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthSessionImplToJson(
      this,
    );
  }
}

abstract class _AuthSession implements AuthSession {
  const factory _AuthSession(
      {required final String id,
      required final String userId,
      required final String deviceId,
      required final String deviceInfo,
      required final DateTime createdAt,
      required final DateTime expiresAt,
      required final String ipAddress,
      required final String userAgent,
      final Map<String, dynamic> metadata,
      final bool isActive}) = _$AuthSessionImpl;

  factory _AuthSession.fromJson(Map<String, dynamic> json) =
      _$AuthSessionImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get deviceId;
  @override
  String get deviceInfo;
  @override
  DateTime get createdAt;
  @override
  DateTime get expiresAt;
  @override
  String get ipAddress;
  @override
  String get userAgent;
  @override
  Map<String, dynamic> get metadata;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$AuthSessionImplCopyWith<_$AuthSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) {
  return _AuthToken.fromJson(json);
}

/// @nodoc
mixin _$AuthToken {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  Map<String, dynamic> get claims => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokenCopyWith<AuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenCopyWith<$Res> {
  factory $AuthTokenCopyWith(AuthToken value, $Res Function(AuthToken) then) =
      _$AuthTokenCopyWithImpl<$Res, AuthToken>;
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      DateTime expiresAt,
      String tokenType,
      Map<String, dynamic> claims});
}

/// @nodoc
class _$AuthTokenCopyWithImpl<$Res, $Val extends AuthToken>
    implements $AuthTokenCopyWith<$Res> {
  _$AuthTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresAt = null,
    Object? tokenType = null,
    Object? claims = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      claims: null == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthTokenImplCopyWith<$Res>
    implements $AuthTokenCopyWith<$Res> {
  factory _$$AuthTokenImplCopyWith(
          _$AuthTokenImpl value, $Res Function(_$AuthTokenImpl) then) =
      __$$AuthTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      DateTime expiresAt,
      String tokenType,
      Map<String, dynamic> claims});
}

/// @nodoc
class __$$AuthTokenImplCopyWithImpl<$Res>
    extends _$AuthTokenCopyWithImpl<$Res, _$AuthTokenImpl>
    implements _$$AuthTokenImplCopyWith<$Res> {
  __$$AuthTokenImplCopyWithImpl(
      _$AuthTokenImpl _value, $Res Function(_$AuthTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresAt = null,
    Object? tokenType = null,
    Object? claims = null,
  }) {
    return _then(_$AuthTokenImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      claims: null == claims
          ? _value._claims
          : claims // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokenImpl with DiagnosticableTreeMixin implements _AuthToken {
  const _$AuthTokenImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.expiresAt,
      required this.tokenType,
      final Map<String, dynamic> claims = const {}})
      : _claims = claims;

  factory _$AuthTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final DateTime expiresAt;
  @override
  final String tokenType;
  final Map<String, dynamic> _claims;
  @override
  @JsonKey()
  Map<String, dynamic> get claims {
    if (_claims is EqualUnmodifiableMapView) return _claims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_claims);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthToken(accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt, tokenType: $tokenType, claims: $claims)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthToken'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken))
      ..add(DiagnosticsProperty('expiresAt', expiresAt))
      ..add(DiagnosticsProperty('tokenType', tokenType))
      ..add(DiagnosticsProperty('claims', claims));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            const DeepCollectionEquality().equals(other._claims, _claims));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken,
      expiresAt, tokenType, const DeepCollectionEquality().hash(_claims));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenImplCopyWith<_$AuthTokenImpl> get copyWith =>
      __$$AuthTokenImplCopyWithImpl<_$AuthTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenImplToJson(
      this,
    );
  }
}

abstract class _AuthToken implements AuthToken {
  const factory _AuthToken(
      {required final String accessToken,
      required final String refreshToken,
      required final DateTime expiresAt,
      required final String tokenType,
      final Map<String, dynamic> claims}) = _$AuthTokenImpl;

  factory _AuthToken.fromJson(Map<String, dynamic> json) =
      _$AuthTokenImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  DateTime get expiresAt;
  @override
  String get tokenType;
  @override
  Map<String, dynamic> get claims;
  @override
  @JsonKey(ignore: true)
  _$$AuthTokenImplCopyWith<_$AuthTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MfaSettings _$MfaSettingsFromJson(Map<String, dynamic> json) {
  return _MfaSettings.fromJson(json);
}

/// @nodoc
mixin _$MfaSettings {
  String get userId => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  List<String> get methods => throw _privateConstructorUsedError;
  String? get preferredMethod => throw _privateConstructorUsedError;
  Map<String, dynamic> get methodSettings => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

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
      bool isEnabled,
      List<String> methods,
      String? preferredMethod,
      Map<String, dynamic> methodSettings,
      DateTime? lastUpdated});
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
    Object? isEnabled = null,
    Object? methods = null,
    Object? preferredMethod = freezed,
    Object? methodSettings = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      methods: null == methods
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredMethod: freezed == preferredMethod
          ? _value.preferredMethod
          : preferredMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      methodSettings: null == methodSettings
          ? _value.methodSettings
          : methodSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      bool isEnabled,
      List<String> methods,
      String? preferredMethod,
      Map<String, dynamic> methodSettings,
      DateTime? lastUpdated});
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
    Object? isEnabled = null,
    Object? methods = null,
    Object? preferredMethod = freezed,
    Object? methodSettings = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(_$MfaSettingsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      methods: null == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredMethod: freezed == preferredMethod
          ? _value.preferredMethod
          : preferredMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      methodSettings: null == methodSettings
          ? _value._methodSettings
          : methodSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MfaSettingsImpl with DiagnosticableTreeMixin implements _MfaSettings {
  const _$MfaSettingsImpl(
      {required this.userId,
      required this.isEnabled,
      required final List<String> methods,
      this.preferredMethod,
      final Map<String, dynamic> methodSettings = const {},
      this.lastUpdated})
      : _methods = methods,
        _methodSettings = methodSettings;

  factory _$MfaSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MfaSettingsImplFromJson(json);

  @override
  final String userId;
  @override
  final bool isEnabled;
  final List<String> _methods;
  @override
  List<String> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  @override
  final String? preferredMethod;
  final Map<String, dynamic> _methodSettings;
  @override
  @JsonKey()
  Map<String, dynamic> get methodSettings {
    if (_methodSettings is EqualUnmodifiableMapView) return _methodSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_methodSettings);
  }

  @override
  final DateTime? lastUpdated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MfaSettings(userId: $userId, isEnabled: $isEnabled, methods: $methods, preferredMethod: $preferredMethod, methodSettings: $methodSettings, lastUpdated: $lastUpdated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MfaSettings'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('isEnabled', isEnabled))
      ..add(DiagnosticsProperty('methods', methods))
      ..add(DiagnosticsProperty('preferredMethod', preferredMethod))
      ..add(DiagnosticsProperty('methodSettings', methodSettings))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MfaSettingsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            (identical(other.preferredMethod, preferredMethod) ||
                other.preferredMethod == preferredMethod) &&
            const DeepCollectionEquality()
                .equals(other._methodSettings, _methodSettings) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      isEnabled,
      const DeepCollectionEquality().hash(_methods),
      preferredMethod,
      const DeepCollectionEquality().hash(_methodSettings),
      lastUpdated);

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
      required final bool isEnabled,
      required final List<String> methods,
      final String? preferredMethod,
      final Map<String, dynamic> methodSettings,
      final DateTime? lastUpdated}) = _$MfaSettingsImpl;

  factory _MfaSettings.fromJson(Map<String, dynamic> json) =
      _$MfaSettingsImpl.fromJson;

  @override
  String get userId;
  @override
  bool get isEnabled;
  @override
  List<String> get methods;
  @override
  String? get preferredMethod;
  @override
  Map<String, dynamic> get methodSettings;
  @override
  DateTime? get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$MfaSettingsImplCopyWith<_$MfaSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthEvent _$AuthEventFromJson(Map<String, dynamic> json) {
  return _AuthEvent.fromJson(json);
}

/// @nodoc
mixin _$AuthEvent {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get event => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get ipAddress => throw _privateConstructorUsedError;
  String get deviceInfo => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String event,
      DateTime timestamp,
      String ipAddress,
      String deviceInfo,
      Map<String, dynamic> metadata,
      String? status,
      String? errorMessage});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? event = null,
    Object? timestamp = null,
    Object? ipAddress = null,
    Object? deviceInfo = null,
    Object? metadata = null,
    Object? status = freezed,
    Object? errorMessage = freezed,
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
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$AuthEventImplCopyWith(
          _$AuthEventImpl value, $Res Function(_$AuthEventImpl) then) =
      __$$AuthEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String event,
      DateTime timestamp,
      String ipAddress,
      String deviceInfo,
      Map<String, dynamic> metadata,
      String? status,
      String? errorMessage});
}

/// @nodoc
class __$$AuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventImpl>
    implements _$$AuthEventImplCopyWith<$Res> {
  __$$AuthEventImplCopyWithImpl(
      _$AuthEventImpl _value, $Res Function(_$AuthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? event = null,
    Object? timestamp = null,
    Object? ipAddress = null,
    Object? deviceInfo = null,
    Object? metadata = null,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AuthEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthEventImpl with DiagnosticableTreeMixin implements _AuthEvent {
  const _$AuthEventImpl(
      {required this.id,
      required this.userId,
      required this.event,
      required this.timestamp,
      required this.ipAddress,
      required this.deviceInfo,
      final Map<String, dynamic> metadata = const {},
      this.status,
      this.errorMessage})
      : _metadata = metadata;

  factory _$AuthEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthEventImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String event;
  @override
  final DateTime timestamp;
  @override
  final String ipAddress;
  @override
  final String deviceInfo;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final String? status;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent(id: $id, userId: $userId, event: $event, timestamp: $timestamp, ipAddress: $ipAddress, deviceInfo: $deviceInfo, metadata: $metadata, status: $status, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('event', event))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('ipAddress', ipAddress))
      ..add(DiagnosticsProperty('deviceInfo', deviceInfo))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      event,
      timestamp,
      ipAddress,
      deviceInfo,
      const DeepCollectionEquality().hash(_metadata),
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventImplCopyWith<_$AuthEventImpl> get copyWith =>
      __$$AuthEventImplCopyWithImpl<_$AuthEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthEventImplToJson(
      this,
    );
  }
}

abstract class _AuthEvent implements AuthEvent {
  const factory _AuthEvent(
      {required final String id,
      required final String userId,
      required final String event,
      required final DateTime timestamp,
      required final String ipAddress,
      required final String deviceInfo,
      final Map<String, dynamic> metadata,
      final String? status,
      final String? errorMessage}) = _$AuthEventImpl;

  factory _AuthEvent.fromJson(Map<String, dynamic> json) =
      _$AuthEventImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get event;
  @override
  DateTime get timestamp;
  @override
  String get ipAddress;
  @override
  String get deviceInfo;
  @override
  Map<String, dynamic> get metadata;
  @override
  String? get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AuthEventImplCopyWith<_$AuthEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
