// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vr_ar_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VirtualTutorial _$VirtualTutorialFromJson(Map<String, dynamic> json) {
  return _VirtualTutorial.fromJson(json);
}

/// @nodoc
mixin _$VirtualTutorial {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get modelUrl => throw _privateConstructorUsedError;
  List<String> get steps => throw _privateConstructorUsedError;
  Map<String, dynamic> get interactions => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VirtualTutorialCopyWith<VirtualTutorial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualTutorialCopyWith<$Res> {
  factory $VirtualTutorialCopyWith(
          VirtualTutorial value, $Res Function(VirtualTutorial) then) =
      _$VirtualTutorialCopyWithImpl<$Res, VirtualTutorial>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String modelUrl,
      List<String> steps,
      Map<String, dynamic> interactions,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$VirtualTutorialCopyWithImpl<$Res, $Val extends VirtualTutorial>
    implements $VirtualTutorialCopyWith<$Res> {
  _$VirtualTutorialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? modelUrl = null,
    Object? steps = null,
    Object? interactions = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      modelUrl: null == modelUrl
          ? _value.modelUrl
          : modelUrl // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interactions: null == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VirtualTutorialImplCopyWith<$Res>
    implements $VirtualTutorialCopyWith<$Res> {
  factory _$$VirtualTutorialImplCopyWith(_$VirtualTutorialImpl value,
          $Res Function(_$VirtualTutorialImpl) then) =
      __$$VirtualTutorialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String modelUrl,
      List<String> steps,
      Map<String, dynamic> interactions,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$VirtualTutorialImplCopyWithImpl<$Res>
    extends _$VirtualTutorialCopyWithImpl<$Res, _$VirtualTutorialImpl>
    implements _$$VirtualTutorialImplCopyWith<$Res> {
  __$$VirtualTutorialImplCopyWithImpl(
      _$VirtualTutorialImpl _value, $Res Function(_$VirtualTutorialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? modelUrl = null,
    Object? steps = null,
    Object? interactions = null,
    Object? metadata = null,
  }) {
    return _then(_$VirtualTutorialImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      modelUrl: null == modelUrl
          ? _value.modelUrl
          : modelUrl // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interactions: null == interactions
          ? _value._interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VirtualTutorialImpl
    with DiagnosticableTreeMixin
    implements _VirtualTutorial {
  const _$VirtualTutorialImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.modelUrl,
      required final List<String> steps,
      required final Map<String, dynamic> interactions,
      required final Map<String, dynamic> metadata})
      : _steps = steps,
        _interactions = interactions,
        _metadata = metadata;

  factory _$VirtualTutorialImpl.fromJson(Map<String, dynamic> json) =>
      _$$VirtualTutorialImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String modelUrl;
  final List<String> _steps;
  @override
  List<String> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final Map<String, dynamic> _interactions;
  @override
  Map<String, dynamic> get interactions {
    if (_interactions is EqualUnmodifiableMapView) return _interactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_interactions);
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
    return 'VirtualTutorial(id: $id, title: $title, description: $description, modelUrl: $modelUrl, steps: $steps, interactions: $interactions, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VirtualTutorial'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('modelUrl', modelUrl))
      ..add(DiagnosticsProperty('steps', steps))
      ..add(DiagnosticsProperty('interactions', interactions))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VirtualTutorialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.modelUrl, modelUrl) ||
                other.modelUrl == modelUrl) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality()
                .equals(other._interactions, _interactions) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      modelUrl,
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(_interactions),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VirtualTutorialImplCopyWith<_$VirtualTutorialImpl> get copyWith =>
      __$$VirtualTutorialImplCopyWithImpl<_$VirtualTutorialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VirtualTutorialImplToJson(
      this,
    );
  }
}

abstract class _VirtualTutorial implements VirtualTutorial {
  const factory _VirtualTutorial(
      {required final String id,
      required final String title,
      required final String description,
      required final String modelUrl,
      required final List<String> steps,
      required final Map<String, dynamic> interactions,
      required final Map<String, dynamic> metadata}) = _$VirtualTutorialImpl;

  factory _VirtualTutorial.fromJson(Map<String, dynamic> json) =
      _$VirtualTutorialImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get modelUrl;
  @override
  List<String> get steps;
  @override
  Map<String, dynamic> get interactions;
  @override
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$VirtualTutorialImplCopyWith<_$VirtualTutorialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FishModel3D _$FishModel3DFromJson(Map<String, dynamic> json) {
  return _FishModel3D.fromJson(json);
}

/// @nodoc
mixin _$FishModel3D {
  String get id => throw _privateConstructorUsedError;
  String get speciesId => throw _privateConstructorUsedError;
  String get modelUrl => throw _privateConstructorUsedError;
  String get textureUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get animations => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  bool get isAnimated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FishModel3DCopyWith<FishModel3D> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FishModel3DCopyWith<$Res> {
  factory $FishModel3DCopyWith(
          FishModel3D value, $Res Function(FishModel3D) then) =
      _$FishModel3DCopyWithImpl<$Res, FishModel3D>;
  @useResult
  $Res call(
      {String id,
      String speciesId,
      String modelUrl,
      String textureUrl,
      Map<String, dynamic> animations,
      Map<String, dynamic> metadata,
      bool isAnimated});
}

/// @nodoc
class _$FishModel3DCopyWithImpl<$Res, $Val extends FishModel3D>
    implements $FishModel3DCopyWith<$Res> {
  _$FishModel3DCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speciesId = null,
    Object? modelUrl = null,
    Object? textureUrl = null,
    Object? animations = null,
    Object? metadata = null,
    Object? isAnimated = null,
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
      modelUrl: null == modelUrl
          ? _value.modelUrl
          : modelUrl // ignore: cast_nullable_to_non_nullable
              as String,
      textureUrl: null == textureUrl
          ? _value.textureUrl
          : textureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      animations: null == animations
          ? _value.animations
          : animations // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isAnimated: null == isAnimated
          ? _value.isAnimated
          : isAnimated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FishModel3DImplCopyWith<$Res>
    implements $FishModel3DCopyWith<$Res> {
  factory _$$FishModel3DImplCopyWith(
          _$FishModel3DImpl value, $Res Function(_$FishModel3DImpl) then) =
      __$$FishModel3DImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String speciesId,
      String modelUrl,
      String textureUrl,
      Map<String, dynamic> animations,
      Map<String, dynamic> metadata,
      bool isAnimated});
}

/// @nodoc
class __$$FishModel3DImplCopyWithImpl<$Res>
    extends _$FishModel3DCopyWithImpl<$Res, _$FishModel3DImpl>
    implements _$$FishModel3DImplCopyWith<$Res> {
  __$$FishModel3DImplCopyWithImpl(
      _$FishModel3DImpl _value, $Res Function(_$FishModel3DImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speciesId = null,
    Object? modelUrl = null,
    Object? textureUrl = null,
    Object? animations = null,
    Object? metadata = null,
    Object? isAnimated = null,
  }) {
    return _then(_$FishModel3DImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String,
      modelUrl: null == modelUrl
          ? _value.modelUrl
          : modelUrl // ignore: cast_nullable_to_non_nullable
              as String,
      textureUrl: null == textureUrl
          ? _value.textureUrl
          : textureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      animations: null == animations
          ? _value._animations
          : animations // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isAnimated: null == isAnimated
          ? _value.isAnimated
          : isAnimated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FishModel3DImpl with DiagnosticableTreeMixin implements _FishModel3D {
  const _$FishModel3DImpl(
      {required this.id,
      required this.speciesId,
      required this.modelUrl,
      required this.textureUrl,
      required final Map<String, dynamic> animations,
      required final Map<String, dynamic> metadata,
      required this.isAnimated})
      : _animations = animations,
        _metadata = metadata;

  factory _$FishModel3DImpl.fromJson(Map<String, dynamic> json) =>
      _$$FishModel3DImplFromJson(json);

  @override
  final String id;
  @override
  final String speciesId;
  @override
  final String modelUrl;
  @override
  final String textureUrl;
  final Map<String, dynamic> _animations;
  @override
  Map<String, dynamic> get animations {
    if (_animations is EqualUnmodifiableMapView) return _animations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_animations);
  }

  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final bool isAnimated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FishModel3D(id: $id, speciesId: $speciesId, modelUrl: $modelUrl, textureUrl: $textureUrl, animations: $animations, metadata: $metadata, isAnimated: $isAnimated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FishModel3D'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('speciesId', speciesId))
      ..add(DiagnosticsProperty('modelUrl', modelUrl))
      ..add(DiagnosticsProperty('textureUrl', textureUrl))
      ..add(DiagnosticsProperty('animations', animations))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('isAnimated', isAnimated));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FishModel3DImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.modelUrl, modelUrl) ||
                other.modelUrl == modelUrl) &&
            (identical(other.textureUrl, textureUrl) ||
                other.textureUrl == textureUrl) &&
            const DeepCollectionEquality()
                .equals(other._animations, _animations) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isAnimated, isAnimated) ||
                other.isAnimated == isAnimated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      speciesId,
      modelUrl,
      textureUrl,
      const DeepCollectionEquality().hash(_animations),
      const DeepCollectionEquality().hash(_metadata),
      isAnimated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FishModel3DImplCopyWith<_$FishModel3DImpl> get copyWith =>
      __$$FishModel3DImplCopyWithImpl<_$FishModel3DImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FishModel3DImplToJson(
      this,
    );
  }
}

