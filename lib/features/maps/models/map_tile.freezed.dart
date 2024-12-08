// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_tile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MapTile _$MapTileFromJson(Map<String, dynamic> json) {
  return _MapTile.fromJson(json);
}

/// @nodoc
mixin _$MapTile {
  List<int> get data => throw _privateConstructorUsedError;
  int get zoomLevel => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapTileCopyWith<MapTile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapTileCopyWith<$Res> {
  factory $MapTileCopyWith(MapTile value, $Res Function(MapTile) then) =
      _$MapTileCopyWithImpl<$Res, MapTile>;
  @useResult
  $Res call({List<int> data, int zoomLevel, int x, int y});
}

/// @nodoc
class _$MapTileCopyWithImpl<$Res, $Val extends MapTile>
    implements $MapTileCopyWith<$Res> {
  _$MapTileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? zoomLevel = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
      zoomLevel: null == zoomLevel
          ? _value.zoomLevel
          : zoomLevel // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapTileImplCopyWith<$Res> implements $MapTileCopyWith<$Res> {
  factory _$$MapTileImplCopyWith(
          _$MapTileImpl value, $Res Function(_$MapTileImpl) then) =
      __$$MapTileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> data, int zoomLevel, int x, int y});
}

/// @nodoc
class __$$MapTileImplCopyWithImpl<$Res>
    extends _$MapTileCopyWithImpl<$Res, _$MapTileImpl>
    implements _$$MapTileImplCopyWith<$Res> {
  __$$MapTileImplCopyWithImpl(
      _$MapTileImpl _value, $Res Function(_$MapTileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? zoomLevel = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$MapTileImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
      zoomLevel: null == zoomLevel
          ? _value.zoomLevel
          : zoomLevel // ignore: cast_nullable_to_non_nullable
              as int,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapTileImpl implements _MapTile {
  const _$MapTileImpl(
      {required final List<int> data,
      required this.zoomLevel,
      required this.x,
      required this.y})
      : _data = data;

  factory _$MapTileImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapTileImplFromJson(json);

  final List<int> _data;
  @override
  List<int> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int zoomLevel;
  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'MapTile(data: $data, zoomLevel: $zoomLevel, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapTileImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.zoomLevel, zoomLevel) ||
                other.zoomLevel == zoomLevel) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), zoomLevel, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapTileImplCopyWith<_$MapTileImpl> get copyWith =>
      __$$MapTileImplCopyWithImpl<_$MapTileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapTileImplToJson(
      this,
    );
  }
}

abstract class _MapTile implements MapTile {
  const factory _MapTile(
      {required final List<int> data,
      required final int zoomLevel,
      required final int x,
      required final int y}) = _$MapTileImpl;

  factory _MapTile.fromJson(Map<String, dynamic> json) = _$MapTileImpl.fromJson;

