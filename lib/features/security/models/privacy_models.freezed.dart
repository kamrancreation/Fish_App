// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationPrivacy _$LocationPrivacyFromJson(Map<String, dynamic> json) {
  return _LocationPrivacy.fromJson(json);
}

/// @nodoc
mixin _$LocationPrivacy {
  String get userId => throw _privateConstructorUsedError;
  bool get shareLocation => throw _privateConstructorUsedError;
  String get precision => throw _privateConstructorUsedError;
  List<String> get allowedUsers => throw _privateConstructorUsedError;
  List<String> get blockedUsers => throw _privateConstructorUsedError;
  Map<String, bool> get featureSettings => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationPrivacyCopyWith<LocationPrivacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPrivacyCopyWith<$Res> {
  factory $LocationPrivacyCopyWith(
          LocationPrivacy value, $Res Function(LocationPrivacy) then) =
      _$LocationPrivacyCopyWithImpl<$Res, LocationPrivacy>;
  @useResult
  $Res call(
      {String userId,
      bool shareLocation,
      String precision,
      List<String> allowedUsers,
      List<String> blockedUsers,
      Map<String, bool> featureSettings,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$LocationPrivacyCopyWithImpl<$Res, $Val extends LocationPrivacy>
    implements $LocationPrivacyCopyWith<$Res> {
  _$LocationPrivacyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? shareLocation = null,
    Object? precision = null,
    Object? allowedUsers = null,
    Object? blockedUsers = null,
    Object? featureSettings = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      shareLocation: null == shareLocation
          ? _value.shareLocation
          : shareLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      precision: null == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as String,
      allowedUsers: null == allowedUsers
          ? _value.allowedUsers
          : allowedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedUsers: null == blockedUsers
          ? _value.blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      featureSettings: null == featureSettings
          ? _value.featureSettings
          : featureSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationPrivacyImplCopyWith<$Res>
    implements $LocationPrivacyCopyWith<$Res> {
  factory _$$LocationPrivacyImplCopyWith(_$LocationPrivacyImpl value,
          $Res Function(_$LocationPrivacyImpl) then) =
      __$$LocationPrivacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      bool shareLocation,
      String precision,
      List<String> allowedUsers,
      List<String> blockedUsers,
      Map<String, bool> featureSettings,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$LocationPrivacyImplCopyWithImpl<$Res>
    extends _$LocationPrivacyCopyWithImpl<$Res, _$LocationPrivacyImpl>
    implements _$$LocationPrivacyImplCopyWith<$Res> {
  __$$LocationPrivacyImplCopyWithImpl(
      _$LocationPrivacyImpl _value, $Res Function(_$LocationPrivacyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? shareLocation = null,
    Object? precision = null,
    Object? allowedUsers = null,
    Object? blockedUsers = null,
    Object? featureSettings = null,
    Object? metadata = null,
  }) {
    return _then(_$LocationPrivacyImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      shareLocation: null == shareLocation
          ? _value.shareLocation
          : shareLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      precision: null == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as String,
      allowedUsers: null == allowedUsers
          ? _value._allowedUsers
          : allowedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedUsers: null == blockedUsers
          ? _value._blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      featureSettings: null == featureSettings
          ? _value._featureSettings
          : featureSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationPrivacyImpl
    with DiagnosticableTreeMixin
    implements _LocationPrivacy {
  const _$LocationPrivacyImpl(
      {required this.userId,
      required this.shareLocation,
      required this.precision,
      required final List<String> allowedUsers,
      required final List<String> blockedUsers,
      required final Map<String, bool> featureSettings,
      required final Map<String, dynamic> metadata})
      : _allowedUsers = allowedUsers,
        _blockedUsers = blockedUsers,
        _featureSettings = featureSettings,
        _metadata = metadata;

  factory _$LocationPrivacyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationPrivacyImplFromJson(json);

  @override
  final String userId;
  @override
  final bool shareLocation;
  @override
  final String precision;
  final List<String> _allowedUsers;
  @override
  List<String> get allowedUsers {
    if (_allowedUsers is EqualUnmodifiableListView) return _allowedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedUsers);
  }

  final List<String> _blockedUsers;
  @override
  List<String> get blockedUsers {
    if (_blockedUsers is EqualUnmodifiableListView) return _blockedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedUsers);
  }

  final Map<String, bool> _featureSettings;
  @override
  Map<String, bool> get featureSettings {
    if (_featureSettings is EqualUnmodifiableMapView) return _featureSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_featureSettings);
  }

  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationPrivacy(userId: $userId, shareLocation: $shareLocation, precision: $precision, allowedUsers: $allowedUsers, blockedUsers: $blockedUsers, featureSettings: $featureSettings, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationPrivacy'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('shareLocation', shareLocation))
      ..add(DiagnosticsProperty('precision', precision))
      ..add(DiagnosticsProperty('allowedUsers', allowedUsers))
      ..add(DiagnosticsProperty('blockedUsers', blockedUsers))
      ..add(DiagnosticsProperty('featureSettings', featureSettings))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPrivacyImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.shareLocation, shareLocation) ||
                other.shareLocation == shareLocation) &&
            (identical(other.precision, precision) ||
                other.precision == precision) &&
            const DeepCollectionEquality()
                .equals(other._allowedUsers, _allowedUsers) &&
            const DeepCollectionEquality()
                .equals(other._blockedUsers, _blockedUsers) &&
            const DeepCollectionEquality()
                .equals(other._featureSettings, _featureSettings) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      shareLocation,
      precision,
      const DeepCollectionEquality().hash(_allowedUsers),
      const DeepCollectionEquality().hash(_blockedUsers),
      const DeepCollectionEquality().hash(_featureSettings),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPrivacyImplCopyWith<_$LocationPrivacyImpl> get copyWith =>
      __$$LocationPrivacyImplCopyWithImpl<_$LocationPrivacyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationPrivacyImplToJson(
      this,
    );
  }
}

abstract class _LocationPrivacy implements LocationPrivacy {
  const factory _LocationPrivacy(
      {required final String userId,
      required final bool shareLocation,
      required final String precision,
      required final List<String> allowedUsers,
      required final List<String> blockedUsers,
      required final Map<String, bool> featureSettings,
      required final Map<String, dynamic> metadata}) = _$LocationPrivacyImpl;

  factory _LocationPrivacy.fromJson(Map<String, dynamic> json) =
      _$LocationPrivacyImpl.fromJson;

  @override
  String get userId;
  @override
  bool get shareLocation;
  @override
  String get precision;
  @override
  List<String> get allowedUsers;
  @override
  List<String> get blockedUsers;
  @override
  Map<String, bool> get featureSettings;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$LocationPrivacyImplCopyWith<_$LocationPrivacyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSharingSettings _$DataSharingSettingsFromJson(Map<String, dynamic> json) {
  return _DataSharingSettings.fromJson(json);
}

/// @nodoc
mixin _$DataSharingSettings {
  String get userId => throw _privateConstructorUsedError;
  Map<String, String> get dataTypes => throw _privateConstructorUsedError;
  Map<String, List<String>> get allowedUsers =>
      throw _privateConstructorUsedError;
  Map<String, bool> get thirdPartySharing => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  Map<String, dynamic> get preferences => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSharingSettingsCopyWith<DataSharingSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSharingSettingsCopyWith<$Res> {
  factory $DataSharingSettingsCopyWith(
          DataSharingSettings value, $Res Function(DataSharingSettings) then) =
      _$DataSharingSettingsCopyWithImpl<$Res, DataSharingSettings>;
  @useResult
  $Res call(
      {String userId,
      Map<String, String> dataTypes,
      Map<String, List<String>> allowedUsers,
      Map<String, bool> thirdPartySharing,
      DateTime lastUpdated,
      Map<String, dynamic> preferences});
}

/// @nodoc
class _$DataSharingSettingsCopyWithImpl<$Res, $Val extends DataSharingSettings>
    implements $DataSharingSettingsCopyWith<$Res> {
  _$DataSharingSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dataTypes = null,
    Object? allowedUsers = null,
    Object? thirdPartySharing = null,
    Object? lastUpdated = null,
    Object? preferences = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dataTypes: null == dataTypes
          ? _value.dataTypes
          : dataTypes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      allowedUsers: null == allowedUsers
          ? _value.allowedUsers
          : allowedUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      thirdPartySharing: null == thirdPartySharing
          ? _value.thirdPartySharing
          : thirdPartySharing // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSharingSettingsImplCopyWith<$Res>
    implements $DataSharingSettingsCopyWith<$Res> {
  factory _$$DataSharingSettingsImplCopyWith(_$DataSharingSettingsImpl value,
          $Res Function(_$DataSharingSettingsImpl) then) =
      __$$DataSharingSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      Map<String, String> dataTypes,
      Map<String, List<String>> allowedUsers,
      Map<String, bool> thirdPartySharing,
      DateTime lastUpdated,
      Map<String, dynamic> preferences});
}

/// @nodoc
class __$$DataSharingSettingsImplCopyWithImpl<$Res>
    extends _$DataSharingSettingsCopyWithImpl<$Res, _$DataSharingSettingsImpl>
    implements _$$DataSharingSettingsImplCopyWith<$Res> {
  __$$DataSharingSettingsImplCopyWithImpl(_$DataSharingSettingsImpl _value,
      $Res Function(_$DataSharingSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dataTypes = null,
    Object? allowedUsers = null,
    Object? thirdPartySharing = null,
    Object? lastUpdated = null,
    Object? preferences = null,
  }) {
    return _then(_$DataSharingSettingsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dataTypes: null == dataTypes
          ? _value._dataTypes
          : dataTypes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      allowedUsers: null == allowedUsers
          ? _value._allowedUsers
          : allowedUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      thirdPartySharing: null == thirdPartySharing
          ? _value._thirdPartySharing
          : thirdPartySharing // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      preferences: null == preferences
          ? _value._preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSharingSettingsImpl
    with DiagnosticableTreeMixin
    implements _DataSharingSettings {
  const _$DataSharingSettingsImpl(
      {required this.userId,
      required final Map<String, String> dataTypes,
      required final Map<String, List<String>> allowedUsers,
      required final Map<String, bool> thirdPartySharing,
      required this.lastUpdated,
      required final Map<String, dynamic> preferences})
      : _dataTypes = dataTypes,
        _allowedUsers = allowedUsers,
        _thirdPartySharing = thirdPartySharing,
        _preferences = preferences;

  factory _$DataSharingSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSharingSettingsImplFromJson(json);

  @override
  final String userId;
  final Map<String, String> _dataTypes;
  @override
  Map<String, String> get dataTypes {
    if (_dataTypes is EqualUnmodifiableMapView) return _dataTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dataTypes);
  }

  final Map<String, List<String>> _allowedUsers;
  @override
  Map<String, List<String>> get allowedUsers {
    if (_allowedUsers is EqualUnmodifiableMapView) return _allowedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_allowedUsers);
  }

  final Map<String, bool> _thirdPartySharing;
  @override
  Map<String, bool> get thirdPartySharing {
    if (_thirdPartySharing is EqualUnmodifiableMapView)
      return _thirdPartySharing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_thirdPartySharing);
  }

  @override
  final DateTime lastUpdated;
  final Map<String, dynamic> _preferences;
  @override
  Map<String, dynamic> get preferences {
    if (_preferences is EqualUnmodifiableMapView) return _preferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_preferences);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSharingSettings(userId: $userId, dataTypes: $dataTypes, allowedUsers: $allowedUsers, thirdPartySharing: $thirdPartySharing, lastUpdated: $lastUpdated, preferences: $preferences)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataSharingSettings'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('dataTypes', dataTypes))
      ..add(DiagnosticsProperty('allowedUsers', allowedUsers))
      ..add(DiagnosticsProperty('thirdPartySharing', thirdPartySharing))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated))
      ..add(DiagnosticsProperty('preferences', preferences));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSharingSettingsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._dataTypes, _dataTypes) &&
            const DeepCollectionEquality()
                .equals(other._allowedUsers, _allowedUsers) &&
            const DeepCollectionEquality()
                .equals(other._thirdPartySharing, _thirdPartySharing) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality()
                .equals(other._preferences, _preferences));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(_dataTypes),
      const DeepCollectionEquality().hash(_allowedUsers),
      const DeepCollectionEquality().hash(_thirdPartySharing),
      lastUpdated,
      const DeepCollectionEquality().hash(_preferences));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSharingSettingsImplCopyWith<_$DataSharingSettingsImpl> get copyWith =>
      __$$DataSharingSettingsImplCopyWithImpl<_$DataSharingSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSharingSettingsImplToJson(
      this,
    );
  }
}

