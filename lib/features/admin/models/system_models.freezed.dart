// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerMetrics _$ServerMetricsFromJson(Map<String, dynamic> json) {
  return _ServerMetrics.fromJson(json);
}

/// @nodoc
mixin _$ServerMetrics {
  String get id => throw _privateConstructorUsedError;
  String get serverName => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get cpuUsage => throw _privateConstructorUsedError;
  double get memoryUsage => throw _privateConstructorUsedError;
  double get diskUsage => throw _privateConstructorUsedError;
  Map<String, double> get networkTraffic => throw _privateConstructorUsedError;
  int get activeConnections => throw _privateConstructorUsedError;
  Map<String, int> get requestCounts => throw _privateConstructorUsedError;
  Map<String, double> get responseTime => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customMetrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerMetricsCopyWith<ServerMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerMetricsCopyWith<$Res> {
  factory $ServerMetricsCopyWith(
          ServerMetrics value, $Res Function(ServerMetrics) then) =
      _$ServerMetricsCopyWithImpl<$Res, ServerMetrics>;
  @useResult
  $Res call(
      {String id,
      String serverName,
      DateTime timestamp,
      double cpuUsage,
      double memoryUsage,
      double diskUsage,
      Map<String, double> networkTraffic,
      int activeConnections,
      Map<String, int> requestCounts,
      Map<String, double> responseTime,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class _$ServerMetricsCopyWithImpl<$Res, $Val extends ServerMetrics>
    implements $ServerMetricsCopyWith<$Res> {
  _$ServerMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serverName = null,
    Object? timestamp = null,
    Object? cpuUsage = null,
    Object? memoryUsage = null,
    Object? diskUsage = null,
    Object? networkTraffic = null,
    Object? activeConnections = null,
    Object? requestCounts = null,
    Object? responseTime = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      serverName: null == serverName
          ? _value.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cpuUsage: null == cpuUsage
          ? _value.cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as double,
      memoryUsage: null == memoryUsage
          ? _value.memoryUsage
          : memoryUsage // ignore: cast_nullable_to_non_nullable
              as double,
      diskUsage: null == diskUsage
          ? _value.diskUsage
          : diskUsage // ignore: cast_nullable_to_non_nullable
              as double,
      networkTraffic: null == networkTraffic
          ? _value.networkTraffic
          : networkTraffic // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      activeConnections: null == activeConnections
          ? _value.activeConnections
          : activeConnections // ignore: cast_nullable_to_non_nullable
              as int,
      requestCounts: null == requestCounts
          ? _value.requestCounts
          : requestCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      responseTime: null == responseTime
          ? _value.responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      customMetrics: freezed == customMetrics
          ? _value.customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerMetricsImplCopyWith<$Res>
    implements $ServerMetricsCopyWith<$Res> {
  factory _$$ServerMetricsImplCopyWith(
          _$ServerMetricsImpl value, $Res Function(_$ServerMetricsImpl) then) =
      __$$ServerMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String serverName,
      DateTime timestamp,
      double cpuUsage,
      double memoryUsage,
      double diskUsage,
      Map<String, double> networkTraffic,
      int activeConnections,
      Map<String, int> requestCounts,
      Map<String, double> responseTime,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class __$$ServerMetricsImplCopyWithImpl<$Res>
    extends _$ServerMetricsCopyWithImpl<$Res, _$ServerMetricsImpl>
    implements _$$ServerMetricsImplCopyWith<$Res> {
  __$$ServerMetricsImplCopyWithImpl(
      _$ServerMetricsImpl _value, $Res Function(_$ServerMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serverName = null,
    Object? timestamp = null,
    Object? cpuUsage = null,
    Object? memoryUsage = null,
    Object? diskUsage = null,
    Object? networkTraffic = null,
    Object? activeConnections = null,
    Object? requestCounts = null,
    Object? responseTime = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_$ServerMetricsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      serverName: null == serverName
          ? _value.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cpuUsage: null == cpuUsage
          ? _value.cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as double,
      memoryUsage: null == memoryUsage
          ? _value.memoryUsage
          : memoryUsage // ignore: cast_nullable_to_non_nullable
              as double,
      diskUsage: null == diskUsage
          ? _value.diskUsage
          : diskUsage // ignore: cast_nullable_to_non_nullable
              as double,
      networkTraffic: null == networkTraffic
          ? _value._networkTraffic
          : networkTraffic // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      activeConnections: null == activeConnections
          ? _value.activeConnections
          : activeConnections // ignore: cast_nullable_to_non_nullable
              as int,
      requestCounts: null == requestCounts
          ? _value._requestCounts
          : requestCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      responseTime: null == responseTime
          ? _value._responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
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
class _$ServerMetricsImpl implements _ServerMetrics {
  const _$ServerMetricsImpl(
      {required this.id,
      required this.serverName,
      required this.timestamp,
      required this.cpuUsage,
      required this.memoryUsage,
      required this.diskUsage,
      required final Map<String, double> networkTraffic,
      required this.activeConnections,
      required final Map<String, int> requestCounts,
      required final Map<String, double> responseTime,
      final Map<String, dynamic>? customMetrics})
      : _networkTraffic = networkTraffic,
        _requestCounts = requestCounts,
        _responseTime = responseTime,
        _customMetrics = customMetrics;

  factory _$ServerMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerMetricsImplFromJson(json);

  @override
  final String id;
  @override
  final String serverName;
  @override
  final DateTime timestamp;
  @override
  final double cpuUsage;
  @override
  final double memoryUsage;
  @override
  final double diskUsage;
  final Map<String, double> _networkTraffic;
  @override
  Map<String, double> get networkTraffic {
    if (_networkTraffic is EqualUnmodifiableMapView) return _networkTraffic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_networkTraffic);
  }

  @override
  final int activeConnections;
  final Map<String, int> _requestCounts;
  @override
  Map<String, int> get requestCounts {
    if (_requestCounts is EqualUnmodifiableMapView) return _requestCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requestCounts);
  }

  final Map<String, double> _responseTime;
  @override
  Map<String, double> get responseTime {
    if (_responseTime is EqualUnmodifiableMapView) return _responseTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_responseTime);
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
    return 'ServerMetrics(id: $id, serverName: $serverName, timestamp: $timestamp, cpuUsage: $cpuUsage, memoryUsage: $memoryUsage, diskUsage: $diskUsage, networkTraffic: $networkTraffic, activeConnections: $activeConnections, requestCounts: $requestCounts, responseTime: $responseTime, customMetrics: $customMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerMetricsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serverName, serverName) ||
                other.serverName == serverName) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.cpuUsage, cpuUsage) ||
                other.cpuUsage == cpuUsage) &&
            (identical(other.memoryUsage, memoryUsage) ||
                other.memoryUsage == memoryUsage) &&
            (identical(other.diskUsage, diskUsage) ||
                other.diskUsage == diskUsage) &&
            const DeepCollectionEquality()
                .equals(other._networkTraffic, _networkTraffic) &&
            (identical(other.activeConnections, activeConnections) ||
                other.activeConnections == activeConnections) &&
            const DeepCollectionEquality()
                .equals(other._requestCounts, _requestCounts) &&
            const DeepCollectionEquality()
                .equals(other._responseTime, _responseTime) &&
            const DeepCollectionEquality()
                .equals(other._customMetrics, _customMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      serverName,
      timestamp,
      cpuUsage,
      memoryUsage,
      diskUsage,
      const DeepCollectionEquality().hash(_networkTraffic),
      activeConnections,
      const DeepCollectionEquality().hash(_requestCounts),
      const DeepCollectionEquality().hash(_responseTime),
      const DeepCollectionEquality().hash(_customMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerMetricsImplCopyWith<_$ServerMetricsImpl> get copyWith =>
      __$$ServerMetricsImplCopyWithImpl<_$ServerMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerMetricsImplToJson(
      this,
    );
  }
}

abstract class _ServerMetrics implements ServerMetrics {
  const factory _ServerMetrics(
      {required final String id,
      required final String serverName,
      required final DateTime timestamp,
      required final double cpuUsage,
      required final double memoryUsage,
      required final double diskUsage,
      required final Map<String, double> networkTraffic,
      required final int activeConnections,
      required final Map<String, int> requestCounts,
      required final Map<String, double> responseTime,
      final Map<String, dynamic>? customMetrics}) = _$ServerMetricsImpl;

  factory _ServerMetrics.fromJson(Map<String, dynamic> json) =
      _$ServerMetricsImpl.fromJson;

  @override
  String get id;
  @override
  String get serverName;
  @override
  DateTime get timestamp;
  @override
  double get cpuUsage;
  @override
  double get memoryUsage;
  @override
  double get diskUsage;
  @override
  Map<String, double> get networkTraffic;
  @override
  int get activeConnections;
  @override
  Map<String, int> get requestCounts;
  @override
  Map<String, double> get responseTime;
  @override
  Map<String, dynamic>? get customMetrics;
  @override
  @JsonKey(ignore: true)
  _$$ServerMetricsImplCopyWith<_$ServerMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatabaseMetrics _$DatabaseMetricsFromJson(Map<String, dynamic> json) {
  return _DatabaseMetrics.fromJson(json);
}

/// @nodoc
mixin _$DatabaseMetrics {
  String get id => throw _privateConstructorUsedError;
  String get databaseName => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get activeConnections => throw _privateConstructorUsedError;
  int get queryCount => throw _privateConstructorUsedError;
  double get queryLatency => throw _privateConstructorUsedError;
  double get storageUsage => throw _privateConstructorUsedError;
  int get documentsCount => throw _privateConstructorUsedError;
  Map<String, int> get collectionSizes => throw _privateConstructorUsedError;
  Map<String, double> get indexPerformance =>
      throw _privateConstructorUsedError;
  List<String> get slowQueries => throw _privateConstructorUsedError;
  Map<String, dynamic>? get replicationStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatabaseMetricsCopyWith<DatabaseMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseMetricsCopyWith<$Res> {
  factory $DatabaseMetricsCopyWith(
          DatabaseMetrics value, $Res Function(DatabaseMetrics) then) =
      _$DatabaseMetricsCopyWithImpl<$Res, DatabaseMetrics>;
  @useResult
  $Res call(
      {String id,
      String databaseName,
      DateTime timestamp,
      int activeConnections,
      int queryCount,
      double queryLatency,
      double storageUsage,
      int documentsCount,
      Map<String, int> collectionSizes,
      Map<String, double> indexPerformance,
      List<String> slowQueries,
      Map<String, dynamic>? replicationStatus});
}

/// @nodoc
class _$DatabaseMetricsCopyWithImpl<$Res, $Val extends DatabaseMetrics>
    implements $DatabaseMetricsCopyWith<$Res> {
  _$DatabaseMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? databaseName = null,
    Object? timestamp = null,
    Object? activeConnections = null,
    Object? queryCount = null,
    Object? queryLatency = null,
    Object? storageUsage = null,
    Object? documentsCount = null,
    Object? collectionSizes = null,
    Object? indexPerformance = null,
    Object? slowQueries = null,
    Object? replicationStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      databaseName: null == databaseName
          ? _value.databaseName
          : databaseName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      activeConnections: null == activeConnections
          ? _value.activeConnections
          : activeConnections // ignore: cast_nullable_to_non_nullable
              as int,
      queryCount: null == queryCount
          ? _value.queryCount
          : queryCount // ignore: cast_nullable_to_non_nullable
              as int,
      queryLatency: null == queryLatency
          ? _value.queryLatency
          : queryLatency // ignore: cast_nullable_to_non_nullable
              as double,
      storageUsage: null == storageUsage
          ? _value.storageUsage
          : storageUsage // ignore: cast_nullable_to_non_nullable
              as double,
      documentsCount: null == documentsCount
          ? _value.documentsCount
          : documentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      collectionSizes: null == collectionSizes
          ? _value.collectionSizes
          : collectionSizes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      indexPerformance: null == indexPerformance
          ? _value.indexPerformance
          : indexPerformance // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      slowQueries: null == slowQueries
          ? _value.slowQueries
          : slowQueries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      replicationStatus: freezed == replicationStatus
          ? _value.replicationStatus
          : replicationStatus // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatabaseMetricsImplCopyWith<$Res>
    implements $DatabaseMetricsCopyWith<$Res> {
  factory _$$DatabaseMetricsImplCopyWith(_$DatabaseMetricsImpl value,
          $Res Function(_$DatabaseMetricsImpl) then) =
      __$$DatabaseMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String databaseName,
      DateTime timestamp,
      int activeConnections,
      int queryCount,
      double queryLatency,
      double storageUsage,
      int documentsCount,
      Map<String, int> collectionSizes,
      Map<String, double> indexPerformance,
      List<String> slowQueries,
      Map<String, dynamic>? replicationStatus});
}

/// @nodoc
class __$$DatabaseMetricsImplCopyWithImpl<$Res>
    extends _$DatabaseMetricsCopyWithImpl<$Res, _$DatabaseMetricsImpl>
    implements _$$DatabaseMetricsImplCopyWith<$Res> {
  __$$DatabaseMetricsImplCopyWithImpl(
      _$DatabaseMetricsImpl _value, $Res Function(_$DatabaseMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? databaseName = null,
    Object? timestamp = null,
    Object? activeConnections = null,
    Object? queryCount = null,
    Object? queryLatency = null,
    Object? storageUsage = null,
    Object? documentsCount = null,
    Object? collectionSizes = null,
    Object? indexPerformance = null,
    Object? slowQueries = null,
    Object? replicationStatus = freezed,
  }) {
    return _then(_$DatabaseMetricsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      databaseName: null == databaseName
          ? _value.databaseName
          : databaseName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      activeConnections: null == activeConnections
          ? _value.activeConnections
          : activeConnections // ignore: cast_nullable_to_non_nullable
              as int,
      queryCount: null == queryCount
          ? _value.queryCount
          : queryCount // ignore: cast_nullable_to_non_nullable
              as int,
      queryLatency: null == queryLatency
          ? _value.queryLatency
          : queryLatency // ignore: cast_nullable_to_non_nullable
              as double,
      storageUsage: null == storageUsage
          ? _value.storageUsage
          : storageUsage // ignore: cast_nullable_to_non_nullable
              as double,
      documentsCount: null == documentsCount
          ? _value.documentsCount
          : documentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      collectionSizes: null == collectionSizes
          ? _value._collectionSizes
          : collectionSizes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      indexPerformance: null == indexPerformance
          ? _value._indexPerformance
          : indexPerformance // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      slowQueries: null == slowQueries
          ? _value._slowQueries
          : slowQueries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      replicationStatus: freezed == replicationStatus
          ? _value._replicationStatus
          : replicationStatus // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatabaseMetricsImpl implements _DatabaseMetrics {
  const _$DatabaseMetricsImpl(
      {required this.id,
      required this.databaseName,
      required this.timestamp,
      required this.activeConnections,
      required this.queryCount,
      required this.queryLatency,
      required this.storageUsage,
      required this.documentsCount,
      required final Map<String, int> collectionSizes,
      required final Map<String, double> indexPerformance,
      required final List<String> slowQueries,
      final Map<String, dynamic>? replicationStatus})
      : _collectionSizes = collectionSizes,
        _indexPerformance = indexPerformance,
        _slowQueries = slowQueries,
        _replicationStatus = replicationStatus;

  factory _$DatabaseMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatabaseMetricsImplFromJson(json);

  @override
  final String id;
  @override
  final String databaseName;
  @override
  final DateTime timestamp;
  @override
  final int activeConnections;
  @override
  final int queryCount;
  @override
  final double queryLatency;
  @override
  final double storageUsage;
  @override
  final int documentsCount;
  final Map<String, int> _collectionSizes;
  @override
  Map<String, int> get collectionSizes {
    if (_collectionSizes is EqualUnmodifiableMapView) return _collectionSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_collectionSizes);
  }

  final Map<String, double> _indexPerformance;
  @override
  Map<String, double> get indexPerformance {
    if (_indexPerformance is EqualUnmodifiableMapView) return _indexPerformance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_indexPerformance);
  }

  final List<String> _slowQueries;
  @override
  List<String> get slowQueries {
    if (_slowQueries is EqualUnmodifiableListView) return _slowQueries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slowQueries);
  }

  final Map<String, dynamic>? _replicationStatus;
  @override
  Map<String, dynamic>? get replicationStatus {
    final value = _replicationStatus;
    if (value == null) return null;
    if (_replicationStatus is EqualUnmodifiableMapView)
      return _replicationStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DatabaseMetrics(id: $id, databaseName: $databaseName, timestamp: $timestamp, activeConnections: $activeConnections, queryCount: $queryCount, queryLatency: $queryLatency, storageUsage: $storageUsage, documentsCount: $documentsCount, collectionSizes: $collectionSizes, indexPerformance: $indexPerformance, slowQueries: $slowQueries, replicationStatus: $replicationStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseMetricsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.databaseName, databaseName) ||
                other.databaseName == databaseName) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.activeConnections, activeConnections) ||
                other.activeConnections == activeConnections) &&
            (identical(other.queryCount, queryCount) ||
                other.queryCount == queryCount) &&
            (identical(other.queryLatency, queryLatency) ||
                other.queryLatency == queryLatency) &&
            (identical(other.storageUsage, storageUsage) ||
                other.storageUsage == storageUsage) &&
            (identical(other.documentsCount, documentsCount) ||
                other.documentsCount == documentsCount) &&
            const DeepCollectionEquality()
                .equals(other._collectionSizes, _collectionSizes) &&
            const DeepCollectionEquality()
                .equals(other._indexPerformance, _indexPerformance) &&
            const DeepCollectionEquality()
                .equals(other._slowQueries, _slowQueries) &&
            const DeepCollectionEquality()
                .equals(other._replicationStatus, _replicationStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      databaseName,
      timestamp,
      activeConnections,
      queryCount,
      queryLatency,
      storageUsage,
      documentsCount,
      const DeepCollectionEquality().hash(_collectionSizes),
      const DeepCollectionEquality().hash(_indexPerformance),
      const DeepCollectionEquality().hash(_slowQueries),
      const DeepCollectionEquality().hash(_replicationStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseMetricsImplCopyWith<_$DatabaseMetricsImpl> get copyWith =>
      __$$DatabaseMetricsImplCopyWithImpl<_$DatabaseMetricsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatabaseMetricsImplToJson(
      this,
    );
  }
}

abstract class _DatabaseMetrics implements DatabaseMetrics {
  const factory _DatabaseMetrics(
      {required final String id,
      required final String databaseName,
      required final DateTime timestamp,
      required final int activeConnections,
      required final int queryCount,
      required final double queryLatency,
      required final double storageUsage,
      required final int documentsCount,
      required final Map<String, int> collectionSizes,
      required final Map<String, double> indexPerformance,
      required final List<String> slowQueries,
      final Map<String, dynamic>? replicationStatus}) = _$DatabaseMetricsImpl;

  factory _DatabaseMetrics.fromJson(Map<String, dynamic> json) =
      _$DatabaseMetricsImpl.fromJson;

  @override
  String get id;
  @override
  String get databaseName;
  @override
  DateTime get timestamp;
  @override
  int get activeConnections;
  @override
  int get queryCount;
  @override
  double get queryLatency;
  @override
  double get storageUsage;
  @override
  int get documentsCount;
  @override
  Map<String, int> get collectionSizes;
  @override
  Map<String, double> get indexPerformance;
  @override
  List<String> get slowQueries;
  @override
  Map<String, dynamic>? get replicationStatus;
  @override
  @JsonKey(ignore: true)
  _$$DatabaseMetricsImplCopyWith<_$DatabaseMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BackupStatus _$BackupStatusFromJson(Map<String, dynamic> json) {
  return _BackupStatus.fromJson(json);
}

/// @nodoc
mixin _$BackupStatus {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get backupType => throw _privateConstructorUsedError;
  BackupState get state => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get sizeBytes => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  bool get isEncrypted => throw _privateConstructorUsedError;
  Map<String, bool> get includedServices => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  DateTime? get lastSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackupStatusCopyWith<BackupStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackupStatusCopyWith<$Res> {
  factory $BackupStatusCopyWith(
          BackupStatus value, $Res Function(BackupStatus) then) =
      _$BackupStatusCopyWithImpl<$Res, BackupStatus>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String backupType,
      BackupState state,
      String location,
      int sizeBytes,
      Duration duration,
      bool isEncrypted,
      Map<String, bool> includedServices,
      String? error,
      DateTime? lastSuccessful});
}

/// @nodoc
class _$BackupStatusCopyWithImpl<$Res, $Val extends BackupStatus>
    implements $BackupStatusCopyWith<$Res> {
  _$BackupStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? backupType = null,
    Object? state = null,
    Object? location = null,
    Object? sizeBytes = null,
    Object? duration = null,
    Object? isEncrypted = null,
    Object? includedServices = null,
    Object? error = freezed,
    Object? lastSuccessful = freezed,
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
      backupType: null == backupType
          ? _value.backupType
          : backupType // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BackupState,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      sizeBytes: null == sizeBytes
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isEncrypted: null == isEncrypted
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      includedServices: null == includedServices
          ? _value.includedServices
          : includedServices // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSuccessful: freezed == lastSuccessful
          ? _value.lastSuccessful
          : lastSuccessful // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackupStatusImplCopyWith<$Res>
    implements $BackupStatusCopyWith<$Res> {
  factory _$$BackupStatusImplCopyWith(
          _$BackupStatusImpl value, $Res Function(_$BackupStatusImpl) then) =
      __$$BackupStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String backupType,
      BackupState state,
      String location,
      int sizeBytes,
      Duration duration,
      bool isEncrypted,
      Map<String, bool> includedServices,
      String? error,
      DateTime? lastSuccessful});
}

/// @nodoc
class __$$BackupStatusImplCopyWithImpl<$Res>
    extends _$BackupStatusCopyWithImpl<$Res, _$BackupStatusImpl>
    implements _$$BackupStatusImplCopyWith<$Res> {
  __$$BackupStatusImplCopyWithImpl(
      _$BackupStatusImpl _value, $Res Function(_$BackupStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? backupType = null,
    Object? state = null,
    Object? location = null,
    Object? sizeBytes = null,
    Object? duration = null,
    Object? isEncrypted = null,
    Object? includedServices = null,
    Object? error = freezed,
    Object? lastSuccessful = freezed,
  }) {
    return _then(_$BackupStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      backupType: null == backupType
          ? _value.backupType
          : backupType // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BackupState,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      sizeBytes: null == sizeBytes
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isEncrypted: null == isEncrypted
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      includedServices: null == includedServices
          ? _value._includedServices
          : includedServices // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSuccessful: freezed == lastSuccessful
          ? _value.lastSuccessful
          : lastSuccessful // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackupStatusImpl implements _BackupStatus {
  const _$BackupStatusImpl(
      {required this.id,
      required this.timestamp,
      required this.backupType,
      required this.state,
      required this.location,
      required this.sizeBytes,
      required this.duration,
      required this.isEncrypted,
      required final Map<String, bool> includedServices,
      this.error,
      this.lastSuccessful})
      : _includedServices = includedServices;

  factory _$BackupStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackupStatusImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final String backupType;
  @override
  final BackupState state;
  @override
  final String location;
  @override
  final int sizeBytes;
  @override
  final Duration duration;
  @override
  final bool isEncrypted;
  final Map<String, bool> _includedServices;
  @override
  Map<String, bool> get includedServices {
    if (_includedServices is EqualUnmodifiableMapView) return _includedServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_includedServices);
  }

  @override
  final String? error;
  @override
  final DateTime? lastSuccessful;

  @override
  String toString() {
    return 'BackupStatus(id: $id, timestamp: $timestamp, backupType: $backupType, state: $state, location: $location, sizeBytes: $sizeBytes, duration: $duration, isEncrypted: $isEncrypted, includedServices: $includedServices, error: $error, lastSuccessful: $lastSuccessful)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackupStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.backupType, backupType) ||
                other.backupType == backupType) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isEncrypted, isEncrypted) ||
                other.isEncrypted == isEncrypted) &&
            const DeepCollectionEquality()
                .equals(other._includedServices, _includedServices) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.lastSuccessful, lastSuccessful) ||
                other.lastSuccessful == lastSuccessful));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      backupType,
      state,
      location,
      sizeBytes,
      duration,
      isEncrypted,
      const DeepCollectionEquality().hash(_includedServices),
      error,
      lastSuccessful);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackupStatusImplCopyWith<_$BackupStatusImpl> get copyWith =>
      __$$BackupStatusImplCopyWithImpl<_$BackupStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackupStatusImplToJson(
      this,
    );
  }
}

