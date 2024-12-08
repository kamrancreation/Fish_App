// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfflineData _$OfflineDataFromJson(Map<String, dynamic> json) {
  return _OfflineData.fromJson(json);
}

/// @nodoc
mixin _$OfflineData {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get lastModified => throw _privateConstructorUsedError;
  bool get isPending => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfflineDataCopyWith<OfflineData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineDataCopyWith<$Res> {
  factory $OfflineDataCopyWith(
          OfflineData value, $Res Function(OfflineData) then) =
      _$OfflineDataCopyWithImpl<$Res, OfflineData>;
  @useResult
  $Res call(
      {String id,
      String type,
      Map<String, dynamic> data,
      DateTime lastModified,
      bool isPending});
}

/// @nodoc
class _$OfflineDataCopyWithImpl<$Res, $Val extends OfflineData>
    implements $OfflineDataCopyWith<$Res> {
  _$OfflineDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? data = null,
    Object? lastModified = null,
    Object? isPending = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfflineDataImplCopyWith<$Res>
    implements $OfflineDataCopyWith<$Res> {
  factory _$$OfflineDataImplCopyWith(
          _$OfflineDataImpl value, $Res Function(_$OfflineDataImpl) then) =
      __$$OfflineDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      Map<String, dynamic> data,
      DateTime lastModified,
      bool isPending});
}

