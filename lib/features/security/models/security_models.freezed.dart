// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncryptionKey _$EncryptionKeyFromJson(Map<String, dynamic> json) {
  return _EncryptionKey.fromJson(json);
}

/// @nodoc
mixin _$EncryptionKey {
  String get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get expiresAt => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptionKeyCopyWith<EncryptionKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptionKeyCopyWith<$Res> {
  factory $EncryptionKeyCopyWith(
          EncryptionKey value, $Res Function(EncryptionKey) then) =
      _$EncryptionKeyCopyWithImpl<$Res, EncryptionKey>;
  @useResult
  $Res call(
      {String id,
      String key,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime createdAt,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime expiresAt,
      bool isActive,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$EncryptionKeyCopyWithImpl<$Res, $Val extends EncryptionKey>
    implements $EncryptionKeyCopyWith<$Res> {
  _$EncryptionKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
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
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EncryptionKeyImplCopyWith<$Res>
    implements $EncryptionKeyCopyWith<$Res> {
  factory _$$EncryptionKeyImplCopyWith(
          _$EncryptionKeyImpl value, $Res Function(_$EncryptionKeyImpl) then) =
      __$$EncryptionKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String key,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime createdAt,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime expiresAt,
      bool isActive,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$EncryptionKeyImplCopyWithImpl<$Res>
    extends _$EncryptionKeyCopyWithImpl<$Res, _$EncryptionKeyImpl>
    implements _$$EncryptionKeyImplCopyWith<$Res> {
  __$$EncryptionKeyImplCopyWithImpl(
      _$EncryptionKeyImpl _value, $Res Function(_$EncryptionKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? isActive = null,
    Object? metadata = null,
  }) {
    return _then(_$EncryptionKeyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
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
class _$EncryptionKeyImpl implements _EncryptionKey {
  const _$EncryptionKeyImpl(
      {required this.id,
      required this.key,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.createdAt,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.expiresAt,
      required this.isActive,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$EncryptionKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptionKeyImplFromJson(json);

  @override
  final String id;
  @override
  final String key;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime createdAt;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime expiresAt;
  @override
  final bool isActive;
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
    return 'EncryptionKey(id: $id, key: $key, createdAt: $createdAt, expiresAt: $expiresAt, isActive: $isActive, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptionKeyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
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
  int get hashCode => Object.hash(runtimeType, id, key, createdAt, expiresAt,
      isActive, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptionKeyImplCopyWith<_$EncryptionKeyImpl> get copyWith =>
      __$$EncryptionKeyImplCopyWithImpl<_$EncryptionKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptionKeyImplToJson(
      this,
    );
  }
}

abstract class _EncryptionKey implements EncryptionKey {
  const factory _EncryptionKey(
      {required final String id,
      required final String key,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime createdAt,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime expiresAt,
      required final bool isActive,
      final Map<String, dynamic> metadata}) = _$EncryptionKeyImpl;

  factory _EncryptionKey.fromJson(Map<String, dynamic> json) =
      _$EncryptionKeyImpl.fromJson;

  @override
  String get id;
  @override
  String get key;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get createdAt;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get expiresAt;
  @override
  bool get isActive;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$EncryptionKeyImplCopyWith<_$EncryptionKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityAudit _$SecurityAuditFromJson(Map<String, dynamic> json) {
  return _SecurityAudit.fromJson(json);
}

/// @nodoc
mixin _$SecurityAudit {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get ipAddress => throw _privateConstructorUsedError;
  String get userAgent => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

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
      String userId,
      String action,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      String ipAddress,
      String userAgent,
      Map<String, dynamic> metadata});
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
    Object? userId = null,
    Object? action = null,
    Object? timestamp = null,
    Object? ipAddress = null,
    Object? userAgent = null,
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
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
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
      String userId,
      String action,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      String ipAddress,
      String userAgent,
      Map<String, dynamic> metadata});
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
    Object? userId = null,
    Object? action = null,
    Object? timestamp = null,
    Object? ipAddress = null,
    Object? userAgent = null,
    Object? metadata = null,
  }) {
    return _then(_$SecurityAuditImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityAuditImpl implements _SecurityAudit {
  const _$SecurityAuditImpl(
      {required this.id,
      required this.userId,
      required this.action,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.timestamp,
      required this.ipAddress,
      required this.userAgent,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$SecurityAuditImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityAuditImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String action;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime timestamp;
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
  String toString() {
    return 'SecurityAudit(id: $id, userId: $userId, action: $action, timestamp: $timestamp, ipAddress: $ipAddress, userAgent: $userAgent, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityAuditImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, action, timestamp,
      ipAddress, userAgent, const DeepCollectionEquality().hash(_metadata));

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
      required final String userId,
      required final String action,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime timestamp,
      required final String ipAddress,
      required final String userAgent,
      final Map<String, dynamic> metadata}) = _$SecurityAuditImpl;

  factory _SecurityAudit.fromJson(Map<String, dynamic> json) =
      _$SecurityAuditImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get action;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp;
  @override
  String get ipAddress;
  @override
  String get userAgent;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SecurityAuditImplCopyWith<_$SecurityAuditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataBackup _$DataBackupFromJson(Map<String, dynamic> json) {
  return _DataBackup.fromJson(json);
}

/// @nodoc
mixin _$DataBackup {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  bool get isComplete => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBackupCopyWith<DataBackup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBackupCopyWith<$Res> {
  factory $DataBackupCopyWith(
          DataBackup value, $Res Function(DataBackup) then) =
      _$DataBackupCopyWithImpl<$Res, DataBackup>;
  @useResult
  $Res call(
      {String id,
      String userId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      String location,
      int size,
      bool isComplete,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$DataBackupCopyWithImpl<$Res, $Val extends DataBackup>
    implements $DataBackupCopyWith<$Res> {
  _$DataBackupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? timestamp = null,
    Object? location = null,
    Object? size = null,
    Object? isComplete = null,
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
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      isComplete: null == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataBackupImplCopyWith<$Res>
    implements $DataBackupCopyWith<$Res> {
  factory _$$DataBackupImplCopyWith(
          _$DataBackupImpl value, $Res Function(_$DataBackupImpl) then) =
      __$$DataBackupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      String location,
      int size,
      bool isComplete,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$DataBackupImplCopyWithImpl<$Res>
    extends _$DataBackupCopyWithImpl<$Res, _$DataBackupImpl>
    implements _$$DataBackupImplCopyWith<$Res> {
  __$$DataBackupImplCopyWithImpl(
      _$DataBackupImpl _value, $Res Function(_$DataBackupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? timestamp = null,
    Object? location = null,
    Object? size = null,
    Object? isComplete = null,
    Object? metadata = null,
  }) {
    return _then(_$DataBackupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      isComplete: null == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
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
class _$DataBackupImpl implements _DataBackup {
  const _$DataBackupImpl(
      {required this.id,
      required this.userId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.timestamp,
      required this.location,
      required this.size,
      required this.isComplete,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$DataBackupImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataBackupImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime timestamp;
  @override
  final String location;
  @override
  final int size;
  @override
  final bool isComplete;
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
    return 'DataBackup(id: $id, userId: $userId, timestamp: $timestamp, location: $location, size: $size, isComplete: $isComplete, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBackupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.isComplete, isComplete) ||
                other.isComplete == isComplete) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, timestamp, location,
      size, isComplete, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataBackupImplCopyWith<_$DataBackupImpl> get copyWith =>
      __$$DataBackupImplCopyWithImpl<_$DataBackupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataBackupImplToJson(
      this,
    );
  }
}

abstract class _DataBackup implements DataBackup {
  const factory _DataBackup(
      {required final String id,
      required final String userId,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime timestamp,
      required final String location,
      required final int size,
      required final bool isComplete,
      final Map<String, dynamic> metadata}) = _$DataBackupImpl;

  factory _DataBackup.fromJson(Map<String, dynamic> json) =
      _$DataBackupImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp;
  @override
  String get location;
  @override
  int get size;
  @override
  bool get isComplete;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$DataBackupImplCopyWith<_$DataBackupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrivacySettings _$PrivacySettingsFromJson(Map<String, dynamic> json) {
  return _PrivacySettings.fromJson(json);
}

/// @nodoc
mixin _$PrivacySettings {
  String get userId => throw _privateConstructorUsedError;
  bool get isProfilePublic => throw _privateConstructorUsedError;
  bool get showLocation => throw _privateConstructorUsedError;
  List<String> get blockedUsers => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivacySettingsCopyWith<PrivacySettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacySettingsCopyWith<$Res> {
  factory $PrivacySettingsCopyWith(
          PrivacySettings value, $Res Function(PrivacySettings) then) =
      _$PrivacySettingsCopyWithImpl<$Res, PrivacySettings>;
  @useResult
  $Res call(
      {String userId,
      bool isProfilePublic,
      bool showLocation,
      List<String> blockedUsers,
      Map<String, dynamic> settings});
}

/// @nodoc
class _$PrivacySettingsCopyWithImpl<$Res, $Val extends PrivacySettings>
    implements $PrivacySettingsCopyWith<$Res> {
  _$PrivacySettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isProfilePublic = null,
    Object? showLocation = null,
    Object? blockedUsers = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isProfilePublic: null == isProfilePublic
          ? _value.isProfilePublic
          : isProfilePublic // ignore: cast_nullable_to_non_nullable
              as bool,
      showLocation: null == showLocation
          ? _value.showLocation
          : showLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      blockedUsers: null == blockedUsers
          ? _value.blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivacySettingsImplCopyWith<$Res>
    implements $PrivacySettingsCopyWith<$Res> {
  factory _$$PrivacySettingsImplCopyWith(_$PrivacySettingsImpl value,
          $Res Function(_$PrivacySettingsImpl) then) =
      __$$PrivacySettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      bool isProfilePublic,
      bool showLocation,
      List<String> blockedUsers,
      Map<String, dynamic> settings});
}

/// @nodoc
class __$$PrivacySettingsImplCopyWithImpl<$Res>
    extends _$PrivacySettingsCopyWithImpl<$Res, _$PrivacySettingsImpl>
    implements _$$PrivacySettingsImplCopyWith<$Res> {
  __$$PrivacySettingsImplCopyWithImpl(
      _$PrivacySettingsImpl _value, $Res Function(_$PrivacySettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isProfilePublic = null,
    Object? showLocation = null,
    Object? blockedUsers = null,
    Object? settings = null,
  }) {
    return _then(_$PrivacySettingsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isProfilePublic: null == isProfilePublic
          ? _value.isProfilePublic
          : isProfilePublic // ignore: cast_nullable_to_non_nullable
              as bool,
      showLocation: null == showLocation
          ? _value.showLocation
          : showLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      blockedUsers: null == blockedUsers
          ? _value._blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivacySettingsImpl implements _PrivacySettings {
  const _$PrivacySettingsImpl(
      {required this.userId,
      required this.isProfilePublic,
      required this.showLocation,
      required final List<String> blockedUsers,
      final Map<String, dynamic> settings = const {}})
      : _blockedUsers = blockedUsers,
        _settings = settings;

  factory _$PrivacySettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivacySettingsImplFromJson(json);

  @override
  final String userId;
  @override
  final bool isProfilePublic;
  @override
  final bool showLocation;
  final List<String> _blockedUsers;
  @override
  List<String> get blockedUsers {
    if (_blockedUsers is EqualUnmodifiableListView) return _blockedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedUsers);
  }

  final Map<String, dynamic> _settings;
  @override
  @JsonKey()
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  String toString() {
    return 'PrivacySettings(userId: $userId, isProfilePublic: $isProfilePublic, showLocation: $showLocation, blockedUsers: $blockedUsers, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacySettingsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isProfilePublic, isProfilePublic) ||
                other.isProfilePublic == isProfilePublic) &&
            (identical(other.showLocation, showLocation) ||
                other.showLocation == showLocation) &&
            const DeepCollectionEquality()
                .equals(other._blockedUsers, _blockedUsers) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      isProfilePublic,
      showLocation,
      const DeepCollectionEquality().hash(_blockedUsers),
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacySettingsImplCopyWith<_$PrivacySettingsImpl> get copyWith =>
      __$$PrivacySettingsImplCopyWithImpl<_$PrivacySettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivacySettingsImplToJson(
      this,
    );
  }
}

abstract class _PrivacySettings implements PrivacySettings {
  const factory _PrivacySettings(
      {required final String userId,
      required final bool isProfilePublic,
      required final bool showLocation,
      required final List<String> blockedUsers,
      final Map<String, dynamic> settings}) = _$PrivacySettingsImpl;

  factory _PrivacySettings.fromJson(Map<String, dynamic> json) =
      _$PrivacySettingsImpl.fromJson;

  @override
  String get userId;
  @override
  bool get isProfilePublic;
  @override
  bool get showLocation;
  @override
  List<String> get blockedUsers;
  @override
  Map<String, dynamic> get settings;
  @override
  @JsonKey(ignore: true)
  _$$PrivacySettingsImplCopyWith<_$PrivacySettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccessLog _$AccessLogFromJson(Map<String, dynamic> json) {
  return _AccessLog.fromJson(json);
}

/// @nodoc
mixin _$AccessLog {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get resource => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get ipAddress => throw _privateConstructorUsedError;
  String get userAgent => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

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
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      String ipAddress,
      String userAgent,
      Map<String, dynamic> metadata});
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
    Object? ipAddress = null,
    Object? userAgent = null,
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
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      String ipAddress,
      String userAgent,
      Map<String, dynamic> metadata});
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
    Object? ipAddress = null,
    Object? userAgent = null,
    Object? metadata = null,
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
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.timestamp,
      required this.ipAddress,
      required this.userAgent,
      final Map<String, dynamic> metadata = const {}})
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
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime timestamp;
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
  String toString() {
    return 'AccessLog(id: $id, userId: $userId, resource: $resource, action: $action, timestamp: $timestamp, ipAddress: $ipAddress, userAgent: $userAgent, metadata: $metadata)';
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
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
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
      ipAddress,
      userAgent,
      const DeepCollectionEquality().hash(_metadata));

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
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime timestamp,
      required final String ipAddress,
      required final String userAgent,
      final Map<String, dynamic> metadata}) = _$AccessLogImpl;

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
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp;
  @override
  String get ipAddress;
  @override
  String get userAgent;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AccessLogImplCopyWith<_$AccessLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityAlert _$SecurityAlertFromJson(Map<String, dynamic> json) {
  return _SecurityAlert.fromJson(json);
}

/// @nodoc
mixin _$SecurityAlert {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isResolved => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityAlertCopyWith<SecurityAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityAlertCopyWith<$Res> {
  factory $SecurityAlertCopyWith(
          SecurityAlert value, $Res Function(SecurityAlert) then) =
      _$SecurityAlertCopyWithImpl<$Res, SecurityAlert>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String type,
      String message,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      bool isResolved,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$SecurityAlertCopyWithImpl<$Res, $Val extends SecurityAlert>
    implements $SecurityAlertCopyWith<$Res> {
  _$SecurityAlertCopyWithImpl(this._value, this._then);

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
    Object? message = null,
    Object? timestamp = null,
    Object? isResolved = null,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isResolved: null == isResolved
          ? _value.isResolved
          : isResolved // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecurityAlertImplCopyWith<$Res>
    implements $SecurityAlertCopyWith<$Res> {
  factory _$$SecurityAlertImplCopyWith(
          _$SecurityAlertImpl value, $Res Function(_$SecurityAlertImpl) then) =
      __$$SecurityAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String type,
      String message,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      DateTime timestamp,
      bool isResolved,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$SecurityAlertImplCopyWithImpl<$Res>
    extends _$SecurityAlertCopyWithImpl<$Res, _$SecurityAlertImpl>
    implements _$$SecurityAlertImplCopyWith<$Res> {
  __$$SecurityAlertImplCopyWithImpl(
      _$SecurityAlertImpl _value, $Res Function(_$SecurityAlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? message = null,
    Object? timestamp = null,
    Object? isResolved = null,
    Object? metadata = null,
  }) {
    return _then(_$SecurityAlertImpl(
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isResolved: null == isResolved
          ? _value.isResolved
          : isResolved // ignore: cast_nullable_to_non_nullable
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
class _$SecurityAlertImpl implements _SecurityAlert {
  const _$SecurityAlertImpl(
      {required this.id,
      required this.userId,
      required this.type,
      required this.message,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required this.timestamp,
      required this.isResolved,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$SecurityAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityAlertImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String type;
  @override
  final String message;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  final DateTime timestamp;
  @override
  final bool isResolved;
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
    return 'SecurityAlert(id: $id, userId: $userId, type: $type, message: $message, timestamp: $timestamp, isResolved: $isResolved, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityAlertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isResolved, isResolved) ||
                other.isResolved == isResolved) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, type, message,
      timestamp, isResolved, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityAlertImplCopyWith<_$SecurityAlertImpl> get copyWith =>
      __$$SecurityAlertImplCopyWithImpl<_$SecurityAlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityAlertImplToJson(
      this,
    );
  }
}

abstract class _SecurityAlert implements SecurityAlert {
  const factory _SecurityAlert(
      {required final String id,
      required final String userId,
      required final String type,
      required final String message,
      @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
      required final DateTime timestamp,
      required final bool isResolved,
      final Map<String, dynamic> metadata}) = _$SecurityAlertImpl;

  factory _SecurityAlert.fromJson(Map<String, dynamic> json) =
      _$SecurityAlertImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get type;
  @override
  String get message;
  @override
  @JsonKey(fromJson: _parseDateTime, toJson: _dateToString)
  DateTime get timestamp;
  @override
  bool get isResolved;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SecurityAlertImplCopyWith<_$SecurityAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