abstract class _DataSharingSettings implements DataSharingSettings {
  const factory _DataSharingSettings(
          {required final String userId,
          required final Map<String, String> dataTypes,
          required final Map<String, List<String>> allowedUsers,
          required final Map<String, bool> thirdPartySharing,
          required final DateTime lastUpdated,
          required final Map<String, dynamic> preferences}) =
      _$DataSharingSettingsImpl;

  factory _DataSharingSettings.fromJson(Map<String, dynamic> json) =
      _$DataSharingSettingsImpl.fromJson;

  @override
  String get userId;
  @override
  Map<String, String> get dataTypes;
  @override
  Map<String, List<String>> get allowedUsers;
  @override
  Map<String, bool> get thirdPartySharing;
  @override
  DateTime get lastUpdated;
  @override
  Map<String, dynamic> get preferences;
  @override
  @JsonKey(ignore: true)
  _$$DataSharingSettingsImplCopyWith<_$DataSharingSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileVisibility _$ProfileVisibilityFromJson(Map<String, dynamic> json) {
  return _ProfileVisibility.fromJson(json);
}

/// @nodoc
mixin _$ProfileVisibility {
  String get userId => throw _privateConstructorUsedError;
  String get defaultVisibility => throw _privateConstructorUsedError;
  Map<String, String> get fieldVisibility => throw _privateConstructorUsedError;
  List<String> get allowedUsers => throw _privateConstructorUsedError;
  List<String> get blockedUsers => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileVisibilityCopyWith<ProfileVisibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileVisibilityCopyWith<$Res> {
  factory $ProfileVisibilityCopyWith(
          ProfileVisibility value, $Res Function(ProfileVisibility) then) =
      _$ProfileVisibilityCopyWithImpl<$Res, ProfileVisibility>;
  @useResult
  $Res call(
      {String userId,
      String defaultVisibility,
      Map<String, String> fieldVisibility,
      List<String> allowedUsers,
      List<String> blockedUsers,
      Map<String, dynamic> settings});
}

/// @nodoc
class _$ProfileVisibilityCopyWithImpl<$Res, $Val extends ProfileVisibility>
    implements $ProfileVisibilityCopyWith<$Res> {
  _$ProfileVisibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? defaultVisibility = null,
    Object? fieldVisibility = null,
    Object? allowedUsers = null,
    Object? blockedUsers = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      defaultVisibility: null == defaultVisibility
          ? _value.defaultVisibility
          : defaultVisibility // ignore: cast_nullable_to_non_nullable
              as String,
      fieldVisibility: null == fieldVisibility
          ? _value.fieldVisibility
          : fieldVisibility // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      allowedUsers: null == allowedUsers
          ? _value.allowedUsers
          : allowedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$ProfileVisibilityImplCopyWith<$Res>
    implements $ProfileVisibilityCopyWith<$Res> {
  factory _$$ProfileVisibilityImplCopyWith(_$ProfileVisibilityImpl value,
          $Res Function(_$ProfileVisibilityImpl) then) =
      __$$ProfileVisibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String defaultVisibility,
      Map<String, String> fieldVisibility,
      List<String> allowedUsers,
      List<String> blockedUsers,
      Map<String, dynamic> settings});
}

/// @nodoc
class __$$ProfileVisibilityImplCopyWithImpl<$Res>
    extends _$ProfileVisibilityCopyWithImpl<$Res, _$ProfileVisibilityImpl>
    implements _$$ProfileVisibilityImplCopyWith<$Res> {
  __$$ProfileVisibilityImplCopyWithImpl(_$ProfileVisibilityImpl _value,
      $Res Function(_$ProfileVisibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? defaultVisibility = null,
    Object? fieldVisibility = null,
    Object? allowedUsers = null,
    Object? blockedUsers = null,
    Object? settings = null,
  }) {
    return _then(_$ProfileVisibilityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      defaultVisibility: null == defaultVisibility
          ? _value.defaultVisibility
          : defaultVisibility // ignore: cast_nullable_to_non_nullable
              as String,
      fieldVisibility: null == fieldVisibility
          ? _value._fieldVisibility
          : fieldVisibility // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      allowedUsers: null == allowedUsers
          ? _value._allowedUsers
          : allowedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
class _$ProfileVisibilityImpl
    with DiagnosticableTreeMixin
    implements _ProfileVisibility {
  const _$ProfileVisibilityImpl(
      {required this.userId,
      required this.defaultVisibility,
      required final Map<String, String> fieldVisibility,
      required final List<String> allowedUsers,
      required final List<String> blockedUsers,
      required final Map<String, dynamic> settings})
      : _fieldVisibility = fieldVisibility,
        _allowedUsers = allowedUsers,
        _blockedUsers = blockedUsers,
        _settings = settings;

  factory _$ProfileVisibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileVisibilityImplFromJson(json);

  @override
  final String userId;
  @override
  final String defaultVisibility;
  final Map<String, String> _fieldVisibility;
  @override
  Map<String, String> get fieldVisibility {
    if (_fieldVisibility is EqualUnmodifiableMapView) return _fieldVisibility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fieldVisibility);
  }

  final List<String> _allowedUsers;
  @override
  List<String> get allowedUsers {
    if (_allowedUsers is EqualUnmodifiableListView) return _allowedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedUsers);
  }

  final List<String> _blockedUsers;
  @override
  List<String> get blockedUsers {
    if (_blockedUsers is EqualUnmodifiableListView) return _blockedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedUsers);
  }

  final Map<String, dynamic> _settings;
  @override
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileVisibility(userId: $userId, defaultVisibility: $defaultVisibility, fieldVisibility: $fieldVisibility, allowedUsers: $allowedUsers, blockedUsers: $blockedUsers, settings: $settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileVisibility'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('defaultVisibility', defaultVisibility))
      ..add(DiagnosticsProperty('fieldVisibility', fieldVisibility))
      ..add(DiagnosticsProperty('allowedUsers', allowedUsers))
      ..add(DiagnosticsProperty('blockedUsers', blockedUsers))
      ..add(DiagnosticsProperty('settings', settings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileVisibilityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.defaultVisibility, defaultVisibility) ||
                other.defaultVisibility == defaultVisibility) &&
            const DeepCollectionEquality()
                .equals(other._fieldVisibility, _fieldVisibility) &&
            const DeepCollectionEquality()
                .equals(other._allowedUsers, _allowedUsers) &&
            const DeepCollectionEquality()
                .equals(other._blockedUsers, _blockedUsers) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      defaultVisibility,
      const DeepCollectionEquality().hash(_fieldVisibility),
      const DeepCollectionEquality().hash(_allowedUsers),
      const DeepCollectionEquality().hash(_blockedUsers),
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileVisibilityImplCopyWith<_$ProfileVisibilityImpl> get copyWith =>
      __$$ProfileVisibilityImplCopyWithImpl<_$ProfileVisibilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileVisibilityImplToJson(
      this,
    );
  }
}

abstract class _ProfileVisibility implements ProfileVisibility {
  const factory _ProfileVisibility(
      {required final String userId,
      required final String defaultVisibility,
      required final Map<String, String> fieldVisibility,
      required final List<String> allowedUsers,
      required final List<String> blockedUsers,
      required final Map<String, dynamic> settings}) = _$ProfileVisibilityImpl;

