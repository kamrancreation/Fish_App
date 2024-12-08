// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ar_tutorial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ARTutorial _$ARTutorialFromJson(Map<String, dynamic> json) {
  return _ARTutorial.fromJson(json);
}

/// @nodoc
mixin _$ARTutorial {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<TutorialStep> get steps => throw _privateConstructorUsedError;
  List<ARMarker> get markers => throw _privateConstructorUsedError;
  List<Animation> get animations => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get difficulty => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  List<String>? get requirements => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ARTutorialCopyWith<ARTutorial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ARTutorialCopyWith<$Res> {
  factory $ARTutorialCopyWith(
          ARTutorial value, $Res Function(ARTutorial) then) =
      _$ARTutorialCopyWithImpl<$Res, ARTutorial>;
  @useResult
  $Res call(
      {String id,
      String title,
      List<TutorialStep> steps,
      List<ARMarker> markers,
      List<Animation> animations,
      String? description,
      String? difficulty,
      String? duration,
      List<String>? requirements,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ARTutorialCopyWithImpl<$Res, $Val extends ARTutorial>
    implements $ARTutorialCopyWith<$Res> {
  _$ARTutorialCopyWithImpl(this._value, this._then);

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
    Object? markers = null,
    Object? animations = null,
    Object? description = freezed,
    Object? difficulty = freezed,
    Object? duration = freezed,
    Object? requirements = freezed,
    Object? metadata = freezed,
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
              as List<TutorialStep>,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<ARMarker>,
      animations: null == animations
          ? _value.animations
          : animations // ignore: cast_nullable_to_non_nullable
              as List<Animation>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      requirements: freezed == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ARTutorialImplCopyWith<$Res>
    implements $ARTutorialCopyWith<$Res> {
  factory _$$ARTutorialImplCopyWith(
          _$ARTutorialImpl value, $Res Function(_$ARTutorialImpl) then) =
      __$$ARTutorialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      List<TutorialStep> steps,
      List<ARMarker> markers,
      List<Animation> animations,
      String? description,
      String? difficulty,
      String? duration,
      List<String>? requirements,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ARTutorialImplCopyWithImpl<$Res>
    extends _$ARTutorialCopyWithImpl<$Res, _$ARTutorialImpl>
    implements _$$ARTutorialImplCopyWith<$Res> {
  __$$ARTutorialImplCopyWithImpl(
      _$ARTutorialImpl _value, $Res Function(_$ARTutorialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? steps = null,
    Object? markers = null,
    Object? animations = null,
    Object? description = freezed,
    Object? difficulty = freezed,
    Object? duration = freezed,
    Object? requirements = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ARTutorialImpl(
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
              as List<TutorialStep>,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<ARMarker>,
      animations: null == animations
          ? _value._animations
          : animations // ignore: cast_nullable_to_non_nullable
              as List<Animation>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      requirements: freezed == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ARTutorialImpl implements _ARTutorial {
  const _$ARTutorialImpl(
      {required this.id,
      required this.title,
      required final List<TutorialStep> steps,
      required final List<ARMarker> markers,
      required final List<Animation> animations,
      this.description,
      this.difficulty,
      this.duration,
      final List<String>? requirements,
      final Map<String, dynamic>? metadata})
      : _steps = steps,
        _markers = markers,
        _animations = animations,
        _requirements = requirements,
        _metadata = metadata;

  factory _$ARTutorialImpl.fromJson(Map<String, dynamic> json) =>
      _$$ARTutorialImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<TutorialStep> _steps;
  @override
  List<TutorialStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final List<ARMarker> _markers;
  @override
  List<ARMarker> get markers {
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markers);
  }

  final List<Animation> _animations;
  @override
  List<Animation> get animations {
    if (_animations is EqualUnmodifiableListView) return _animations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animations);
  }

  @override
  final String? description;
  @override
  final String? difficulty;
  @override
  final String? duration;
  final List<String>? _requirements;
  @override
  List<String>? get requirements {
    final value = _requirements;
    if (value == null) return null;
    if (_requirements is EqualUnmodifiableListView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'ARTutorial(id: $id, title: $title, steps: $steps, markers: $markers, animations: $animations, description: $description, difficulty: $difficulty, duration: $duration, requirements: $requirements, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ARTutorialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            const DeepCollectionEquality()
                .equals(other._animations, _animations) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(_markers),
      const DeepCollectionEquality().hash(_animations),
      description,
      difficulty,
      duration,
      const DeepCollectionEquality().hash(_requirements),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ARTutorialImplCopyWith<_$ARTutorialImpl> get copyWith =>
      __$$ARTutorialImplCopyWithImpl<_$ARTutorialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ARTutorialImplToJson(
      this,
    );
  }
}

abstract class _ARTutorial implements ARTutorial {
  const factory _ARTutorial(
      {required final String id,
      required final String title,
      required final List<TutorialStep> steps,
      required final List<ARMarker> markers,
      required final List<Animation> animations,
      final String? description,
      final String? difficulty,
      final String? duration,
      final List<String>? requirements,
      final Map<String, dynamic>? metadata}) = _$ARTutorialImpl;

  factory _ARTutorial.fromJson(Map<String, dynamic> json) =
      _$ARTutorialImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<TutorialStep> get steps;
  @override
  List<ARMarker> get markers;
  @override
  List<Animation> get animations;
  @override
  String? get description;
  @override
  String? get difficulty;
  @override
  String? get duration;
  @override
  List<String>? get requirements;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ARTutorialImplCopyWith<_$ARTutorialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TutorialStep _$TutorialStepFromJson(Map<String, dynamic> json) {
  return _TutorialStep.fromJson(json);
}

/// @nodoc
mixin _$TutorialStep {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ARMarker> get markers => throw _privateConstructorUsedError;
  List<Animation> get animations => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get audioUrl => throw _privateConstructorUsedError;
  List<String>? get tips => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialStepCopyWith<TutorialStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialStepCopyWith<$Res> {
  factory $TutorialStepCopyWith(
          TutorialStep value, $Res Function(TutorialStep) then) =
      _$TutorialStepCopyWithImpl<$Res, TutorialStep>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<ARMarker> markers,
      List<Animation> animations,
      String? videoUrl,
      String? audioUrl,
      List<String>? tips,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$TutorialStepCopyWithImpl<$Res, $Val extends TutorialStep>
    implements $TutorialStepCopyWith<$Res> {
  _$TutorialStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? markers = null,
    Object? animations = null,
    Object? videoUrl = freezed,
    Object? audioUrl = freezed,
    Object? tips = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<ARMarker>,
      animations: null == animations
          ? _value.animations
          : animations // ignore: cast_nullable_to_non_nullable
              as List<Animation>,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tips: freezed == tips
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialStepImplCopyWith<$Res>
    implements $TutorialStepCopyWith<$Res> {
  factory _$$TutorialStepImplCopyWith(
          _$TutorialStepImpl value, $Res Function(_$TutorialStepImpl) then) =
      __$$TutorialStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<ARMarker> markers,
      List<Animation> animations,
      String? videoUrl,
      String? audioUrl,
      List<String>? tips,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$TutorialStepImplCopyWithImpl<$Res>
    extends _$TutorialStepCopyWithImpl<$Res, _$TutorialStepImpl>
    implements _$$TutorialStepImplCopyWith<$Res> {
  __$$TutorialStepImplCopyWithImpl(
      _$TutorialStepImpl _value, $Res Function(_$TutorialStepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? markers = null,
    Object? animations = null,
    Object? videoUrl = freezed,
    Object? audioUrl = freezed,
    Object? tips = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$TutorialStepImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<ARMarker>,
      animations: null == animations
          ? _value._animations
          : animations // ignore: cast_nullable_to_non_nullable
              as List<Animation>,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tips: freezed == tips
          ? _value._tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorialStepImpl implements _TutorialStep {
  const _$TutorialStepImpl(
      {required this.title,
      required this.description,
      required final List<ARMarker> markers,
      required final List<Animation> animations,
      this.videoUrl,
      this.audioUrl,
      final List<String>? tips,
      final Map<String, dynamic>? metadata})
      : _markers = markers,
        _animations = animations,
        _tips = tips,
        _metadata = metadata;

  factory _$TutorialStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorialStepImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  final List<ARMarker> _markers;
  @override
  List<ARMarker> get markers {
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markers);
  }

  final List<Animation> _animations;
  @override
  List<Animation> get animations {
    if (_animations is EqualUnmodifiableListView) return _animations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animations);
  }

  @override
  final String? videoUrl;
  @override
  final String? audioUrl;
  final List<String>? _tips;
  @override
  List<String>? get tips {
    final value = _tips;
    if (value == null) return null;
    if (_tips is EqualUnmodifiableListView) return _tips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'TutorialStep(title: $title, description: $description, markers: $markers, animations: $animations, videoUrl: $videoUrl, audioUrl: $audioUrl, tips: $tips, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialStepImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            const DeepCollectionEquality()
                .equals(other._animations, _animations) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            const DeepCollectionEquality().equals(other._tips, _tips) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_markers),
      const DeepCollectionEquality().hash(_animations),
      videoUrl,
      audioUrl,
      const DeepCollectionEquality().hash(_tips),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialStepImplCopyWith<_$TutorialStepImpl> get copyWith =>
      __$$TutorialStepImplCopyWithImpl<_$TutorialStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialStepImplToJson(
      this,
    );
  }
}

abstract class _TutorialStep implements TutorialStep {
  const factory _TutorialStep(
      {required final String title,
      required final String description,
      required final List<ARMarker> markers,
      required final List<Animation> animations,
      final String? videoUrl,
      final String? audioUrl,
      final List<String>? tips,
      final Map<String, dynamic>? metadata}) = _$TutorialStepImpl;

  factory _TutorialStep.fromJson(Map<String, dynamic> json) =
      _$TutorialStepImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  List<ARMarker> get markers;
  @override
  List<Animation> get animations;
  @override
  String? get videoUrl;
  @override
  String? get audioUrl;
  @override
  List<String>? get tips;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$TutorialStepImplCopyWith<_$TutorialStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Animation _$AnimationFromJson(Map<String, dynamic> json) {
  return _Animation.fromJson(json);
}

/// @nodoc
mixin _$Animation {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  Map<String, dynamic> get keyframes => throw _privateConstructorUsedError;
  String? get target => throw _privateConstructorUsedError;
  String? get easing => throw _privateConstructorUsedError;
  bool? get loop => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimationCopyWith<Animation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimationCopyWith<$Res> {
  factory $AnimationCopyWith(Animation value, $Res Function(Animation) then) =
      _$AnimationCopyWithImpl<$Res, Animation>;
  @useResult
  $Res call(
      {String id,
      String type,
      Duration duration,
      Map<String, dynamic> keyframes,
      String? target,
      String? easing,
      bool? loop,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$AnimationCopyWithImpl<$Res, $Val extends Animation>
    implements $AnimationCopyWith<$Res> {
  _$AnimationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? duration = null,
    Object? keyframes = null,
    Object? target = freezed,
    Object? easing = freezed,
    Object? loop = freezed,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      keyframes: null == keyframes
          ? _value.keyframes
          : keyframes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      easing: freezed == easing
          ? _value.easing
          : easing // ignore: cast_nullable_to_non_nullable
              as String?,
      loop: freezed == loop
          ? _value.loop
          : loop // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimationImplCopyWith<$Res>
    implements $AnimationCopyWith<$Res> {
  factory _$$AnimationImplCopyWith(
          _$AnimationImpl value, $Res Function(_$AnimationImpl) then) =
      __$$AnimationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      Duration duration,
      Map<String, dynamic> keyframes,
      String? target,
      String? easing,
      bool? loop,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$AnimationImplCopyWithImpl<$Res>
    extends _$AnimationCopyWithImpl<$Res, _$AnimationImpl>
    implements _$$AnimationImplCopyWith<$Res> {
  __$$AnimationImplCopyWithImpl(
      _$AnimationImpl _value, $Res Function(_$AnimationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? duration = null,
    Object? keyframes = null,
    Object? target = freezed,
    Object? easing = freezed,
    Object? loop = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$AnimationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      keyframes: null == keyframes
          ? _value._keyframes
          : keyframes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      easing: freezed == easing
          ? _value.easing
          : easing // ignore: cast_nullable_to_non_nullable
              as String?,
      loop: freezed == loop
          ? _value.loop
          : loop // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimationImpl implements _Animation {
  const _$AnimationImpl(
      {required this.id,
      required this.type,
      required this.duration,
      required final Map<String, dynamic> keyframes,
      this.target,
      this.easing,
      this.loop,
      final Map<String, dynamic>? metadata})
      : _keyframes = keyframes,
        _metadata = metadata;

  factory _$AnimationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimationImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final Duration duration;
  final Map<String, dynamic> _keyframes;
  @override
  Map<String, dynamic> get keyframes {
    if (_keyframes is EqualUnmodifiableMapView) return _keyframes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_keyframes);
  }

  @override
  final String? target;
  @override
  final String? easing;
  @override
  final bool? loop;
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
    return 'Animation(id: $id, type: $type, duration: $duration, keyframes: $keyframes, target: $target, easing: $easing, loop: $loop, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._keyframes, _keyframes) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.easing, easing) || other.easing == easing) &&
            (identical(other.loop, loop) || other.loop == loop) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      duration,
      const DeepCollectionEquality().hash(_keyframes),
      target,
      easing,
      loop,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimationImplCopyWith<_$AnimationImpl> get copyWith =>
      __$$AnimationImplCopyWithImpl<_$AnimationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimationImplToJson(
      this,
    );
  }
}

abstract class _Animation implements Animation {
  const factory _Animation(
      {required final String id,
      required final String type,
      required final Duration duration,
      required final Map<String, dynamic> keyframes,
      final String? target,
      final String? easing,
      final bool? loop,
      final Map<String, dynamic>? metadata}) = _$AnimationImpl;

  factory _Animation.fromJson(Map<String, dynamic> json) =
      _$AnimationImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  Duration get duration;
  @override
  Map<String, dynamic> get keyframes;
  @override
  String? get target;
  @override
  String? get easing;
  @override
  bool? get loop;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AnimationImplCopyWith<_$AnimationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