/// @nodoc
class __$$OfflineDataImplCopyWithImpl<$Res>
    extends _$OfflineDataCopyWithImpl<$Res, _$OfflineDataImpl>
    implements _$$OfflineDataImplCopyWith<$Res> {
  __$$OfflineDataImplCopyWithImpl(
      _$OfflineDataImpl _value, $Res Function(_$OfflineDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? data = null,
    Object? lastModified = null,
    Object? isPending = null,
  }) {
    return _then(_$OfflineDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfflineDataImpl implements _OfflineData {
  const _$OfflineDataImpl(
      {required this.id,
      required this.type,
      required final Map<String, dynamic> data,
      required this.lastModified,
      required this.isPending})
      : _data = data;

  factory _$OfflineDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfflineDataImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime lastModified;
  @override
  final bool isPending;

  @override
  String toString() {
    return 'OfflineData(id: $id, type: $type, data: $data, lastModified: $lastModified, isPending: $isPending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type,
      const DeepCollectionEquality().hash(_data), lastModified, isPending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineDataImplCopyWith<_$OfflineDataImpl> get copyWith =>
      __$$OfflineDataImplCopyWithImpl<_$OfflineDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfflineDataImplToJson(
      this,
    );
  }
}

abstract class _OfflineData implements OfflineData {
  const factory _OfflineData(
      {required final String id,
      required final String type,
      required final Map<String, dynamic> data,
      required final DateTime lastModified,
      required final bool isPending}) = _$OfflineDataImpl;

  factory _OfflineData.fromJson(Map<String, dynamic> json) =
      _$OfflineDataImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get lastModified;
  @override
  bool get isPending;
  @override
  @JsonKey(ignore: true)
  _$$OfflineDataImplCopyWith<_$OfflineDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfflineDataBatch _$OfflineDataBatchFromJson(Map<String, dynamic> json) {
  return _OfflineDataBatch.fromJson(json);
}

/// @nodoc
mixin _$OfflineDataBatch {
  List<OfflineData> get items => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfflineDataBatchCopyWith<OfflineDataBatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineDataBatchCopyWith<$Res> {
  factory $OfflineDataBatchCopyWith(
          OfflineDataBatch value, $Res Function(OfflineDataBatch) then) =
      _$OfflineDataBatchCopyWithImpl<$Res, OfflineDataBatch>;
  @useResult
  $Res call({List<OfflineData> items, DateTime createdAt, String status});
}

/// @nodoc
class _$OfflineDataBatchCopyWithImpl<$Res, $Val extends OfflineDataBatch>
    implements $OfflineDataBatchCopyWith<$Res> {
  _$OfflineDataBatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? createdAt = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OfflineData>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfflineDataBatchImplCopyWith<$Res>
    implements $OfflineDataBatchCopyWith<$Res> {
  factory _$$OfflineDataBatchImplCopyWith(_$OfflineDataBatchImpl value,
          $Res Function(_$OfflineDataBatchImpl) then) =
      __$$OfflineDataBatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OfflineData> items, DateTime createdAt, String status});
}

/// @nodoc
class __$$OfflineDataBatchImplCopyWithImpl<$Res>
    extends _$OfflineDataBatchCopyWithImpl<$Res, _$OfflineDataBatchImpl>
    implements _$$OfflineDataBatchImplCopyWith<$Res> {
  __$$OfflineDataBatchImplCopyWithImpl(_$OfflineDataBatchImpl _value,
      $Res Function(_$OfflineDataBatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? createdAt = null,
    Object? status = null,
  }) {
    return _then(_$OfflineDataBatchImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OfflineData>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfflineDataBatchImpl implements _OfflineDataBatch {
  const _$OfflineDataBatchImpl(
      {required final List<OfflineData> items,
      required this.createdAt,
      required this.status})
      : _items = items;

  factory _$OfflineDataBatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfflineDataBatchImplFromJson(json);

  final List<OfflineData> _items;
  @override
  List<OfflineData> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime createdAt;
  @override
  final String status;

  @override
  String toString() {
    return 'OfflineDataBatch(items: $items, createdAt: $createdAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineDataBatchImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), createdAt, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineDataBatchImplCopyWith<_$OfflineDataBatchImpl> get copyWith =>
      __$$OfflineDataBatchImplCopyWithImpl<_$OfflineDataBatchImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfflineDataBatchImplToJson(
      this,
    );
  }
}

abstract class _OfflineDataBatch implements OfflineDataBatch {
  const factory _OfflineDataBatch(
      {required final List<OfflineData> items,
      required final DateTime createdAt,
      required final String status}) = _$OfflineDataBatchImpl;

  factory _OfflineDataBatch.fromJson(Map<String, dynamic> json) =
      _$OfflineDataBatchImpl.fromJson;

  @override
  List<OfflineData> get items;
  @override
  DateTime get createdAt;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$OfflineDataBatchImplCopyWith<_$OfflineDataBatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfflineStorageStats _$OfflineStorageStatsFromJson(Map<String, dynamic> json) {
  return _OfflineStorageStats.fromJson(json);
}

/// @nodoc
mixin _$OfflineStorageStats {
  int get mapTilesCount => throw _privateConstructorUsedError;
  int get mapStorageBytes => throw _privateConstructorUsedError;
  int get catchLogsCount => throw _privateConstructorUsedError;
  int get syncQueueCount => throw _privateConstructorUsedError;
  DateTime get lastSync => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfflineStorageStatsCopyWith<OfflineStorageStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineStorageStatsCopyWith<$Res> {
  factory $OfflineStorageStatsCopyWith(
          OfflineStorageStats value, $Res Function(OfflineStorageStats) then) =
      _$OfflineStorageStatsCopyWithImpl<$Res, OfflineStorageStats>;
  @useResult
  $Res call(
      {int mapTilesCount,
      int mapStorageBytes,
      int catchLogsCount,
      int syncQueueCount,
      DateTime lastSync});
}

/// @nodoc
class _$OfflineStorageStatsCopyWithImpl<$Res, $Val extends OfflineStorageStats>
    implements $OfflineStorageStatsCopyWith<$Res> {
  _$OfflineStorageStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapTilesCount = null,
    Object? mapStorageBytes = null,
    Object? catchLogsCount = null,
    Object? syncQueueCount = null,
    Object? lastSync = null,
  }) {
    return _then(_value.copyWith(
      mapTilesCount: null == mapTilesCount
          ? _value.mapTilesCount
          : mapTilesCount // ignore: cast_nullable_to_non_nullable
              as int,
      mapStorageBytes: null == mapStorageBytes
          ? _value.mapStorageBytes
          : mapStorageBytes // ignore: cast_nullable_to_non_nullable
              as int,
      catchLogsCount: null == catchLogsCount
          ? _value.catchLogsCount
          : catchLogsCount // ignore: cast_nullable_to_non_nullable
              as int,
      syncQueueCount: null == syncQueueCount
          ? _value.syncQueueCount
          : syncQueueCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastSync: null == lastSync
          ? _value.lastSync
          : lastSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfflineStorageStatsImplCopyWith<$Res>
    implements $OfflineStorageStatsCopyWith<$Res> {
  factory _$$OfflineStorageStatsImplCopyWith(_$OfflineStorageStatsImpl value,
          $Res Function(_$OfflineStorageStatsImpl) then) =
      __$$OfflineStorageStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int mapTilesCount,
      int mapStorageBytes,
      int catchLogsCount,
      int syncQueueCount,
      DateTime lastSync});
}

/// @nodoc
class __$$OfflineStorageStatsImplCopyWithImpl<$Res>
    extends _$OfflineStorageStatsCopyWithImpl<$Res, _$OfflineStorageStatsImpl>
    implements _$$OfflineStorageStatsImplCopyWith<$Res> {
  __$$OfflineStorageStatsImplCopyWithImpl(_$OfflineStorageStatsImpl _value,
      $Res Function(_$OfflineStorageStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapTilesCount = null,
    Object? mapStorageBytes = null,
    Object? catchLogsCount = null,
    Object? syncQueueCount = null,
    Object? lastSync = null,
  }) {
    return _then(_$OfflineStorageStatsImpl(
      mapTilesCount: null == mapTilesCount
          ? _value.mapTilesCount
          : mapTilesCount // ignore: cast_nullable_to_non_nullable
              as int,
      mapStorageBytes: null == mapStorageBytes
          ? _value.mapStorageBytes
          : mapStorageBytes // ignore: cast_nullable_to_non_nullable
              as int,
      catchLogsCount: null == catchLogsCount
          ? _value.catchLogsCount
          : catchLogsCount // ignore: cast_nullable_to_non_nullable
              as int,
      syncQueueCount: null == syncQueueCount
          ? _value.syncQueueCount
          : syncQueueCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastSync: null == lastSync
          ? _value.lastSync
          : lastSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfflineStorageStatsImpl implements _OfflineStorageStats {
  const _$OfflineStorageStatsImpl(
      {required this.mapTilesCount,
      required this.mapStorageBytes,
      required this.catchLogsCount,
      required this.syncQueueCount,
      required this.lastSync});

  factory _$OfflineStorageStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfflineStorageStatsImplFromJson(json);

  @override
  final int mapTilesCount;
  @override
  final int mapStorageBytes;
  @override
  final int catchLogsCount;
  @override
  final int syncQueueCount;
  @override
  final DateTime lastSync;

  @override
  String toString() {
    return 'OfflineStorageStats(mapTilesCount: $mapTilesCount, mapStorageBytes: $mapStorageBytes, catchLogsCount: $catchLogsCount, syncQueueCount: $syncQueueCount, lastSync: $lastSync)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineStorageStatsImpl &&
            (identical(other.mapTilesCount, mapTilesCount) ||
                other.mapTilesCount == mapTilesCount) &&
            (identical(other.mapStorageBytes, mapStorageBytes) ||
                other.mapStorageBytes == mapStorageBytes) &&
            (identical(other.catchLogsCount, catchLogsCount) ||
                other.catchLogsCount == catchLogsCount) &&
            (identical(other.syncQueueCount, syncQueueCount) ||
                other.syncQueueCount == syncQueueCount) &&
            (identical(other.lastSync, lastSync) ||
                other.lastSync == lastSync));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mapTilesCount, mapStorageBytes,
      catchLogsCount, syncQueueCount, lastSync);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineStorageStatsImplCopyWith<_$OfflineStorageStatsImpl> get copyWith =>
      __$$OfflineStorageStatsImplCopyWithImpl<_$OfflineStorageStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfflineStorageStatsImplToJson(
      this,
    );
  }
}

abstract class _OfflineStorageStats implements OfflineStorageStats {
  const factory _OfflineStorageStats(
      {required final int mapTilesCount,
      required final int mapStorageBytes,
      required final int catchLogsCount,
      required final int syncQueueCount,
      required final DateTime lastSync}) = _$OfflineStorageStatsImpl;

  factory _OfflineStorageStats.fromJson(Map<String, dynamic> json) =
      _$OfflineStorageStatsImpl.fromJson;

  @override
  int get mapTilesCount;
  @override
  int get mapStorageBytes;
  @override
  int get catchLogsCount;
  @override
  int get syncQueueCount;
  @override
  DateTime get lastSync;
  @override
  @JsonKey(ignore: true)
  _$$OfflineStorageStatsImplCopyWith<_$OfflineStorageStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