abstract class _FishModel3D implements FishModel3D {
  const factory _FishModel3D(
      {required final String id,
      required final String speciesId,
      required final String modelUrl,
      required final String textureUrl,
      required final Map<String, dynamic> animations,
      required final Map<String, dynamic> metadata,
      required final bool isAnimated}) = _$FishModel3DImpl;

  factory _FishModel3D.fromJson(Map<String, dynamic> json) =
      _$FishModel3DImpl.fromJson;

  @override
  String get id;
  @override
  String get speciesId;
  @override
  String get modelUrl;
  @override
  String get textureUrl;
  @override
  Map<String, dynamic> get animations;
  @override
  Map<String, dynamic> get metadata;
  @override
  bool get isAnimated;
  @override
  @JsonKey(ignore: true)
  _$$FishModel3DImplCopyWith<_$FishModel3DImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InteractiveGuide _$InteractiveGuideFromJson(Map<String, dynamic> json) {
  return _InteractiveGuide.fromJson(json);
}

/// @nodoc
mixin _$InteractiveGuide {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<GuideStep> get steps => throw _privateConstructorUsedError;
  Map<String, dynamic> get resources => throw _privateConstructorUsedError;
  Map<String, dynamic> get interactions => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InteractiveGuideCopyWith<InteractiveGuide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractiveGuideCopyWith<$Res> {
  factory $InteractiveGuideCopyWith(
          InteractiveGuide value, $Res Function(InteractiveGuide) then) =
      _$InteractiveGuideCopyWithImpl<$Res, InteractiveGuide>;
  @useResult
  $Res call(
      {String id,
      String title,
      List<GuideStep> steps,
      Map<String, dynamic> resources,
      Map<String, dynamic> interactions,
      DateTime lastUpdated});
}

/// @nodoc
class _$InteractiveGuideCopyWithImpl<$Res, $Val extends InteractiveGuide>
    implements $InteractiveGuideCopyWith<$Res> {
  _$InteractiveGuideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? steps = null,
    Object? resources = null,
    Object? interactions = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<GuideStep>,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interactions: null == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InteractiveGuideImplCopyWith<$Res>
    implements $InteractiveGuideCopyWith<$Res> {
  factory _$$InteractiveGuideImplCopyWith(_$InteractiveGuideImpl value,
          $Res Function(_$InteractiveGuideImpl) then) =
      __$$InteractiveGuideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      List<GuideStep> steps,
      Map<String, dynamic> resources,
      Map<String, dynamic> interactions,
      DateTime lastUpdated});
}

/// @nodoc
class __$$InteractiveGuideImplCopyWithImpl<$Res>
    extends _$InteractiveGuideCopyWithImpl<$Res, _$InteractiveGuideImpl>
    implements _$$InteractiveGuideImplCopyWith<$Res> {
  __$$InteractiveGuideImplCopyWithImpl(_$InteractiveGuideImpl _value,
      $Res Function(_$InteractiveGuideImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? steps = null,
    Object? resources = null,
    Object? interactions = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$InteractiveGuideImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<GuideStep>,
      resources: null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interactions: null == interactions
          ? _value._interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InteractiveGuideImpl
    with DiagnosticableTreeMixin
    implements _InteractiveGuide {
  const _$InteractiveGuideImpl(
      {required this.id,
      required this.title,
      required final List<GuideStep> steps,
      required final Map<String, dynamic> resources,
      required final Map<String, dynamic> interactions,
      required this.lastUpdated})
      : _steps = steps,
        _resources = resources,
        _interactions = interactions;

  factory _$InteractiveGuideImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractiveGuideImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<GuideStep> _steps;
  @override
  List<GuideStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final Map<String, dynamic> _resources;
  @override
  Map<String, dynamic> get resources {
    if (_resources is EqualUnmodifiableMapView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_resources);
  }

  final Map<String, dynamic> _interactions;
  @override
  Map<String, dynamic> get interactions {
    if (_interactions is EqualUnmodifiableMapView) return _interactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_interactions);
  }

  @override
  final DateTime lastUpdated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InteractiveGuide(id: $id, title: $title, steps: $steps, resources: $resources, interactions: $interactions, lastUpdated: $lastUpdated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InteractiveGuide'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('steps', steps))
      ..add(DiagnosticsProperty('resources', resources))
      ..add(DiagnosticsProperty('interactions', interactions))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractiveGuideImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            const DeepCollectionEquality()
                .equals(other._interactions, _interactions) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(_resources),
      const DeepCollectionEquality().hash(_interactions),
      lastUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractiveGuideImplCopyWith<_$InteractiveGuideImpl> get copyWith =>
      __$$InteractiveGuideImplCopyWithImpl<_$InteractiveGuideImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractiveGuideImplToJson(
      this,
    );
  }
}

abstract class _InteractiveGuide implements InteractiveGuide {
  const factory _InteractiveGuide(
      {required final String id,
      required final String title,
      required final List<GuideStep> steps,
      required final Map<String, dynamic> resources,
      required final Map<String, dynamic> interactions,
      required final DateTime lastUpdated}) = _$InteractiveGuideImpl;

  factory _InteractiveGuide.fromJson(Map<String, dynamic> json) =
      _$InteractiveGuideImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<GuideStep> get steps;
  @override
  Map<String, dynamic> get resources;
  @override
  Map<String, dynamic> get interactions;
  @override
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$InteractiveGuideImplCopyWith<_$InteractiveGuideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuideStep _$GuideStepFromJson(Map<String, dynamic> json) {
  return _GuideStep.fromJson(json);
}

/// @nodoc
mixin _$GuideStep {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get mediaUrl => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;
  Map<String, dynamic> get interactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuideStepCopyWith<GuideStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideStepCopyWith<$Res> {
  factory $GuideStepCopyWith(GuideStep value, $Res Function(GuideStep) then) =
      _$GuideStepCopyWithImpl<$Res, GuideStep>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String mediaUrl,
      String mediaType,
      Map<String, dynamic> interactions});
}

/// @nodoc
class _$GuideStepCopyWithImpl<$Res, $Val extends GuideStep>
    implements $GuideStepCopyWith<$Res> {
  _$GuideStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? mediaUrl = null,
    Object? mediaType = null,
    Object? interactions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      interactions: null == interactions
          ? _value.interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuideStepImplCopyWith<$Res>
    implements $GuideStepCopyWith<$Res> {
  factory _$$GuideStepImplCopyWith(
          _$GuideStepImpl value, $Res Function(_$GuideStepImpl) then) =
      __$$GuideStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String mediaUrl,
      String mediaType,
      Map<String, dynamic> interactions});
}

/// @nodoc
class __$$GuideStepImplCopyWithImpl<$Res>
    extends _$GuideStepCopyWithImpl<$Res, _$GuideStepImpl>
    implements _$$GuideStepImplCopyWith<$Res> {
  __$$GuideStepImplCopyWithImpl(
      _$GuideStepImpl _value, $Res Function(_$GuideStepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? mediaUrl = null,
    Object? mediaType = null,
    Object? interactions = null,
  }) {
    return _then(_$GuideStepImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      interactions: null == interactions
          ? _value._interactions
          : interactions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuideStepImpl with DiagnosticableTreeMixin implements _GuideStep {
  const _$GuideStepImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.mediaUrl,
      required this.mediaType,
      required final Map<String, dynamic> interactions})
      : _interactions = interactions;

  factory _$GuideStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideStepImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String mediaUrl;
  @override
  final String mediaType;
  final Map<String, dynamic> _interactions;
  @override
  Map<String, dynamic> get interactions {
    if (_interactions is EqualUnmodifiableMapView) return _interactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_interactions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GuideStep(id: $id, title: $title, description: $description, mediaUrl: $mediaUrl, mediaType: $mediaType, interactions: $interactions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GuideStep'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('mediaUrl', mediaUrl))
      ..add(DiagnosticsProperty('mediaType', mediaType))
      ..add(DiagnosticsProperty('interactions', interactions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideStepImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            const DeepCollectionEquality()
                .equals(other._interactions, _interactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, mediaUrl,
      mediaType, const DeepCollectionEquality().hash(_interactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideStepImplCopyWith<_$GuideStepImpl> get copyWith =>
      __$$GuideStepImplCopyWithImpl<_$GuideStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideStepImplToJson(
      this,
    );
  }
}

abstract class _GuideStep implements GuideStep {
  const factory _GuideStep(
      {required final String id,
      required final String title,
      required final String description,
      required final String mediaUrl,
      required final String mediaType,
      required final Map<String, dynamic> interactions}) = _$GuideStepImpl;

  factory _GuideStep.fromJson(Map<String, dynamic> json) =
      _$GuideStepImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get mediaUrl;
  @override
  String get mediaType;
  @override
  Map<String, dynamic> get interactions;
  @override
  @JsonKey(ignore: true)
  _$$GuideStepImplCopyWith<_$GuideStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainingSimulation _$TrainingSimulationFromJson(Map<String, dynamic> json) {
  return _TrainingSimulation.fromJson(json);
}

/// @nodoc
mixin _$TrainingSimulation {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get sceneUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;
  Map<String, dynamic> get objectives => throw _privateConstructorUsedError;
  Map<String, dynamic> get progress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingSimulationCopyWith<TrainingSimulation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingSimulationCopyWith<$Res> {
  factory $TrainingSimulationCopyWith(
          TrainingSimulation value, $Res Function(TrainingSimulation) then) =
      _$TrainingSimulationCopyWithImpl<$Res, TrainingSimulation>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String sceneUrl,
      Map<String, dynamic> parameters,
      Map<String, dynamic> objectives,
      Map<String, dynamic> progress});
}

/// @nodoc
class _$TrainingSimulationCopyWithImpl<$Res, $Val extends TrainingSimulation>
    implements $TrainingSimulationCopyWith<$Res> {
  _$TrainingSimulationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? sceneUrl = null,
    Object? parameters = null,
    Object? objectives = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sceneUrl: null == sceneUrl
          ? _value.sceneUrl
          : sceneUrl // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      objectives: null == objectives
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingSimulationImplCopyWith<$Res>
    implements $TrainingSimulationCopyWith<$Res> {
  factory _$$TrainingSimulationImplCopyWith(_$TrainingSimulationImpl value,
          $Res Function(_$TrainingSimulationImpl) then) =
      __$$TrainingSimulationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String sceneUrl,
      Map<String, dynamic> parameters,
      Map<String, dynamic> objectives,
      Map<String, dynamic> progress});
}

/// @nodoc
class __$$TrainingSimulationImplCopyWithImpl<$Res>
    extends _$TrainingSimulationCopyWithImpl<$Res, _$TrainingSimulationImpl>
    implements _$$TrainingSimulationImplCopyWith<$Res> {
  __$$TrainingSimulationImplCopyWithImpl(_$TrainingSimulationImpl _value,
      $Res Function(_$TrainingSimulationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? sceneUrl = null,
    Object? parameters = null,
    Object? objectives = null,
    Object? progress = null,
  }) {
    return _then(_$TrainingSimulationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sceneUrl: null == sceneUrl
          ? _value.sceneUrl
          : sceneUrl // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      objectives: null == objectives
          ? _value._objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      progress: null == progress
          ? _value._progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingSimulationImpl
    with DiagnosticableTreeMixin
    implements _TrainingSimulation {
  const _$TrainingSimulationImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.sceneUrl,
      required final Map<String, dynamic> parameters,
      required final Map<String, dynamic> objectives,
      required final Map<String, dynamic> progress})
      : _parameters = parameters,
        _objectives = objectives,
        _progress = progress;

  factory _$TrainingSimulationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingSimulationImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String sceneUrl;
  final Map<String, dynamic> _parameters;
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  final Map<String, dynamic> _objectives;
  @override
  Map<String, dynamic> get objectives {
    if (_objectives is EqualUnmodifiableMapView) return _objectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_objectives);
  }

  final Map<String, dynamic> _progress;
  @override
  Map<String, dynamic> get progress {
    if (_progress is EqualUnmodifiableMapView) return _progress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_progress);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainingSimulation(id: $id, title: $title, description: $description, sceneUrl: $sceneUrl, parameters: $parameters, objectives: $objectives, progress: $progress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrainingSimulation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('sceneUrl', sceneUrl))
      ..add(DiagnosticsProperty('parameters', parameters))
      ..add(DiagnosticsProperty('objectives', objectives))
      ..add(DiagnosticsProperty('progress', progress));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingSimulationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sceneUrl, sceneUrl) ||
                other.sceneUrl == sceneUrl) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality()
                .equals(other._objectives, _objectives) &&
            const DeepCollectionEquality().equals(other._progress, _progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      sceneUrl,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_objectives),
      const DeepCollectionEquality().hash(_progress));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingSimulationImplCopyWith<_$TrainingSimulationImpl> get copyWith =>
      __$$TrainingSimulationImplCopyWithImpl<_$TrainingSimulationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingSimulationImplToJson(
      this,
    );
  }
}

abstract class _TrainingSimulation implements TrainingSimulation {
  const factory _TrainingSimulation(
      {required final String id,
      required final String title,
      required final String description,
      required final String sceneUrl,
      required final Map<String, dynamic> parameters,
      required final Map<String, dynamic> objectives,
      required final Map<String, dynamic> progress}) = _$TrainingSimulationImpl;

  factory _TrainingSimulation.fromJson(Map<String, dynamic> json) =
      _$TrainingSimulationImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get sceneUrl;
  @override
  Map<String, dynamic> get parameters;
  @override
  Map<String, dynamic> get objectives;
  @override
  Map<String, dynamic> get progress;
  @override
  @JsonKey(ignore: true)
  _$$TrainingSimulationImplCopyWith<_$TrainingSimulationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpotVisualization _$SpotVisualizationFromJson(Map<String, dynamic> json) {
  return _SpotVisualization.fromJson(json);
}

/// @nodoc
mixin _$SpotVisualization {
  String get id => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  Map<String, dynamic> get arMarkers => throw _privateConstructorUsedError;
  Map<String, dynamic> get overlayData => throw _privateConstructorUsedError;
  List<String> get hotspots => throw _privateConstructorUsedError;
  Map<String, dynamic> get conditions => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotVisualizationCopyWith<SpotVisualization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotVisualizationCopyWith<$Res> {
  factory $SpotVisualizationCopyWith(
          SpotVisualization value, $Res Function(SpotVisualization) then) =
      _$SpotVisualizationCopyWithImpl<$Res, SpotVisualization>;
  @useResult
  $Res call(
      {String id,
      String locationId,
      Map<String, dynamic> arMarkers,
      Map<String, dynamic> overlayData,
      List<String> hotspots,
      Map<String, dynamic> conditions,
      DateTime lastUpdated});
}

/// @nodoc
class _$SpotVisualizationCopyWithImpl<$Res, $Val extends SpotVisualization>
    implements $SpotVisualizationCopyWith<$Res> {
  _$SpotVisualizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationId = null,
    Object? arMarkers = null,
    Object? overlayData = null,
    Object? hotspots = null,
    Object? conditions = null,
    Object? lastUpdated = null,
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
      arMarkers: null == arMarkers
          ? _value.arMarkers
          : arMarkers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      overlayData: null == overlayData
          ? _value.overlayData
          : overlayData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      hotspots: null == hotspots
          ? _value.hotspots
          : hotspots // ignore: cast_nullable_to_non_nullable
              as List<String>,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotVisualizationImplCopyWith<$Res>
    implements $SpotVisualizationCopyWith<$Res> {
  factory _$$SpotVisualizationImplCopyWith(_$SpotVisualizationImpl value,
          $Res Function(_$SpotVisualizationImpl) then) =
      __$$SpotVisualizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String locationId,
      Map<String, dynamic> arMarkers,
      Map<String, dynamic> overlayData,
      List<String> hotspots,
      Map<String, dynamic> conditions,
      DateTime lastUpdated});
}

/// @nodoc
class __$$SpotVisualizationImplCopyWithImpl<$Res>
    extends _$SpotVisualizationCopyWithImpl<$Res, _$SpotVisualizationImpl>
    implements _$$SpotVisualizationImplCopyWith<$Res> {
  __$$SpotVisualizationImplCopyWithImpl(_$SpotVisualizationImpl _value,
      $Res Function(_$SpotVisualizationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationId = null,
    Object? arMarkers = null,
    Object? overlayData = null,
    Object? hotspots = null,
    Object? conditions = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$SpotVisualizationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      arMarkers: null == arMarkers
          ? _value._arMarkers
          : arMarkers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      overlayData: null == overlayData
          ? _value._overlayData
          : overlayData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      hotspots: null == hotspots
          ? _value._hotspots
          : hotspots // ignore: cast_nullable_to_non_nullable
              as List<String>,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotVisualizationImpl
    with DiagnosticableTreeMixin
    implements _SpotVisualization {
  const _$SpotVisualizationImpl(
      {required this.id,
      required this.locationId,
      required final Map<String, dynamic> arMarkers,
      required final Map<String, dynamic> overlayData,
      required final List<String> hotspots,
      required final Map<String, dynamic> conditions,
      required this.lastUpdated})
      : _arMarkers = arMarkers,
        _overlayData = overlayData,
        _hotspots = hotspots,
        _conditions = conditions;

  factory _$SpotVisualizationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotVisualizationImplFromJson(json);

  @override
  final String id;
  @override
  final String locationId;
  final Map<String, dynamic> _arMarkers;
  @override
  Map<String, dynamic> get arMarkers {
    if (_arMarkers is EqualUnmodifiableMapView) return _arMarkers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_arMarkers);
  }

  final Map<String, dynamic> _overlayData;
  @override
  Map<String, dynamic> get overlayData {
    if (_overlayData is EqualUnmodifiableMapView) return _overlayData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_overlayData);
  }

  final List<String> _hotspots;
  @override
  List<String> get hotspots {
    if (_hotspots is EqualUnmodifiableListView) return _hotspots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotspots);
  }

  final Map<String, dynamic> _conditions;
  @override
  Map<String, dynamic> get conditions {
    if (_conditions is EqualUnmodifiableMapView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conditions);
  }

  @override
  final DateTime lastUpdated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpotVisualization(id: $id, locationId: $locationId, arMarkers: $arMarkers, overlayData: $overlayData, hotspots: $hotspots, conditions: $conditions, lastUpdated: $lastUpdated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpotVisualization'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('locationId', locationId))
      ..add(DiagnosticsProperty('arMarkers', arMarkers))
      ..add(DiagnosticsProperty('overlayData', overlayData))
      ..add(DiagnosticsProperty('hotspots', hotspots))
      ..add(DiagnosticsProperty('conditions', conditions))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotVisualizationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            const DeepCollectionEquality()
                .equals(other._arMarkers, _arMarkers) &&
            const DeepCollectionEquality()
                .equals(other._overlayData, _overlayData) &&
            const DeepCollectionEquality().equals(other._hotspots, _hotspots) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      locationId,
      const DeepCollectionEquality().hash(_arMarkers),
      const DeepCollectionEquality().hash(_overlayData),
      const DeepCollectionEquality().hash(_hotspots),
      const DeepCollectionEquality().hash(_conditions),
      lastUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotVisualizationImplCopyWith<_$SpotVisualizationImpl> get copyWith =>
      __$$SpotVisualizationImplCopyWithImpl<_$SpotVisualizationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotVisualizationImplToJson(
      this,
    );
  }
}

abstract class _SpotVisualization implements SpotVisualization {
  const factory _SpotVisualization(
      {required final String id,
      required final String locationId,
      required final Map<String, dynamic> arMarkers,
      required final Map<String, dynamic> overlayData,
      required final List<String> hotspots,
      required final Map<String, dynamic> conditions,
      required final DateTime lastUpdated}) = _$SpotVisualizationImpl;

  factory _SpotVisualization.fromJson(Map<String, dynamic> json) =
      _$SpotVisualizationImpl.fromJson;

  @override
  String get id;
  @override
  String get locationId;
  @override
  Map<String, dynamic> get arMarkers;
  @override
  Map<String, dynamic> get overlayData;
  @override
  List<String> get hotspots;
  @override
  Map<String, dynamic> get conditions;
  @override
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$SpotVisualizationImplCopyWith<_$SpotVisualizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TechniquePractice _$TechniquePracticeFromJson(Map<String, dynamic> json) {
  return _TechniquePractice.fromJson(json);
}

/// @nodoc
mixin _$TechniquePractice {
  String get id => throw _privateConstructorUsedError;
  String get techniqueId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, dynamic> get motions => throw _privateConstructorUsedError;
  Map<String, dynamic> get feedback => throw _privateConstructorUsedError;
  Map<String, dynamic> get scoring => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechniquePracticeCopyWith<TechniquePractice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechniquePracticeCopyWith<$Res> {
  factory $TechniquePracticeCopyWith(
          TechniquePractice value, $Res Function(TechniquePractice) then) =
      _$TechniquePracticeCopyWithImpl<$Res, TechniquePractice>;
  @useResult
  $Res call(
      {String id,
      String techniqueId,
      String title,
      String description,
      Map<String, dynamic> motions,
      Map<String, dynamic> feedback,
      Map<String, dynamic> scoring});
}

/// @nodoc
class _$TechniquePracticeCopyWithImpl<$Res, $Val extends TechniquePractice>
    implements $TechniquePracticeCopyWith<$Res> {
  _$TechniquePracticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? techniqueId = null,
    Object? title = null,
    Object? description = null,
    Object? motions = null,
    Object? feedback = null,
    Object? scoring = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      techniqueId: null == techniqueId
          ? _value.techniqueId
          : techniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      motions: null == motions
          ? _value.motions
          : motions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      scoring: null == scoring
          ? _value.scoring
          : scoring // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TechniquePracticeImplCopyWith<$Res>
    implements $TechniquePracticeCopyWith<$Res> {
  factory _$$TechniquePracticeImplCopyWith(_$TechniquePracticeImpl value,
          $Res Function(_$TechniquePracticeImpl) then) =
      __$$TechniquePracticeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String techniqueId,
      String title,
      String description,
      Map<String, dynamic> motions,
      Map<String, dynamic> feedback,
      Map<String, dynamic> scoring});
}

/// @nodoc
class __$$TechniquePracticeImplCopyWithImpl<$Res>
    extends _$TechniquePracticeCopyWithImpl<$Res, _$TechniquePracticeImpl>
    implements _$$TechniquePracticeImplCopyWith<$Res> {
  __$$TechniquePracticeImplCopyWithImpl(_$TechniquePracticeImpl _value,
      $Res Function(_$TechniquePracticeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? techniqueId = null,
    Object? title = null,
    Object? description = null,
    Object? motions = null,
    Object? feedback = null,
    Object? scoring = null,
  }) {
    return _then(_$TechniquePracticeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      techniqueId: null == techniqueId
          ? _value.techniqueId
          : techniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      motions: null == motions
          ? _value._motions
          : motions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      feedback: null == feedback
          ? _value._feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      scoring: null == scoring
          ? _value._scoring
          : scoring // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TechniquePracticeImpl
    with DiagnosticableTreeMixin
    implements _TechniquePractice {
  const _$TechniquePracticeImpl(
      {required this.id,
      required this.techniqueId,
      required this.title,
      required this.description,
      required final Map<String, dynamic> motions,
      required final Map<String, dynamic> feedback,
      required final Map<String, dynamic> scoring})
      : _motions = motions,
        _feedback = feedback,
        _scoring = scoring;

  factory _$TechniquePracticeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TechniquePracticeImplFromJson(json);

  @override
  final String id;
  @override
  final String techniqueId;
  @override
  final String title;
  @override
  final String description;
  final Map<String, dynamic> _motions;
  @override
  Map<String, dynamic> get motions {
    if (_motions is EqualUnmodifiableMapView) return _motions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_motions);
  }

  final Map<String, dynamic> _feedback;
  @override
  Map<String, dynamic> get feedback {
    if (_feedback is EqualUnmodifiableMapView) return _feedback;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_feedback);
  }

  final Map<String, dynamic> _scoring;
  @override
  Map<String, dynamic> get scoring {
    if (_scoring is EqualUnmodifiableMapView) return _scoring;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_scoring);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TechniquePractice(id: $id, techniqueId: $techniqueId, title: $title, description: $description, motions: $motions, feedback: $feedback, scoring: $scoring)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TechniquePractice'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('techniqueId', techniqueId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('motions', motions))
      ..add(DiagnosticsProperty('feedback', feedback))
      ..add(DiagnosticsProperty('scoring', scoring));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechniquePracticeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.techniqueId, techniqueId) ||
                other.techniqueId == techniqueId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._motions, _motions) &&
            const DeepCollectionEquality().equals(other._feedback, _feedback) &&
            const DeepCollectionEquality().equals(other._scoring, _scoring));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      techniqueId,
      title,
      description,
      const DeepCollectionEquality().hash(_motions),
      const DeepCollectionEquality().hash(_feedback),
      const DeepCollectionEquality().hash(_scoring));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TechniquePracticeImplCopyWith<_$TechniquePracticeImpl> get copyWith =>
      __$$TechniquePracticeImplCopyWithImpl<_$TechniquePracticeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechniquePracticeImplToJson(
      this,
    );
  }
}

abstract class _TechniquePractice implements TechniquePractice {
  const factory _TechniquePractice(
      {required final String id,
      required final String techniqueId,
      required final String title,
      required final String description,
      required final Map<String, dynamic> motions,
      required final Map<String, dynamic> feedback,
      required final Map<String, dynamic> scoring}) = _$TechniquePracticeImpl;

  factory _TechniquePractice.fromJson(Map<String, dynamic> json) =
      _$TechniquePracticeImpl.fromJson;

  @override
  String get id;
  @override
  String get techniqueId;
  @override
  String get title;
  @override
  String get description;
  @override
  Map<String, dynamic> get motions;
  @override
  Map<String, dynamic> get feedback;
  @override
  Map<String, dynamic> get scoring;
  @override
  @JsonKey(ignore: true)
  _$$TechniquePracticeImplCopyWith<_$TechniquePracticeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