  factory _ProfileVisibility.fromJson(Map<String, dynamic> json) =
      _$ProfileVisibilityImpl.fromJson;

  @override
  String get userId;
  @override
  String get defaultVisibility;
  @override
  Map<String, String> get fieldVisibility;
  @override
  List<String> get allowedUsers;
  @override
  List<String> get blockedUsers;
  @override
  Map<String, dynamic> get settings;
  @override
  @JsonKey(ignore: true)
  _$$ProfileVisibilityImplCopyWith<_$ProfileVisibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentAccess _$ContentAccessFromJson(Map<String, dynamic> json) {
  return _ContentAccess.fromJson(json);
}

/// @nodoc
mixin _$ContentAccess {
  String get contentId => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  List<String> get allowedUsers => throw _privateConstructorUsedError;
  List<String> get blockedUsers => throw _privateConstructorUsedError;
  Map<String, dynamic> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentAccessCopyWith<ContentAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentAccessCopyWith<$Res> {
  factory $ContentAccessCopyWith(
          ContentAccess value, $Res Function(ContentAccess) then) =
      _$ContentAccessCopyWithImpl<$Res, ContentAccess>;
  @useResult
  $Res call(
      {String contentId,
      String contentType,
      String ownerId,
      String visibility,
      List<String> allowedUsers,
      List<String> blockedUsers,
      Map<String, dynamic> permissions});
}

/// @nodoc
class _$ContentAccessCopyWithImpl<$Res, $Val extends ContentAccess>
    implements $ContentAccessCopyWith<$Res> {
  _$ContentAccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? ownerId = null,
    Object? visibility = null,
    Object? allowedUsers = null,
    Object? blockedUsers = null,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      allowedUsers: null == allowedUsers
          ? _value.allowedUsers
          : allowedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedUsers: null == blockedUsers
          ? _value.blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentAccessImplCopyWith<$Res>
    implements $ContentAccessCopyWith<$Res> {
  factory _$$ContentAccessImplCopyWith(
          _$ContentAccessImpl value, $Res Function(_$ContentAccessImpl) then) =
      __$$ContentAccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentId,
      String contentType,
      String ownerId,
      String visibility,
      List<String> allowedUsers,
      List<String> blockedUsers,
      Map<String, dynamic> permissions});
}

/// @nodoc
class __$$ContentAccessImplCopyWithImpl<$Res>
    extends _$ContentAccessCopyWithImpl<$Res, _$ContentAccessImpl>
    implements _$$ContentAccessImplCopyWith<$Res> {
  __$$ContentAccessImplCopyWithImpl(
      _$ContentAccessImpl _value, $Res Function(_$ContentAccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? ownerId = null,
    Object? visibility = null,
    Object? allowedUsers = null,
    Object? blockedUsers = null,
    Object? permissions = null,
  }) {
    return _then(_$ContentAccessImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      allowedUsers: null == allowedUsers
          ? _value._allowedUsers
          : allowedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedUsers: null == blockedUsers
          ? _value._blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentAccessImpl
    with DiagnosticableTreeMixin
    implements _ContentAccess {
  const _$ContentAccessImpl(
      {required this.contentId,
      required this.contentType,
      required this.ownerId,
      required this.visibility,
      required final List<String> allowedUsers,
      required final List<String> blockedUsers,
      required final Map<String, dynamic> permissions})
      : _allowedUsers = allowedUsers,
        _blockedUsers = blockedUsers,
        _permissions = permissions;

  factory _$ContentAccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentAccessImplFromJson(json);

  @override
  final String contentId;
  @override
  final String contentType;
  @override
  final String ownerId;
  @override
  final String visibility;
  final List<String> _allowedUsers;
  @override
  List<String> get allowedUsers {
    if (_allowedUsers is EqualUnmodifiableListView) return _allowedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedUsers);
  }

  final List<String> _blockedUsers;
  @override
  List<String> get blockedUsers {
    if (_blockedUsers is EqualUnmodifiableListView) return _blockedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedUsers);
  }

  final Map<String, dynamic> _permissions;
  @override
  Map<String, dynamic> get permissions {
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_permissions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContentAccess(contentId: $contentId, contentType: $contentType, ownerId: $ownerId, visibility: $visibility, allowedUsers: $allowedUsers, blockedUsers: $blockedUsers, permissions: $permissions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContentAccess'))
      ..add(DiagnosticsProperty('contentId', contentId))
      ..add(DiagnosticsProperty('contentType', contentType))
      ..add(DiagnosticsProperty('ownerId', ownerId))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('allowedUsers', allowedUsers))
      ..add(DiagnosticsProperty('blockedUsers', blockedUsers))
      ..add(DiagnosticsProperty('permissions', permissions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentAccessImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            const DeepCollectionEquality()
                .equals(other._allowedUsers, _allowedUsers) &&
            const DeepCollectionEquality()
                .equals(other._blockedUsers, _blockedUsers) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contentId,
      contentType,
      ownerId,
      visibility,
      const DeepCollectionEquality().hash(_allowedUsers),
      const DeepCollectionEquality().hash(_blockedUsers),
      const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentAccessImplCopyWith<_$ContentAccessImpl> get copyWith =>
      __$$ContentAccessImplCopyWithImpl<_$ContentAccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentAccessImplToJson(
      this,
    );
  }
}

abstract class _ContentAccess implements ContentAccess {
  const factory _ContentAccess(
      {required final String contentId,
      required final String contentType,
      required final String ownerId,
      required final String visibility,
      required final List<String> allowedUsers,
      required final List<String> blockedUsers,
      required final Map<String, dynamic> permissions}) = _$ContentAccessImpl;

  factory _ContentAccess.fromJson(Map<String, dynamic> json) =
      _$ContentAccessImpl.fromJson;

  @override
  String get contentId;
  @override
  String get contentType;
  @override
  String get ownerId;
  @override
  String get visibility;
  @override
  List<String> get allowedUsers;
  @override
  List<String> get blockedUsers;
  @override
  Map<String, dynamic> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$ContentAccessImplCopyWith<_$ContentAccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FriendControl _$FriendControlFromJson(Map<String, dynamic> json) {
  return _FriendControl.fromJson(json);
}

/// @nodoc
mixin _$FriendControl {
  String get userId => throw _privateConstructorUsedError;
  bool get allowFriendRequests => throw _privateConstructorUsedError;
  List<String> get friendList => throw _privateConstructorUsedError;
  List<String> get pendingRequests => throw _privateConstructorUsedError;
  List<String> get blockedUsers => throw _privateConstructorUsedError;
  Map<String, String> get friendGroups => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendControlCopyWith<FriendControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendControlCopyWith<$Res> {
  factory $FriendControlCopyWith(
          FriendControl value, $Res Function(FriendControl) then) =
      _$FriendControlCopyWithImpl<$Res, FriendControl>;
  @useResult
  $Res call(
      {String userId,
      bool allowFriendRequests,
      List<String> friendList,
      List<String> pendingRequests,
      List<String> blockedUsers,
      Map<String, String> friendGroups,
      Map<String, dynamic> settings});
}

/// @nodoc
class _$FriendControlCopyWithImpl<$Res, $Val extends FriendControl>
    implements $FriendControlCopyWith<$Res> {
  _$FriendControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? allowFriendRequests = null,
    Object? friendList = null,
    Object? pendingRequests = null,
    Object? blockedUsers = null,
    Object? friendGroups = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      allowFriendRequests: null == allowFriendRequests
          ? _value.allowFriendRequests
          : allowFriendRequests // ignore: cast_nullable_to_non_nullable
              as bool,
      friendList: null == friendList
          ? _value.friendList
          : friendList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pendingRequests: null == pendingRequests
          ? _value.pendingRequests
          : pendingRequests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedUsers: null == blockedUsers
          ? _value.blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      friendGroups: null == friendGroups
          ? _value.friendGroups
          : friendGroups // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FriendControlImplCopyWith<$Res>
    implements $FriendControlCopyWith<$Res> {
  factory _$$FriendControlImplCopyWith(
          _$FriendControlImpl value, $Res Function(_$FriendControlImpl) then) =
      __$$FriendControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      bool allowFriendRequests,
      List<String> friendList,
      List<String> pendingRequests,
      List<String> blockedUsers,
      Map<String, String> friendGroups,
      Map<String, dynamic> settings});
}

/// @nodoc
class __$$FriendControlImplCopyWithImpl<$Res>
    extends _$FriendControlCopyWithImpl<$Res, _$FriendControlImpl>
    implements _$$FriendControlImplCopyWith<$Res> {
  __$$FriendControlImplCopyWithImpl(
      _$FriendControlImpl _value, $Res Function(_$FriendControlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? allowFriendRequests = null,
    Object? friendList = null,
    Object? pendingRequests = null,
    Object? blockedUsers = null,
    Object? friendGroups = null,
    Object? settings = null,
  }) {
    return _then(_$FriendControlImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      allowFriendRequests: null == allowFriendRequests
          ? _value.allowFriendRequests
          : allowFriendRequests // ignore: cast_nullable_to_non_nullable
              as bool,
      friendList: null == friendList
          ? _value._friendList
          : friendList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pendingRequests: null == pendingRequests
          ? _value._pendingRequests
          : pendingRequests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedUsers: null == blockedUsers
          ? _value._blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      friendGroups: null == friendGroups
          ? _value._friendGroups
          : friendGroups // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendControlImpl
    with DiagnosticableTreeMixin
    implements _FriendControl {
  const _$FriendControlImpl(
      {required this.userId,
      required this.allowFriendRequests,
      required final List<String> friendList,
      required final List<String> pendingRequests,
      required final List<String> blockedUsers,
      required final Map<String, String> friendGroups,
      required final Map<String, dynamic> settings})
      : _friendList = friendList,
        _pendingRequests = pendingRequests,
        _blockedUsers = blockedUsers,
        _friendGroups = friendGroups,
        _settings = settings;

  factory _$FriendControlImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendControlImplFromJson(json);

  @override
  final String userId;
  @override
  final bool allowFriendRequests;
  final List<String> _friendList;
  @override
  List<String> get friendList {
    if (_friendList is EqualUnmodifiableListView) return _friendList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friendList);
  }

  final List<String> _pendingRequests;
  @override
  List<String> get pendingRequests {
    if (_pendingRequests is EqualUnmodifiableListView) return _pendingRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingRequests);
  }

  final List<String> _blockedUsers;
  @override
  List<String> get blockedUsers {
    if (_blockedUsers is EqualUnmodifiableListView) return _blockedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedUsers);
  }

  final Map<String, String> _friendGroups;
  @override
  Map<String, String> get friendGroups {
    if (_friendGroups is EqualUnmodifiableMapView) return _friendGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_friendGroups);
  }

  final Map<String, dynamic> _settings;
  @override
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FriendControl(userId: $userId, allowFriendRequests: $allowFriendRequests, friendList: $friendList, pendingRequests: $pendingRequests, blockedUsers: $blockedUsers, friendGroups: $friendGroups, settings: $settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FriendControl'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('allowFriendRequests', allowFriendRequests))
      ..add(DiagnosticsProperty('friendList', friendList))
      ..add(DiagnosticsProperty('pendingRequests', pendingRequests))
      ..add(DiagnosticsProperty('blockedUsers', blockedUsers))
      ..add(DiagnosticsProperty('friendGroups', friendGroups))
      ..add(DiagnosticsProperty('settings', settings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendControlImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.allowFriendRequests, allowFriendRequests) ||
                other.allowFriendRequests == allowFriendRequests) &&
            const DeepCollectionEquality()
                .equals(other._friendList, _friendList) &&
            const DeepCollectionEquality()
                .equals(other._pendingRequests, _pendingRequests) &&
            const DeepCollectionEquality()
                .equals(other._blockedUsers, _blockedUsers) &&
            const DeepCollectionEquality()
                .equals(other._friendGroups, _friendGroups) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      allowFriendRequests,
      const DeepCollectionEquality().hash(_friendList),
      const DeepCollectionEquality().hash(_pendingRequests),
      const DeepCollectionEquality().hash(_blockedUsers),
      const DeepCollectionEquality().hash(_friendGroups),
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendControlImplCopyWith<_$FriendControlImpl> get copyWith =>
      __$$FriendControlImplCopyWithImpl<_$FriendControlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendControlImplToJson(
      this,
    );
  }
}

abstract class _FriendControl implements FriendControl {
  const factory _FriendControl(
      {required final String userId,
      required final bool allowFriendRequests,
      required final List<String> friendList,
      required final List<String> pendingRequests,
      required final List<String> blockedUsers,
      required final Map<String, String> friendGroups,
      required final Map<String, dynamic> settings}) = _$FriendControlImpl;

  factory _FriendControl.fromJson(Map<String, dynamic> json) =
      _$FriendControlImpl.fromJson;

  @override
  String get userId;
  @override
  bool get allowFriendRequests;
  @override
  List<String> get friendList;
  @override
  List<String> get pendingRequests;
  @override
  List<String> get blockedUsers;
  @override
  Map<String, String> get friendGroups;
  @override
  Map<String, dynamic> get settings;
  @override
  @JsonKey(ignore: true)
  _$$FriendControlImplCopyWith<_$FriendControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlockSettings _$BlockSettingsFromJson(Map<String, dynamic> json) {
  return _BlockSettings.fromJson(json);
}

/// @nodoc
mixin _$BlockSettings {
  String get userId => throw _privateConstructorUsedError;
  List<String> get blockedUsers => throw _privateConstructorUsedError;
  List<String> get blockedByUsers => throw _privateConstructorUsedError;
  Map<String, String> get blockReasons => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockSettingsCopyWith<BlockSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockSettingsCopyWith<$Res> {
  factory $BlockSettingsCopyWith(
          BlockSettings value, $Res Function(BlockSettings) then) =
      _$BlockSettingsCopyWithImpl<$Res, BlockSettings>;
  @useResult
  $Res call(
      {String userId,
      List<String> blockedUsers,
      List<String> blockedByUsers,
      Map<String, String> blockReasons,
      DateTime lastUpdated,
      Map<String, dynamic> settings});
}

/// @nodoc
class _$BlockSettingsCopyWithImpl<$Res, $Val extends BlockSettings>
    implements $BlockSettingsCopyWith<$Res> {
  _$BlockSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? blockedUsers = null,
    Object? blockedByUsers = null,
    Object? blockReasons = null,
    Object? lastUpdated = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      blockedUsers: null == blockedUsers
          ? _value.blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedByUsers: null == blockedByUsers
          ? _value.blockedByUsers
          : blockedByUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockReasons: null == blockReasons
          ? _value.blockReasons
          : blockReasons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockSettingsImplCopyWith<$Res>
    implements $BlockSettingsCopyWith<$Res> {
  factory _$$BlockSettingsImplCopyWith(
          _$BlockSettingsImpl value, $Res Function(_$BlockSettingsImpl) then) =
      __$$BlockSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      List<String> blockedUsers,
      List<String> blockedByUsers,
      Map<String, String> blockReasons,
      DateTime lastUpdated,
      Map<String, dynamic> settings});
}

/// @nodoc
class __$$BlockSettingsImplCopyWithImpl<$Res>
    extends _$BlockSettingsCopyWithImpl<$Res, _$BlockSettingsImpl>
    implements _$$BlockSettingsImplCopyWith<$Res> {
  __$$BlockSettingsImplCopyWithImpl(
      _$BlockSettingsImpl _value, $Res Function(_$BlockSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? blockedUsers = null,
    Object? blockedByUsers = null,
    Object? blockReasons = null,
    Object? lastUpdated = null,
    Object? settings = null,
  }) {
    return _then(_$BlockSettingsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      blockedUsers: null == blockedUsers
          ? _value._blockedUsers
          : blockedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockedByUsers: null == blockedByUsers
          ? _value._blockedByUsers
          : blockedByUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockReasons: null == blockReasons
          ? _value._blockReasons
          : blockReasons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockSettingsImpl
    with DiagnosticableTreeMixin
    implements _BlockSettings {
  const _$BlockSettingsImpl(
      {required this.userId,
      required final List<String> blockedUsers,
      required final List<String> blockedByUsers,
      required final Map<String, String> blockReasons,
      required this.lastUpdated,
      required final Map<String, dynamic> settings})
      : _blockedUsers = blockedUsers,
        _blockedByUsers = blockedByUsers,
        _blockReasons = blockReasons,
        _settings = settings;

  factory _$BlockSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockSettingsImplFromJson(json);

  @override
  final String userId;
  final List<String> _blockedUsers;
  @override
  List<String> get blockedUsers {
    if (_blockedUsers is EqualUnmodifiableListView) return _blockedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedUsers);
  }

  final List<String> _blockedByUsers;
  @override
  List<String> get blockedByUsers {
    if (_blockedByUsers is EqualUnmodifiableListView) return _blockedByUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedByUsers);
  }

  final Map<String, String> _blockReasons;
  @override
  Map<String, String> get blockReasons {
    if (_blockReasons is EqualUnmodifiableMapView) return _blockReasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_blockReasons);
  }

  @override
  final DateTime lastUpdated;
  final Map<String, dynamic> _settings;
  @override
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlockSettings(userId: $userId, blockedUsers: $blockedUsers, blockedByUsers: $blockedByUsers, blockReasons: $blockReasons, lastUpdated: $lastUpdated, settings: $settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlockSettings'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('blockedUsers', blockedUsers))
      ..add(DiagnosticsProperty('blockedByUsers', blockedByUsers))
      ..add(DiagnosticsProperty('blockReasons', blockReasons))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated))
      ..add(DiagnosticsProperty('settings', settings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockSettingsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._blockedUsers, _blockedUsers) &&
            const DeepCollectionEquality()
                .equals(other._blockedByUsers, _blockedByUsers) &&
            const DeepCollectionEquality()
                .equals(other._blockReasons, _blockReasons) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(_blockedUsers),
      const DeepCollectionEquality().hash(_blockedByUsers),
      const DeepCollectionEquality().hash(_blockReasons),
      lastUpdated,
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockSettingsImplCopyWith<_$BlockSettingsImpl> get copyWith =>
      __$$BlockSettingsImplCopyWithImpl<_$BlockSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockSettingsImplToJson(
      this,
    );
  }
}

abstract class _BlockSettings implements BlockSettings {
  const factory _BlockSettings(
      {required final String userId,
      required final List<String> blockedUsers,
      required final List<String> blockedByUsers,
      required final Map<String, String> blockReasons,
      required final DateTime lastUpdated,
      required final Map<String, dynamic> settings}) = _$BlockSettingsImpl;

  factory _BlockSettings.fromJson(Map<String, dynamic> json) =
      _$BlockSettingsImpl.fromJson;

  @override
  String get userId;
  @override
  List<String> get blockedUsers;
  @override
  List<String> get blockedByUsers;
  @override
  Map<String, String> get blockReasons;
  @override
  DateTime get lastUpdated;
  @override
  Map<String, dynamic> get settings;
  @override
  @JsonKey(ignore: true)
  _$$BlockSettingsImplCopyWith<_$BlockSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
