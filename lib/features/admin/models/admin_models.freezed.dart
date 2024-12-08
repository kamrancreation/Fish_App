// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminUser _$AdminUserFromJson(Map<String, dynamic> json) {
  return _AdminUser.fromJson(json);
}

/// @nodoc
mixin _$AdminUser {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<UserRole> get roles => throw _privateConstructorUsedError;
  AdminPermissions get permissions => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get lastLogin => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminUserCopyWith<AdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUserCopyWith<$Res> {
  factory $AdminUserCopyWith(AdminUser value, $Res Function(AdminUser) then) =
      _$AdminUserCopyWithImpl<$Res, AdminUser>;
  @useResult
  $Res call(
      {String id,
      String email,
      List<UserRole> roles,
      AdminPermissions permissions,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime createdAt,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime lastLogin,
      String? name,
      String? avatarUrl,
      Map<String, dynamic>? metadata});

  $AdminPermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class _$AdminUserCopyWithImpl<$Res, $Val extends AdminUser>
    implements $AdminUserCopyWith<$Res> {
  _$AdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? roles = null,
    Object? permissions = null,
    Object? createdAt = null,
    Object? lastLogin = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? metadata = freezed,
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
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<UserRole>,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as AdminPermissions,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLogin: null == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminPermissionsCopyWith<$Res> get permissions {
    return $AdminPermissionsCopyWith<$Res>(_value.permissions, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminUserImplCopyWith<$Res>
    implements $AdminUserCopyWith<$Res> {
  factory _$$AdminUserImplCopyWith(
          _$AdminUserImpl value, $Res Function(_$AdminUserImpl) then) =
      __$$AdminUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      List<UserRole> roles,
      AdminPermissions permissions,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime createdAt,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime lastLogin,
      String? name,
      String? avatarUrl,
      Map<String, dynamic>? metadata});

  @override
  $AdminPermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class __$$AdminUserImplCopyWithImpl<$Res>
    extends _$AdminUserCopyWithImpl<$Res, _$AdminUserImpl>
    implements _$$AdminUserImplCopyWith<$Res> {
  __$$AdminUserImplCopyWithImpl(
      _$AdminUserImpl _value, $Res Function(_$AdminUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? roles = null,
    Object? permissions = null,
    Object? createdAt = null,
    Object? lastLogin = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$AdminUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<UserRole>,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as AdminPermissions,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLogin: null == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
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
class _$AdminUserImpl implements _AdminUser {
  const _$AdminUserImpl(
      {required this.id,
      required this.email,
      required final List<UserRole> roles,
      required this.permissions,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.createdAt,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.lastLogin,
      this.name,
      this.avatarUrl,
      final Map<String, dynamic>? metadata})
      : _roles = roles,
        _metadata = metadata;

  factory _$AdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminUserImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  final List<UserRole> _roles;
  @override
  List<UserRole> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  final AdminPermissions permissions;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime createdAt;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime lastLogin;
  @override
  final String? name;
  @override
  final String? avatarUrl;
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
    return 'AdminUser(id: $id, email: $email, roles: $roles, permissions: $permissions, createdAt: $createdAt, lastLogin: $lastLogin, name: $name, avatarUrl: $avatarUrl, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      const DeepCollectionEquality().hash(_roles),
      permissions,
      createdAt,
      lastLogin,
      name,
      avatarUrl,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminUserImplCopyWith<_$AdminUserImpl> get copyWith =>
      __$$AdminUserImplCopyWithImpl<_$AdminUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminUserImplToJson(
      this,
    );
  }
}

abstract class _AdminUser implements AdminUser {
  const factory _AdminUser(
      {required final String id,
      required final String email,
      required final List<UserRole> roles,
      required final AdminPermissions permissions,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime createdAt,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime lastLogin,
      final String? name,
      final String? avatarUrl,
      final Map<String, dynamic>? metadata}) = _$AdminUserImpl;

  factory _AdminUser.fromJson(Map<String, dynamic> json) =
      _$AdminUserImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  List<UserRole> get roles;
  @override
  AdminPermissions get permissions;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get createdAt;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get lastLogin;
  @override
  String? get name;
  @override
  String? get avatarUrl;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AdminUserImplCopyWith<_$AdminUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminPermissions _$AdminPermissionsFromJson(Map<String, dynamic> json) {
  return _AdminPermissions.fromJson(json);
}

/// @nodoc
mixin _$AdminPermissions {
  bool get canManageUsers => throw _privateConstructorUsedError;
  bool get canManageRoles => throw _privateConstructorUsedError;
  bool get canViewAnalytics => throw _privateConstructorUsedError;
  bool get canManageContent => throw _privateConstructorUsedError;
  bool get canHandleSupport => throw _privateConstructorUsedError;
  bool get canManageBans => throw _privateConstructorUsedError;
  bool get canAccessLogs => throw _privateConstructorUsedError;
  bool get canManageSettings => throw _privateConstructorUsedError;
  bool get canExportData => throw _privateConstructorUsedError;
  bool get canManagePayments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminPermissionsCopyWith<AdminPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminPermissionsCopyWith<$Res> {
  factory $AdminPermissionsCopyWith(
          AdminPermissions value, $Res Function(AdminPermissions) then) =
      _$AdminPermissionsCopyWithImpl<$Res, AdminPermissions>;
  @useResult
  $Res call(
      {bool canManageUsers,
      bool canManageRoles,
      bool canViewAnalytics,
      bool canManageContent,
      bool canHandleSupport,
      bool canManageBans,
      bool canAccessLogs,
      bool canManageSettings,
      bool canExportData,
      bool canManagePayments});
}

/// @nodoc
class _$AdminPermissionsCopyWithImpl<$Res, $Val extends AdminPermissions>
    implements $AdminPermissionsCopyWith<$Res> {
  _$AdminPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canManageUsers = null,
    Object? canManageRoles = null,
    Object? canViewAnalytics = null,
    Object? canManageContent = null,
    Object? canHandleSupport = null,
    Object? canManageBans = null,
    Object? canAccessLogs = null,
    Object? canManageSettings = null,
    Object? canExportData = null,
    Object? canManagePayments = null,
  }) {
    return _then(_value.copyWith(
      canManageUsers: null == canManageUsers
          ? _value.canManageUsers
          : canManageUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageRoles: null == canManageRoles
          ? _value.canManageRoles
          : canManageRoles // ignore: cast_nullable_to_non_nullable
              as bool,
      canViewAnalytics: null == canViewAnalytics
          ? _value.canViewAnalytics
          : canViewAnalytics // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageContent: null == canManageContent
          ? _value.canManageContent
          : canManageContent // ignore: cast_nullable_to_non_nullable
              as bool,
      canHandleSupport: null == canHandleSupport
          ? _value.canHandleSupport
          : canHandleSupport // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageBans: null == canManageBans
          ? _value.canManageBans
          : canManageBans // ignore: cast_nullable_to_non_nullable
              as bool,
      canAccessLogs: null == canAccessLogs
          ? _value.canAccessLogs
          : canAccessLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageSettings: null == canManageSettings
          ? _value.canManageSettings
          : canManageSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      canExportData: null == canExportData
          ? _value.canExportData
          : canExportData // ignore: cast_nullable_to_non_nullable
              as bool,
      canManagePayments: null == canManagePayments
          ? _value.canManagePayments
          : canManagePayments // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminPermissionsImplCopyWith<$Res>
    implements $AdminPermissionsCopyWith<$Res> {
  factory _$$AdminPermissionsImplCopyWith(_$AdminPermissionsImpl value,
          $Res Function(_$AdminPermissionsImpl) then) =
      __$$AdminPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool canManageUsers,
      bool canManageRoles,
      bool canViewAnalytics,
      bool canManageContent,
      bool canHandleSupport,
      bool canManageBans,
      bool canAccessLogs,
      bool canManageSettings,
      bool canExportData,
      bool canManagePayments});
}

/// @nodoc
class __$$AdminPermissionsImplCopyWithImpl<$Res>
    extends _$AdminPermissionsCopyWithImpl<$Res, _$AdminPermissionsImpl>
    implements _$$AdminPermissionsImplCopyWith<$Res> {
  __$$AdminPermissionsImplCopyWithImpl(_$AdminPermissionsImpl _value,
      $Res Function(_$AdminPermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canManageUsers = null,
    Object? canManageRoles = null,
    Object? canViewAnalytics = null,
    Object? canManageContent = null,
    Object? canHandleSupport = null,
    Object? canManageBans = null,
    Object? canAccessLogs = null,
    Object? canManageSettings = null,
    Object? canExportData = null,
    Object? canManagePayments = null,
  }) {
    return _then(_$AdminPermissionsImpl(
      canManageUsers: null == canManageUsers
          ? _value.canManageUsers
          : canManageUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageRoles: null == canManageRoles
          ? _value.canManageRoles
          : canManageRoles // ignore: cast_nullable_to_non_nullable
              as bool,
      canViewAnalytics: null == canViewAnalytics
          ? _value.canViewAnalytics
          : canViewAnalytics // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageContent: null == canManageContent
          ? _value.canManageContent
          : canManageContent // ignore: cast_nullable_to_non_nullable
              as bool,
      canHandleSupport: null == canHandleSupport
          ? _value.canHandleSupport
          : canHandleSupport // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageBans: null == canManageBans
          ? _value.canManageBans
          : canManageBans // ignore: cast_nullable_to_non_nullable
              as bool,
      canAccessLogs: null == canAccessLogs
          ? _value.canAccessLogs
          : canAccessLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageSettings: null == canManageSettings
          ? _value.canManageSettings
          : canManageSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      canExportData: null == canExportData
          ? _value.canExportData
          : canExportData // ignore: cast_nullable_to_non_nullable
              as bool,
      canManagePayments: null == canManagePayments
          ? _value.canManagePayments
          : canManagePayments // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminPermissionsImpl implements _AdminPermissions {
  const _$AdminPermissionsImpl(
      {this.canManageUsers = false,
      this.canManageRoles = false,
      this.canViewAnalytics = false,
      this.canManageContent = false,
      this.canHandleSupport = false,
      this.canManageBans = false,
      this.canAccessLogs = false,
      this.canManageSettings = false,
      this.canExportData = false,
      this.canManagePayments = false});

  factory _$AdminPermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminPermissionsImplFromJson(json);

  @override
  @JsonKey()
  final bool canManageUsers;
  @override
  @JsonKey()
  final bool canManageRoles;
  @override
  @JsonKey()
  final bool canViewAnalytics;
  @override
  @JsonKey()
  final bool canManageContent;
  @override
  @JsonKey()
  final bool canHandleSupport;
  @override
  @JsonKey()
  final bool canManageBans;
  @override
  @JsonKey()
  final bool canAccessLogs;
  @override
  @JsonKey()
  final bool canManageSettings;
  @override
  @JsonKey()
  final bool canExportData;
  @override
  @JsonKey()
  final bool canManagePayments;

  @override
  String toString() {
    return 'AdminPermissions(canManageUsers: $canManageUsers, canManageRoles: $canManageRoles, canViewAnalytics: $canViewAnalytics, canManageContent: $canManageContent, canHandleSupport: $canHandleSupport, canManageBans: $canManageBans, canAccessLogs: $canAccessLogs, canManageSettings: $canManageSettings, canExportData: $canExportData, canManagePayments: $canManagePayments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminPermissionsImpl &&
            (identical(other.canManageUsers, canManageUsers) ||
                other.canManageUsers == canManageUsers) &&
            (identical(other.canManageRoles, canManageRoles) ||
                other.canManageRoles == canManageRoles) &&
            (identical(other.canViewAnalytics, canViewAnalytics) ||
                other.canViewAnalytics == canViewAnalytics) &&
            (identical(other.canManageContent, canManageContent) ||
                other.canManageContent == canManageContent) &&
            (identical(other.canHandleSupport, canHandleSupport) ||
                other.canHandleSupport == canHandleSupport) &&
            (identical(other.canManageBans, canManageBans) ||
                other.canManageBans == canManageBans) &&
            (identical(other.canAccessLogs, canAccessLogs) ||
                other.canAccessLogs == canAccessLogs) &&
            (identical(other.canManageSettings, canManageSettings) ||
                other.canManageSettings == canManageSettings) &&
            (identical(other.canExportData, canExportData) ||
                other.canExportData == canExportData) &&
            (identical(other.canManagePayments, canManagePayments) ||
                other.canManagePayments == canManagePayments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      canManageUsers,
      canManageRoles,
      canViewAnalytics,
      canManageContent,
      canHandleSupport,
      canManageBans,
      canAccessLogs,
      canManageSettings,
      canExportData,
      canManagePayments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminPermissionsImplCopyWith<_$AdminPermissionsImpl> get copyWith =>
      __$$AdminPermissionsImplCopyWithImpl<_$AdminPermissionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminPermissionsImplToJson(
      this,
    );
  }
}

abstract class _AdminPermissions implements AdminPermissions {
  const factory _AdminPermissions(
      {final bool canManageUsers,
      final bool canManageRoles,
      final bool canViewAnalytics,
      final bool canManageContent,
      final bool canHandleSupport,
      final bool canManageBans,
      final bool canAccessLogs,
      final bool canManageSettings,
      final bool canExportData,
      final bool canManagePayments}) = _$AdminPermissionsImpl;

  factory _AdminPermissions.fromJson(Map<String, dynamic> json) =
      _$AdminPermissionsImpl.fromJson;

  @override
  bool get canManageUsers;
  @override
  bool get canManageRoles;
  @override
  bool get canViewAnalytics;
  @override
  bool get canManageContent;
  @override
  bool get canHandleSupport;
  @override
  bool get canManageBans;
  @override
  bool get canAccessLogs;
  @override
  bool get canManageSettings;
  @override
  bool get canExportData;
  @override
  bool get canManagePayments;
  @override
  @JsonKey(ignore: true)
  _$$AdminPermissionsImplCopyWith<_$AdminPermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBan _$UserBanFromJson(Map<String, dynamic> json) {
  return _UserBan.fromJson(json);
}

/// @nodoc
mixin _$UserBan {
  String get userId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get adminId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
  DateTime? get endTime => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<String>? get evidenceUrls => throw _privateConstructorUsedError;
  BanType? get type => throw _privateConstructorUsedError;
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
      String adminId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime startTime,
      @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
      DateTime? endTime,
      String? notes,
      List<String>? evidenceUrls,
      BanType? type,
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
    Object? adminId = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? notes = freezed,
    Object? evidenceUrls = freezed,
    Object? type = freezed,
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
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      evidenceUrls: freezed == evidenceUrls
          ? _value.evidenceUrls
          : evidenceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BanType?,
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
      String adminId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime startTime,
      @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
      DateTime? endTime,
      String? notes,
      List<String>? evidenceUrls,
      BanType? type,
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
    Object? adminId = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? notes = freezed,
    Object? evidenceUrls = freezed,
    Object? type = freezed,
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
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      evidenceUrls: freezed == evidenceUrls
          ? _value._evidenceUrls
          : evidenceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BanType?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBanImpl implements _UserBan {
  const _$UserBanImpl(
      {required this.userId,
      required this.reason,
      required this.adminId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.startTime,
      @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
      this.endTime,
      this.notes,
      final List<String>? evidenceUrls,
      this.type,
      final Map<String, dynamic>? metadata})
      : _evidenceUrls = evidenceUrls,
        _metadata = metadata;

  factory _$UserBanImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBanImplFromJson(json);

  @override
  final String userId;
  @override
  final String reason;
  @override
  final String adminId;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime startTime;
  @override
  @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
  final DateTime? endTime;
  @override
  final String? notes;
  final List<String>? _evidenceUrls;
  @override
  List<String>? get evidenceUrls {
    final value = _evidenceUrls;
    if (value == null) return null;
    if (_evidenceUrls is EqualUnmodifiableListView) return _evidenceUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BanType? type;
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
    return 'UserBan(userId: $userId, reason: $reason, adminId: $adminId, startTime: $startTime, endTime: $endTime, notes: $notes, evidenceUrls: $evidenceUrls, type: $type, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBanImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._evidenceUrls, _evidenceUrls) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      reason,
      adminId,
      startTime,
      endTime,
      notes,
      const DeepCollectionEquality().hash(_evidenceUrls),
      type,
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
      required final String adminId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime startTime,
      @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
      final DateTime? endTime,
      final String? notes,
      final List<String>? evidenceUrls,
      final BanType? type,
      final Map<String, dynamic>? metadata}) = _$UserBanImpl;

  factory _UserBan.fromJson(Map<String, dynamic> json) = _$UserBanImpl.fromJson;

  @override
  String get userId;
  @override
  String get reason;
  @override
  String get adminId;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get startTime;
  @override
  @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
  DateTime? get endTime;
  @override
  String? get notes;
  @override
  List<String>? get evidenceUrls;
  @override
  BanType? get type;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UserBanImplCopyWith<_$UserBanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAnalytics _$UserAnalyticsFromJson(Map<String, dynamic> json) {
  return _UserAnalytics.fromJson(json);
}

/// @nodoc
mixin _$UserAnalytics {
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get lastActive => throw _privateConstructorUsedError;
  int get totalLogins => throw _privateConstructorUsedError;
  int get contentCount => throw _privateConstructorUsedError;
  Map<String, int> get activityMetrics => throw _privateConstructorUsedError;
  Map<String, double> get engagementScores =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get customMetrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAnalyticsCopyWith<UserAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAnalyticsCopyWith<$Res> {
  factory $UserAnalyticsCopyWith(
          UserAnalytics value, $Res Function(UserAnalytics) then) =
      _$UserAnalyticsCopyWithImpl<$Res, UserAnalytics>;
  @useResult
  $Res call(
      {String userId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime lastActive,
      int totalLogins,
      int contentCount,
      Map<String, int> activityMetrics,
      Map<String, double> engagementScores,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class _$UserAnalyticsCopyWithImpl<$Res, $Val extends UserAnalytics>
    implements $UserAnalyticsCopyWith<$Res> {
  _$UserAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? lastActive = null,
    Object? totalLogins = null,
    Object? contentCount = null,
    Object? activityMetrics = null,
    Object? engagementScores = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalLogins: null == totalLogins
          ? _value.totalLogins
          : totalLogins // ignore: cast_nullable_to_non_nullable
              as int,
      contentCount: null == contentCount
          ? _value.contentCount
          : contentCount // ignore: cast_nullable_to_non_nullable
              as int,
      activityMetrics: null == activityMetrics
          ? _value.activityMetrics
          : activityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      engagementScores: null == engagementScores
          ? _value.engagementScores
          : engagementScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customMetrics: freezed == customMetrics
          ? _value.customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAnalyticsImplCopyWith<$Res>
    implements $UserAnalyticsCopyWith<$Res> {
  factory _$$UserAnalyticsImplCopyWith(
          _$UserAnalyticsImpl value, $Res Function(_$UserAnalyticsImpl) then) =
      __$$UserAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime lastActive,
      int totalLogins,
      int contentCount,
      Map<String, int> activityMetrics,
      Map<String, double> engagementScores,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class __$$UserAnalyticsImplCopyWithImpl<$Res>
    extends _$UserAnalyticsCopyWithImpl<$Res, _$UserAnalyticsImpl>
    implements _$$UserAnalyticsImplCopyWith<$Res> {
  __$$UserAnalyticsImplCopyWithImpl(
      _$UserAnalyticsImpl _value, $Res Function(_$UserAnalyticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? lastActive = null,
    Object? totalLogins = null,
    Object? contentCount = null,
    Object? activityMetrics = null,
    Object? engagementScores = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_$UserAnalyticsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lastActive: null == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalLogins: null == totalLogins
          ? _value.totalLogins
          : totalLogins // ignore: cast_nullable_to_non_nullable
              as int,
      contentCount: null == contentCount
          ? _value.contentCount
          : contentCount // ignore: cast_nullable_to_non_nullable
              as int,
      activityMetrics: null == activityMetrics
          ? _value._activityMetrics
          : activityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      engagementScores: null == engagementScores
          ? _value._engagementScores
          : engagementScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customMetrics: freezed == customMetrics
          ? _value._customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAnalyticsImpl implements _UserAnalytics {
  const _$UserAnalyticsImpl(
      {required this.userId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.lastActive,
      required this.totalLogins,
      required this.contentCount,
      required final Map<String, int> activityMetrics,
      required final Map<String, double> engagementScores,
      final Map<String, dynamic>? customMetrics})
      : _activityMetrics = activityMetrics,
        _engagementScores = engagementScores,
        _customMetrics = customMetrics;

  factory _$UserAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAnalyticsImplFromJson(json);

  @override
  final String userId;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime lastActive;
  @override
  final int totalLogins;
  @override
  final int contentCount;
  final Map<String, int> _activityMetrics;
  @override
  Map<String, int> get activityMetrics {
    if (_activityMetrics is EqualUnmodifiableMapView) return _activityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_activityMetrics);
  }

  final Map<String, double> _engagementScores;
  @override
  Map<String, double> get engagementScores {
    if (_engagementScores is EqualUnmodifiableMapView) return _engagementScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_engagementScores);
  }

  final Map<String, dynamic>? _customMetrics;
  @override
  Map<String, dynamic>? get customMetrics {
    final value = _customMetrics;
    if (value == null) return null;
    if (_customMetrics is EqualUnmodifiableMapView) return _customMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UserAnalytics(userId: $userId, lastActive: $lastActive, totalLogins: $totalLogins, contentCount: $contentCount, activityMetrics: $activityMetrics, engagementScores: $engagementScores, customMetrics: $customMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAnalyticsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            (identical(other.totalLogins, totalLogins) ||
                other.totalLogins == totalLogins) &&
            (identical(other.contentCount, contentCount) ||
                other.contentCount == contentCount) &&
            const DeepCollectionEquality()
                .equals(other._activityMetrics, _activityMetrics) &&
            const DeepCollectionEquality()
                .equals(other._engagementScores, _engagementScores) &&
            const DeepCollectionEquality()
                .equals(other._customMetrics, _customMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      lastActive,
      totalLogins,
      contentCount,
      const DeepCollectionEquality().hash(_activityMetrics),
      const DeepCollectionEquality().hash(_engagementScores),
      const DeepCollectionEquality().hash(_customMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAnalyticsImplCopyWith<_$UserAnalyticsImpl> get copyWith =>
      __$$UserAnalyticsImplCopyWithImpl<_$UserAnalyticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAnalyticsImplToJson(
      this,
    );
  }
}

abstract class _UserAnalytics implements UserAnalytics {
  const factory _UserAnalytics(
      {required final String userId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime lastActive,
      required final int totalLogins,
      required final int contentCount,
      required final Map<String, int> activityMetrics,
      required final Map<String, double> engagementScores,
      final Map<String, dynamic>? customMetrics}) = _$UserAnalyticsImpl;

  factory _UserAnalytics.fromJson(Map<String, dynamic> json) =
      _$UserAnalyticsImpl.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get lastActive;
  @override
  int get totalLogins;
  @override
  int get contentCount;
  @override
  Map<String, int> get activityMetrics;
  @override
  Map<String, double> get engagementScores;
  @override
  Map<String, dynamic>? get customMetrics;
  @override
  @JsonKey(ignore: true)
  _$$UserAnalyticsImplCopyWith<_$UserAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupportTicket _$SupportTicketFromJson(Map<String, dynamic> json) {
  return _SupportTicket.fromJson(json);
}

/// @nodoc
mixin _$SupportTicket {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  TicketStatus get status => throw _privateConstructorUsedError;
  TicketPriority get priority => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get assignedTo => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<TicketUpdate>? get updates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportTicketCopyWith<SupportTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketCopyWith<$Res> {
  factory $SupportTicketCopyWith(
          SupportTicket value, $Res Function(SupportTicket) then) =
      _$SupportTicketCopyWithImpl<$Res, SupportTicket>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String subject,
      String description,
      TicketStatus status,
      TicketPriority priority,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime createdAt,
      String? assignedTo,
      @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
      DateTime? resolvedAt,
      List<String>? tags,
      List<TicketUpdate>? updates});
}

/// @nodoc
class _$SupportTicketCopyWithImpl<$Res, $Val extends SupportTicket>
    implements $SupportTicketCopyWith<$Res> {
  _$SupportTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? subject = null,
    Object? description = null,
    Object? status = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? assignedTo = freezed,
    Object? resolvedAt = freezed,
    Object? tags = freezed,
    Object? updates = freezed,
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
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TicketPriority,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as List<TicketUpdate>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportTicketImplCopyWith<$Res>
    implements $SupportTicketCopyWith<$Res> {
  factory _$$SupportTicketImplCopyWith(
          _$SupportTicketImpl value, $Res Function(_$SupportTicketImpl) then) =
      __$$SupportTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String subject,
      String description,
      TicketStatus status,
      TicketPriority priority,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime createdAt,
      String? assignedTo,
      @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
      DateTime? resolvedAt,
      List<String>? tags,
      List<TicketUpdate>? updates});
}

/// @nodoc
class __$$SupportTicketImplCopyWithImpl<$Res>
    extends _$SupportTicketCopyWithImpl<$Res, _$SupportTicketImpl>
    implements _$$SupportTicketImplCopyWith<$Res> {
  __$$SupportTicketImplCopyWithImpl(
      _$SupportTicketImpl _value, $Res Function(_$SupportTicketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? subject = null,
    Object? description = null,
    Object? status = null,
    Object? priority = null,
    Object? createdAt = null,
    Object? assignedTo = freezed,
    Object? resolvedAt = freezed,
    Object? tags = freezed,
    Object? updates = freezed,
  }) {
    return _then(_$SupportTicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TicketPriority,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      updates: freezed == updates
          ? _value._updates
          : updates // ignore: cast_nullable_to_non_nullable
              as List<TicketUpdate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketImpl implements _SupportTicket {
  const _$SupportTicketImpl(
      {required this.id,
      required this.userId,
      required this.subject,
      required this.description,
      required this.status,
      required this.priority,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.createdAt,
      this.assignedTo,
      @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
      this.resolvedAt,
      final List<String>? tags,
      final List<TicketUpdate>? updates})
      : _tags = tags,
        _updates = updates;

  factory _$SupportTicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String subject;
  @override
  final String description;
  @override
  final TicketStatus status;
  @override
  final TicketPriority priority;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime createdAt;
  @override
  final String? assignedTo;
  @override
  @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
  final DateTime? resolvedAt;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TicketUpdate>? _updates;
  @override
  List<TicketUpdate>? get updates {
    final value = _updates;
    if (value == null) return null;
    if (_updates is EqualUnmodifiableListView) return _updates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SupportTicket(id: $id, userId: $userId, subject: $subject, description: $description, status: $status, priority: $priority, createdAt: $createdAt, assignedTo: $assignedTo, resolvedAt: $resolvedAt, tags: $tags, updates: $updates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._updates, _updates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      subject,
      description,
      status,
      priority,
      createdAt,
      assignedTo,
      resolvedAt,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_updates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketImplCopyWith<_$SupportTicketImpl> get copyWith =>
      __$$SupportTicketImplCopyWithImpl<_$SupportTicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketImplToJson(
      this,
    );
  }
}

abstract class _SupportTicket implements SupportTicket {
  const factory _SupportTicket(
      {required final String id,
      required final String userId,
      required final String subject,
      required final String description,
      required final TicketStatus status,
      required final TicketPriority priority,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime createdAt,
      final String? assignedTo,
      @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
      final DateTime? resolvedAt,
      final List<String>? tags,
      final List<TicketUpdate>? updates}) = _$SupportTicketImpl;

  factory _SupportTicket.fromJson(Map<String, dynamic> json) =
      _$SupportTicketImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get subject;
  @override
  String get description;
  @override
  TicketStatus get status;
  @override
  TicketPriority get priority;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get createdAt;
  @override
  String? get assignedTo;
  @override
  @JsonKey(fromJson: _parseDateTimeNullable, toJson: _dateToStringNullable)
  DateTime? get resolvedAt;
  @override
  List<String>? get tags;
  @override
  List<TicketUpdate>? get updates;
  @override
  @JsonKey(ignore: true)
  _$$SupportTicketImplCopyWith<_$SupportTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketUpdate _$TicketUpdateFromJson(Map<String, dynamic> json) {
  return _TicketUpdate.fromJson(json);
}

/// @nodoc
mixin _$TicketUpdate {
  String get id => throw _privateConstructorUsedError;
  String get ticketId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String>? get attachments => throw _privateConstructorUsedError;
  bool? get isInternal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketUpdateCopyWith<TicketUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketUpdateCopyWith<$Res> {
  factory $TicketUpdateCopyWith(
          TicketUpdate value, $Res Function(TicketUpdate) then) =
      _$TicketUpdateCopyWithImpl<$Res, TicketUpdate>;
  @useResult
  $Res call(
      {String id,
      String ticketId,
      String userId,
      String message,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      List<String>? attachments,
      bool? isInternal});
}

/// @nodoc
class _$TicketUpdateCopyWithImpl<$Res, $Val extends TicketUpdate>
    implements $TicketUpdateCopyWith<$Res> {
  _$TicketUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ticketId = null,
    Object? userId = null,
    Object? message = null,
    Object? timestamp = null,
    Object? attachments = freezed,
    Object? isInternal = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketUpdateImplCopyWith<$Res>
    implements $TicketUpdateCopyWith<$Res> {
  factory _$$TicketUpdateImplCopyWith(
          _$TicketUpdateImpl value, $Res Function(_$TicketUpdateImpl) then) =
      __$$TicketUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ticketId,
      String userId,
      String message,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      List<String>? attachments,
      bool? isInternal});
}

/// @nodoc
class __$$TicketUpdateImplCopyWithImpl<$Res>
    extends _$TicketUpdateCopyWithImpl<$Res, _$TicketUpdateImpl>
    implements _$$TicketUpdateImplCopyWith<$Res> {
  __$$TicketUpdateImplCopyWithImpl(
      _$TicketUpdateImpl _value, $Res Function(_$TicketUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ticketId = null,
    Object? userId = null,
    Object? message = null,
    Object? timestamp = null,
    Object? attachments = freezed,
    Object? isInternal = freezed,
  }) {
    return _then(_$TicketUpdateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isInternal: freezed == isInternal
          ? _value.isInternal
          : isInternal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketUpdateImpl implements _TicketUpdate {
  const _$TicketUpdateImpl(
      {required this.id,
      required this.ticketId,
      required this.userId,
      required this.message,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.timestamp,
      final List<String>? attachments,
      this.isInternal})
      : _attachments = attachments;

  factory _$TicketUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketUpdateImplFromJson(json);

  @override
  final String id;
  @override
  final String ticketId;
  @override
  final String userId;
  @override
  final String message;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime timestamp;
  final List<String>? _attachments;
  @override
  List<String>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isInternal;

  @override
  String toString() {
    return 'TicketUpdate(id: $id, ticketId: $ticketId, userId: $userId, message: $message, timestamp: $timestamp, attachments: $attachments, isInternal: $isInternal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketUpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.isInternal, isInternal) ||
                other.isInternal == isInternal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, ticketId, userId, message,
      timestamp, const DeepCollectionEquality().hash(_attachments), isInternal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketUpdateImplCopyWith<_$TicketUpdateImpl> get copyWith =>
      __$$TicketUpdateImplCopyWithImpl<_$TicketUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketUpdateImplToJson(
      this,
    );
  }
}

abstract class _TicketUpdate implements TicketUpdate {
  const factory _TicketUpdate(
      {required final String id,
      required final String ticketId,
      required final String userId,
      required final String message,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime timestamp,
      final List<String>? attachments,
      final bool? isInternal}) = _$TicketUpdateImpl;

  factory _TicketUpdate.fromJson(Map<String, dynamic> json) =
      _$TicketUpdateImpl.fromJson;

  @override
  String get id;
  @override
  String get ticketId;
  @override
  String get userId;
  @override
  String get message;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp;
  @override
  List<String>? get attachments;
  @override
  bool? get isInternal;
  @override
  @JsonKey(ignore: true)
  _$$TicketUpdateImplCopyWith<_$TicketUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