  @override
  List<int> get data;
  @override
  int get zoomLevel;
  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$MapTileImplCopyWith<_$MapTileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapTileRegion _$MapTileRegionFromJson(Map<String, dynamic> json) {
  return _MapTileRegion.fromJson(json);
}

/// @nodoc
mixin _$MapTileRegion {
  double get north => throw _privateConstructorUsedError;
  double get south => throw _privateConstructorUsedError;
  double get east => throw _privateConstructorUsedError;
  double get west => throw _privateConstructorUsedError;
  int get minZoom => throw _privateConstructorUsedError;
  int get maxZoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapTileRegionCopyWith<MapTileRegion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapTileRegionCopyWith<$Res> {
  factory $MapTileRegionCopyWith(
          MapTileRegion value, $Res Function(MapTileRegion) then) =
      _$MapTileRegionCopyWithImpl<$Res, MapTileRegion>;
  @useResult
  $Res call(
      {double north,
      double south,
      double east,
      double west,
      int minZoom,
      int maxZoom});
}

/// @nodoc
class _$MapTileRegionCopyWithImpl<$Res, $Val extends MapTileRegion>
    implements $MapTileRegionCopyWith<$Res> {
  _$MapTileRegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? north = null,
    Object? south = null,
    Object? east = null,
    Object? west = null,
    Object? minZoom = null,
    Object? maxZoom = null,
  }) {
    return _then(_value.copyWith(
      north: null == north
          ? _value.north
          : north // ignore: cast_nullable_to_non_nullable
              as double,
      south: null == south
          ? _value.south
          : south // ignore: cast_nullable_to_non_nullable
              as double,
      east: null == east
          ? _value.east
          : east // ignore: cast_nullable_to_non_nullable
              as double,
      west: null == west
          ? _value.west
          : west // ignore: cast_nullable_to_non_nullable
              as double,
      minZoom: null == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as int,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapTileRegionImplCopyWith<$Res>
    implements $MapTileRegionCopyWith<$Res> {
  factory _$$MapTileRegionImplCopyWith(
          _$MapTileRegionImpl value, $Res Function(_$MapTileRegionImpl) then) =
      __$$MapTileRegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double north,
      double south,
      double east,
      double west,
      int minZoom,
      int maxZoom});
}

/// @nodoc
class __$$MapTileRegionImplCopyWithImpl<$Res>
    extends _$MapTileRegionCopyWithImpl<$Res, _$MapTileRegionImpl>
    implements _$$MapTileRegionImplCopyWith<$Res> {
  __$$MapTileRegionImplCopyWithImpl(
      _$MapTileRegionImpl _value, $Res Function(_$MapTileRegionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? north = null,
    Object? south = null,
    Object? east = null,
    Object? west = null,
    Object? minZoom = null,
    Object? maxZoom = null,
  }) {
    return _then(_$MapTileRegionImpl(
      north: null == north
          ? _value.north
          : north // ignore: cast_nullable_to_non_nullable
              as double,
      south: null == south
          ? _value.south
          : south // ignore: cast_nullable_to_non_nullable
              as double,
      east: null == east
          ? _value.east
          : east // ignore: cast_nullable_to_non_nullable
              as double,
      west: null == west
          ? _value.west
          : west // ignore: cast_nullable_to_non_nullable
              as double,
      minZoom: null == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as int,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapTileRegionImpl implements _MapTileRegion {
  const _$MapTileRegionImpl(
      {required this.north,
      required this.south,
      required this.east,
      required this.west,
      required this.minZoom,
      required this.maxZoom});

  factory _$MapTileRegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapTileRegionImplFromJson(json);

  @override
  final double north;
  @override
  final double south;
  @override
  final double east;
  @override
  final double west;
  @override
  final int minZoom;
  @override
  final int maxZoom;

  @override
  String toString() {
    return 'MapTileRegion(north: $north, south: $south, east: $east, west: $west, minZoom: $minZoom, maxZoom: $maxZoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapTileRegionImpl &&
            (identical(other.north, north) || other.north == north) &&
            (identical(other.south, south) || other.south == south) &&
            (identical(other.east, east) || other.east == east) &&
            (identical(other.west, west) || other.west == west) &&
            (identical(other.minZoom, minZoom) || other.minZoom == minZoom) &&
            (identical(other.maxZoom, maxZoom) || other.maxZoom == maxZoom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, north, south, east, west, minZoom, maxZoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapTileRegionImplCopyWith<_$MapTileRegionImpl> get copyWith =>
      __$$MapTileRegionImplCopyWithImpl<_$MapTileRegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapTileRegionImplToJson(
      this,
    );
  }
}

abstract class _MapTileRegion implements MapTileRegion {
  const factory _MapTileRegion(
      {required final double north,
      required final double south,
      required final double east,
      required final double west,
      required final int minZoom,
      required final int maxZoom}) = _$MapTileRegionImpl;

  factory _MapTileRegion.fromJson(Map<String, dynamic> json) =
      _$MapTileRegionImpl.fromJson;

  @override
  double get north;
  @override
  double get south;
  @override
  double get east;
  @override
  double get west;
  @override
  int get minZoom;
  @override
  int get maxZoom;
  @override
  @JsonKey(ignore: true)
  _$$MapTileRegionImplCopyWith<_$MapTileRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapTileStats _$MapTileStatsFromJson(Map<String, dynamic> json) {
  return _MapTileStats.fromJson(json);
}

/// @nodoc
mixin _$MapTileStats {
  int get tileCount => throw _privateConstructorUsedError;
  int get totalSizeBytes => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  List<MapTileRegion> get regions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapTileStatsCopyWith<MapTileStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapTileStatsCopyWith<$Res> {
  factory $MapTileStatsCopyWith(
          MapTileStats value, $Res Function(MapTileStats) then) =
      _$MapTileStatsCopyWithImpl<$Res, MapTileStats>;
  @useResult
  $Res call(
      {int tileCount,
      int totalSizeBytes,
      DateTime lastUpdated,
      List<MapTileRegion> regions});
}

/// @nodoc
class _$MapTileStatsCopyWithImpl<$Res, $Val extends MapTileStats>
    implements $MapTileStatsCopyWith<$Res> {
  _$MapTileStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileCount = null,
    Object? totalSizeBytes = null,
    Object? lastUpdated = null,
    Object? regions = null,
  }) {
    return _then(_value.copyWith(
      tileCount: null == tileCount
          ? _value.tileCount
          : tileCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalSizeBytes: null == totalSizeBytes
          ? _value.totalSizeBytes
          : totalSizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<MapTileRegion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapTileStatsImplCopyWith<$Res>
    implements $MapTileStatsCopyWith<$Res> {
  factory _$$MapTileStatsImplCopyWith(
          _$MapTileStatsImpl value, $Res Function(_$MapTileStatsImpl) then) =
      __$$MapTileStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int tileCount,
      int totalSizeBytes,
      DateTime lastUpdated,
      List<MapTileRegion> regions});
}

/// @nodoc
class __$$MapTileStatsImplCopyWithImpl<$Res>
    extends _$MapTileStatsCopyWithImpl<$Res, _$MapTileStatsImpl>
    implements _$$MapTileStatsImplCopyWith<$Res> {
  __$$MapTileStatsImplCopyWithImpl(
      _$MapTileStatsImpl _value, $Res Function(_$MapTileStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileCount = null,
    Object? totalSizeBytes = null,
    Object? lastUpdated = null,
    Object? regions = null,
  }) {
    return _then(_$MapTileStatsImpl(
      tileCount: null == tileCount
          ? _value.tileCount
          : tileCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalSizeBytes: null == totalSizeBytes
          ? _value.totalSizeBytes
          : totalSizeBytes // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<MapTileRegion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapTileStatsImpl implements _MapTileStats {
  const _$MapTileStatsImpl(
      {required this.tileCount,
      required this.totalSizeBytes,
      required this.lastUpdated,
      required final List<MapTileRegion> regions})
      : _regions = regions;

  factory _$MapTileStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapTileStatsImplFromJson(json);

  @override
  final int tileCount;
  @override
  final int totalSizeBytes;
  @override
  final DateTime lastUpdated;
  final List<MapTileRegion> _regions;
  @override
  List<MapTileRegion> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  String toString() {
    return 'MapTileStats(tileCount: $tileCount, totalSizeBytes: $totalSizeBytes, lastUpdated: $lastUpdated, regions: $regions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapTileStatsImpl &&
            (identical(other.tileCount, tileCount) ||
                other.tileCount == tileCount) &&
            (identical(other.totalSizeBytes, totalSizeBytes) ||
                other.totalSizeBytes == totalSizeBytes) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tileCount, totalSizeBytes,
      lastUpdated, const DeepCollectionEquality().hash(_regions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapTileStatsImplCopyWith<_$MapTileStatsImpl> get copyWith =>
      __$$MapTileStatsImplCopyWithImpl<_$MapTileStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapTileStatsImplToJson(
      this,
    );
  }
}

abstract class _MapTileStats implements MapTileStats {
  const factory _MapTileStats(
      {required final int tileCount,
      required final int totalSizeBytes,
      required final DateTime lastUpdated,
      required final List<MapTileRegion> regions}) = _$MapTileStatsImpl;

  factory _MapTileStats.fromJson(Map<String, dynamic> json) =
      _$MapTileStatsImpl.fromJson;

  @override
  int get tileCount;
  @override
  int get totalSizeBytes;
  @override
  DateTime get lastUpdated;
  @override
  List<MapTileRegion> get regions;
  @override
  @JsonKey(ignore: true)
  _$$MapTileStatsImplCopyWith<_$MapTileStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
