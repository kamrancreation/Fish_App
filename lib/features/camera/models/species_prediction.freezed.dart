// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpeciesPrediction _$SpeciesPredictionFromJson(Map<String, dynamic> json) {
  return _SpeciesPrediction.fromJson(json);
}

/// @nodoc
mixin _$SpeciesPrediction {
  String get name => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  PredictionType get type => throw _privateConstructorUsedError;
  BoundingBox? get boundingBox => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesPredictionCopyWith<SpeciesPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesPredictionCopyWith<$Res> {
  factory $SpeciesPredictionCopyWith(
          SpeciesPrediction value, $Res Function(SpeciesPrediction) then) =
      _$SpeciesPredictionCopyWithImpl<$Res, SpeciesPrediction>;
  @useResult
  $Res call(
      {String name,
      double confidence,
      PredictionType type,
      BoundingBox? boundingBox,
      Map<String, dynamic> metadata});

  $BoundingBoxCopyWith<$Res>? get boundingBox;
}

/// @nodoc
class _$SpeciesPredictionCopyWithImpl<$Res, $Val extends SpeciesPrediction>
    implements $SpeciesPredictionCopyWith<$Res> {
  _$SpeciesPredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? confidence = null,
    Object? type = null,
    Object? boundingBox = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PredictionType,
      boundingBox: freezed == boundingBox
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as BoundingBox?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundingBoxCopyWith<$Res>? get boundingBox {
    if (_value.boundingBox == null) {
      return null;
    }

    return $BoundingBoxCopyWith<$Res>(_value.boundingBox!, (value) {
      return _then(_value.copyWith(boundingBox: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpeciesPredictionImplCopyWith<$Res>
    implements $SpeciesPredictionCopyWith<$Res> {
  factory _$$SpeciesPredictionImplCopyWith(_$SpeciesPredictionImpl value,
          $Res Function(_$SpeciesPredictionImpl) then) =
      __$$SpeciesPredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double confidence,
      PredictionType type,
      BoundingBox? boundingBox,
      Map<String, dynamic> metadata});

  @override
  $BoundingBoxCopyWith<$Res>? get boundingBox;
}

/// @nodoc
class __$$SpeciesPredictionImplCopyWithImpl<$Res>
    extends _$SpeciesPredictionCopyWithImpl<$Res, _$SpeciesPredictionImpl>
    implements _$$SpeciesPredictionImplCopyWith<$Res> {
  __$$SpeciesPredictionImplCopyWithImpl(_$SpeciesPredictionImpl _value,
      $Res Function(_$SpeciesPredictionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? confidence = null,
    Object? type = null,
    Object? boundingBox = freezed,
    Object? metadata = null,
  }) {
    return _then(_$SpeciesPredictionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PredictionType,
      boundingBox: freezed == boundingBox
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as BoundingBox?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeciesPredictionImpl implements _SpeciesPrediction {
  const _$SpeciesPredictionImpl(
      {required this.name,
      required this.confidence,
      required this.type,
      this.boundingBox,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$SpeciesPredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesPredictionImplFromJson(json);

  @override
  final String name;
  @override
  final double confidence;
  @override
  final PredictionType type;
  @override
  final BoundingBox? boundingBox;
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
    return 'SpeciesPrediction(name: $name, confidence: $confidence, type: $type, boundingBox: $boundingBox, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesPredictionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.boundingBox, boundingBox) ||
                other.boundingBox == boundingBox) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, confidence, type,
      boundingBox, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesPredictionImplCopyWith<_$SpeciesPredictionImpl> get copyWith =>
      __$$SpeciesPredictionImplCopyWithImpl<_$SpeciesPredictionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeciesPredictionImplToJson(
      this,
    );
  }
}

abstract class _SpeciesPrediction implements SpeciesPrediction {
  const factory _SpeciesPrediction(
      {required final String name,
      required final double confidence,
      required final PredictionType type,
      final BoundingBox? boundingBox,
      final Map<String, dynamic> metadata}) = _$SpeciesPredictionImpl;

  factory _SpeciesPrediction.fromJson(Map<String, dynamic> json) =
      _$SpeciesPredictionImpl.fromJson;

  @override
  String get name;
  @override
  double get confidence;
  @override
  PredictionType get type;
  @override
  BoundingBox? get boundingBox;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesPredictionImplCopyWith<_$SpeciesPredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BoundingBox _$BoundingBoxFromJson(Map<String, dynamic> json) {
  return _BoundingBox.fromJson(json);
}

/// @nodoc
mixin _$BoundingBox {
  double get left => throw _privateConstructorUsedError;
  double get top => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundingBoxCopyWith<BoundingBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundingBoxCopyWith<$Res> {
  factory $BoundingBoxCopyWith(
          BoundingBox value, $Res Function(BoundingBox) then) =
      _$BoundingBoxCopyWithImpl<$Res, BoundingBox>;
  @useResult
  $Res call({double left, double top, double width, double height});
}

/// @nodoc
class _$BoundingBoxCopyWithImpl<$Res, $Val extends BoundingBox>
    implements $BoundingBoxCopyWith<$Res> {
  _$BoundingBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? top = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoundingBoxImplCopyWith<$Res>
    implements $BoundingBoxCopyWith<$Res> {
  factory _$$BoundingBoxImplCopyWith(
          _$BoundingBoxImpl value, $Res Function(_$BoundingBoxImpl) then) =
      __$$BoundingBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double left, double top, double width, double height});
}

/// @nodoc
class __$$BoundingBoxImplCopyWithImpl<$Res>
    extends _$BoundingBoxCopyWithImpl<$Res, _$BoundingBoxImpl>
    implements _$$BoundingBoxImplCopyWith<$Res> {
  __$$BoundingBoxImplCopyWithImpl(
      _$BoundingBoxImpl _value, $Res Function(_$BoundingBoxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? top = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$BoundingBoxImpl(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoundingBoxImpl implements _BoundingBox {
  const _$BoundingBoxImpl(
      {required this.left,
      required this.top,
      required this.width,
      required this.height});

  factory _$BoundingBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoundingBoxImplFromJson(json);

  @override
  final double left;
  @override
  final double top;
  @override
  final double width;
  @override
  final double height;

  @override
  String toString() {
    return 'BoundingBox(left: $left, top: $top, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundingBoxImpl &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundingBoxImplCopyWith<_$BoundingBoxImpl> get copyWith =>
      __$$BoundingBoxImplCopyWithImpl<_$BoundingBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoundingBoxImplToJson(
      this,
    );
  }
}

abstract class _BoundingBox implements BoundingBox {
  const factory _BoundingBox(
      {required final double left,
      required final double top,
      required final double width,
      required final double height}) = _$BoundingBoxImpl;

  factory _BoundingBox.fromJson(Map<String, dynamic> json) =
      _$BoundingBoxImpl.fromJson;

  @override
  double get left;
  @override
  double get top;
  @override
  double get width;
  @override
  double get height;
  @override
  @JsonKey(ignore: true)
  _$$BoundingBoxImplCopyWith<_$BoundingBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