abstract class _BackupStatus implements BackupStatus {
  const factory _BackupStatus(
      {required final String id,
      required final DateTime timestamp,
      required final String backupType,
      required final BackupState state,
      required final String location,
      required final int sizeBytes,
      required final Duration duration,
      required final bool isEncrypted,
      required final Map<String, bool> includedServices,
      final String? error,
      final DateTime? lastSuccessful}) = _$BackupStatusImpl;

  factory _BackupStatus.fromJson(Map<String, dynamic> json) =
      _$BackupStatusImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  String get backupType;
  @override
  BackupState get state;
  @override
  String get location;
  @override
  int get sizeBytes;
  @override
  Duration get duration;
  @override
  bool get isEncrypted;
  @override
  Map<String, bool> get includedServices;
  @override
  String? get error;
  @override
  DateTime? get lastSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$BackupStatusImplCopyWith<_$BackupStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityAudit _$SecurityAuditFromJson(Map<String, dynamic> json) {
  return _SecurityAudit.fromJson(json);
}

/// @nodoc
mixin _$SecurityAudit {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, SecurityStatus> get endpoints =>
      throw _privateConstructorUsedError;
  Map<String, List<String>> get vulnerabilities =>
      throw _privateConstructorUsedError;
  Map<String, AuthStats> get authentication =>
      throw _privateConstructorUsedError;
  List<SecurityIncident> get recentIncidents =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get permissions => throw _privateConstructorUsedError;
  bool get firewallEnabled => throw _privateConstructorUsedError;
  Map<String, dynamic> get securityRules => throw _privateConstructorUsedError;

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
      DateTime timestamp,
      Map<String, SecurityStatus> endpoints,
      Map<String, List<String>> vulnerabilities,
      Map<String, AuthStats> authentication,
      List<SecurityIncident> recentIncidents,
      Map<String, dynamic> permissions,
      bool firewallEnabled,
      Map<String, dynamic> securityRules});
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
    Object? timestamp = null,
    Object? endpoints = null,
    Object? vulnerabilities = null,
    Object? authentication = null,
    Object? recentIncidents = null,
    Object? permissions = null,
    Object? firewallEnabled = null,
    Object? securityRules = null,
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
      endpoints: null == endpoints
          ? _value.endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as Map<String, SecurityStatus>,
      vulnerabilities: null == vulnerabilities
          ? _value.vulnerabilities
          : vulnerabilities // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      authentication: null == authentication
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as Map<String, AuthStats>,
      recentIncidents: null == recentIncidents
          ? _value.recentIncidents
          : recentIncidents // ignore: cast_nullable_to_non_nullable
              as List<SecurityIncident>,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      firewallEnabled: null == firewallEnabled
          ? _value.firewallEnabled
          : firewallEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      securityRules: null == securityRules
          ? _value.securityRules
          : securityRules // ignore: cast_nullable_to_non_nullable
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
      DateTime timestamp,
      Map<String, SecurityStatus> endpoints,
      Map<String, List<String>> vulnerabilities,
      Map<String, AuthStats> authentication,
      List<SecurityIncident> recentIncidents,
      Map<String, dynamic> permissions,
      bool firewallEnabled,
      Map<String, dynamic> securityRules});
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
    Object? timestamp = null,
    Object? endpoints = null,
    Object? vulnerabilities = null,
    Object? authentication = null,
    Object? recentIncidents = null,
    Object? permissions = null,
    Object? firewallEnabled = null,
    Object? securityRules = null,
  }) {
    return _then(_$SecurityAuditImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endpoints: null == endpoints
          ? _value._endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as Map<String, SecurityStatus>,
      vulnerabilities: null == vulnerabilities
          ? _value._vulnerabilities
          : vulnerabilities // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      authentication: null == authentication
          ? _value._authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as Map<String, AuthStats>,
      recentIncidents: null == recentIncidents
          ? _value._recentIncidents
          : recentIncidents // ignore: cast_nullable_to_non_nullable
              as List<SecurityIncident>,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      firewallEnabled: null == firewallEnabled
          ? _value.firewallEnabled
          : firewallEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      securityRules: null == securityRules
          ? _value._securityRules
          : securityRules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityAuditImpl implements _SecurityAudit {
  const _$SecurityAuditImpl(
      {required this.id,
      required this.timestamp,
      required final Map<String, SecurityStatus> endpoints,
      required final Map<String, List<String>> vulnerabilities,
      required final Map<String, AuthStats> authentication,
      required final List<SecurityIncident> recentIncidents,
      required final Map<String, dynamic> permissions,
      required this.firewallEnabled,
      required final Map<String, dynamic> securityRules})
      : _endpoints = endpoints,
        _vulnerabilities = vulnerabilities,
        _authentication = authentication,
        _recentIncidents = recentIncidents,
        _permissions = permissions,
        _securityRules = securityRules;

  factory _$SecurityAuditImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityAuditImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  final Map<String, SecurityStatus> _endpoints;
  @override
  Map<String, SecurityStatus> get endpoints {
    if (_endpoints is EqualUnmodifiableMapView) return _endpoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_endpoints);
  }

  final Map<String, List<String>> _vulnerabilities;
  @override
  Map<String, List<String>> get vulnerabilities {
    if (_vulnerabilities is EqualUnmodifiableMapView) return _vulnerabilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_vulnerabilities);
  }

  final Map<String, AuthStats> _authentication;
  @override
  Map<String, AuthStats> get authentication {
    if (_authentication is EqualUnmodifiableMapView) return _authentication;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_authentication);
  }

  final List<SecurityIncident> _recentIncidents;
  @override
  List<SecurityIncident> get recentIncidents {
    if (_recentIncidents is EqualUnmodifiableListView) return _recentIncidents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentIncidents);
  }

  final Map<String, dynamic> _permissions;
  @override
  Map<String, dynamic> get permissions {
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_permissions);
  }

  @override
  final bool firewallEnabled;
  final Map<String, dynamic> _securityRules;
  @override
  Map<String, dynamic> get securityRules {
    if (_securityRules is EqualUnmodifiableMapView) return _securityRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_securityRules);
  }

  @override
  String toString() {
    return 'SecurityAudit(id: $id, timestamp: $timestamp, endpoints: $endpoints, vulnerabilities: $vulnerabilities, authentication: $authentication, recentIncidents: $recentIncidents, permissions: $permissions, firewallEnabled: $firewallEnabled, securityRules: $securityRules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityAuditImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._endpoints, _endpoints) &&
            const DeepCollectionEquality()
                .equals(other._vulnerabilities, _vulnerabilities) &&
            const DeepCollectionEquality()
                .equals(other._authentication, _authentication) &&
            const DeepCollectionEquality()
                .equals(other._recentIncidents, _recentIncidents) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.firewallEnabled, firewallEnabled) ||
                other.firewallEnabled == firewallEnabled) &&
            const DeepCollectionEquality()
                .equals(other._securityRules, _securityRules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      const DeepCollectionEquality().hash(_endpoints),
      const DeepCollectionEquality().hash(_vulnerabilities),
      const DeepCollectionEquality().hash(_authentication),
      const DeepCollectionEquality().hash(_recentIncidents),
      const DeepCollectionEquality().hash(_permissions),
      firewallEnabled,
      const DeepCollectionEquality().hash(_securityRules));

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
      required final DateTime timestamp,
      required final Map<String, SecurityStatus> endpoints,
      required final Map<String, List<String>> vulnerabilities,
      required final Map<String, AuthStats> authentication,
      required final List<SecurityIncident> recentIncidents,
      required final Map<String, dynamic> permissions,
      required final bool firewallEnabled,
      required final Map<String, dynamic> securityRules}) = _$SecurityAuditImpl;

  factory _SecurityAudit.fromJson(Map<String, dynamic> json) =
      _$SecurityAuditImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  Map<String, SecurityStatus> get endpoints;
  @override
  Map<String, List<String>> get vulnerabilities;
  @override
  Map<String, AuthStats> get authentication;
  @override
  List<SecurityIncident> get recentIncidents;
  @override
  Map<String, dynamic> get permissions;
  @override
  bool get firewallEnabled;
  @override
  Map<String, dynamic> get securityRules;
  @override
  @JsonKey(ignore: true)
  _$$SecurityAuditImplCopyWith<_$SecurityAuditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityStatus _$SecurityStatusFromJson(Map<String, dynamic> json) {
  return _SecurityStatus.fromJson(json);
}

