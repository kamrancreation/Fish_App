// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpeciesRecognition _$SpeciesRecognitionFromJson(Map<String, dynamic> json) {
  return _SpeciesRecognition.fromJson(json);
}

/// @nodoc
mixin _$SpeciesRecognition {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<SpeciesPrediction> get predictions => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesRecognitionCopyWith<SpeciesRecognition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesRecognitionCopyWith<$Res> {
  factory $SpeciesRecognitionCopyWith(
          SpeciesRecognition value, $Res Function(SpeciesRecognition) then) =
      _$SpeciesRecognitionCopyWithImpl<$Res, SpeciesRecognition>;
  @useResult
  $Res call(
      {String id,
      String imageUrl,
      List<SpeciesPrediction> predictions,
      DateTime timestamp,
      Map<String, dynamic> metadata,
      bool isVerified});
}

/// @nodoc
class _$SpeciesRecognitionCopyWithImpl<$Res, $Val extends SpeciesRecognition>
    implements $SpeciesRecognitionCopyWith<$Res> {
  _$SpeciesRecognitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? predictions = null,
    Object? timestamp = null,
    Object? metadata = null,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      predictions: null == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<SpeciesPrediction>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeciesRecognitionImplCopyWith<$Res>
    implements $SpeciesRecognitionCopyWith<$Res> {
  factory _$$SpeciesRecognitionImplCopyWith(_$SpeciesRecognitionImpl value,
          $Res Function(_$SpeciesRecognitionImpl) then) =
      __$$SpeciesRecognitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String imageUrl,
      List<SpeciesPrediction> predictions,
      DateTime timestamp,
      Map<String, dynamic> metadata,
      bool isVerified});
}

