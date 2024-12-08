// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsageMetrics _$UsageMetricsFromJson(Map<String, dynamic> json) {
  return _UsageMetrics.fromJson(json);
}

/// @nodoc
mixin _$UsageMetrics {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get dailyActiveUsers => throw _privateConstructorUsedError;
  int get monthlyActiveUsers => throw _privateConstructorUsedError;
  Map<String, int> get sessionCounts => throw _privateConstructorUsedError;
  Map<String, double> get averageSessionDuration =>
      throw _privateConstructorUsedError;
  Map<String, int> get featureUsage => throw _privateConstructorUsedError;
  Map<String, int> get screenViews => throw _privateConstructorUsedError;
  Map<String, double> get retentionRates => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customMetrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsageMetricsCopyWith<UsageMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageMetricsCopyWith<$Res> {
  factory $UsageMetricsCopyWith(
          UsageMetrics value, $Res Function(UsageMetrics) then) =
      _$UsageMetricsCopyWithImpl<$Res, UsageMetrics>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      int dailyActiveUsers,
      int monthlyActiveUsers,
      Map<String, int> sessionCounts,
      Map<String, double> averageSessionDuration,
      Map<String, int> featureUsage,
      Map<String, int> screenViews,
      Map<String, double> retentionRates,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class _$UsageMetricsCopyWithImpl<$Res, $Val extends UsageMetrics>
    implements $UsageMetricsCopyWith<$Res> {
  _$UsageMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? dailyActiveUsers = null,
    Object? monthlyActiveUsers = null,
    Object? sessionCounts = null,
    Object? averageSessionDuration = null,
    Object? featureUsage = null,
    Object? screenViews = null,
    Object? retentionRates = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dailyActiveUsers: null == dailyActiveUsers
          ? _value.dailyActiveUsers
          : dailyActiveUsers // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyActiveUsers: null == monthlyActiveUsers
          ? _value.monthlyActiveUsers
          : monthlyActiveUsers // ignore: cast_nullable_to_non_nullable
              as int,
      sessionCounts: null == sessionCounts
          ? _value.sessionCounts
          : sessionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageSessionDuration: null == averageSessionDuration
          ? _value.averageSessionDuration
          : averageSessionDuration // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      featureUsage: null == featureUsage
          ? _value.featureUsage
          : featureUsage // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      screenViews: null == screenViews
          ? _value.screenViews
          : screenViews // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      retentionRates: null == retentionRates
          ? _value.retentionRates
          : retentionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customMetrics: freezed == customMetrics
          ? _value.customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsageMetricsImplCopyWith<$Res>
    implements $UsageMetricsCopyWith<$Res> {
  factory _$$UsageMetricsImplCopyWith(
          _$UsageMetricsImpl value, $Res Function(_$UsageMetricsImpl) then) =
      __$$UsageMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      int dailyActiveUsers,
      int monthlyActiveUsers,
      Map<String, int> sessionCounts,
      Map<String, double> averageSessionDuration,
      Map<String, int> featureUsage,
      Map<String, int> screenViews,
      Map<String, double> retentionRates,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class __$$UsageMetricsImplCopyWithImpl<$Res>
    extends _$UsageMetricsCopyWithImpl<$Res, _$UsageMetricsImpl>
    implements _$$UsageMetricsImplCopyWith<$Res> {
  __$$UsageMetricsImplCopyWithImpl(
      _$UsageMetricsImpl _value, $Res Function(_$UsageMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? dailyActiveUsers = null,
    Object? monthlyActiveUsers = null,
    Object? sessionCounts = null,
    Object? averageSessionDuration = null,
    Object? featureUsage = null,
    Object? screenViews = null,
    Object? retentionRates = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_$UsageMetricsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dailyActiveUsers: null == dailyActiveUsers
          ? _value.dailyActiveUsers
          : dailyActiveUsers // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyActiveUsers: null == monthlyActiveUsers
          ? _value.monthlyActiveUsers
          : monthlyActiveUsers // ignore: cast_nullable_to_non_nullable
              as int,
      sessionCounts: null == sessionCounts
          ? _value._sessionCounts
          : sessionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageSessionDuration: null == averageSessionDuration
          ? _value._averageSessionDuration
          : averageSessionDuration // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      featureUsage: null == featureUsage
          ? _value._featureUsage
          : featureUsage // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      screenViews: null == screenViews
          ? _value._screenViews
          : screenViews // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      retentionRates: null == retentionRates
          ? _value._retentionRates
          : retentionRates // ignore: cast_nullable_to_non_nullable
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
class _$UsageMetricsImpl implements _UsageMetrics {
  const _$UsageMetricsImpl(
      {required this.id,
      required this.timestamp,
      required this.dailyActiveUsers,
      required this.monthlyActiveUsers,
      required final Map<String, int> sessionCounts,
      required final Map<String, double> averageSessionDuration,
      required final Map<String, int> featureUsage,
      required final Map<String, int> screenViews,
      required final Map<String, double> retentionRates,
      final Map<String, dynamic>? customMetrics})
      : _sessionCounts = sessionCounts,
        _averageSessionDuration = averageSessionDuration,
        _featureUsage = featureUsage,
        _screenViews = screenViews,
        _retentionRates = retentionRates,
        _customMetrics = customMetrics;

  factory _$UsageMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageMetricsImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final int dailyActiveUsers;
  @override
  final int monthlyActiveUsers;
  final Map<String, int> _sessionCounts;
  @override
  Map<String, int> get sessionCounts {
    if (_sessionCounts is EqualUnmodifiableMapView) return _sessionCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sessionCounts);
  }

  final Map<String, double> _averageSessionDuration;
  @override
  Map<String, double> get averageSessionDuration {
    if (_averageSessionDuration is EqualUnmodifiableMapView)
      return _averageSessionDuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_averageSessionDuration);
  }

  final Map<String, int> _featureUsage;
  @override
  Map<String, int> get featureUsage {
    if (_featureUsage is EqualUnmodifiableMapView) return _featureUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_featureUsage);
  }

  final Map<String, int> _screenViews;
  @override
  Map<String, int> get screenViews {
    if (_screenViews is EqualUnmodifiableMapView) return _screenViews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_screenViews);
  }

  final Map<String, double> _retentionRates;
  @override
  Map<String, double> get retentionRates {
    if (_retentionRates is EqualUnmodifiableMapView) return _retentionRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_retentionRates);
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
    return 'UsageMetrics(id: $id, timestamp: $timestamp, dailyActiveUsers: $dailyActiveUsers, monthlyActiveUsers: $monthlyActiveUsers, sessionCounts: $sessionCounts, averageSessionDuration: $averageSessionDuration, featureUsage: $featureUsage, screenViews: $screenViews, retentionRates: $retentionRates, customMetrics: $customMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageMetricsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.dailyActiveUsers, dailyActiveUsers) ||
                other.dailyActiveUsers == dailyActiveUsers) &&
            (identical(other.monthlyActiveUsers, monthlyActiveUsers) ||
                other.monthlyActiveUsers == monthlyActiveUsers) &&
            const DeepCollectionEquality()
                .equals(other._sessionCounts, _sessionCounts) &&
            const DeepCollectionEquality().equals(
                other._averageSessionDuration, _averageSessionDuration) &&
            const DeepCollectionEquality()
                .equals(other._featureUsage, _featureUsage) &&
            const DeepCollectionEquality()
                .equals(other._screenViews, _screenViews) &&
            const DeepCollectionEquality()
                .equals(other._retentionRates, _retentionRates) &&
            const DeepCollectionEquality()
                .equals(other._customMetrics, _customMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      dailyActiveUsers,
      monthlyActiveUsers,
      const DeepCollectionEquality().hash(_sessionCounts),
      const DeepCollectionEquality().hash(_averageSessionDuration),
      const DeepCollectionEquality().hash(_featureUsage),
      const DeepCollectionEquality().hash(_screenViews),
      const DeepCollectionEquality().hash(_retentionRates),
      const DeepCollectionEquality().hash(_customMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageMetricsImplCopyWith<_$UsageMetricsImpl> get copyWith =>
      __$$UsageMetricsImplCopyWithImpl<_$UsageMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageMetricsImplToJson(
      this,
    );
  }
}

abstract class _UsageMetrics implements UsageMetrics {
  const factory _UsageMetrics(
      {required final String id,
      required final DateTime timestamp,
      required final int dailyActiveUsers,
      required final int monthlyActiveUsers,
      required final Map<String, int> sessionCounts,
      required final Map<String, double> averageSessionDuration,
      required final Map<String, int> featureUsage,
      required final Map<String, int> screenViews,
      required final Map<String, double> retentionRates,
      final Map<String, dynamic>? customMetrics}) = _$UsageMetricsImpl;

  factory _UsageMetrics.fromJson(Map<String, dynamic> json) =
      _$UsageMetricsImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  int get dailyActiveUsers;
  @override
  int get monthlyActiveUsers;
  @override
  Map<String, int> get sessionCounts;
  @override
  Map<String, double> get averageSessionDuration;
  @override
  Map<String, int> get featureUsage;
  @override
  Map<String, int> get screenViews;
  @override
  Map<String, double> get retentionRates;
  @override
  Map<String, dynamic>? get customMetrics;
  @override
  @JsonKey(ignore: true)
  _$$UsageMetricsImplCopyWith<_$UsageMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformanceMetrics _$PerformanceMetricsFromJson(Map<String, dynamic> json) {
  return _PerformanceMetrics.fromJson(json);
}

/// @nodoc
mixin _$PerformanceMetrics {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, double> get apiLatency => throw _privateConstructorUsedError;
  Map<String, int> get errorCounts => throw _privateConstructorUsedError;
  Map<String, double> get loadTimes => throw _privateConstructorUsedError;
  Map<String, int> get crashCounts => throw _privateConstructorUsedError;
  double get appStartTime => throw _privateConstructorUsedError;
  Map<String, double> get frameRate => throw _privateConstructorUsedError;
  Map<String, int> get memoryUsage => throw _privateConstructorUsedError;
  Map<String, double> get batteryImpact => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customMetrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformanceMetricsCopyWith<PerformanceMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceMetricsCopyWith<$Res> {
  factory $PerformanceMetricsCopyWith(
          PerformanceMetrics value, $Res Function(PerformanceMetrics) then) =
      _$PerformanceMetricsCopyWithImpl<$Res, PerformanceMetrics>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      Map<String, double> apiLatency,
      Map<String, int> errorCounts,
      Map<String, double> loadTimes,
      Map<String, int> crashCounts,
      double appStartTime,
      Map<String, double> frameRate,
      Map<String, int> memoryUsage,
      Map<String, double> batteryImpact,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class _$PerformanceMetricsCopyWithImpl<$Res, $Val extends PerformanceMetrics>
    implements $PerformanceMetricsCopyWith<$Res> {
  _$PerformanceMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? apiLatency = null,
    Object? errorCounts = null,
    Object? loadTimes = null,
    Object? crashCounts = null,
    Object? appStartTime = null,
    Object? frameRate = null,
    Object? memoryUsage = null,
    Object? batteryImpact = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      apiLatency: null == apiLatency
          ? _value.apiLatency
          : apiLatency // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      errorCounts: null == errorCounts
          ? _value.errorCounts
          : errorCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      loadTimes: null == loadTimes
          ? _value.loadTimes
          : loadTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      crashCounts: null == crashCounts
          ? _value.crashCounts
          : crashCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      appStartTime: null == appStartTime
          ? _value.appStartTime
          : appStartTime // ignore: cast_nullable_to_non_nullable
              as double,
      frameRate: null == frameRate
          ? _value.frameRate
          : frameRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      memoryUsage: null == memoryUsage
          ? _value.memoryUsage
          : memoryUsage // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      batteryImpact: null == batteryImpact
          ? _value.batteryImpact
          : batteryImpact // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customMetrics: freezed == customMetrics
          ? _value.customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformanceMetricsImplCopyWith<$Res>
    implements $PerformanceMetricsCopyWith<$Res> {
  factory _$$PerformanceMetricsImplCopyWith(_$PerformanceMetricsImpl value,
          $Res Function(_$PerformanceMetricsImpl) then) =
      __$$PerformanceMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      Map<String, double> apiLatency,
      Map<String, int> errorCounts,
      Map<String, double> loadTimes,
      Map<String, int> crashCounts,
      double appStartTime,
      Map<String, double> frameRate,
      Map<String, int> memoryUsage,
      Map<String, double> batteryImpact,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class __$$PerformanceMetricsImplCopyWithImpl<$Res>
    extends _$PerformanceMetricsCopyWithImpl<$Res, _$PerformanceMetricsImpl>
    implements _$$PerformanceMetricsImplCopyWith<$Res> {
  __$$PerformanceMetricsImplCopyWithImpl(_$PerformanceMetricsImpl _value,
      $Res Function(_$PerformanceMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? apiLatency = null,
    Object? errorCounts = null,
    Object? loadTimes = null,
    Object? crashCounts = null,
    Object? appStartTime = null,
    Object? frameRate = null,
    Object? memoryUsage = null,
    Object? batteryImpact = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_$PerformanceMetricsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      apiLatency: null == apiLatency
          ? _value._apiLatency
          : apiLatency // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      errorCounts: null == errorCounts
          ? _value._errorCounts
          : errorCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      loadTimes: null == loadTimes
          ? _value._loadTimes
          : loadTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      crashCounts: null == crashCounts
          ? _value._crashCounts
          : crashCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      appStartTime: null == appStartTime
          ? _value.appStartTime
          : appStartTime // ignore: cast_nullable_to_non_nullable
              as double,
      frameRate: null == frameRate
          ? _value._frameRate
          : frameRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      memoryUsage: null == memoryUsage
          ? _value._memoryUsage
          : memoryUsage // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      batteryImpact: null == batteryImpact
          ? _value._batteryImpact
          : batteryImpact // ignore: cast_nullable_to_non_nullable
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
class _$PerformanceMetricsImpl implements _PerformanceMetrics {
  const _$PerformanceMetricsImpl(
      {required this.id,
      required this.timestamp,
      required final Map<String, double> apiLatency,
      required final Map<String, int> errorCounts,
      required final Map<String, double> loadTimes,
      required final Map<String, int> crashCounts,
      required this.appStartTime,
      required final Map<String, double> frameRate,
      required final Map<String, int> memoryUsage,
      required final Map<String, double> batteryImpact,
      final Map<String, dynamic>? customMetrics})
      : _apiLatency = apiLatency,
        _errorCounts = errorCounts,
        _loadTimes = loadTimes,
        _crashCounts = crashCounts,
        _frameRate = frameRate,
        _memoryUsage = memoryUsage,
        _batteryImpact = batteryImpact,
        _customMetrics = customMetrics;

  factory _$PerformanceMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformanceMetricsImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  final Map<String, double> _apiLatency;
  @override
  Map<String, double> get apiLatency {
    if (_apiLatency is EqualUnmodifiableMapView) return _apiLatency;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_apiLatency);
  }

  final Map<String, int> _errorCounts;
  @override
  Map<String, int> get errorCounts {
    if (_errorCounts is EqualUnmodifiableMapView) return _errorCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errorCounts);
  }

  final Map<String, double> _loadTimes;
  @override
  Map<String, double> get loadTimes {
    if (_loadTimes is EqualUnmodifiableMapView) return _loadTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_loadTimes);
  }

  final Map<String, int> _crashCounts;
  @override
  Map<String, int> get crashCounts {
    if (_crashCounts is EqualUnmodifiableMapView) return _crashCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_crashCounts);
  }

  @override
  final double appStartTime;
  final Map<String, double> _frameRate;
  @override
  Map<String, double> get frameRate {
    if (_frameRate is EqualUnmodifiableMapView) return _frameRate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_frameRate);
  }

  final Map<String, int> _memoryUsage;
  @override
  Map<String, int> get memoryUsage {
    if (_memoryUsage is EqualUnmodifiableMapView) return _memoryUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_memoryUsage);
  }

  final Map<String, double> _batteryImpact;
  @override
  Map<String, double> get batteryImpact {
    if (_batteryImpact is EqualUnmodifiableMapView) return _batteryImpact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_batteryImpact);
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
    return 'PerformanceMetrics(id: $id, timestamp: $timestamp, apiLatency: $apiLatency, errorCounts: $errorCounts, loadTimes: $loadTimes, crashCounts: $crashCounts, appStartTime: $appStartTime, frameRate: $frameRate, memoryUsage: $memoryUsage, batteryImpact: $batteryImpact, customMetrics: $customMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceMetricsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._apiLatency, _apiLatency) &&
            const DeepCollectionEquality()
                .equals(other._errorCounts, _errorCounts) &&
            const DeepCollectionEquality()
                .equals(other._loadTimes, _loadTimes) &&
            const DeepCollectionEquality()
                .equals(other._crashCounts, _crashCounts) &&
            (identical(other.appStartTime, appStartTime) ||
                other.appStartTime == appStartTime) &&
            const DeepCollectionEquality()
                .equals(other._frameRate, _frameRate) &&
            const DeepCollectionEquality()
                .equals(other._memoryUsage, _memoryUsage) &&
            const DeepCollectionEquality()
                .equals(other._batteryImpact, _batteryImpact) &&
            const DeepCollectionEquality()
                .equals(other._customMetrics, _customMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      const DeepCollectionEquality().hash(_apiLatency),
      const DeepCollectionEquality().hash(_errorCounts),
      const DeepCollectionEquality().hash(_loadTimes),
      const DeepCollectionEquality().hash(_crashCounts),
      appStartTime,
      const DeepCollectionEquality().hash(_frameRate),
      const DeepCollectionEquality().hash(_memoryUsage),
      const DeepCollectionEquality().hash(_batteryImpact),
      const DeepCollectionEquality().hash(_customMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceMetricsImplCopyWith<_$PerformanceMetricsImpl> get copyWith =>
      __$$PerformanceMetricsImplCopyWithImpl<_$PerformanceMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceMetricsImplToJson(
      this,
    );
  }
}

abstract class _PerformanceMetrics implements PerformanceMetrics {
  const factory _PerformanceMetrics(
      {required final String id,
      required final DateTime timestamp,
      required final Map<String, double> apiLatency,
      required final Map<String, int> errorCounts,
      required final Map<String, double> loadTimes,
      required final Map<String, int> crashCounts,
      required final double appStartTime,
      required final Map<String, double> frameRate,
      required final Map<String, int> memoryUsage,
      required final Map<String, double> batteryImpact,
      final Map<String, dynamic>? customMetrics}) = _$PerformanceMetricsImpl;

  factory _PerformanceMetrics.fromJson(Map<String, dynamic> json) =
      _$PerformanceMetricsImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  Map<String, double> get apiLatency;
  @override
  Map<String, int> get errorCounts;
  @override
  Map<String, double> get loadTimes;
  @override
  Map<String, int> get crashCounts;
  @override
  double get appStartTime;
  @override
  Map<String, double> get frameRate;
  @override
  Map<String, int> get memoryUsage;
  @override
  Map<String, double> get batteryImpact;
  @override
  Map<String, dynamic>? get customMetrics;
  @override
  @JsonKey(ignore: true)
  _$$PerformanceMetricsImplCopyWith<_$PerformanceMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EngagementMetrics _$EngagementMetricsFromJson(Map<String, dynamic> json) {
  return _EngagementMetrics.fromJson(json);
}

/// @nodoc
mixin _$EngagementMetrics {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, int> get contentInteractions =>
      throw _privateConstructorUsedError;
  Map<String, double> get averageEngagementTime =>
      throw _privateConstructorUsedError;
  Map<String, int> get socialInteractions => throw _privateConstructorUsedError;
  Map<String, double> get conversionRates => throw _privateConstructorUsedError;
  Map<String, int> get userContributions => throw _privateConstructorUsedError;
  Map<String, double> get featureAdoption => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customMetrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngagementMetricsCopyWith<EngagementMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngagementMetricsCopyWith<$Res> {
  factory $EngagementMetricsCopyWith(
          EngagementMetrics value, $Res Function(EngagementMetrics) then) =
      _$EngagementMetricsCopyWithImpl<$Res, EngagementMetrics>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      Map<String, int> contentInteractions,
      Map<String, double> averageEngagementTime,
      Map<String, int> socialInteractions,
      Map<String, double> conversionRates,
      Map<String, int> userContributions,
      Map<String, double> featureAdoption,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class _$EngagementMetricsCopyWithImpl<$Res, $Val extends EngagementMetrics>
    implements $EngagementMetricsCopyWith<$Res> {
  _$EngagementMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? contentInteractions = null,
    Object? averageEngagementTime = null,
    Object? socialInteractions = null,
    Object? conversionRates = null,
    Object? userContributions = null,
    Object? featureAdoption = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contentInteractions: null == contentInteractions
          ? _value.contentInteractions
          : contentInteractions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageEngagementTime: null == averageEngagementTime
          ? _value.averageEngagementTime
          : averageEngagementTime // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      socialInteractions: null == socialInteractions
          ? _value.socialInteractions
          : socialInteractions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      conversionRates: null == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      userContributions: null == userContributions
          ? _value.userContributions
          : userContributions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      featureAdoption: null == featureAdoption
          ? _value.featureAdoption
          : featureAdoption // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customMetrics: freezed == customMetrics
          ? _value.customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EngagementMetricsImplCopyWith<$Res>
    implements $EngagementMetricsCopyWith<$Res> {
  factory _$$EngagementMetricsImplCopyWith(_$EngagementMetricsImpl value,
          $Res Function(_$EngagementMetricsImpl) then) =
      __$$EngagementMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      Map<String, int> contentInteractions,
      Map<String, double> averageEngagementTime,
      Map<String, int> socialInteractions,
      Map<String, double> conversionRates,
      Map<String, int> userContributions,
      Map<String, double> featureAdoption,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class __$$EngagementMetricsImplCopyWithImpl<$Res>
    extends _$EngagementMetricsCopyWithImpl<$Res, _$EngagementMetricsImpl>
    implements _$$EngagementMetricsImplCopyWith<$Res> {
  __$$EngagementMetricsImplCopyWithImpl(_$EngagementMetricsImpl _value,
      $Res Function(_$EngagementMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? contentInteractions = null,
    Object? averageEngagementTime = null,
    Object? socialInteractions = null,
    Object? conversionRates = null,
    Object? userContributions = null,
    Object? featureAdoption = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_$EngagementMetricsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contentInteractions: null == contentInteractions
          ? _value._contentInteractions
          : contentInteractions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageEngagementTime: null == averageEngagementTime
          ? _value._averageEngagementTime
          : averageEngagementTime // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      socialInteractions: null == socialInteractions
          ? _value._socialInteractions
          : socialInteractions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      conversionRates: null == conversionRates
          ? _value._conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      userContributions: null == userContributions
          ? _value._userContributions
          : userContributions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      featureAdoption: null == featureAdoption
          ? _value._featureAdoption
          : featureAdoption // ignore: cast_nullable_to_non_nullable
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
class _$EngagementMetricsImpl implements _EngagementMetrics {
  const _$EngagementMetricsImpl(
      {required this.id,
      required this.timestamp,
      required final Map<String, int> contentInteractions,
      required final Map<String, double> averageEngagementTime,
      required final Map<String, int> socialInteractions,
      required final Map<String, double> conversionRates,
      required final Map<String, int> userContributions,
      required final Map<String, double> featureAdoption,
      final Map<String, dynamic>? customMetrics})
      : _contentInteractions = contentInteractions,
        _averageEngagementTime = averageEngagementTime,
        _socialInteractions = socialInteractions,
        _conversionRates = conversionRates,
        _userContributions = userContributions,
        _featureAdoption = featureAdoption,
        _customMetrics = customMetrics;

  factory _$EngagementMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EngagementMetricsImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  final Map<String, int> _contentInteractions;
  @override
  Map<String, int> get contentInteractions {
    if (_contentInteractions is EqualUnmodifiableMapView)
      return _contentInteractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_contentInteractions);
  }

  final Map<String, double> _averageEngagementTime;
  @override
  Map<String, double> get averageEngagementTime {
    if (_averageEngagementTime is EqualUnmodifiableMapView)
      return _averageEngagementTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_averageEngagementTime);
  }

  final Map<String, int> _socialInteractions;
  @override
  Map<String, int> get socialInteractions {
    if (_socialInteractions is EqualUnmodifiableMapView)
      return _socialInteractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_socialInteractions);
  }

  final Map<String, double> _conversionRates;
  @override
  Map<String, double> get conversionRates {
    if (_conversionRates is EqualUnmodifiableMapView) return _conversionRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conversionRates);
  }

  final Map<String, int> _userContributions;
  @override
  Map<String, int> get userContributions {
    if (_userContributions is EqualUnmodifiableMapView)
      return _userContributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userContributions);
  }

  final Map<String, double> _featureAdoption;
  @override
  Map<String, double> get featureAdoption {
    if (_featureAdoption is EqualUnmodifiableMapView) return _featureAdoption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_featureAdoption);
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
    return 'EngagementMetrics(id: $id, timestamp: $timestamp, contentInteractions: $contentInteractions, averageEngagementTime: $averageEngagementTime, socialInteractions: $socialInteractions, conversionRates: $conversionRates, userContributions: $userContributions, featureAdoption: $featureAdoption, customMetrics: $customMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EngagementMetricsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._contentInteractions, _contentInteractions) &&
            const DeepCollectionEquality()
                .equals(other._averageEngagementTime, _averageEngagementTime) &&
            const DeepCollectionEquality()
                .equals(other._socialInteractions, _socialInteractions) &&
            const DeepCollectionEquality()
                .equals(other._conversionRates, _conversionRates) &&
            const DeepCollectionEquality()
                .equals(other._userContributions, _userContributions) &&
            const DeepCollectionEquality()
                .equals(other._featureAdoption, _featureAdoption) &&
            const DeepCollectionEquality()
                .equals(other._customMetrics, _customMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      const DeepCollectionEquality().hash(_contentInteractions),
      const DeepCollectionEquality().hash(_averageEngagementTime),
      const DeepCollectionEquality().hash(_socialInteractions),
      const DeepCollectionEquality().hash(_conversionRates),
      const DeepCollectionEquality().hash(_userContributions),
      const DeepCollectionEquality().hash(_featureAdoption),
      const DeepCollectionEquality().hash(_customMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EngagementMetricsImplCopyWith<_$EngagementMetricsImpl> get copyWith =>
      __$$EngagementMetricsImplCopyWithImpl<_$EngagementMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EngagementMetricsImplToJson(
      this,
    );
  }
}

abstract class _EngagementMetrics implements EngagementMetrics {
  const factory _EngagementMetrics(
      {required final String id,
      required final DateTime timestamp,
      required final Map<String, int> contentInteractions,
      required final Map<String, double> averageEngagementTime,
      required final Map<String, int> socialInteractions,
      required final Map<String, double> conversionRates,
      required final Map<String, int> userContributions,
      required final Map<String, double> featureAdoption,
      final Map<String, dynamic>? customMetrics}) = _$EngagementMetricsImpl;

  factory _EngagementMetrics.fromJson(Map<String, dynamic> json) =
      _$EngagementMetricsImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  Map<String, int> get contentInteractions;
  @override
  Map<String, double> get averageEngagementTime;
  @override
  Map<String, int> get socialInteractions;
  @override
  Map<String, double> get conversionRates;
  @override
  Map<String, int> get userContributions;
  @override
  Map<String, double> get featureAdoption;
  @override
  Map<String, dynamic>? get customMetrics;
  @override
  @JsonKey(ignore: true)
  _$$EngagementMetricsImplCopyWith<_$EngagementMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RevenueMetrics _$RevenueMetricsFromJson(Map<String, dynamic> json) {
  return _RevenueMetrics.fromJson(json);
}

/// @nodoc
mixin _$RevenueMetrics {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get totalRevenue => throw _privateConstructorUsedError;
  Map<String, double> get revenueBySource => throw _privateConstructorUsedError;
  Map<String, int> get transactionCounts => throw _privateConstructorUsedError;
  double get averageOrderValue => throw _privateConstructorUsedError;
  Map<String, double> get subscriptionRevenue =>
      throw _privateConstructorUsedError;
  Map<String, int> get subscriptionCounts => throw _privateConstructorUsedError;
  Map<String, double> get churnRate => throw _privateConstructorUsedError;
  double get customerLifetimeValue => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customMetrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RevenueMetricsCopyWith<RevenueMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevenueMetricsCopyWith<$Res> {
  factory $RevenueMetricsCopyWith(
          RevenueMetrics value, $Res Function(RevenueMetrics) then) =
      _$RevenueMetricsCopyWithImpl<$Res, RevenueMetrics>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      double totalRevenue,
      Map<String, double> revenueBySource,
      Map<String, int> transactionCounts,
      double averageOrderValue,
      Map<String, double> subscriptionRevenue,
      Map<String, int> subscriptionCounts,
      Map<String, double> churnRate,
      double customerLifetimeValue,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class _$RevenueMetricsCopyWithImpl<$Res, $Val extends RevenueMetrics>
    implements $RevenueMetricsCopyWith<$Res> {
  _$RevenueMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? totalRevenue = null,
    Object? revenueBySource = null,
    Object? transactionCounts = null,
    Object? averageOrderValue = null,
    Object? subscriptionRevenue = null,
    Object? subscriptionCounts = null,
    Object? churnRate = null,
    Object? customerLifetimeValue = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      revenueBySource: null == revenueBySource
          ? _value.revenueBySource
          : revenueBySource // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      transactionCounts: null == transactionCounts
          ? _value.transactionCounts
          : transactionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageOrderValue: null == averageOrderValue
          ? _value.averageOrderValue
          : averageOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      subscriptionRevenue: null == subscriptionRevenue
          ? _value.subscriptionRevenue
          : subscriptionRevenue // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      subscriptionCounts: null == subscriptionCounts
          ? _value.subscriptionCounts
          : subscriptionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      churnRate: null == churnRate
          ? _value.churnRate
          : churnRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customerLifetimeValue: null == customerLifetimeValue
          ? _value.customerLifetimeValue
          : customerLifetimeValue // ignore: cast_nullable_to_non_nullable
              as double,
      customMetrics: freezed == customMetrics
          ? _value.customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RevenueMetricsImplCopyWith<$Res>
    implements $RevenueMetricsCopyWith<$Res> {
  factory _$$RevenueMetricsImplCopyWith(_$RevenueMetricsImpl value,
          $Res Function(_$RevenueMetricsImpl) then) =
      __$$RevenueMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      double totalRevenue,
      Map<String, double> revenueBySource,
      Map<String, int> transactionCounts,
      double averageOrderValue,
      Map<String, double> subscriptionRevenue,
      Map<String, int> subscriptionCounts,
      Map<String, double> churnRate,
      double customerLifetimeValue,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class __$$RevenueMetricsImplCopyWithImpl<$Res>
    extends _$RevenueMetricsCopyWithImpl<$Res, _$RevenueMetricsImpl>
    implements _$$RevenueMetricsImplCopyWith<$Res> {
  __$$RevenueMetricsImplCopyWithImpl(
      _$RevenueMetricsImpl _value, $Res Function(_$RevenueMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? totalRevenue = null,
    Object? revenueBySource = null,
    Object? transactionCounts = null,
    Object? averageOrderValue = null,
    Object? subscriptionRevenue = null,
    Object? subscriptionCounts = null,
    Object? churnRate = null,
    Object? customerLifetimeValue = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_$RevenueMetricsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      revenueBySource: null == revenueBySource
          ? _value._revenueBySource
          : revenueBySource // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      transactionCounts: null == transactionCounts
          ? _value._transactionCounts
          : transactionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      averageOrderValue: null == averageOrderValue
          ? _value.averageOrderValue
          : averageOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      subscriptionRevenue: null == subscriptionRevenue
          ? _value._subscriptionRevenue
          : subscriptionRevenue // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      subscriptionCounts: null == subscriptionCounts
          ? _value._subscriptionCounts
          : subscriptionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      churnRate: null == churnRate
          ? _value._churnRate
          : churnRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customerLifetimeValue: null == customerLifetimeValue
          ? _value.customerLifetimeValue
          : customerLifetimeValue // ignore: cast_nullable_to_non_nullable
              as double,
      customMetrics: freezed == customMetrics
          ? _value._customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevenueMetricsImpl implements _RevenueMetrics {
  const _$RevenueMetricsImpl(
      {required this.id,
      required this.timestamp,
      required this.totalRevenue,
      required final Map<String, double> revenueBySource,
      required final Map<String, int> transactionCounts,
      required this.averageOrderValue,
      required final Map<String, double> subscriptionRevenue,
      required final Map<String, int> subscriptionCounts,
      required final Map<String, double> churnRate,
      required this.customerLifetimeValue,
      final Map<String, dynamic>? customMetrics})
      : _revenueBySource = revenueBySource,
        _transactionCounts = transactionCounts,
        _subscriptionRevenue = subscriptionRevenue,
        _subscriptionCounts = subscriptionCounts,
        _churnRate = churnRate,
        _customMetrics = customMetrics;

  factory _$RevenueMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevenueMetricsImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final double totalRevenue;
  final Map<String, double> _revenueBySource;
  @override
  Map<String, double> get revenueBySource {
    if (_revenueBySource is EqualUnmodifiableMapView) return _revenueBySource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_revenueBySource);
  }

  final Map<String, int> _transactionCounts;
  @override
  Map<String, int> get transactionCounts {
    if (_transactionCounts is EqualUnmodifiableMapView)
      return _transactionCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_transactionCounts);
  }

  @override
  final double averageOrderValue;
  final Map<String, double> _subscriptionRevenue;
  @override
  Map<String, double> get subscriptionRevenue {
    if (_subscriptionRevenue is EqualUnmodifiableMapView)
      return _subscriptionRevenue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_subscriptionRevenue);
  }

  final Map<String, int> _subscriptionCounts;
  @override
  Map<String, int> get subscriptionCounts {
    if (_subscriptionCounts is EqualUnmodifiableMapView)
      return _subscriptionCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_subscriptionCounts);
  }

  final Map<String, double> _churnRate;
  @override
  Map<String, double> get churnRate {
    if (_churnRate is EqualUnmodifiableMapView) return _churnRate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_churnRate);
  }

  @override
  final double customerLifetimeValue;
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
    return 'RevenueMetrics(id: $id, timestamp: $timestamp, totalRevenue: $totalRevenue, revenueBySource: $revenueBySource, transactionCounts: $transactionCounts, averageOrderValue: $averageOrderValue, subscriptionRevenue: $subscriptionRevenue, subscriptionCounts: $subscriptionCounts, churnRate: $churnRate, customerLifetimeValue: $customerLifetimeValue, customMetrics: $customMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevenueMetricsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            const DeepCollectionEquality()
                .equals(other._revenueBySource, _revenueBySource) &&
            const DeepCollectionEquality()
                .equals(other._transactionCounts, _transactionCounts) &&
            (identical(other.averageOrderValue, averageOrderValue) ||
                other.averageOrderValue == averageOrderValue) &&
            const DeepCollectionEquality()
                .equals(other._subscriptionRevenue, _subscriptionRevenue) &&
            const DeepCollectionEquality()
                .equals(other._subscriptionCounts, _subscriptionCounts) &&
            const DeepCollectionEquality()
                .equals(other._churnRate, _churnRate) &&
            (identical(other.customerLifetimeValue, customerLifetimeValue) ||
                other.customerLifetimeValue == customerLifetimeValue) &&
            const DeepCollectionEquality()
                .equals(other._customMetrics, _customMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      totalRevenue,
      const DeepCollectionEquality().hash(_revenueBySource),
      const DeepCollectionEquality().hash(_transactionCounts),
      averageOrderValue,
      const DeepCollectionEquality().hash(_subscriptionRevenue),
      const DeepCollectionEquality().hash(_subscriptionCounts),
      const DeepCollectionEquality().hash(_churnRate),
      customerLifetimeValue,
      const DeepCollectionEquality().hash(_customMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RevenueMetricsImplCopyWith<_$RevenueMetricsImpl> get copyWith =>
      __$$RevenueMetricsImplCopyWithImpl<_$RevenueMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevenueMetricsImplToJson(
      this,
    );
  }
}

abstract class _RevenueMetrics implements RevenueMetrics {
  const factory _RevenueMetrics(
      {required final String id,
      required final DateTime timestamp,
      required final double totalRevenue,
      required final Map<String, double> revenueBySource,
      required final Map<String, int> transactionCounts,
      required final double averageOrderValue,
      required final Map<String, double> subscriptionRevenue,
      required final Map<String, int> subscriptionCounts,
      required final Map<String, double> churnRate,
      required final double customerLifetimeValue,
      final Map<String, dynamic>? customMetrics}) = _$RevenueMetricsImpl;

  factory _RevenueMetrics.fromJson(Map<String, dynamic> json) =
      _$RevenueMetricsImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  double get totalRevenue;
  @override
  Map<String, double> get revenueBySource;
  @override
  Map<String, int> get transactionCounts;
  @override
  double get averageOrderValue;
  @override
  Map<String, double> get subscriptionRevenue;
  @override
  Map<String, int> get subscriptionCounts;
  @override
  Map<String, double> get churnRate;
  @override
  double get customerLifetimeValue;
  @override
  Map<String, dynamic>? get customMetrics;
  @override
  @JsonKey(ignore: true)
  _$$RevenueMetricsImplCopyWith<_$RevenueMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeatureAdoptionMetrics _$FeatureAdoptionMetricsFromJson(
    Map<String, dynamic> json) {
  return _FeatureAdoptionMetrics.fromJson(json);
}

/// @nodoc
mixin _$FeatureAdoptionMetrics {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, int> get featureUsage => throw _privateConstructorUsedError;
  Map<String, double> get adoptionRate => throw _privateConstructorUsedError;
  Map<String, double> get retentionRate => throw _privateConstructorUsedError;
  Map<String, int> get activeUsers => throw _privateConstructorUsedError;
  Map<String, double> get satisfactionScore =>
      throw _privateConstructorUsedError;
  Map<String, int> get abandonmentRate => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customMetrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureAdoptionMetricsCopyWith<FeatureAdoptionMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureAdoptionMetricsCopyWith<$Res> {
  factory $FeatureAdoptionMetricsCopyWith(FeatureAdoptionMetrics value,
          $Res Function(FeatureAdoptionMetrics) then) =
      _$FeatureAdoptionMetricsCopyWithImpl<$Res, FeatureAdoptionMetrics>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      Map<String, int> featureUsage,
      Map<String, double> adoptionRate,
      Map<String, double> retentionRate,
      Map<String, int> activeUsers,
      Map<String, double> satisfactionScore,
      Map<String, int> abandonmentRate,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class _$FeatureAdoptionMetricsCopyWithImpl<$Res,
        $Val extends FeatureAdoptionMetrics>
    implements $FeatureAdoptionMetricsCopyWith<$Res> {
  _$FeatureAdoptionMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? featureUsage = null,
    Object? adoptionRate = null,
    Object? retentionRate = null,
    Object? activeUsers = null,
    Object? satisfactionScore = null,
    Object? abandonmentRate = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      featureUsage: null == featureUsage
          ? _value.featureUsage
          : featureUsage // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      adoptionRate: null == adoptionRate
          ? _value.adoptionRate
          : adoptionRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      retentionRate: null == retentionRate
          ? _value.retentionRate
          : retentionRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      activeUsers: null == activeUsers
          ? _value.activeUsers
          : activeUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      satisfactionScore: null == satisfactionScore
          ? _value.satisfactionScore
          : satisfactionScore // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      abandonmentRate: null == abandonmentRate
          ? _value.abandonmentRate
          : abandonmentRate // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      customMetrics: freezed == customMetrics
          ? _value.customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeatureAdoptionMetricsImplCopyWith<$Res>
    implements $FeatureAdoptionMetricsCopyWith<$Res> {
  factory _$$FeatureAdoptionMetricsImplCopyWith(
          _$FeatureAdoptionMetricsImpl value,
          $Res Function(_$FeatureAdoptionMetricsImpl) then) =
      __$$FeatureAdoptionMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      Map<String, int> featureUsage,
      Map<String, double> adoptionRate,
      Map<String, double> retentionRate,
      Map<String, int> activeUsers,
      Map<String, double> satisfactionScore,
      Map<String, int> abandonmentRate,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class __$$FeatureAdoptionMetricsImplCopyWithImpl<$Res>
    extends _$FeatureAdoptionMetricsCopyWithImpl<$Res,
        _$FeatureAdoptionMetricsImpl>
    implements _$$FeatureAdoptionMetricsImplCopyWith<$Res> {
  __$$FeatureAdoptionMetricsImplCopyWithImpl(
      _$FeatureAdoptionMetricsImpl _value,
      $Res Function(_$FeatureAdoptionMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? featureUsage = null,
    Object? adoptionRate = null,
    Object? retentionRate = null,
    Object? activeUsers = null,
    Object? satisfactionScore = null,
    Object? abandonmentRate = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_$FeatureAdoptionMetricsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      featureUsage: null == featureUsage
          ? _value._featureUsage
          : featureUsage // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      adoptionRate: null == adoptionRate
          ? _value._adoptionRate
          : adoptionRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      retentionRate: null == retentionRate
          ? _value._retentionRate
          : retentionRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      activeUsers: null == activeUsers
          ? _value._activeUsers
          : activeUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      satisfactionScore: null == satisfactionScore
          ? _value._satisfactionScore
          : satisfactionScore // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      abandonmentRate: null == abandonmentRate
          ? _value._abandonmentRate
          : abandonmentRate // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      customMetrics: freezed == customMetrics
          ? _value._customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeatureAdoptionMetricsImpl implements _FeatureAdoptionMetrics {
  const _$FeatureAdoptionMetricsImpl(
      {required this.id,
      required this.timestamp,
      required final Map<String, int> featureUsage,
      required final Map<String, double> adoptionRate,
      required final Map<String, double> retentionRate,
      required final Map<String, int> activeUsers,
      required final Map<String, double> satisfactionScore,
      required final Map<String, int> abandonmentRate,
      final Map<String, dynamic>? customMetrics})
      : _featureUsage = featureUsage,
        _adoptionRate = adoptionRate,
        _retentionRate = retentionRate,
        _activeUsers = activeUsers,
        _satisfactionScore = satisfactionScore,
        _abandonmentRate = abandonmentRate,
        _customMetrics = customMetrics;

  factory _$FeatureAdoptionMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeatureAdoptionMetricsImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  final Map<String, int> _featureUsage;
  @override
  Map<String, int> get featureUsage {
    if (_featureUsage is EqualUnmodifiableMapView) return _featureUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_featureUsage);
  }

  final Map<String, double> _adoptionRate;
  @override
  Map<String, double> get adoptionRate {
    if (_adoptionRate is EqualUnmodifiableMapView) return _adoptionRate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_adoptionRate);
  }

  final Map<String, double> _retentionRate;
  @override
  Map<String, double> get retentionRate {
    if (_retentionRate is EqualUnmodifiableMapView) return _retentionRate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_retentionRate);
  }

  final Map<String, int> _activeUsers;
  @override
  Map<String, int> get activeUsers {
    if (_activeUsers is EqualUnmodifiableMapView) return _activeUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_activeUsers);
  }

  final Map<String, double> _satisfactionScore;
  @override
  Map<String, double> get satisfactionScore {
    if (_satisfactionScore is EqualUnmodifiableMapView)
      return _satisfactionScore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_satisfactionScore);
  }

  final Map<String, int> _abandonmentRate;
  @override
  Map<String, int> get abandonmentRate {
    if (_abandonmentRate is EqualUnmodifiableMapView) return _abandonmentRate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_abandonmentRate);
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
    return 'FeatureAdoptionMetrics(id: $id, timestamp: $timestamp, featureUsage: $featureUsage, adoptionRate: $adoptionRate, retentionRate: $retentionRate, activeUsers: $activeUsers, satisfactionScore: $satisfactionScore, abandonmentRate: $abandonmentRate, customMetrics: $customMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureAdoptionMetricsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._featureUsage, _featureUsage) &&
            const DeepCollectionEquality()
                .equals(other._adoptionRate, _adoptionRate) &&
            const DeepCollectionEquality()
                .equals(other._retentionRate, _retentionRate) &&
            const DeepCollectionEquality()
                .equals(other._activeUsers, _activeUsers) &&
            const DeepCollectionEquality()
                .equals(other._satisfactionScore, _satisfactionScore) &&
            const DeepCollectionEquality()
                .equals(other._abandonmentRate, _abandonmentRate) &&
            const DeepCollectionEquality()
                .equals(other._customMetrics, _customMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      const DeepCollectionEquality().hash(_featureUsage),
      const DeepCollectionEquality().hash(_adoptionRate),
      const DeepCollectionEquality().hash(_retentionRate),
      const DeepCollectionEquality().hash(_activeUsers),
      const DeepCollectionEquality().hash(_satisfactionScore),
      const DeepCollectionEquality().hash(_abandonmentRate),
      const DeepCollectionEquality().hash(_customMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureAdoptionMetricsImplCopyWith<_$FeatureAdoptionMetricsImpl>
      get copyWith => __$$FeatureAdoptionMetricsImplCopyWithImpl<
          _$FeatureAdoptionMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureAdoptionMetricsImplToJson(
      this,
    );
  }
}

abstract class _FeatureAdoptionMetrics implements FeatureAdoptionMetrics {
  const factory _FeatureAdoptionMetrics(
          {required final String id,
          required final DateTime timestamp,
          required final Map<String, int> featureUsage,
          required final Map<String, double> adoptionRate,
          required final Map<String, double> retentionRate,
          required final Map<String, int> activeUsers,
          required final Map<String, double> satisfactionScore,
          required final Map<String, int> abandonmentRate,
          final Map<String, dynamic>? customMetrics}) =
      _$FeatureAdoptionMetricsImpl;

  factory _FeatureAdoptionMetrics.fromJson(Map<String, dynamic> json) =
      _$FeatureAdoptionMetricsImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  Map<String, int> get featureUsage;
  @override
  Map<String, double> get adoptionRate;
  @override
  Map<String, double> get retentionRate;
  @override
  Map<String, int> get activeUsers;
  @override
  Map<String, double> get satisfactionScore;
  @override
  Map<String, int> get abandonmentRate;
  @override
  Map<String, dynamic>? get customMetrics;
  @override
  @JsonKey(ignore: true)
  _$$FeatureAdoptionMetricsImplCopyWith<_$FeatureAdoptionMetricsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ErrorMetrics _$ErrorMetricsFromJson(Map<String, dynamic> json) {
  return _ErrorMetrics.fromJson(json);
}

/// @nodoc
mixin _$ErrorMetrics {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get errorType => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get stackTrace => throw _privateConstructorUsedError;
  String get deviceInfo => throw _privateConstructorUsedError;
  String get appVersion => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Map<String, dynamic> get context => throw _privateConstructorUsedError;
  ErrorSeverity get severity => throw _privateConstructorUsedError;
  ErrorStatus get status => throw _privateConstructorUsedError;
  String? get resolution => throw _privateConstructorUsedError;
  DateTime? get resolvedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMetricsCopyWith<ErrorMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMetricsCopyWith<$Res> {
  factory $ErrorMetricsCopyWith(
          ErrorMetrics value, $Res Function(ErrorMetrics) then) =
      _$ErrorMetricsCopyWithImpl<$Res, ErrorMetrics>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String errorType,
      String errorMessage,
      String stackTrace,
      String deviceInfo,
      String appVersion,
      String userId,
      Map<String, dynamic> context,
      ErrorSeverity severity,
      ErrorStatus status,
      String? resolution,
      DateTime? resolvedAt});
}

/// @nodoc
class _$ErrorMetricsCopyWithImpl<$Res, $Val extends ErrorMetrics>
    implements $ErrorMetricsCopyWith<$Res> {
  _$ErrorMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? errorType = null,
    Object? errorMessage = null,
    Object? stackTrace = null,
    Object? deviceInfo = null,
    Object? appVersion = null,
    Object? userId = null,
    Object? context = null,
    Object? severity = null,
    Object? status = null,
    Object? resolution = freezed,
    Object? resolvedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ErrorSeverity,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ErrorStatus,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorMetricsImplCopyWith<$Res>
    implements $ErrorMetricsCopyWith<$Res> {
  factory _$$ErrorMetricsImplCopyWith(
          _$ErrorMetricsImpl value, $Res Function(_$ErrorMetricsImpl) then) =
      __$$ErrorMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String errorType,
      String errorMessage,
      String stackTrace,
      String deviceInfo,
      String appVersion,
      String userId,
      Map<String, dynamic> context,
      ErrorSeverity severity,
      ErrorStatus status,
      String? resolution,
      DateTime? resolvedAt});
}

/// @nodoc
class __$$ErrorMetricsImplCopyWithImpl<$Res>
    extends _$ErrorMetricsCopyWithImpl<$Res, _$ErrorMetricsImpl>
    implements _$$ErrorMetricsImplCopyWith<$Res> {
  __$$ErrorMetricsImplCopyWithImpl(
      _$ErrorMetricsImpl _value, $Res Function(_$ErrorMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? errorType = null,
    Object? errorMessage = null,
    Object? stackTrace = null,
    Object? deviceInfo = null,
    Object? appVersion = null,
    Object? userId = null,
    Object? context = null,
    Object? severity = null,
    Object? status = null,
    Object? resolution = freezed,
    Object? resolvedAt = freezed,
  }) {
    return _then(_$ErrorMetricsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ErrorSeverity,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ErrorStatus,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorMetricsImpl implements _ErrorMetrics {
  const _$ErrorMetricsImpl(
      {required this.id,
      required this.timestamp,
      required this.errorType,
      required this.errorMessage,
      required this.stackTrace,
      required this.deviceInfo,
      required this.appVersion,
      required this.userId,
      required final Map<String, dynamic> context,
      required this.severity,
      required this.status,
      this.resolution,
      this.resolvedAt})
      : _context = context;

  factory _$ErrorMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorMetricsImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final String errorType;
  @override
  final String errorMessage;
  @override
  final String stackTrace;
  @override
  final String deviceInfo;
  @override
  final String appVersion;
  @override
  final String userId;
  final Map<String, dynamic> _context;
  @override
  Map<String, dynamic> get context {
    if (_context is EqualUnmodifiableMapView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_context);
  }

  @override
  final ErrorSeverity severity;
  @override
  final ErrorStatus status;
  @override
  final String? resolution;
  @override
  final DateTime? resolvedAt;

  @override
  String toString() {
    return 'ErrorMetrics(id: $id, timestamp: $timestamp, errorType: $errorType, errorMessage: $errorMessage, stackTrace: $stackTrace, deviceInfo: $deviceInfo, appVersion: $appVersion, userId: $userId, context: $context, severity: $severity, status: $status, resolution: $resolution, resolvedAt: $resolvedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMetricsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._context, _context) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      errorType,
      errorMessage,
      stackTrace,
      deviceInfo,
      appVersion,
      userId,
      const DeepCollectionEquality().hash(_context),
      severity,
      status,
      resolution,
      resolvedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMetricsImplCopyWith<_$ErrorMetricsImpl> get copyWith =>
      __$$ErrorMetricsImplCopyWithImpl<_$ErrorMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorMetricsImplToJson(
      this,
    );
  }
}

abstract class _ErrorMetrics implements ErrorMetrics {
  const factory _ErrorMetrics(
      {required final String id,
      required final DateTime timestamp,
      required final String errorType,
      required final String errorMessage,
      required final String stackTrace,
      required final String deviceInfo,
      required final String appVersion,
      required final String userId,
      required final Map<String, dynamic> context,
      required final ErrorSeverity severity,
      required final ErrorStatus status,
      final String? resolution,
      final DateTime? resolvedAt}) = _$ErrorMetricsImpl;

  factory _ErrorMetrics.fromJson(Map<String, dynamic> json) =
      _$ErrorMetricsImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  String get errorType;
  @override
  String get errorMessage;
  @override
  String get stackTrace;
  @override
  String get deviceInfo;
  @override
  String get appVersion;
  @override
  String get userId;
  @override
  Map<String, dynamic> get context;
  @override
  ErrorSeverity get severity;
  @override
  ErrorStatus get status;
  @override
  String? get resolution;
  @override
  DateTime? get resolvedAt;
  @override
  @JsonKey(ignore: true)
  _$$ErrorMetricsImplCopyWith<_$ErrorMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsDashboard _$AnalyticsDashboardFromJson(Map<String, dynamic> json) {
  return _AnalyticsDashboard.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsDashboard {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  UsageMetrics get usage => throw _privateConstructorUsedError;
  PerformanceMetrics get performance => throw _privateConstructorUsedError;
  EngagementMetrics get engagement => throw _privateConstructorUsedError;
  RevenueMetrics get revenue => throw _privateConstructorUsedError;
  FeatureAdoptionMetrics get featureAdoption =>
      throw _privateConstructorUsedError;
  List<ErrorMetrics> get recentErrors => throw _privateConstructorUsedError;
  Map<String, dynamic> get keyInsights => throw _privateConstructorUsedError;
  Map<String, List<double>> get trends => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsDashboardCopyWith<AnalyticsDashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsDashboardCopyWith<$Res> {
  factory $AnalyticsDashboardCopyWith(
          AnalyticsDashboard value, $Res Function(AnalyticsDashboard) then) =
      _$AnalyticsDashboardCopyWithImpl<$Res, AnalyticsDashboard>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      UsageMetrics usage,
      PerformanceMetrics performance,
      EngagementMetrics engagement,
      RevenueMetrics revenue,
      FeatureAdoptionMetrics featureAdoption,
      List<ErrorMetrics> recentErrors,
      Map<String, dynamic> keyInsights,
      Map<String, List<double>> trends});

  $UsageMetricsCopyWith<$Res> get usage;
  $PerformanceMetricsCopyWith<$Res> get performance;
  $EngagementMetricsCopyWith<$Res> get engagement;
  $RevenueMetricsCopyWith<$Res> get revenue;
  $FeatureAdoptionMetricsCopyWith<$Res> get featureAdoption;
}

/// @nodoc
class _$AnalyticsDashboardCopyWithImpl<$Res, $Val extends AnalyticsDashboard>
    implements $AnalyticsDashboardCopyWith<$Res> {
  _$AnalyticsDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? usage = null,
    Object? performance = null,
    Object? engagement = null,
    Object? revenue = null,
    Object? featureAdoption = null,
    Object? recentErrors = null,
    Object? keyInsights = null,
    Object? trends = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageMetrics,
      performance: null == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as PerformanceMetrics,
      engagement: null == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as EngagementMetrics,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as RevenueMetrics,
      featureAdoption: null == featureAdoption
          ? _value.featureAdoption
          : featureAdoption // ignore: cast_nullable_to_non_nullable
              as FeatureAdoptionMetrics,
      recentErrors: null == recentErrors
          ? _value.recentErrors
          : recentErrors // ignore: cast_nullable_to_non_nullable
              as List<ErrorMetrics>,
      keyInsights: null == keyInsights
          ? _value.keyInsights
          : keyInsights // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      trends: null == trends
          ? _value.trends
          : trends // ignore: cast_nullable_to_non_nullable
              as Map<String, List<double>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageMetricsCopyWith<$Res> get usage {
    return $UsageMetricsCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PerformanceMetricsCopyWith<$Res> get performance {
    return $PerformanceMetricsCopyWith<$Res>(_value.performance, (value) {
      return _then(_value.copyWith(performance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EngagementMetricsCopyWith<$Res> get engagement {
    return $EngagementMetricsCopyWith<$Res>(_value.engagement, (value) {
      return _then(_value.copyWith(engagement: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RevenueMetricsCopyWith<$Res> get revenue {
    return $RevenueMetricsCopyWith<$Res>(_value.revenue, (value) {
      return _then(_value.copyWith(revenue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FeatureAdoptionMetricsCopyWith<$Res> get featureAdoption {
    return $FeatureAdoptionMetricsCopyWith<$Res>(_value.featureAdoption,
        (value) {
      return _then(_value.copyWith(featureAdoption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalyticsDashboardImplCopyWith<$Res>
    implements $AnalyticsDashboardCopyWith<$Res> {
  factory _$$AnalyticsDashboardImplCopyWith(_$AnalyticsDashboardImpl value,
          $Res Function(_$AnalyticsDashboardImpl) then) =
      __$$AnalyticsDashboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      UsageMetrics usage,
      PerformanceMetrics performance,
      EngagementMetrics engagement,
      RevenueMetrics revenue,
      FeatureAdoptionMetrics featureAdoption,
      List<ErrorMetrics> recentErrors,
      Map<String, dynamic> keyInsights,
      Map<String, List<double>> trends});

  @override
  $UsageMetricsCopyWith<$Res> get usage;
  @override
  $PerformanceMetricsCopyWith<$Res> get performance;
  @override
  $EngagementMetricsCopyWith<$Res> get engagement;
  @override
  $RevenueMetricsCopyWith<$Res> get revenue;
  @override
  $FeatureAdoptionMetricsCopyWith<$Res> get featureAdoption;
}

/// @nodoc
class __$$AnalyticsDashboardImplCopyWithImpl<$Res>
    extends _$AnalyticsDashboardCopyWithImpl<$Res, _$AnalyticsDashboardImpl>
    implements _$$AnalyticsDashboardImplCopyWith<$Res> {
  __$$AnalyticsDashboardImplCopyWithImpl(_$AnalyticsDashboardImpl _value,
      $Res Function(_$AnalyticsDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? usage = null,
    Object? performance = null,
    Object? engagement = null,
    Object? revenue = null,
    Object? featureAdoption = null,
    Object? recentErrors = null,
    Object? keyInsights = null,
    Object? trends = null,
  }) {
    return _then(_$AnalyticsDashboardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as UsageMetrics,
      performance: null == performance
          ? _value.performance
          : performance // ignore: cast_nullable_to_non_nullable
              as PerformanceMetrics,
      engagement: null == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as EngagementMetrics,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as RevenueMetrics,
      featureAdoption: null == featureAdoption
          ? _value.featureAdoption
          : featureAdoption // ignore: cast_nullable_to_non_nullable
              as FeatureAdoptionMetrics,
      recentErrors: null == recentErrors
          ? _value._recentErrors
          : recentErrors // ignore: cast_nullable_to_non_nullable
              as List<ErrorMetrics>,
      keyInsights: null == keyInsights
          ? _value._keyInsights
          : keyInsights // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      trends: null == trends
          ? _value._trends
          : trends // ignore: cast_nullable_to_non_nullable
              as Map<String, List<double>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsDashboardImpl implements _AnalyticsDashboard {
  const _$AnalyticsDashboardImpl(
      {required this.id,
      required this.timestamp,
      required this.usage,
      required this.performance,
      required this.engagement,
      required this.revenue,
      required this.featureAdoption,
      required final List<ErrorMetrics> recentErrors,
      required final Map<String, dynamic> keyInsights,
      required final Map<String, List<double>> trends})
      : _recentErrors = recentErrors,
        _keyInsights = keyInsights,
        _trends = trends;

  factory _$AnalyticsDashboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsDashboardImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final UsageMetrics usage;
  @override
  final PerformanceMetrics performance;
  @override
  final EngagementMetrics engagement;
  @override
  final RevenueMetrics revenue;
  @override
  final FeatureAdoptionMetrics featureAdoption;
  final List<ErrorMetrics> _recentErrors;
  @override
  List<ErrorMetrics> get recentErrors {
    if (_recentErrors is EqualUnmodifiableListView) return _recentErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentErrors);
  }

  final Map<String, dynamic> _keyInsights;
  @override
  Map<String, dynamic> get keyInsights {
    if (_keyInsights is EqualUnmodifiableMapView) return _keyInsights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_keyInsights);
  }

  final Map<String, List<double>> _trends;
  @override
  Map<String, List<double>> get trends {
    if (_trends is EqualUnmodifiableMapView) return _trends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_trends);
  }

  @override
  String toString() {
    return 'AnalyticsDashboard(id: $id, timestamp: $timestamp, usage: $usage, performance: $performance, engagement: $engagement, revenue: $revenue, featureAdoption: $featureAdoption, recentErrors: $recentErrors, keyInsights: $keyInsights, trends: $trends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsDashboardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.performance, performance) ||
                other.performance == performance) &&
            (identical(other.engagement, engagement) ||
                other.engagement == engagement) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.featureAdoption, featureAdoption) ||
                other.featureAdoption == featureAdoption) &&
            const DeepCollectionEquality()
                .equals(other._recentErrors, _recentErrors) &&
            const DeepCollectionEquality()
                .equals(other._keyInsights, _keyInsights) &&
            const DeepCollectionEquality().equals(other._trends, _trends));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      usage,
      performance,
      engagement,
      revenue,
      featureAdoption,
      const DeepCollectionEquality().hash(_recentErrors),
      const DeepCollectionEquality().hash(_keyInsights),
      const DeepCollectionEquality().hash(_trends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsDashboardImplCopyWith<_$AnalyticsDashboardImpl> get copyWith =>
      __$$AnalyticsDashboardImplCopyWithImpl<_$AnalyticsDashboardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsDashboardImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsDashboard implements AnalyticsDashboard {
  const factory _AnalyticsDashboard(
          {required final String id,
          required final DateTime timestamp,
          required final UsageMetrics usage,
          required final PerformanceMetrics performance,
          required final EngagementMetrics engagement,
          required final RevenueMetrics revenue,
          required final FeatureAdoptionMetrics featureAdoption,
          required final List<ErrorMetrics> recentErrors,
          required final Map<String, dynamic> keyInsights,
          required final Map<String, List<double>> trends}) =
      _$AnalyticsDashboardImpl;

  factory _AnalyticsDashboard.fromJson(Map<String, dynamic> json) =
      _$AnalyticsDashboardImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  UsageMetrics get usage;
  @override
  PerformanceMetrics get performance;
  @override
  EngagementMetrics get engagement;
  @override
  RevenueMetrics get revenue;
  @override
  FeatureAdoptionMetrics get featureAdoption;
  @override
  List<ErrorMetrics> get recentErrors;
  @override
  Map<String, dynamic> get keyInsights;
  @override
  Map<String, List<double>> get trends;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsDashboardImplCopyWith<_$AnalyticsDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