/// @nodoc
mixin _$SecurityStatus {
  bool get isSecure => throw _privateConstructorUsedError;
  List<String> get issues => throw _privateConstructorUsedError;
  DateTime get lastChecked => throw _privateConstructorUsedError;
  String get protocol => throw _privateConstructorUsedError;
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityStatusCopyWith<SecurityStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityStatusCopyWith<$Res> {
  factory $SecurityStatusCopyWith(
          SecurityStatus value, $Res Function(SecurityStatus) then) =
      _$SecurityStatusCopyWithImpl<$Res, SecurityStatus>;
  @useResult
  $Res call(
      {bool isSecure,
      List<String> issues,
      DateTime lastChecked,
      String protocol,
      Map<String, dynamic> headers});
}

/// @nodoc
class _$SecurityStatusCopyWithImpl<$Res, $Val extends SecurityStatus>
    implements $SecurityStatusCopyWith<$Res> {
  _$SecurityStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSecure = null,
    Object? issues = null,
    Object? lastChecked = null,
    Object? protocol = null,
    Object? headers = null,
  }) {
    return _then(_value.copyWith(
      isSecure: null == isSecure
          ? _value.isSecure
          : isSecure // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastChecked: null == lastChecked
          ? _value.lastChecked
          : lastChecked // ignore: cast_nullable_to_non_nullable
              as DateTime,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecurityStatusImplCopyWith<$Res>
    implements $SecurityStatusCopyWith<$Res> {
  factory _$$SecurityStatusImplCopyWith(_$SecurityStatusImpl value,
          $Res Function(_$SecurityStatusImpl) then) =
      __$$SecurityStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSecure,
      List<String> issues,
      DateTime lastChecked,
      String protocol,
      Map<String, dynamic> headers});
}

/// @nodoc
class __$$SecurityStatusImplCopyWithImpl<$Res>
    extends _$SecurityStatusCopyWithImpl<$Res, _$SecurityStatusImpl>
    implements _$$SecurityStatusImplCopyWith<$Res> {
  __$$SecurityStatusImplCopyWithImpl(
      _$SecurityStatusImpl _value, $Res Function(_$SecurityStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSecure = null,
    Object? issues = null,
    Object? lastChecked = null,
    Object? protocol = null,
    Object? headers = null,
  }) {
    return _then(_$SecurityStatusImpl(
      isSecure: null == isSecure
          ? _value.isSecure
          : isSecure // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: null == issues
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastChecked: null == lastChecked
          ? _value.lastChecked
          : lastChecked // ignore: cast_nullable_to_non_nullable
              as DateTime,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityStatusImpl implements _SecurityStatus {
  const _$SecurityStatusImpl(
      {required this.isSecure,
      required final List<String> issues,
      required this.lastChecked,
      required this.protocol,
      required final Map<String, dynamic> headers})
      : _issues = issues,
        _headers = headers;

  factory _$SecurityStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityStatusImplFromJson(json);

  @override
  final bool isSecure;
  final List<String> _issues;
  @override
  List<String> get issues {
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  @override
  final DateTime lastChecked;
  @override
  final String protocol;
  final Map<String, dynamic> _headers;
  @override
  Map<String, dynamic> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  String toString() {
    return 'SecurityStatus(isSecure: $isSecure, issues: $issues, lastChecked: $lastChecked, protocol: $protocol, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityStatusImpl &&
            (identical(other.isSecure, isSecure) ||
                other.isSecure == isSecure) &&
            const DeepCollectionEquality().equals(other._issues, _issues) &&
            (identical(other.lastChecked, lastChecked) ||
                other.lastChecked == lastChecked) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSecure,
      const DeepCollectionEquality().hash(_issues),
      lastChecked,
      protocol,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityStatusImplCopyWith<_$SecurityStatusImpl> get copyWith =>
      __$$SecurityStatusImplCopyWithImpl<_$SecurityStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityStatusImplToJson(
      this,
    );
  }
}

abstract class _SecurityStatus implements SecurityStatus {
  const factory _SecurityStatus(
      {required final bool isSecure,
      required final List<String> issues,
      required final DateTime lastChecked,
      required final String protocol,
      required final Map<String, dynamic> headers}) = _$SecurityStatusImpl;

  factory _SecurityStatus.fromJson(Map<String, dynamic> json) =
      _$SecurityStatusImpl.fromJson;

  @override
  bool get isSecure;
  @override
  List<String> get issues;
  @override
  DateTime get lastChecked;
  @override
  String get protocol;
  @override
  Map<String, dynamic> get headers;
  @override
  @JsonKey(ignore: true)
  _$$SecurityStatusImplCopyWith<_$SecurityStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthStats _$AuthStatsFromJson(Map<String, dynamic> json) {
  return _AuthStats.fromJson(json);
}

/// @nodoc
mixin _$AuthStats {
  int get totalAttempts => throw _privateConstructorUsedError;
  int get successfulAttempts => throw _privateConstructorUsedError;
  int get failedAttempts => throw _privateConstructorUsedError;
  List<String> get blockedIPs => throw _privateConstructorUsedError;
  Map<String, int> get methodStats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStatsCopyWith<AuthStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatsCopyWith<$Res> {
  factory $AuthStatsCopyWith(AuthStats value, $Res Function(AuthStats) then) =
      _$AuthStatsCopyWithImpl<$Res, AuthStats>;
  @useResult
  $Res call(
      {int totalAttempts,
      int successfulAttempts,
      int failedAttempts,
      List<String> blockedIPs,
      Map<String, int> methodStats});
}

/// @nodoc
class _$AuthStatsCopyWithImpl<$Res, $Val extends AuthStats>
    implements $AuthStatsCopyWith<$Res> {
  _$AuthStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAttempts = null,
    Object? successfulAttempts = null,
    Object? failedAttempts = null,
    Object? blockedIPs = null,
    Object? methodStats = null,
  }) {
    return _then(_value.copyWith(
      totalAttempts: null == totalAttempts
          ? _value.totalAttempts
          : totalAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      successfulAttempts: null == successfulAttempts
          ? _value.successfulAttempts
          : successfulAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      failedAttempts: null == failedAttempts
          ? _value.failedAttempts
          : failedAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      blockedIPs: null == blockedIPs
          ? _value.blockedIPs
          : blockedIPs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      methodStats: null == methodStats
          ? _value.methodStats
          : methodStats // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStatsImplCopyWith<$Res>
    implements $AuthStatsCopyWith<$Res> {
  factory _$$AuthStatsImplCopyWith(
          _$AuthStatsImpl value, $Res Function(_$AuthStatsImpl) then) =
      __$$AuthStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalAttempts,
      int successfulAttempts,
      int failedAttempts,
      List<String> blockedIPs,
      Map<String, int> methodStats});
}

/// @nodoc
class __$$AuthStatsImplCopyWithImpl<$Res>
    extends _$AuthStatsCopyWithImpl<$Res, _$AuthStatsImpl>
    implements _$$AuthStatsImplCopyWith<$Res> {
  __$$AuthStatsImplCopyWithImpl(
      _$AuthStatsImpl _value, $Res Function(_$AuthStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAttempts = null,
    Object? successfulAttempts = null,
    Object? failedAttempts = null,
    Object? blockedIPs = null,
    Object? methodStats = null,
  }) {
    return _then(_$AuthStatsImpl(
      totalAttempts: null == totalAttempts
          ? _value.totalAttempts
          : totalAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      successfulAttempts: null == successfulAttempts
          ? _value.successfulAttempts
          : successfulAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      failedAttempts: null == failedAttempts
          ? _value.failedAttempts
          : failedAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      blockedIPs: null == blockedIPs
          ? _value._blockedIPs
          : blockedIPs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      methodStats: null == methodStats
          ? _value._methodStats
          : methodStats // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStatsImpl implements _AuthStats {
  const _$AuthStatsImpl(
      {required this.totalAttempts,
      required this.successfulAttempts,
      required this.failedAttempts,
      required final List<String> blockedIPs,
      required final Map<String, int> methodStats})
      : _blockedIPs = blockedIPs,
        _methodStats = methodStats;

  factory _$AuthStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStatsImplFromJson(json);

  @override
  final int totalAttempts;
  @override
  final int successfulAttempts;
  @override
  final int failedAttempts;
  final List<String> _blockedIPs;
  @override
  List<String> get blockedIPs {
    if (_blockedIPs is EqualUnmodifiableListView) return _blockedIPs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockedIPs);
  }

  final Map<String, int> _methodStats;
  @override
  Map<String, int> get methodStats {
    if (_methodStats is EqualUnmodifiableMapView) return _methodStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_methodStats);
  }

  @override
  String toString() {
    return 'AuthStats(totalAttempts: $totalAttempts, successfulAttempts: $successfulAttempts, failedAttempts: $failedAttempts, blockedIPs: $blockedIPs, methodStats: $methodStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatsImpl &&
            (identical(other.totalAttempts, totalAttempts) ||
                other.totalAttempts == totalAttempts) &&
            (identical(other.successfulAttempts, successfulAttempts) ||
                other.successfulAttempts == successfulAttempts) &&
            (identical(other.failedAttempts, failedAttempts) ||
                other.failedAttempts == failedAttempts) &&
            const DeepCollectionEquality()
                .equals(other._blockedIPs, _blockedIPs) &&
            const DeepCollectionEquality()
                .equals(other._methodStats, _methodStats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalAttempts,
      successfulAttempts,
      failedAttempts,
      const DeepCollectionEquality().hash(_blockedIPs),
      const DeepCollectionEquality().hash(_methodStats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatsImplCopyWith<_$AuthStatsImpl> get copyWith =>
      __$$AuthStatsImplCopyWithImpl<_$AuthStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStatsImplToJson(
      this,
    );
  }
}

abstract class _AuthStats implements AuthStats {
  const factory _AuthStats(
      {required final int totalAttempts,
      required final int successfulAttempts,
      required final int failedAttempts,
      required final List<String> blockedIPs,
      required final Map<String, int> methodStats}) = _$AuthStatsImpl;

  factory _AuthStats.fromJson(Map<String, dynamic> json) =
      _$AuthStatsImpl.fromJson;

  @override
  int get totalAttempts;
  @override
  int get successfulAttempts;
  @override
  int get failedAttempts;
  @override
  List<String> get blockedIPs;
  @override
  Map<String, int> get methodStats;
  @override
  @JsonKey(ignore: true)
  _$$AuthStatsImplCopyWith<_$AuthStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityIncident _$SecurityIncidentFromJson(Map<String, dynamic> json) {
  return _SecurityIncident.fromJson(json);
}

/// @nodoc
mixin _$SecurityIncident {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  SecuritySeverity get severity => throw _privateConstructorUsedError;
  String get sourceIP => throw _privateConstructorUsedError;
  String get targetEndpoint => throw _privateConstructorUsedError;
  IncidentStatus get status => throw _privateConstructorUsedError;
  String? get resolution => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityIncidentCopyWith<SecurityIncident> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityIncidentCopyWith<$Res> {
  factory $SecurityIncidentCopyWith(
          SecurityIncident value, $Res Function(SecurityIncident) then) =
      _$SecurityIncidentCopyWithImpl<$Res, SecurityIncident>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String type,
      String description,
      SecuritySeverity severity,
      String sourceIP,
      String targetEndpoint,
      IncidentStatus status,
      String? resolution});
}

/// @nodoc
class _$SecurityIncidentCopyWithImpl<$Res, $Val extends SecurityIncident>
    implements $SecurityIncidentCopyWith<$Res> {
  _$SecurityIncidentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? type = null,
    Object? description = null,
    Object? severity = null,
    Object? sourceIP = null,
    Object? targetEndpoint = null,
    Object? status = null,
    Object? resolution = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as SecuritySeverity,
      sourceIP: null == sourceIP
          ? _value.sourceIP
          : sourceIP // ignore: cast_nullable_to_non_nullable
              as String,
      targetEndpoint: null == targetEndpoint
          ? _value.targetEndpoint
          : targetEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as IncidentStatus,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecurityIncidentImplCopyWith<$Res>
    implements $SecurityIncidentCopyWith<$Res> {
  factory _$$SecurityIncidentImplCopyWith(_$SecurityIncidentImpl value,
          $Res Function(_$SecurityIncidentImpl) then) =
      __$$SecurityIncidentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String type,
      String description,
      SecuritySeverity severity,
      String sourceIP,
      String targetEndpoint,
      IncidentStatus status,
      String? resolution});
}

/// @nodoc
class __$$SecurityIncidentImplCopyWithImpl<$Res>
    extends _$SecurityIncidentCopyWithImpl<$Res, _$SecurityIncidentImpl>
    implements _$$SecurityIncidentImplCopyWith<$Res> {
  __$$SecurityIncidentImplCopyWithImpl(_$SecurityIncidentImpl _value,
      $Res Function(_$SecurityIncidentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? type = null,
    Object? description = null,
    Object? severity = null,
    Object? sourceIP = null,
    Object? targetEndpoint = null,
    Object? status = null,
    Object? resolution = freezed,
  }) {
    return _then(_$SecurityIncidentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as SecuritySeverity,
      sourceIP: null == sourceIP
          ? _value.sourceIP
          : sourceIP // ignore: cast_nullable_to_non_nullable
              as String,
      targetEndpoint: null == targetEndpoint
          ? _value.targetEndpoint
          : targetEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as IncidentStatus,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityIncidentImpl implements _SecurityIncident {
  const _$SecurityIncidentImpl(
      {required this.id,
      required this.timestamp,
      required this.type,
      required this.description,
      required this.severity,
      required this.sourceIP,
      required this.targetEndpoint,
      required this.status,
      this.resolution});

  factory _$SecurityIncidentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityIncidentImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final String type;
  @override
  final String description;
  @override
  final SecuritySeverity severity;
  @override
  final String sourceIP;
  @override
  final String targetEndpoint;
  @override
  final IncidentStatus status;
  @override
  final String? resolution;

  @override
  String toString() {
    return 'SecurityIncident(id: $id, timestamp: $timestamp, type: $type, description: $description, severity: $severity, sourceIP: $sourceIP, targetEndpoint: $targetEndpoint, status: $status, resolution: $resolution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityIncidentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.sourceIP, sourceIP) ||
                other.sourceIP == sourceIP) &&
            (identical(other.targetEndpoint, targetEndpoint) ||
                other.targetEndpoint == targetEndpoint) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, timestamp, type, description,
      severity, sourceIP, targetEndpoint, status, resolution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityIncidentImplCopyWith<_$SecurityIncidentImpl> get copyWith =>
      __$$SecurityIncidentImplCopyWithImpl<_$SecurityIncidentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityIncidentImplToJson(
      this,
    );
  }
}

abstract class _SecurityIncident implements SecurityIncident {
  const factory _SecurityIncident(
      {required final String id,
      required final DateTime timestamp,
      required final String type,
      required final String description,
      required final SecuritySeverity severity,
      required final String sourceIP,
      required final String targetEndpoint,
      required final IncidentStatus status,
      final String? resolution}) = _$SecurityIncidentImpl;

  factory _SecurityIncident.fromJson(Map<String, dynamic> json) =
      _$SecurityIncidentImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  String get type;
  @override
  String get description;
  @override
  SecuritySeverity get severity;
  @override
  String get sourceIP;
  @override
  String get targetEndpoint;
  @override
  IncidentStatus get status;
  @override
  String? get resolution;
  @override
  @JsonKey(ignore: true)
  _$$SecurityIncidentImplCopyWith<_$SecurityIncidentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiMetrics _$ApiMetricsFromJson(Map<String, dynamic> json) {
  return _ApiMetrics.fromJson(json);
}

/// @nodoc
mixin _$ApiMetrics {
  String get id => throw _privateConstructorUsedError;
  String get endpoint => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get requestCount => throw _privateConstructorUsedError;
  double get averageResponseTime => throw _privateConstructorUsedError;
  Map<String, int> get statusCodes => throw _privateConstructorUsedError;
  Map<String, int> get errorRates => throw _privateConstructorUsedError;
  double get uptime => throw _privateConstructorUsedError;
  List<String> get slowestEndpoints => throw _privateConstructorUsedError;
  Map<String, dynamic> get rateLimit => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customMetrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiMetricsCopyWith<ApiMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiMetricsCopyWith<$Res> {
  factory $ApiMetricsCopyWith(
          ApiMetrics value, $Res Function(ApiMetrics) then) =
      _$ApiMetricsCopyWithImpl<$Res, ApiMetrics>;
  @useResult
  $Res call(
      {String id,
      String endpoint,
      DateTime timestamp,
      int requestCount,
      double averageResponseTime,
      Map<String, int> statusCodes,
      Map<String, int> errorRates,
      double uptime,
      List<String> slowestEndpoints,
      Map<String, dynamic> rateLimit,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class _$ApiMetricsCopyWithImpl<$Res, $Val extends ApiMetrics>
    implements $ApiMetricsCopyWith<$Res> {
  _$ApiMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? endpoint = null,
    Object? timestamp = null,
    Object? requestCount = null,
    Object? averageResponseTime = null,
    Object? statusCodes = null,
    Object? errorRates = null,
    Object? uptime = null,
    Object? slowestEndpoints = null,
    Object? rateLimit = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestCount: null == requestCount
          ? _value.requestCount
          : requestCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageResponseTime: null == averageResponseTime
          ? _value.averageResponseTime
          : averageResponseTime // ignore: cast_nullable_to_non_nullable
              as double,
      statusCodes: null == statusCodes
          ? _value.statusCodes
          : statusCodes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      errorRates: null == errorRates
          ? _value.errorRates
          : errorRates // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as double,
      slowestEndpoints: null == slowestEndpoints
          ? _value.slowestEndpoints
          : slowestEndpoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rateLimit: null == rateLimit
          ? _value.rateLimit
          : rateLimit // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      customMetrics: freezed == customMetrics
          ? _value.customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiMetricsImplCopyWith<$Res>
    implements $ApiMetricsCopyWith<$Res> {
  factory _$$ApiMetricsImplCopyWith(
          _$ApiMetricsImpl value, $Res Function(_$ApiMetricsImpl) then) =
      __$$ApiMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String endpoint,
      DateTime timestamp,
      int requestCount,
      double averageResponseTime,
      Map<String, int> statusCodes,
      Map<String, int> errorRates,
      double uptime,
      List<String> slowestEndpoints,
      Map<String, dynamic> rateLimit,
      Map<String, dynamic>? customMetrics});
}

/// @nodoc
class __$$ApiMetricsImplCopyWithImpl<$Res>
    extends _$ApiMetricsCopyWithImpl<$Res, _$ApiMetricsImpl>
    implements _$$ApiMetricsImplCopyWith<$Res> {
  __$$ApiMetricsImplCopyWithImpl(
      _$ApiMetricsImpl _value, $Res Function(_$ApiMetricsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? endpoint = null,
    Object? timestamp = null,
    Object? requestCount = null,
    Object? averageResponseTime = null,
    Object? statusCodes = null,
    Object? errorRates = null,
    Object? uptime = null,
    Object? slowestEndpoints = null,
    Object? rateLimit = null,
    Object? customMetrics = freezed,
  }) {
    return _then(_$ApiMetricsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestCount: null == requestCount
          ? _value.requestCount
          : requestCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageResponseTime: null == averageResponseTime
          ? _value.averageResponseTime
          : averageResponseTime // ignore: cast_nullable_to_non_nullable
              as double,
      statusCodes: null == statusCodes
          ? _value._statusCodes
          : statusCodes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      errorRates: null == errorRates
          ? _value._errorRates
          : errorRates // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as double,
      slowestEndpoints: null == slowestEndpoints
          ? _value._slowestEndpoints
          : slowestEndpoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rateLimit: null == rateLimit
          ? _value._rateLimit
          : rateLimit // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      customMetrics: freezed == customMetrics
          ? _value._customMetrics
          : customMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiMetricsImpl implements _ApiMetrics {
  const _$ApiMetricsImpl(
      {required this.id,
      required this.endpoint,
      required this.timestamp,
      required this.requestCount,
      required this.averageResponseTime,
      required final Map<String, int> statusCodes,
      required final Map<String, int> errorRates,
      required this.uptime,
      required final List<String> slowestEndpoints,
      required final Map<String, dynamic> rateLimit,
      final Map<String, dynamic>? customMetrics})
      : _statusCodes = statusCodes,
        _errorRates = errorRates,
        _slowestEndpoints = slowestEndpoints,
        _rateLimit = rateLimit,
        _customMetrics = customMetrics;

  factory _$ApiMetricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiMetricsImplFromJson(json);

  @override
  final String id;
  @override
  final String endpoint;
  @override
  final DateTime timestamp;
  @override
  final int requestCount;
  @override
  final double averageResponseTime;
  final Map<String, int> _statusCodes;
  @override
  Map<String, int> get statusCodes {
    if (_statusCodes is EqualUnmodifiableMapView) return _statusCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_statusCodes);
  }

  final Map<String, int> _errorRates;
  @override
  Map<String, int> get errorRates {
    if (_errorRates is EqualUnmodifiableMapView) return _errorRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errorRates);
  }

  @override
  final double uptime;
  final List<String> _slowestEndpoints;
  @override
  List<String> get slowestEndpoints {
    if (_slowestEndpoints is EqualUnmodifiableListView)
      return _slowestEndpoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slowestEndpoints);
  }

  final Map<String, dynamic> _rateLimit;
  @override
  Map<String, dynamic> get rateLimit {
    if (_rateLimit is EqualUnmodifiableMapView) return _rateLimit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rateLimit);
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
    return 'ApiMetrics(id: $id, endpoint: $endpoint, timestamp: $timestamp, requestCount: $requestCount, averageResponseTime: $averageResponseTime, statusCodes: $statusCodes, errorRates: $errorRates, uptime: $uptime, slowestEndpoints: $slowestEndpoints, rateLimit: $rateLimit, customMetrics: $customMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiMetricsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.requestCount, requestCount) ||
                other.requestCount == requestCount) &&
            (identical(other.averageResponseTime, averageResponseTime) ||
                other.averageResponseTime == averageResponseTime) &&
            const DeepCollectionEquality()
                .equals(other._statusCodes, _statusCodes) &&
            const DeepCollectionEquality()
                .equals(other._errorRates, _errorRates) &&
            (identical(other.uptime, uptime) || other.uptime == uptime) &&
            const DeepCollectionEquality()
                .equals(other._slowestEndpoints, _slowestEndpoints) &&
            const DeepCollectionEquality()
                .equals(other._rateLimit, _rateLimit) &&
            const DeepCollectionEquality()
                .equals(other._customMetrics, _customMetrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      endpoint,
      timestamp,
      requestCount,
      averageResponseTime,
      const DeepCollectionEquality().hash(_statusCodes),
      const DeepCollectionEquality().hash(_errorRates),
      uptime,
      const DeepCollectionEquality().hash(_slowestEndpoints),
      const DeepCollectionEquality().hash(_rateLimit),
      const DeepCollectionEquality().hash(_customMetrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiMetricsImplCopyWith<_$ApiMetricsImpl> get copyWith =>
      __$$ApiMetricsImplCopyWithImpl<_$ApiMetricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiMetricsImplToJson(
      this,
    );
  }
}

abstract class _ApiMetrics implements ApiMetrics {
  const factory _ApiMetrics(
      {required final String id,
      required final String endpoint,
      required final DateTime timestamp,
      required final int requestCount,
      required final double averageResponseTime,
      required final Map<String, int> statusCodes,
      required final Map<String, int> errorRates,
      required final double uptime,
      required final List<String> slowestEndpoints,
      required final Map<String, dynamic> rateLimit,
      final Map<String, dynamic>? customMetrics}) = _$ApiMetricsImpl;

  factory _ApiMetrics.fromJson(Map<String, dynamic> json) =
      _$ApiMetricsImpl.fromJson;

  @override
  String get id;
  @override
  String get endpoint;
  @override
  DateTime get timestamp;
  @override
  int get requestCount;
  @override
  double get averageResponseTime;
  @override
  Map<String, int> get statusCodes;
  @override
  Map<String, int> get errorRates;
  @override
  double get uptime;
  @override
  List<String> get slowestEndpoints;
  @override
  Map<String, dynamic> get rateLimit;
  @override
  Map<String, dynamic>? get customMetrics;
  @override
  @JsonKey(ignore: true)
  _$$ApiMetricsImplCopyWith<_$ApiMetricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceHealth _$ServiceHealthFromJson(Map<String, dynamic> json) {
  return _ServiceHealth.fromJson(json);
}

/// @nodoc
mixin _$ServiceHealth {
  String get id => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  ServiceStatus get status => throw _privateConstructorUsedError;
  double get uptime => throw _privateConstructorUsedError;
  int get errorCount => throw _privateConstructorUsedError;
  double get responseTime => throw _privateConstructorUsedError;
  Map<String, bool> get dependencies => throw _privateConstructorUsedError;
  Map<String, HealthMetric> get metrics => throw _privateConstructorUsedError;
  List<String> get activeAlerts => throw _privateConstructorUsedError;
  String? get lastError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceHealthCopyWith<ServiceHealth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceHealthCopyWith<$Res> {
  factory $ServiceHealthCopyWith(
          ServiceHealth value, $Res Function(ServiceHealth) then) =
      _$ServiceHealthCopyWithImpl<$Res, ServiceHealth>;
  @useResult
  $Res call(
      {String id,
      String serviceName,
      DateTime timestamp,
      ServiceStatus status,
      double uptime,
      int errorCount,
      double responseTime,
      Map<String, bool> dependencies,
      Map<String, HealthMetric> metrics,
      List<String> activeAlerts,
      String? lastError});
}

/// @nodoc
class _$ServiceHealthCopyWithImpl<$Res, $Val extends ServiceHealth>
    implements $ServiceHealthCopyWith<$Res> {
  _$ServiceHealthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceName = null,
    Object? timestamp = null,
    Object? status = null,
    Object? uptime = null,
    Object? errorCount = null,
    Object? responseTime = null,
    Object? dependencies = null,
    Object? metrics = null,
    Object? activeAlerts = null,
    Object? lastError = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ServiceStatus,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as double,
      errorCount: null == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
      responseTime: null == responseTime
          ? _value.responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
              as double,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, HealthMetric>,
      activeAlerts: null == activeAlerts
          ? _value.activeAlerts
          : activeAlerts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastError: freezed == lastError
          ? _value.lastError
          : lastError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceHealthImplCopyWith<$Res>
    implements $ServiceHealthCopyWith<$Res> {
  factory _$$ServiceHealthImplCopyWith(
          _$ServiceHealthImpl value, $Res Function(_$ServiceHealthImpl) then) =
      __$$ServiceHealthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String serviceName,
      DateTime timestamp,
      ServiceStatus status,
      double uptime,
      int errorCount,
      double responseTime,
      Map<String, bool> dependencies,
      Map<String, HealthMetric> metrics,
      List<String> activeAlerts,
      String? lastError});
}

/// @nodoc
class __$$ServiceHealthImplCopyWithImpl<$Res>
    extends _$ServiceHealthCopyWithImpl<$Res, _$ServiceHealthImpl>
    implements _$$ServiceHealthImplCopyWith<$Res> {
  __$$ServiceHealthImplCopyWithImpl(
      _$ServiceHealthImpl _value, $Res Function(_$ServiceHealthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceName = null,
    Object? timestamp = null,
    Object? status = null,
    Object? uptime = null,
    Object? errorCount = null,
    Object? responseTime = null,
    Object? dependencies = null,
    Object? metrics = null,
    Object? activeAlerts = null,
    Object? lastError = freezed,
  }) {
    return _then(_$ServiceHealthImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ServiceStatus,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as double,
      errorCount: null == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
      responseTime: null == responseTime
          ? _value.responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
              as double,
      dependencies: null == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      metrics: null == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, HealthMetric>,
      activeAlerts: null == activeAlerts
          ? _value._activeAlerts
          : activeAlerts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastError: freezed == lastError
          ? _value.lastError
          : lastError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceHealthImpl implements _ServiceHealth {
  const _$ServiceHealthImpl(
      {required this.id,
      required this.serviceName,
      required this.timestamp,
      required this.status,
      required this.uptime,
      required this.errorCount,
      required this.responseTime,
      required final Map<String, bool> dependencies,
      required final Map<String, HealthMetric> metrics,
      required final List<String> activeAlerts,
      this.lastError})
      : _dependencies = dependencies,
        _metrics = metrics,
        _activeAlerts = activeAlerts;

  factory _$ServiceHealthImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceHealthImplFromJson(json);

  @override
  final String id;
  @override
  final String serviceName;
  @override
  final DateTime timestamp;
  @override
  final ServiceStatus status;
  @override
  final double uptime;
  @override
  final int errorCount;
  @override
  final double responseTime;
  final Map<String, bool> _dependencies;
  @override
  Map<String, bool> get dependencies {
    if (_dependencies is EqualUnmodifiableMapView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dependencies);
  }

  final Map<String, HealthMetric> _metrics;
  @override
  Map<String, HealthMetric> get metrics {
    if (_metrics is EqualUnmodifiableMapView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metrics);
  }

  final List<String> _activeAlerts;
  @override
  List<String> get activeAlerts {
    if (_activeAlerts is EqualUnmodifiableListView) return _activeAlerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeAlerts);
  }

  @override
  final String? lastError;

  @override
  String toString() {
    return 'ServiceHealth(id: $id, serviceName: $serviceName, timestamp: $timestamp, status: $status, uptime: $uptime, errorCount: $errorCount, responseTime: $responseTime, dependencies: $dependencies, metrics: $metrics, activeAlerts: $activeAlerts, lastError: $lastError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceHealthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uptime, uptime) || other.uptime == uptime) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics) &&
            const DeepCollectionEquality()
                .equals(other._activeAlerts, _activeAlerts) &&
            (identical(other.lastError, lastError) ||
                other.lastError == lastError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      serviceName,
      timestamp,
      status,
      uptime,
      errorCount,
      responseTime,
      const DeepCollectionEquality().hash(_dependencies),
      const DeepCollectionEquality().hash(_metrics),
      const DeepCollectionEquality().hash(_activeAlerts),
      lastError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceHealthImplCopyWith<_$ServiceHealthImpl> get copyWith =>
      __$$ServiceHealthImplCopyWithImpl<_$ServiceHealthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceHealthImplToJson(
      this,
    );
  }
}

abstract class _ServiceHealth implements ServiceHealth {
  const factory _ServiceHealth(
      {required final String id,
      required final String serviceName,
      required final DateTime timestamp,
      required final ServiceStatus status,
      required final double uptime,
      required final int errorCount,
      required final double responseTime,
      required final Map<String, bool> dependencies,
      required final Map<String, HealthMetric> metrics,
      required final List<String> activeAlerts,
      final String? lastError}) = _$ServiceHealthImpl;

  factory _ServiceHealth.fromJson(Map<String, dynamic> json) =
      _$ServiceHealthImpl.fromJson;

  @override
  String get id;
  @override
  String get serviceName;
  @override
  DateTime get timestamp;
  @override
  ServiceStatus get status;
  @override
  double get uptime;
  @override
  int get errorCount;
  @override
  double get responseTime;
  @override
  Map<String, bool> get dependencies;
  @override
  Map<String, HealthMetric> get metrics;
  @override
  List<String> get activeAlerts;
  @override
  String? get lastError;
  @override
  @JsonKey(ignore: true)
  _$$ServiceHealthImplCopyWith<_$ServiceHealthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthMetric _$HealthMetricFromJson(Map<String, dynamic> json) {
  return _HealthMetric.fromJson(json);
}

/// @nodoc
mixin _$HealthMetric {
  String get name => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  bool get isHealthy => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  String? get threshold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthMetricCopyWith<HealthMetric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthMetricCopyWith<$Res> {
  factory $HealthMetricCopyWith(
          HealthMetric value, $Res Function(HealthMetric) then) =
      _$HealthMetricCopyWithImpl<$Res, HealthMetric>;
  @useResult
  $Res call(
      {String name,
      double value,
      String unit,
      bool isHealthy,
      DateTime lastUpdated,
      String? threshold});
}

/// @nodoc
class _$HealthMetricCopyWithImpl<$Res, $Val extends HealthMetric>
    implements $HealthMetricCopyWith<$Res> {
  _$HealthMetricCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? unit = null,
    Object? isHealthy = null,
    Object? lastUpdated = null,
    Object? threshold = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isHealthy: null == isHealthy
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      threshold: freezed == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthMetricImplCopyWith<$Res>
    implements $HealthMetricCopyWith<$Res> {
  factory _$$HealthMetricImplCopyWith(
          _$HealthMetricImpl value, $Res Function(_$HealthMetricImpl) then) =
      __$$HealthMetricImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double value,
      String unit,
      bool isHealthy,
      DateTime lastUpdated,
      String? threshold});
}

/// @nodoc
class __$$HealthMetricImplCopyWithImpl<$Res>
    extends _$HealthMetricCopyWithImpl<$Res, _$HealthMetricImpl>
    implements _$$HealthMetricImplCopyWith<$Res> {
  __$$HealthMetricImplCopyWithImpl(
      _$HealthMetricImpl _value, $Res Function(_$HealthMetricImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? unit = null,
    Object? isHealthy = null,
    Object? lastUpdated = null,
    Object? threshold = freezed,
  }) {
    return _then(_$HealthMetricImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isHealthy: null == isHealthy
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      threshold: freezed == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthMetricImpl implements _HealthMetric {
  const _$HealthMetricImpl(
      {required this.name,
      required this.value,
      required this.unit,
      required this.isHealthy,
      required this.lastUpdated,
      this.threshold});

  factory _$HealthMetricImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthMetricImplFromJson(json);

  @override
  final String name;
  @override
  final double value;
  @override
  final String unit;
  @override
  final bool isHealthy;
  @override
  final DateTime lastUpdated;
  @override
  final String? threshold;

  @override
  String toString() {
    return 'HealthMetric(name: $name, value: $value, unit: $unit, isHealthy: $isHealthy, lastUpdated: $lastUpdated, threshold: $threshold)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthMetricImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.isHealthy, isHealthy) ||
                other.isHealthy == isHealthy) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, value, unit, isHealthy, lastUpdated, threshold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthMetricImplCopyWith<_$HealthMetricImpl> get copyWith =>
      __$$HealthMetricImplCopyWithImpl<_$HealthMetricImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthMetricImplToJson(
      this,
    );
  }
}

abstract class _HealthMetric implements HealthMetric {
  const factory _HealthMetric(
      {required final String name,
      required final double value,
      required final String unit,
      required final bool isHealthy,
      required final DateTime lastUpdated,
      final String? threshold}) = _$HealthMetricImpl;

  factory _HealthMetric.fromJson(Map<String, dynamic> json) =
      _$HealthMetricImpl.fromJson;

  @override
  String get name;
  @override
  double get value;
  @override
  String get unit;
  @override
  bool get isHealthy;
  @override
  DateTime get lastUpdated;
  @override
  String? get threshold;
  @override
  @JsonKey(ignore: true)
  _$$HealthMetricImplCopyWith<_$HealthMetricImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SystemDashboard _$SystemDashboardFromJson(Map<String, dynamic> json) {
  return _SystemDashboard.fromJson(json);
}

/// @nodoc
mixin _$SystemDashboard {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<ServerMetrics> get servers => throw _privateConstructorUsedError;
  List<DatabaseMetrics> get databases => throw _privateConstructorUsedError;
  List<BackupStatus> get backups => throw _privateConstructorUsedError;
  SecurityAudit get security => throw _privateConstructorUsedError;
  List<ApiMetrics> get apis => throw _privateConstructorUsedError;
  List<ServiceHealth> get services => throw _privateConstructorUsedError;
  Map<String, dynamic> get alerts => throw _privateConstructorUsedError;
  Map<String, List<double>> get trends => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemDashboardCopyWith<SystemDashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemDashboardCopyWith<$Res> {
  factory $SystemDashboardCopyWith(
          SystemDashboard value, $Res Function(SystemDashboard) then) =
      _$SystemDashboardCopyWithImpl<$Res, SystemDashboard>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      List<ServerMetrics> servers,
      List<DatabaseMetrics> databases,
      List<BackupStatus> backups,
      SecurityAudit security,
      List<ApiMetrics> apis,
      List<ServiceHealth> services,
      Map<String, dynamic> alerts,
      Map<String, List<double>> trends});

  $SecurityAuditCopyWith<$Res> get security;
}

/// @nodoc
class _$SystemDashboardCopyWithImpl<$Res, $Val extends SystemDashboard>
    implements $SystemDashboardCopyWith<$Res> {
  _$SystemDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? servers = null,
    Object? databases = null,
    Object? backups = null,
    Object? security = null,
    Object? apis = null,
    Object? services = null,
    Object? alerts = null,
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
      servers: null == servers
          ? _value.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<ServerMetrics>,
      databases: null == databases
          ? _value.databases
          : databases // ignore: cast_nullable_to_non_nullable
              as List<DatabaseMetrics>,
      backups: null == backups
          ? _value.backups
          : backups // ignore: cast_nullable_to_non_nullable
              as List<BackupStatus>,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as SecurityAudit,
      apis: null == apis
          ? _value.apis
          : apis // ignore: cast_nullable_to_non_nullable
              as List<ApiMetrics>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceHealth>,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      trends: null == trends
          ? _value.trends
          : trends // ignore: cast_nullable_to_non_nullable
              as Map<String, List<double>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SecurityAuditCopyWith<$Res> get security {
    return $SecurityAuditCopyWith<$Res>(_value.security, (value) {
      return _then(_value.copyWith(security: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SystemDashboardImplCopyWith<$Res>
    implements $SystemDashboardCopyWith<$Res> {
  factory _$$SystemDashboardImplCopyWith(_$SystemDashboardImpl value,
          $Res Function(_$SystemDashboardImpl) then) =
      __$$SystemDashboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      List<ServerMetrics> servers,
      List<DatabaseMetrics> databases,
      List<BackupStatus> backups,
      SecurityAudit security,
      List<ApiMetrics> apis,
      List<ServiceHealth> services,
      Map<String, dynamic> alerts,
      Map<String, List<double>> trends});

  @override
  $SecurityAuditCopyWith<$Res> get security;
}

/// @nodoc
class __$$SystemDashboardImplCopyWithImpl<$Res>
    extends _$SystemDashboardCopyWithImpl<$Res, _$SystemDashboardImpl>
    implements _$$SystemDashboardImplCopyWith<$Res> {
  __$$SystemDashboardImplCopyWithImpl(
      _$SystemDashboardImpl _value, $Res Function(_$SystemDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? servers = null,
    Object? databases = null,
    Object? backups = null,
    Object? security = null,
    Object? apis = null,
    Object? services = null,
    Object? alerts = null,
    Object? trends = null,
  }) {
    return _then(_$SystemDashboardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      servers: null == servers
          ? _value._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<ServerMetrics>,
      databases: null == databases
          ? _value._databases
          : databases // ignore: cast_nullable_to_non_nullable
              as List<DatabaseMetrics>,
      backups: null == backups
          ? _value._backups
          : backups // ignore: cast_nullable_to_non_nullable
              as List<BackupStatus>,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as SecurityAudit,
      apis: null == apis
          ? _value._apis
          : apis // ignore: cast_nullable_to_non_nullable
              as List<ApiMetrics>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceHealth>,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
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
class _$SystemDashboardImpl implements _SystemDashboard {
  const _$SystemDashboardImpl(
      {required this.id,
      required this.timestamp,
      required final List<ServerMetrics> servers,
      required final List<DatabaseMetrics> databases,
      required final List<BackupStatus> backups,
      required this.security,
      required final List<ApiMetrics> apis,
      required final List<ServiceHealth> services,
      required final Map<String, dynamic> alerts,
      required final Map<String, List<double>> trends})
      : _servers = servers,
        _databases = databases,
        _backups = backups,
        _apis = apis,
        _services = services,
        _alerts = alerts,
        _trends = trends;

  factory _$SystemDashboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemDashboardImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  final List<ServerMetrics> _servers;
  @override
  List<ServerMetrics> get servers {
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servers);
  }

  final List<DatabaseMetrics> _databases;
  @override
  List<DatabaseMetrics> get databases {
    if (_databases is EqualUnmodifiableListView) return _databases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_databases);
  }

  final List<BackupStatus> _backups;
  @override
  List<BackupStatus> get backups {
    if (_backups is EqualUnmodifiableListView) return _backups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backups);
  }

  @override
  final SecurityAudit security;
  final List<ApiMetrics> _apis;
  @override
  List<ApiMetrics> get apis {
    if (_apis is EqualUnmodifiableListView) return _apis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apis);
  }

  final List<ServiceHealth> _services;
  @override
  List<ServiceHealth> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final Map<String, dynamic> _alerts;
  @override
  Map<String, dynamic> get alerts {
    if (_alerts is EqualUnmodifiableMapView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_alerts);
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
    return 'SystemDashboard(id: $id, timestamp: $timestamp, servers: $servers, databases: $databases, backups: $backups, security: $security, apis: $apis, services: $services, alerts: $alerts, trends: $trends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemDashboardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._servers, _servers) &&
            const DeepCollectionEquality()
                .equals(other._databases, _databases) &&
            const DeepCollectionEquality().equals(other._backups, _backups) &&
            (identical(other.security, security) ||
                other.security == security) &&
            const DeepCollectionEquality().equals(other._apis, _apis) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            const DeepCollectionEquality().equals(other._trends, _trends));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      const DeepCollectionEquality().hash(_servers),
      const DeepCollectionEquality().hash(_databases),
      const DeepCollectionEquality().hash(_backups),
      security,
      const DeepCollectionEquality().hash(_apis),
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_alerts),
      const DeepCollectionEquality().hash(_trends));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemDashboardImplCopyWith<_$SystemDashboardImpl> get copyWith =>
      __$$SystemDashboardImplCopyWithImpl<_$SystemDashboardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemDashboardImplToJson(
      this,
    );
  }
}

abstract class _SystemDashboard implements SystemDashboard {
  const factory _SystemDashboard(
      {required final String id,
      required final DateTime timestamp,
      required final List<ServerMetrics> servers,
      required final List<DatabaseMetrics> databases,
      required final List<BackupStatus> backups,
      required final SecurityAudit security,
      required final List<ApiMetrics> apis,
      required final List<ServiceHealth> services,
      required final Map<String, dynamic> alerts,
      required final Map<String, List<double>> trends}) = _$SystemDashboardImpl;

  factory _SystemDashboard.fromJson(Map<String, dynamic> json) =
      _$SystemDashboardImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  List<ServerMetrics> get servers;
  @override
  List<DatabaseMetrics> get databases;
  @override
  List<BackupStatus> get backups;
  @override
  SecurityAudit get security;
  @override
  List<ApiMetrics> get apis;
  @override
  List<ServiceHealth> get services;
  @override
  Map<String, dynamic> get alerts;
  @override
  Map<String, List<double>> get trends;
  @override
  @JsonKey(ignore: true)
  _$$SystemDashboardImplCopyWith<_$SystemDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
