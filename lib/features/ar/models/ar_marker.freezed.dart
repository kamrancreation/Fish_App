// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ar_marker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ARMarker _$ARMarkerFromJson(Map<String, dynamic> json) {
  return _ARMarker.fromJson(json);
}

/// @nodoc
mixin _$ARMarker {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @Vector3Converter()
  Vector3 get position => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ARMarkerCopyWith<ARMarker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ARMarkerCopyWith<$Res> {
  factory $ARMarkerCopyWith(ARMarker value, $Res Function(ARMarker) then) =
      _$ARMarkerCopyWithImpl<$Res, ARMarker>;
  @useResult
  $Res call(
      {String id,
      String type,
      @Vector3Converter() Vector3 position,
      double scale,
      String? description,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ARMarkerCopyWithImpl<$Res, $Val extends ARMarker>
    implements $ARMarkerCopyWith<$Res> {
  _$ARMarkerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? position = null,
    Object? scale = null,
    Object? description = freezed,
    Object? metadata = freezed,
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector3,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ARMarkerImplCopyWith<$Res>
    implements $ARMarkerCopyWith<$Res> {
  factory _$$ARMarkerImplCopyWith(
          _$ARMarkerImpl value, $Res Function(_$ARMarkerImpl) then) =
      __$$ARMarkerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      @Vector3Converter() Vector3 position,
      double scale,
      String? description,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ARMarkerImplCopyWithImpl<$Res>
    extends _$ARMarkerCopyWithImpl<$Res, _$ARMarkerImpl>
    implements _$$ARMarkerImplCopyWith<$Res> {
  __$$ARMarkerImplCopyWithImpl(
      _$ARMarkerImpl _value, $Res Function(_$ARMarkerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? position = null,
    Object? scale = null,
    Object? description = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ARMarkerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector3,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$ARMarkerImpl implements _ARMarker {
  const _$ARMarkerImpl(
      {required this.id,
      required this.type,
      @Vector3Converter() required this.position,
      required this.scale,
      this.description,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ARMarkerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ARMarkerImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  @Vector3Converter()
  final Vector3 position;
  @override
  final double scale;
  @override
  final String? description;
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
    return 'ARMarker(id: $id, type: $type, position: $position, scale: $scale, description: $description, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ARMarkerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, position, scale,
      description, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ARMarkerImplCopyWith<_$ARMarkerImpl> get copyWith =>
      __$$ARMarkerImplCopyWithImpl<_$ARMarkerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ARMarkerImplToJson(
      this,
    );
  }
}

abstract class _ARMarker implements ARMarker {
  const factory _ARMarker(
      {required final String id,
      required final String type,
      @Vector3Converter() required final Vector3 position,
      required final double scale,
      final String? description,
      final Map<String, dynamic>? metadata}) = _$ARMarkerImpl;

  factory _ARMarker.fromJson(Map<String, dynamic> json) =
      _$ARMarkerImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  @Vector3Converter()
  Vector3 get position;
  @override
  double get scale;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ARMarkerImplCopyWith<_$ARMarkerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