/// @nodoc
class __$$SpeciesRecognitionImplCopyWithImpl<$Res>
    extends _$SpeciesRecognitionCopyWithImpl<$Res, _$SpeciesRecognitionImpl>
    implements _$$SpeciesRecognitionImplCopyWith<$Res> {
  __$$SpeciesRecognitionImplCopyWithImpl(_$SpeciesRecognitionImpl _value,
      $Res Function(_$SpeciesRecognitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? predictions = null,
    Object? timestamp = null,
    Object? metadata = null,
    Object? isVerified = null,
  }) {
    return _then(_$SpeciesRecognitionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      predictions: null == predictions
          ? _value._predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<SpeciesPrediction>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeciesRecognitionImpl
    with DiagnosticableTreeMixin
    implements _SpeciesRecognition {
  const _$SpeciesRecognitionImpl(
      {required this.id,
      required this.imageUrl,
      required final List<SpeciesPrediction> predictions,
      required this.timestamp,
      required final Map<String, dynamic> metadata,
      required this.isVerified})
      : _predictions = predictions,
        _metadata = metadata;

  factory _$SpeciesRecognitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesRecognitionImplFromJson(json);

  @override
  final String id;
  @override
  final String imageUrl;
  final List<SpeciesPrediction> _predictions;
  @override
  List<SpeciesPrediction> get predictions {
    if (_predictions is EqualUnmodifiableListView) return _predictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_predictions);
  }

  @override
  final DateTime timestamp;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final bool isVerified;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpeciesRecognition(id: $id, imageUrl: $imageUrl, predictions: $predictions, timestamp: $timestamp, metadata: $metadata, isVerified: $isVerified)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpeciesRecognition'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('predictions', predictions))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('isVerified', isVerified));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesRecognitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._predictions, _predictions) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      imageUrl,
      const DeepCollectionEquality().hash(_predictions),
      timestamp,
      const DeepCollectionEquality().hash(_metadata),
      isVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesRecognitionImplCopyWith<_$SpeciesRecognitionImpl> get copyWith =>
      __$$SpeciesRecognitionImplCopyWithImpl<_$SpeciesRecognitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeciesRecognitionImplToJson(
      this,
    );
  }
}

abstract class _SpeciesRecognition implements SpeciesRecognition {
  const factory _SpeciesRecognition(
      {required final String id,
      required final String imageUrl,
      required final List<SpeciesPrediction> predictions,
      required final DateTime timestamp,
      required final Map<String, dynamic> metadata,
      required final bool isVerified}) = _$SpeciesRecognitionImpl;

  factory _SpeciesRecognition.fromJson(Map<String, dynamic> json) =
      _$SpeciesRecognitionImpl.fromJson;

  @override
  String get id;
  @override
  String get imageUrl;
  @override
  List<SpeciesPrediction> get predictions;
  @override
  DateTime get timestamp;
  @override
  Map<String, dynamic> get metadata;
  @override
  bool get isVerified;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesRecognitionImplCopyWith<_$SpeciesRecognitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpeciesPrediction _$SpeciesPredictionFromJson(Map<String, dynamic> json) {
  return _SpeciesPrediction.fromJson(json);
}

/// @nodoc
mixin _$SpeciesPrediction {
  String get speciesId => throw _privateConstructorUsedError;
  String get commonName => throw _privateConstructorUsedError;
  String get scientificName => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  Map<String, dynamic> get characteristics =>
      throw _privateConstructorUsedError;

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
      {String speciesId,
      String commonName,
      String scientificName,
      double confidence,
      Map<String, dynamic> characteristics});
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
    Object? speciesId = null,
    Object? commonName = null,
    Object? scientificName = null,
    Object? confidence = null,
    Object? characteristics = null,
  }) {
    return _then(_value.copyWith(
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String,
      commonName: null == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      scientificName: null == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
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
      {String speciesId,
      String commonName,
      String scientificName,
      double confidence,
      Map<String, dynamic> characteristics});
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
    Object? speciesId = null,
    Object? commonName = null,
    Object? scientificName = null,
    Object? confidence = null,
    Object? characteristics = null,
  }) {
    return _then(_$SpeciesPredictionImpl(
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String,
      commonName: null == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      scientificName: null == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      characteristics: null == characteristics
          ? _value._characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeciesPredictionImpl
    with DiagnosticableTreeMixin
    implements _SpeciesPrediction {
  const _$SpeciesPredictionImpl(
      {required this.speciesId,
      required this.commonName,
      required this.scientificName,
      required this.confidence,
      required final Map<String, dynamic> characteristics})
      : _characteristics = characteristics;

  factory _$SpeciesPredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesPredictionImplFromJson(json);

  @override
  final String speciesId;
  @override
  final String commonName;
  @override
  final String scientificName;
  @override
  final double confidence;
  final Map<String, dynamic> _characteristics;
  @override
  Map<String, dynamic> get characteristics {
    if (_characteristics is EqualUnmodifiableMapView) return _characteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_characteristics);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpeciesPrediction(speciesId: $speciesId, commonName: $commonName, scientificName: $scientificName, confidence: $confidence, characteristics: $characteristics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpeciesPrediction'))
      ..add(DiagnosticsProperty('speciesId', speciesId))
      ..add(DiagnosticsProperty('commonName', commonName))
      ..add(DiagnosticsProperty('scientificName', scientificName))
      ..add(DiagnosticsProperty('confidence', confidence))
      ..add(DiagnosticsProperty('characteristics', characteristics));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesPredictionImpl &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality()
                .equals(other._characteristics, _characteristics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      speciesId,
      commonName,
      scientificName,
      confidence,
      const DeepCollectionEquality().hash(_characteristics));

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
          {required final String speciesId,
          required final String commonName,
          required final String scientificName,
          required final double confidence,
          required final Map<String, dynamic> characteristics}) =
      _$SpeciesPredictionImpl;

  factory _SpeciesPrediction.fromJson(Map<String, dynamic> json) =
      _$SpeciesPredictionImpl.fromJson;

  @override
  String get speciesId;
  @override
  String get commonName;
  @override
  String get scientificName;
  @override
  double get confidence;
  @override
  Map<String, dynamic> get characteristics;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesPredictionImplCopyWith<_$SpeciesPredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BehaviorPrediction _$BehaviorPredictionFromJson(Map<String, dynamic> json) {
  return _BehaviorPrediction.fromJson(json);
}

/// @nodoc
mixin _$BehaviorPrediction {
  String get id => throw _privateConstructorUsedError;
  String get speciesId => throw _privateConstructorUsedError;
  String get behavior => throw _privateConstructorUsedError;
  double get probability => throw _privateConstructorUsedError;
  Map<String, dynamic> get conditions => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic> get factors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BehaviorPredictionCopyWith<BehaviorPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorPredictionCopyWith<$Res> {
  factory $BehaviorPredictionCopyWith(
          BehaviorPrediction value, $Res Function(BehaviorPrediction) then) =
      _$BehaviorPredictionCopyWithImpl<$Res, BehaviorPrediction>;
  @useResult
  $Res call(
      {String id,
      String speciesId,
      String behavior,
      double probability,
      Map<String, dynamic> conditions,
      DateTime timestamp,
      Map<String, dynamic> factors});
}

/// @nodoc
class _$BehaviorPredictionCopyWithImpl<$Res, $Val extends BehaviorPrediction>
    implements $BehaviorPredictionCopyWith<$Res> {
  _$BehaviorPredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speciesId = null,
    Object? behavior = null,
    Object? probability = null,
    Object? conditions = null,
    Object? timestamp = null,
    Object? factors = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String,
      behavior: null == behavior
          ? _value.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      factors: null == factors
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BehaviorPredictionImplCopyWith<$Res>
    implements $BehaviorPredictionCopyWith<$Res> {
  factory _$$BehaviorPredictionImplCopyWith(_$BehaviorPredictionImpl value,
          $Res Function(_$BehaviorPredictionImpl) then) =
      __$$BehaviorPredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String speciesId,
      String behavior,
      double probability,
      Map<String, dynamic> conditions,
      DateTime timestamp,
      Map<String, dynamic> factors});
}

/// @nodoc
class __$$BehaviorPredictionImplCopyWithImpl<$Res>
    extends _$BehaviorPredictionCopyWithImpl<$Res, _$BehaviorPredictionImpl>
    implements _$$BehaviorPredictionImplCopyWith<$Res> {
  __$$BehaviorPredictionImplCopyWithImpl(_$BehaviorPredictionImpl _value,
      $Res Function(_$BehaviorPredictionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speciesId = null,
    Object? behavior = null,
    Object? probability = null,
    Object? conditions = null,
    Object? timestamp = null,
    Object? factors = null,
  }) {
    return _then(_$BehaviorPredictionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String,
      behavior: null == behavior
          ? _value.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      factors: null == factors
          ? _value._factors
          : factors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BehaviorPredictionImpl
    with DiagnosticableTreeMixin
    implements _BehaviorPrediction {
  const _$BehaviorPredictionImpl(
      {required this.id,
      required this.speciesId,
      required this.behavior,
      required this.probability,
      required final Map<String, dynamic> conditions,
      required this.timestamp,
      required final Map<String, dynamic> factors})
      : _conditions = conditions,
        _factors = factors;

  factory _$BehaviorPredictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BehaviorPredictionImplFromJson(json);

  @override
  final String id;
  @override
  final String speciesId;
  @override
  final String behavior;
  @override
  final double probability;
  final Map<String, dynamic> _conditions;
  @override
  Map<String, dynamic> get conditions {
    if (_conditions is EqualUnmodifiableMapView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conditions);
  }

  @override
  final DateTime timestamp;
  final Map<String, dynamic> _factors;
  @override
  Map<String, dynamic> get factors {
    if (_factors is EqualUnmodifiableMapView) return _factors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_factors);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorPrediction(id: $id, speciesId: $speciesId, behavior: $behavior, probability: $probability, conditions: $conditions, timestamp: $timestamp, factors: $factors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorPrediction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('speciesId', speciesId))
      ..add(DiagnosticsProperty('behavior', behavior))
      ..add(DiagnosticsProperty('probability', probability))
      ..add(DiagnosticsProperty('conditions', conditions))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('factors', factors));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorPredictionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.behavior, behavior) ||
                other.behavior == behavior) &&
            (identical(other.probability, probability) ||
                other.probability == probability) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._factors, _factors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      speciesId,
      behavior,
      probability,
      const DeepCollectionEquality().hash(_conditions),
      timestamp,
      const DeepCollectionEquality().hash(_factors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorPredictionImplCopyWith<_$BehaviorPredictionImpl> get copyWith =>
      __$$BehaviorPredictionImplCopyWithImpl<_$BehaviorPredictionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BehaviorPredictionImplToJson(
      this,
    );
  }
}

abstract class _BehaviorPrediction implements BehaviorPrediction {
  const factory _BehaviorPrediction(
      {required final String id,
      required final String speciesId,
      required final String behavior,
      required final double probability,
      required final Map<String, dynamic> conditions,
      required final DateTime timestamp,
      required final Map<String, dynamic> factors}) = _$BehaviorPredictionImpl;

  factory _BehaviorPrediction.fromJson(Map<String, dynamic> json) =
      _$BehaviorPredictionImpl.fromJson;

  @override
  String get id;
  @override
  String get speciesId;
  @override
  String get behavior;
  @override
  double get probability;
  @override
  Map<String, dynamic> get conditions;
  @override
  DateTime get timestamp;
  @override
  Map<String, dynamic> get factors;
  @override
  @JsonKey(ignore: true)
  _$$BehaviorPredictionImplCopyWith<_$BehaviorPredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CatchForecast _$CatchForecastFromJson(Map<String, dynamic> json) {
  return _CatchForecast.fromJson(json);
}

/// @nodoc
mixin _$CatchForecast {
  String get id => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  DateTime get forecastTime => throw _privateConstructorUsedError;
  double get probability => throw _privateConstructorUsedError;
  List<String> get targetSpecies => throw _privateConstructorUsedError;
  Map<String, dynamic> get conditions => throw _privateConstructorUsedError;
  Map<String, dynamic> get recommendations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatchForecastCopyWith<CatchForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatchForecastCopyWith<$Res> {
  factory $CatchForecastCopyWith(
          CatchForecast value, $Res Function(CatchForecast) then) =
      _$CatchForecastCopyWithImpl<$Res, CatchForecast>;
  @useResult
  $Res call(
      {String id,
      String locationId,
      DateTime forecastTime,
      double probability,
      List<String> targetSpecies,
      Map<String, dynamic> conditions,
      Map<String, dynamic> recommendations});
}

/// @nodoc
class _$CatchForecastCopyWithImpl<$Res, $Val extends CatchForecast>
    implements $CatchForecastCopyWith<$Res> {
  _$CatchForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationId = null,
    Object? forecastTime = null,
    Object? probability = null,
    Object? targetSpecies = null,
    Object? conditions = null,
    Object? recommendations = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      forecastTime: null == forecastTime
          ? _value.forecastTime
          : forecastTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
      targetSpecies: null == targetSpecies
          ? _value.targetSpecies
          : targetSpecies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatchForecastImplCopyWith<$Res>
    implements $CatchForecastCopyWith<$Res> {
  factory _$$CatchForecastImplCopyWith(
          _$CatchForecastImpl value, $Res Function(_$CatchForecastImpl) then) =
      __$$CatchForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String locationId,
      DateTime forecastTime,
      double probability,
      List<String> targetSpecies,
      Map<String, dynamic> conditions,
      Map<String, dynamic> recommendations});
}

/// @nodoc
class __$$CatchForecastImplCopyWithImpl<$Res>
    extends _$CatchForecastCopyWithImpl<$Res, _$CatchForecastImpl>
    implements _$$CatchForecastImplCopyWith<$Res> {
  __$$CatchForecastImplCopyWithImpl(
      _$CatchForecastImpl _value, $Res Function(_$CatchForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationId = null,
    Object? forecastTime = null,
    Object? probability = null,
    Object? targetSpecies = null,
    Object? conditions = null,
    Object? recommendations = null,
  }) {
    return _then(_$CatchForecastImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      forecastTime: null == forecastTime
          ? _value.forecastTime
          : forecastTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as double,
      targetSpecies: null == targetSpecies
          ? _value._targetSpecies
          : targetSpecies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatchForecastImpl
    with DiagnosticableTreeMixin
    implements _CatchForecast {
  const _$CatchForecastImpl(
      {required this.id,
      required this.locationId,
      required this.forecastTime,
      required this.probability,
      required final List<String> targetSpecies,
      required final Map<String, dynamic> conditions,
      required final Map<String, dynamic> recommendations})
      : _targetSpecies = targetSpecies,
        _conditions = conditions,
        _recommendations = recommendations;

  factory _$CatchForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatchForecastImplFromJson(json);

  @override
  final String id;
  @override
  final String locationId;
  @override
  final DateTime forecastTime;
  @override
  final double probability;
  final List<String> _targetSpecies;
  @override
  List<String> get targetSpecies {
    if (_targetSpecies is EqualUnmodifiableListView) return _targetSpecies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targetSpecies);
  }

  final Map<String, dynamic> _conditions;
  @override
  Map<String, dynamic> get conditions {
    if (_conditions is EqualUnmodifiableMapView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conditions);
  }

  final Map<String, dynamic> _recommendations;
  @override
  Map<String, dynamic> get recommendations {
    if (_recommendations is EqualUnmodifiableMapView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recommendations);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CatchForecast(id: $id, locationId: $locationId, forecastTime: $forecastTime, probability: $probability, targetSpecies: $targetSpecies, conditions: $conditions, recommendations: $recommendations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CatchForecast'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('locationId', locationId))
      ..add(DiagnosticsProperty('forecastTime', forecastTime))
      ..add(DiagnosticsProperty('probability', probability))
      ..add(DiagnosticsProperty('targetSpecies', targetSpecies))
      ..add(DiagnosticsProperty('conditions', conditions))
      ..add(DiagnosticsProperty('recommendations', recommendations));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatchForecastImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.forecastTime, forecastTime) ||
                other.forecastTime == forecastTime) &&
            (identical(other.probability, probability) ||
                other.probability == probability) &&
            const DeepCollectionEquality()
                .equals(other._targetSpecies, _targetSpecies) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      locationId,
      forecastTime,
      probability,
      const DeepCollectionEquality().hash(_targetSpecies),
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_recommendations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatchForecastImplCopyWith<_$CatchForecastImpl> get copyWith =>
      __$$CatchForecastImplCopyWithImpl<_$CatchForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatchForecastImplToJson(
      this,
    );
  }
}

abstract class _CatchForecast implements CatchForecast {
  const factory _CatchForecast(
          {required final String id,
          required final String locationId,
          required final DateTime forecastTime,
          required final double probability,
          required final List<String> targetSpecies,
          required final Map<String, dynamic> conditions,
          required final Map<String, dynamic> recommendations}) =
      _$CatchForecastImpl;

  factory _CatchForecast.fromJson(Map<String, dynamic> json) =
      _$CatchForecastImpl.fromJson;

  @override
  String get id;
  @override
  String get locationId;
  @override
  DateTime get forecastTime;
  @override
  double get probability;
  @override
  List<String> get targetSpecies;
  @override
  Map<String, dynamic> get conditions;
  @override
  Map<String, dynamic> get recommendations;
  @override
  @JsonKey(ignore: true)
  _$$CatchForecastImplCopyWith<_$CatchForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatternAnalysis _$PatternAnalysisFromJson(Map<String, dynamic> json) {
  return _PatternAnalysis.fromJson(json);
}

/// @nodoc
mixin _$PatternAnalysis {
  String get id => throw _privateConstructorUsedError;
  String get patternType => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get analysisDate => throw _privateConstructorUsedError;
  List<String> get relatedPatterns => throw _privateConstructorUsedError;
  Map<String, dynamic> get insights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatternAnalysisCopyWith<PatternAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatternAnalysisCopyWith<$Res> {
  factory $PatternAnalysisCopyWith(
          PatternAnalysis value, $Res Function(PatternAnalysis) then) =
      _$PatternAnalysisCopyWithImpl<$Res, PatternAnalysis>;
  @useResult
  $Res call(
      {String id,
      String patternType,
      Map<String, dynamic> data,
      DateTime analysisDate,
      List<String> relatedPatterns,
      Map<String, dynamic> insights});
}

/// @nodoc
class _$PatternAnalysisCopyWithImpl<$Res, $Val extends PatternAnalysis>
    implements $PatternAnalysisCopyWith<$Res> {
  _$PatternAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patternType = null,
    Object? data = null,
    Object? analysisDate = null,
    Object? relatedPatterns = null,
    Object? insights = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patternType: null == patternType
          ? _value.patternType
          : patternType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      analysisDate: null == analysisDate
          ? _value.analysisDate
          : analysisDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relatedPatterns: null == relatedPatterns
          ? _value.relatedPatterns
          : relatedPatterns // ignore: cast_nullable_to_non_nullable
              as List<String>,
      insights: null == insights
          ? _value.insights
          : insights // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatternAnalysisImplCopyWith<$Res>
    implements $PatternAnalysisCopyWith<$Res> {
  factory _$$PatternAnalysisImplCopyWith(_$PatternAnalysisImpl value,
          $Res Function(_$PatternAnalysisImpl) then) =
      __$$PatternAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String patternType,
      Map<String, dynamic> data,
      DateTime analysisDate,
      List<String> relatedPatterns,
      Map<String, dynamic> insights});
}

/// @nodoc
class __$$PatternAnalysisImplCopyWithImpl<$Res>
    extends _$PatternAnalysisCopyWithImpl<$Res, _$PatternAnalysisImpl>
    implements _$$PatternAnalysisImplCopyWith<$Res> {
  __$$PatternAnalysisImplCopyWithImpl(
      _$PatternAnalysisImpl _value, $Res Function(_$PatternAnalysisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patternType = null,
    Object? data = null,
    Object? analysisDate = null,
    Object? relatedPatterns = null,
    Object? insights = null,
  }) {
    return _then(_$PatternAnalysisImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patternType: null == patternType
          ? _value.patternType
          : patternType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      analysisDate: null == analysisDate
          ? _value.analysisDate
          : analysisDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relatedPatterns: null == relatedPatterns
          ? _value._relatedPatterns
          : relatedPatterns // ignore: cast_nullable_to_non_nullable
              as List<String>,
      insights: null == insights
          ? _value._insights
          : insights // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatternAnalysisImpl
    with DiagnosticableTreeMixin
    implements _PatternAnalysis {
  const _$PatternAnalysisImpl(
      {required this.id,
      required this.patternType,
      required final Map<String, dynamic> data,
      required this.analysisDate,
      required final List<String> relatedPatterns,
      required final Map<String, dynamic> insights})
      : _data = data,
        _relatedPatterns = relatedPatterns,
        _insights = insights;

  factory _$PatternAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatternAnalysisImplFromJson(json);

  @override
  final String id;
  @override
  final String patternType;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime analysisDate;
  final List<String> _relatedPatterns;
  @override
  List<String> get relatedPatterns {
    if (_relatedPatterns is EqualUnmodifiableListView) return _relatedPatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedPatterns);
  }

  final Map<String, dynamic> _insights;
  @override
  Map<String, dynamic> get insights {
    if (_insights is EqualUnmodifiableMapView) return _insights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_insights);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatternAnalysis(id: $id, patternType: $patternType, data: $data, analysisDate: $analysisDate, relatedPatterns: $relatedPatterns, insights: $insights)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatternAnalysis'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('patternType', patternType))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('analysisDate', analysisDate))
      ..add(DiagnosticsProperty('relatedPatterns', relatedPatterns))
      ..add(DiagnosticsProperty('insights', insights));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatternAnalysisImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patternType, patternType) ||
                other.patternType == patternType) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.analysisDate, analysisDate) ||
                other.analysisDate == analysisDate) &&
            const DeepCollectionEquality()
                .equals(other._relatedPatterns, _relatedPatterns) &&
            const DeepCollectionEquality().equals(other._insights, _insights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      patternType,
      const DeepCollectionEquality().hash(_data),
      analysisDate,
      const DeepCollectionEquality().hash(_relatedPatterns),
      const DeepCollectionEquality().hash(_insights));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatternAnalysisImplCopyWith<_$PatternAnalysisImpl> get copyWith =>
      __$$PatternAnalysisImplCopyWithImpl<_$PatternAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatternAnalysisImplToJson(
      this,
    );
  }
}

abstract class _PatternAnalysis implements PatternAnalysis {
  const factory _PatternAnalysis(
      {required final String id,
      required final String patternType,
      required final Map<String, dynamic> data,
      required final DateTime analysisDate,
      required final List<String> relatedPatterns,
      required final Map<String, dynamic> insights}) = _$PatternAnalysisImpl;

  factory _PatternAnalysis.fromJson(Map<String, dynamic> json) =
      _$PatternAnalysisImpl.fromJson;

  @override
  String get id;
  @override
  String get patternType;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get analysisDate;
  @override
  List<String> get relatedPatterns;
  @override
  Map<String, dynamic> get insights;
  @override
  @JsonKey(ignore: true)
  _$$PatternAnalysisImplCopyWith<_$PatternAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AutomatedReport _$AutomatedReportFromJson(Map<String, dynamic> json) {
  return _AutomatedReport.fromJson(json);
}

/// @nodoc
mixin _$AutomatedReport {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get reportType => throw _privateConstructorUsedError;
  DateTime get generatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  List<String> get insights => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutomatedReportCopyWith<AutomatedReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutomatedReportCopyWith<$Res> {
  factory $AutomatedReportCopyWith(
          AutomatedReport value, $Res Function(AutomatedReport) then) =
      _$AutomatedReportCopyWithImpl<$Res, AutomatedReport>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String reportType,
      DateTime generatedAt,
      Map<String, dynamic> data,
      List<String> insights,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$AutomatedReportCopyWithImpl<$Res, $Val extends AutomatedReport>
    implements $AutomatedReportCopyWith<$Res> {
  _$AutomatedReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? reportType = null,
    Object? generatedAt = null,
    Object? data = null,
    Object? insights = null,
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
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      insights: null == insights
          ? _value.insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutomatedReportImplCopyWith<$Res>
    implements $AutomatedReportCopyWith<$Res> {
  factory _$$AutomatedReportImplCopyWith(_$AutomatedReportImpl value,
          $Res Function(_$AutomatedReportImpl) then) =
      __$$AutomatedReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String reportType,
      DateTime generatedAt,
      Map<String, dynamic> data,
      List<String> insights,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$AutomatedReportImplCopyWithImpl<$Res>
    extends _$AutomatedReportCopyWithImpl<$Res, _$AutomatedReportImpl>
    implements _$$AutomatedReportImplCopyWith<$Res> {
  __$$AutomatedReportImplCopyWithImpl(
      _$AutomatedReportImpl _value, $Res Function(_$AutomatedReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? reportType = null,
    Object? generatedAt = null,
    Object? data = null,
    Object? insights = null,
    Object? metadata = null,
  }) {
    return _then(_$AutomatedReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      insights: null == insights
          ? _value._insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutomatedReportImpl
    with DiagnosticableTreeMixin
    implements _AutomatedReport {
  const _$AutomatedReportImpl(
      {required this.id,
      required this.userId,
      required this.reportType,
      required this.generatedAt,
      required final Map<String, dynamic> data,
      required final List<String> insights,
      required final Map<String, dynamic> metadata})
      : _data = data,
        _insights = insights,
        _metadata = metadata;

  factory _$AutomatedReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutomatedReportImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String reportType;
  @override
  final DateTime generatedAt;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  final List<String> _insights;
  @override
  List<String> get insights {
    if (_insights is EqualUnmodifiableListView) return _insights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insights);
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
    return 'AutomatedReport(id: $id, userId: $userId, reportType: $reportType, generatedAt: $generatedAt, data: $data, insights: $insights, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AutomatedReport'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('reportType', reportType))
      ..add(DiagnosticsProperty('generatedAt', generatedAt))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('insights', insights))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutomatedReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._insights, _insights) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      reportType,
      generatedAt,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_insights),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutomatedReportImplCopyWith<_$AutomatedReportImpl> get copyWith =>
      __$$AutomatedReportImplCopyWithImpl<_$AutomatedReportImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutomatedReportImplToJson(
      this,
    );
  }
}

abstract class _AutomatedReport implements AutomatedReport {
  const factory _AutomatedReport(
      {required final String id,
      required final String userId,
      required final String reportType,
      required final DateTime generatedAt,
      required final Map<String, dynamic> data,
      required final List<String> insights,
      required final Map<String, dynamic> metadata}) = _$AutomatedReportImpl;

  factory _AutomatedReport.fromJson(Map<String, dynamic> json) =
      _$AutomatedReportImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get reportType;
  @override
  DateTime get generatedAt;
  @override
  Map<String, dynamic> get data;
  @override
  List<String> get insights;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AutomatedReportImplCopyWith<_$AutomatedReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SmartRecommendation _$SmartRecommendationFromJson(Map<String, dynamic> json) {
  return _SmartRecommendation.fromJson(json);
}

/// @nodoc
mixin _$SmartRecommendation {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get recommendation => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  Map<String, dynamic> get context => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmartRecommendationCopyWith<SmartRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartRecommendationCopyWith<$Res> {
  factory $SmartRecommendationCopyWith(
          SmartRecommendation value, $Res Function(SmartRecommendation) then) =
      _$SmartRecommendationCopyWithImpl<$Res, SmartRecommendation>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String type,
      String recommendation,
      double confidence,
      Map<String, dynamic> context,
      DateTime timestamp,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$SmartRecommendationCopyWithImpl<$Res, $Val extends SmartRecommendation>
    implements $SmartRecommendationCopyWith<$Res> {
  _$SmartRecommendationCopyWithImpl(this._value, this._then);

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
    Object? recommendation = null,
    Object? confidence = null,
    Object? context = null,
    Object? timestamp = null,
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
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmartRecommendationImplCopyWith<$Res>
    implements $SmartRecommendationCopyWith<$Res> {
  factory _$$SmartRecommendationImplCopyWith(_$SmartRecommendationImpl value,
          $Res Function(_$SmartRecommendationImpl) then) =
      __$$SmartRecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String type,
      String recommendation,
      double confidence,
      Map<String, dynamic> context,
      DateTime timestamp,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$SmartRecommendationImplCopyWithImpl<$Res>
    extends _$SmartRecommendationCopyWithImpl<$Res, _$SmartRecommendationImpl>
    implements _$$SmartRecommendationImplCopyWith<$Res> {
  __$$SmartRecommendationImplCopyWithImpl(_$SmartRecommendationImpl _value,
      $Res Function(_$SmartRecommendationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? recommendation = null,
    Object? confidence = null,
    Object? context = null,
    Object? timestamp = null,
    Object? metadata = null,
  }) {
    return _then(_$SmartRecommendationImpl(
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
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      context: null == context
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmartRecommendationImpl
    with DiagnosticableTreeMixin
    implements _SmartRecommendation {
  const _$SmartRecommendationImpl(
      {required this.id,
      required this.userId,
      required this.type,
      required this.recommendation,
      required this.confidence,
      required final Map<String, dynamic> context,
      required this.timestamp,
      required final Map<String, dynamic> metadata})
      : _context = context,
        _metadata = metadata;

  factory _$SmartRecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmartRecommendationImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String type;
  @override
  final String recommendation;
  @override
  final double confidence;
  final Map<String, dynamic> _context;
  @override
  Map<String, dynamic> get context {
    if (_context is EqualUnmodifiableMapView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_context);
  }

  @override
  final DateTime timestamp;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SmartRecommendation(id: $id, userId: $userId, type: $type, recommendation: $recommendation, confidence: $confidence, context: $context, timestamp: $timestamp, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SmartRecommendation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('recommendation', recommendation))
      ..add(DiagnosticsProperty('confidence', confidence))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmartRecommendationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            const DeepCollectionEquality().equals(other._context, _context) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      type,
      recommendation,
      confidence,
      const DeepCollectionEquality().hash(_context),
      timestamp,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmartRecommendationImplCopyWith<_$SmartRecommendationImpl> get copyWith =>
      __$$SmartRecommendationImplCopyWithImpl<_$SmartRecommendationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmartRecommendationImplToJson(
      this,
    );
  }
}

abstract class _SmartRecommendation implements SmartRecommendation {
  const factory _SmartRecommendation(
          {required final String id,
          required final String userId,
          required final String type,
          required final String recommendation,
          required final double confidence,
          required final Map<String, dynamic> context,
          required final DateTime timestamp,
          required final Map<String, dynamic> metadata}) =
      _$SmartRecommendationImpl;

  factory _SmartRecommendation.fromJson(Map<String, dynamic> json) =
      _$SmartRecommendationImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get type;
  @override
  String get recommendation;
  @override
  double get confidence;
  @override
  Map<String, dynamic> get context;
  @override
  DateTime get timestamp;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SmartRecommendationImplCopyWith<_$SmartRecommendationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
