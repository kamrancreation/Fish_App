// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_expansion_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LiveStream _$LiveStreamFromJson(Map<String, dynamic> json) {
  return _LiveStream.fromJson(json);
}

/// @nodoc
mixin _$LiveStream {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get streamUrl => throw _privateConstructorUsedError;
  bool get isLive => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;
  Map<String, dynamic> get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveStreamCopyWith<LiveStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveStreamCopyWith<$Res> {
  factory $LiveStreamCopyWith(
          LiveStream value, $Res Function(LiveStream) then) =
      _$LiveStreamCopyWithImpl<$Res, LiveStream>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String title,
      String description,
      String streamUrl,
      bool isLive,
      DateTime startTime,
      Map<String, dynamic> settings,
      Map<String, dynamic> statistics});
}

/// @nodoc
class _$LiveStreamCopyWithImpl<$Res, $Val extends LiveStream>
    implements $LiveStreamCopyWith<$Res> {
  _$LiveStreamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? description = null,
    Object? streamUrl = null,
    Object? isLive = null,
    Object? startTime = null,
    Object? settings = null,
    Object? statistics = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      streamUrl: null == streamUrl
          ? _value.streamUrl
          : streamUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveStreamImplCopyWith<$Res>
    implements $LiveStreamCopyWith<$Res> {
  factory _$$LiveStreamImplCopyWith(
          _$LiveStreamImpl value, $Res Function(_$LiveStreamImpl) then) =
      __$$LiveStreamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String title,
      String description,
      String streamUrl,
      bool isLive,
      DateTime startTime,
      Map<String, dynamic> settings,
      Map<String, dynamic> statistics});
}

/// @nodoc
class __$$LiveStreamImplCopyWithImpl<$Res>
    extends _$LiveStreamCopyWithImpl<$Res, _$LiveStreamImpl>
    implements _$$LiveStreamImplCopyWith<$Res> {
  __$$LiveStreamImplCopyWithImpl(
      _$LiveStreamImpl _value, $Res Function(_$LiveStreamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? description = null,
    Object? streamUrl = null,
    Object? isLive = null,
    Object? startTime = null,
    Object? settings = null,
    Object? statistics = null,
  }) {
    return _then(_$LiveStreamImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      streamUrl: null == streamUrl
          ? _value.streamUrl
          : streamUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      statistics: null == statistics
          ? _value._statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiveStreamImpl with DiagnosticableTreeMixin implements _LiveStream {
  const _$LiveStreamImpl(
      {required this.id,
      required this.userId,
      required this.title,
      required this.description,
      required this.streamUrl,
      required this.isLive,
      required this.startTime,
      required final Map<String, dynamic> settings,
      required final Map<String, dynamic> statistics})
      : _settings = settings,
        _statistics = statistics;

  factory _$LiveStreamImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveStreamImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String streamUrl;
  @override
  final bool isLive;
  @override
  final DateTime startTime;
  final Map<String, dynamic> _settings;
  @override
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  final Map<String, dynamic> _statistics;
  @override
  Map<String, dynamic> get statistics {
    if (_statistics is EqualUnmodifiableMapView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_statistics);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LiveStream(id: $id, userId: $userId, title: $title, description: $description, streamUrl: $streamUrl, isLive: $isLive, startTime: $startTime, settings: $settings, statistics: $statistics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LiveStream'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('streamUrl', streamUrl))
      ..add(DiagnosticsProperty('isLive', isLive))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('settings', settings))
      ..add(DiagnosticsProperty('statistics', statistics));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveStreamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.streamUrl, streamUrl) ||
                other.streamUrl == streamUrl) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      title,
      description,
      streamUrl,
      isLive,
      startTime,
      const DeepCollectionEquality().hash(_settings),
      const DeepCollectionEquality().hash(_statistics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveStreamImplCopyWith<_$LiveStreamImpl> get copyWith =>
      __$$LiveStreamImplCopyWithImpl<_$LiveStreamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveStreamImplToJson(
      this,
    );
  }
}

abstract class _LiveStream implements LiveStream {
  const factory _LiveStream(
      {required final String id,
      required final String userId,
      required final String title,
      required final String description,
      required final String streamUrl,
      required final bool isLive,
      required final DateTime startTime,
      required final Map<String, dynamic> settings,
      required final Map<String, dynamic> statistics}) = _$LiveStreamImpl;

  factory _LiveStream.fromJson(Map<String, dynamic> json) =
      _$LiveStreamImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get title;
  @override
  String get description;
  @override
  String get streamUrl;
  @override
  bool get isLive;
  @override
  DateTime get startTime;
  @override
  Map<String, dynamic> get settings;
  @override
  Map<String, dynamic> get statistics;
  @override
  @JsonKey(ignore: true)
  _$$LiveStreamImplCopyWith<_$LiveStreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VirtualTournament _$VirtualTournamentFromJson(Map<String, dynamic> json) {
  return _VirtualTournament.fromJson(json);
}

/// @nodoc
mixin _$VirtualTournament {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  Map<String, dynamic> get rules => throw _privateConstructorUsedError;
  Map<String, dynamic> get prizes => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  Map<String, dynamic> get standings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VirtualTournamentCopyWith<VirtualTournament> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualTournamentCopyWith<$Res> {
  factory $VirtualTournamentCopyWith(
          VirtualTournament value, $Res Function(VirtualTournament) then) =
      _$VirtualTournamentCopyWithImpl<$Res, VirtualTournament>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      Map<String, dynamic> rules,
      Map<String, dynamic> prizes,
      List<String> participants,
      Map<String, dynamic> standings});
}

/// @nodoc
class _$VirtualTournamentCopyWithImpl<$Res, $Val extends VirtualTournament>
    implements $VirtualTournamentCopyWith<$Res> {
  _$VirtualTournamentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? rules = null,
    Object? prizes = null,
    Object? participants = null,
    Object? standings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      prizes: null == prizes
          ? _value.prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      standings: null == standings
          ? _value.standings
          : standings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VirtualTournamentImplCopyWith<$Res>
    implements $VirtualTournamentCopyWith<$Res> {
  factory _$$VirtualTournamentImplCopyWith(_$VirtualTournamentImpl value,
          $Res Function(_$VirtualTournamentImpl) then) =
      __$$VirtualTournamentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      Map<String, dynamic> rules,
      Map<String, dynamic> prizes,
      List<String> participants,
      Map<String, dynamic> standings});
}

/// @nodoc
class __$$VirtualTournamentImplCopyWithImpl<$Res>
    extends _$VirtualTournamentCopyWithImpl<$Res, _$VirtualTournamentImpl>
    implements _$$VirtualTournamentImplCopyWith<$Res> {
  __$$VirtualTournamentImplCopyWithImpl(_$VirtualTournamentImpl _value,
      $Res Function(_$VirtualTournamentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? rules = null,
    Object? prizes = null,
    Object? participants = null,
    Object? standings = null,
  }) {
    return _then(_$VirtualTournamentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      prizes: null == prizes
          ? _value._prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      standings: null == standings
          ? _value._standings
          : standings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VirtualTournamentImpl
    with DiagnosticableTreeMixin
    implements _VirtualTournament {
  const _$VirtualTournamentImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      required final Map<String, dynamic> rules,
      required final Map<String, dynamic> prizes,
      required final List<String> participants,
      required final Map<String, dynamic> standings})
      : _rules = rules,
        _prizes = prizes,
        _participants = participants,
        _standings = standings;

  factory _$VirtualTournamentImpl.fromJson(Map<String, dynamic> json) =>
      _$$VirtualTournamentImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final Map<String, dynamic> _rules;
  @override
  Map<String, dynamic> get rules {
    if (_rules is EqualUnmodifiableMapView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rules);
  }

  final Map<String, dynamic> _prizes;
  @override
  Map<String, dynamic> get prizes {
    if (_prizes is EqualUnmodifiableMapView) return _prizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prizes);
  }

  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final Map<String, dynamic> _standings;
  @override
  Map<String, dynamic> get standings {
    if (_standings is EqualUnmodifiableMapView) return _standings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_standings);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VirtualTournament(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, rules: $rules, prizes: $prizes, participants: $participants, standings: $standings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VirtualTournament'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('rules', rules))
      ..add(DiagnosticsProperty('prizes', prizes))
      ..add(DiagnosticsProperty('participants', participants))
      ..add(DiagnosticsProperty('standings', standings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VirtualTournamentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality().equals(other._prizes, _prizes) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._standings, _standings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_rules),
      const DeepCollectionEquality().hash(_prizes),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_standings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VirtualTournamentImplCopyWith<_$VirtualTournamentImpl> get copyWith =>
      __$$VirtualTournamentImplCopyWithImpl<_$VirtualTournamentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VirtualTournamentImplToJson(
      this,
    );
  }
}

abstract class _VirtualTournament implements VirtualTournament {
  const factory _VirtualTournament(
      {required final String id,
      required final String name,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final Map<String, dynamic> rules,
      required final Map<String, dynamic> prizes,
      required final List<String> participants,
      required final Map<String, dynamic> standings}) = _$VirtualTournamentImpl;

  factory _VirtualTournament.fromJson(Map<String, dynamic> json) =
      _$VirtualTournamentImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  Map<String, dynamic> get rules;
  @override
  Map<String, dynamic> get prizes;
  @override
  List<String> get participants;
  @override
  Map<String, dynamic> get standings;
  @override
  @JsonKey(ignore: true)
  _$$VirtualTournamentImplCopyWith<_$VirtualTournamentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommunityFeature _$CommunityFeatureFromJson(Map<String, dynamic> json) {
  return _CommunityFeature.fromJson(json);
}

/// @nodoc
mixin _$CommunityFeature {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  Map<String, dynamic> get activities => throw _privateConstructorUsedError;
  DateTime get lastActivity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityFeatureCopyWith<CommunityFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityFeatureCopyWith<$Res> {
  factory $CommunityFeatureCopyWith(
          CommunityFeature value, $Res Function(CommunityFeature) then) =
      _$CommunityFeatureCopyWithImpl<$Res, CommunityFeature>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      Map<String, dynamic> configuration,
      List<String> participants,
      Map<String, dynamic> activities,
      DateTime lastActivity});
}

/// @nodoc
class _$CommunityFeatureCopyWithImpl<$Res, $Val extends CommunityFeature>
    implements $CommunityFeatureCopyWith<$Res> {
  _$CommunityFeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? configuration = null,
    Object? participants = null,
    Object? activities = null,
    Object? lastActivity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityFeatureImplCopyWith<$Res>
    implements $CommunityFeatureCopyWith<$Res> {
  factory _$$CommunityFeatureImplCopyWith(_$CommunityFeatureImpl value,
          $Res Function(_$CommunityFeatureImpl) then) =
      __$$CommunityFeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      Map<String, dynamic> configuration,
      List<String> participants,
      Map<String, dynamic> activities,
      DateTime lastActivity});
}

/// @nodoc
class __$$CommunityFeatureImplCopyWithImpl<$Res>
    extends _$CommunityFeatureCopyWithImpl<$Res, _$CommunityFeatureImpl>
    implements _$$CommunityFeatureImplCopyWith<$Res> {
  __$$CommunityFeatureImplCopyWithImpl(_$CommunityFeatureImpl _value,
      $Res Function(_$CommunityFeatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? configuration = null,
    Object? participants = null,
    Object? activities = null,
    Object? lastActivity = null,
  }) {
    return _then(_$CommunityFeatureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastActivity: null == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityFeatureImpl
    with DiagnosticableTreeMixin
    implements _CommunityFeature {
  const _$CommunityFeatureImpl(
      {required this.id,
      required this.name,
      required this.type,
      required final Map<String, dynamic> configuration,
      required final List<String> participants,
      required final Map<String, dynamic> activities,
      required this.lastActivity})
      : _configuration = configuration,
        _participants = participants,
        _activities = activities;

  factory _$CommunityFeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityFeatureImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final Map<String, dynamic> _activities;
  @override
  Map<String, dynamic> get activities {
    if (_activities is EqualUnmodifiableMapView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_activities);
  }

  @override
  final DateTime lastActivity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityFeature(id: $id, name: $name, type: $type, configuration: $configuration, participants: $participants, activities: $activities, lastActivity: $lastActivity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityFeature'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('configuration', configuration))
      ..add(DiagnosticsProperty('participants', participants))
      ..add(DiagnosticsProperty('activities', activities))
      ..add(DiagnosticsProperty('lastActivity', lastActivity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityFeatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      const DeepCollectionEquality().hash(_configuration),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_activities),
      lastActivity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityFeatureImplCopyWith<_$CommunityFeatureImpl> get copyWith =>
      __$$CommunityFeatureImplCopyWithImpl<_$CommunityFeatureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityFeatureImplToJson(
      this,
    );
  }
}

abstract class _CommunityFeature implements CommunityFeature {
  const factory _CommunityFeature(
      {required final String id,
      required final String name,
      required final String type,
      required final Map<String, dynamic> configuration,
      required final List<String> participants,
      required final Map<String, dynamic> activities,
      required final DateTime lastActivity}) = _$CommunityFeatureImpl;

  factory _CommunityFeature.fromJson(Map<String, dynamic> json) =
      _$CommunityFeatureImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  Map<String, dynamic> get configuration;
  @override
  List<String> get participants;
  @override
  Map<String, dynamic> get activities;
  @override
  DateTime get lastActivity;
  @override
  @JsonKey(ignore: true)
  _$$CommunityFeatureImplCopyWith<_$CommunityFeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupChallenge _$GroupChallengeFromJson(Map<String, dynamic> json) {
  return _GroupChallenge.fromJson(json);
}

/// @nodoc
mixin _$GroupChallenge {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  Map<String, dynamic> get objectives => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  Map<String, dynamic> get progress => throw _privateConstructorUsedError;
  Map<String, dynamic> get rewards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupChallengeCopyWith<GroupChallenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChallengeCopyWith<$Res> {
  factory $GroupChallengeCopyWith(
          GroupChallenge value, $Res Function(GroupChallenge) then) =
      _$GroupChallengeCopyWithImpl<$Res, GroupChallenge>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      Map<String, dynamic> objectives,
      List<String> participants,
      Map<String, dynamic> progress,
      Map<String, dynamic> rewards});
}

/// @nodoc
class _$GroupChallengeCopyWithImpl<$Res, $Val extends GroupChallenge>
    implements $GroupChallengeCopyWith<$Res> {
  _$GroupChallengeCopyWithImpl(this._value, this._then);

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
    Object? startDate = null,
    Object? endDate = null,
    Object? objectives = null,
    Object? participants = null,
    Object? progress = null,
    Object? rewards = null,
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      objectives: null == objectives
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupChallengeImplCopyWith<$Res>
    implements $GroupChallengeCopyWith<$Res> {
  factory _$$GroupChallengeImplCopyWith(_$GroupChallengeImpl value,
          $Res Function(_$GroupChallengeImpl) then) =
      __$$GroupChallengeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startDate,
      DateTime endDate,
      Map<String, dynamic> objectives,
      List<String> participants,
      Map<String, dynamic> progress,
      Map<String, dynamic> rewards});
}

/// @nodoc
class __$$GroupChallengeImplCopyWithImpl<$Res>
    extends _$GroupChallengeCopyWithImpl<$Res, _$GroupChallengeImpl>
    implements _$$GroupChallengeImplCopyWith<$Res> {
  __$$GroupChallengeImplCopyWithImpl(
      _$GroupChallengeImpl _value, $Res Function(_$GroupChallengeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? objectives = null,
    Object? participants = null,
    Object? progress = null,
    Object? rewards = null,
  }) {
    return _then(_$GroupChallengeImpl(
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      objectives: null == objectives
          ? _value._objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      progress: null == progress
          ? _value._progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupChallengeImpl
    with DiagnosticableTreeMixin
    implements _GroupChallenge {
  const _$GroupChallengeImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startDate,
      required this.endDate,
      required final Map<String, dynamic> objectives,
      required final List<String> participants,
      required final Map<String, dynamic> progress,
      required final Map<String, dynamic> rewards})
      : _objectives = objectives,
        _participants = participants,
        _progress = progress,
        _rewards = rewards;

  factory _$GroupChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupChallengeImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final Map<String, dynamic> _objectives;
  @override
  Map<String, dynamic> get objectives {
    if (_objectives is EqualUnmodifiableMapView) return _objectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_objectives);
  }

  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final Map<String, dynamic> _progress;
  @override
  Map<String, dynamic> get progress {
    if (_progress is EqualUnmodifiableMapView) return _progress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_progress);
  }

  final Map<String, dynamic> _rewards;
  @override
  Map<String, dynamic> get rewards {
    if (_rewards is EqualUnmodifiableMapView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rewards);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupChallenge(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, objectives: $objectives, participants: $participants, progress: $progress, rewards: $rewards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupChallenge'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('objectives', objectives))
      ..add(DiagnosticsProperty('participants', participants))
      ..add(DiagnosticsProperty('progress', progress))
      ..add(DiagnosticsProperty('rewards', rewards));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupChallengeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._objectives, _objectives) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._progress, _progress) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_objectives),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_progress),
      const DeepCollectionEquality().hash(_rewards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupChallengeImplCopyWith<_$GroupChallengeImpl> get copyWith =>
      __$$GroupChallengeImplCopyWithImpl<_$GroupChallengeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupChallengeImplToJson(
      this,
    );
  }
}

abstract class _GroupChallenge implements GroupChallenge {
  const factory _GroupChallenge(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final Map<String, dynamic> objectives,
      required final List<String> participants,
      required final Map<String, dynamic> progress,
      required final Map<String, dynamic> rewards}) = _$GroupChallengeImpl;

  factory _GroupChallenge.fromJson(Map<String, dynamic> json) =
      _$GroupChallengeImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  Map<String, dynamic> get objectives;
  @override
  List<String> get participants;
  @override
  Map<String, dynamic> get progress;
  @override
  Map<String, dynamic> get rewards;
  @override
  @JsonKey(ignore: true)
  _$$GroupChallengeImplCopyWith<_$GroupChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialReward _$SocialRewardFromJson(Map<String, dynamic> json) {
  return _SocialReward.fromJson(json);
}

/// @nodoc
mixin _$SocialReward {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  Map<String, dynamic> get criteria => throw _privateConstructorUsedError;
  Map<String, dynamic> get benefits => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialRewardCopyWith<SocialReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialRewardCopyWith<$Res> {
  factory $SocialRewardCopyWith(
          SocialReward value, $Res Function(SocialReward) then) =
      _$SocialRewardCopyWithImpl<$Res, SocialReward>;
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      String description,
      int points,
      Map<String, dynamic> criteria,
      Map<String, dynamic> benefits,
      bool isActive});
}

/// @nodoc
class _$SocialRewardCopyWithImpl<$Res, $Val extends SocialReward>
    implements $SocialRewardCopyWith<$Res> {
  _$SocialRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? description = null,
    Object? points = null,
    Object? criteria = null,
    Object? benefits = null,
    Object? isActive = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      criteria: null == criteria
          ? _value.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      benefits: null == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialRewardImplCopyWith<$Res>
    implements $SocialRewardCopyWith<$Res> {
  factory _$$SocialRewardImplCopyWith(
          _$SocialRewardImpl value, $Res Function(_$SocialRewardImpl) then) =
      __$$SocialRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      String description,
      int points,
      Map<String, dynamic> criteria,
      Map<String, dynamic> benefits,
      bool isActive});
}

/// @nodoc
class __$$SocialRewardImplCopyWithImpl<$Res>
    extends _$SocialRewardCopyWithImpl<$Res, _$SocialRewardImpl>
    implements _$$SocialRewardImplCopyWith<$Res> {
  __$$SocialRewardImplCopyWithImpl(
      _$SocialRewardImpl _value, $Res Function(_$SocialRewardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? description = null,
    Object? points = null,
    Object? criteria = null,
    Object? benefits = null,
    Object? isActive = null,
  }) {
    return _then(_$SocialRewardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      criteria: null == criteria
          ? _value._criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      benefits: null == benefits
          ? _value._benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialRewardImpl with DiagnosticableTreeMixin implements _SocialReward {
  const _$SocialRewardImpl(
      {required this.id,
      required this.type,
      required this.name,
      required this.description,
      required this.points,
      required final Map<String, dynamic> criteria,
      required final Map<String, dynamic> benefits,
      required this.isActive})
      : _criteria = criteria,
        _benefits = benefits;

  factory _$SocialRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialRewardImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String name;
  @override
  final String description;
  @override
  final int points;
  final Map<String, dynamic> _criteria;
  @override
  Map<String, dynamic> get criteria {
    if (_criteria is EqualUnmodifiableMapView) return _criteria;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_criteria);
  }

  final Map<String, dynamic> _benefits;
  @override
  Map<String, dynamic> get benefits {
    if (_benefits is EqualUnmodifiableMapView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_benefits);
  }

  @override
  final bool isActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SocialReward(id: $id, type: $type, name: $name, description: $description, points: $points, criteria: $criteria, benefits: $benefits, isActive: $isActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SocialReward'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('points', points))
      ..add(DiagnosticsProperty('criteria', criteria))
      ..add(DiagnosticsProperty('benefits', benefits))
      ..add(DiagnosticsProperty('isActive', isActive));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialRewardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality().equals(other._criteria, _criteria) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      name,
      description,
      points,
      const DeepCollectionEquality().hash(_criteria),
      const DeepCollectionEquality().hash(_benefits),
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialRewardImplCopyWith<_$SocialRewardImpl> get copyWith =>
      __$$SocialRewardImplCopyWithImpl<_$SocialRewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialRewardImplToJson(
      this,
    );
  }
}

abstract class _SocialReward implements SocialReward {
  const factory _SocialReward(
      {required final String id,
      required final String type,
      required final String name,
      required final String description,
      required final int points,
      required final Map<String, dynamic> criteria,
      required final Map<String, dynamic> benefits,
      required final bool isActive}) = _$SocialRewardImpl;

  factory _SocialReward.fromJson(Map<String, dynamic> json) =
      _$SocialRewardImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get name;
  @override
  String get description;
  @override
  int get points;
  @override
  Map<String, dynamic> get criteria;
  @override
  Map<String, dynamic> get benefits;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$SocialRewardImplCopyWith<_$SocialRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollaborativeFeature _$CollaborativeFeatureFromJson(Map<String, dynamic> json) {
  return _CollaborativeFeature.fromJson(json);
}

/// @nodoc
mixin _$CollaborativeFeature {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  List<String> get collaborators => throw _privateConstructorUsedError;
  Map<String, dynamic> get permissions => throw _privateConstructorUsedError;
  Map<String, dynamic> get status => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollaborativeFeatureCopyWith<CollaborativeFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaborativeFeatureCopyWith<$Res> {
  factory $CollaborativeFeatureCopyWith(CollaborativeFeature value,
          $Res Function(CollaborativeFeature) then) =
      _$CollaborativeFeatureCopyWithImpl<$Res, CollaborativeFeature>;
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      Map<String, dynamic> configuration,
      List<String> collaborators,
      Map<String, dynamic> permissions,
      Map<String, dynamic> status,
      DateTime lastUpdated});
}

/// @nodoc
class _$CollaborativeFeatureCopyWithImpl<$Res,
        $Val extends CollaborativeFeature>
    implements $CollaborativeFeatureCopyWith<$Res> {
  _$CollaborativeFeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? configuration = null,
    Object? collaborators = null,
    Object? permissions = null,
    Object? status = null,
    Object? lastUpdated = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      collaborators: null == collaborators
          ? _value.collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollaborativeFeatureImplCopyWith<$Res>
    implements $CollaborativeFeatureCopyWith<$Res> {
  factory _$$CollaborativeFeatureImplCopyWith(_$CollaborativeFeatureImpl value,
          $Res Function(_$CollaborativeFeatureImpl) then) =
      __$$CollaborativeFeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String name,
      Map<String, dynamic> configuration,
      List<String> collaborators,
      Map<String, dynamic> permissions,
      Map<String, dynamic> status,
      DateTime lastUpdated});
}

/// @nodoc
class __$$CollaborativeFeatureImplCopyWithImpl<$Res>
    extends _$CollaborativeFeatureCopyWithImpl<$Res, _$CollaborativeFeatureImpl>
    implements _$$CollaborativeFeatureImplCopyWith<$Res> {
  __$$CollaborativeFeatureImplCopyWithImpl(_$CollaborativeFeatureImpl _value,
      $Res Function(_$CollaborativeFeatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? configuration = null,
    Object? collaborators = null,
    Object? permissions = null,
    Object? status = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$CollaborativeFeatureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      collaborators: null == collaborators
          ? _value._collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$CollaborativeFeatureImpl
    with DiagnosticableTreeMixin
    implements _CollaborativeFeature {
  const _$CollaborativeFeatureImpl(
      {required this.id,
      required this.type,
      required this.name,
      required final Map<String, dynamic> configuration,
      required final List<String> collaborators,
      required final Map<String, dynamic> permissions,
      required final Map<String, dynamic> status,
      required this.lastUpdated})
      : _configuration = configuration,
        _collaborators = collaborators,
        _permissions = permissions,
        _status = status;

  factory _$CollaborativeFeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaborativeFeatureImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String name;
  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  final List<String> _collaborators;
  @override
  List<String> get collaborators {
    if (_collaborators is EqualUnmodifiableListView) return _collaborators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collaborators);
  }

  final Map<String, dynamic> _permissions;
  @override
  Map<String, dynamic> get permissions {
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_permissions);
  }

  final Map<String, dynamic> _status;
  @override
  Map<String, dynamic> get status {
    if (_status is EqualUnmodifiableMapView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_status);
  }

  @override
  final DateTime lastUpdated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CollaborativeFeature(id: $id, type: $type, name: $name, configuration: $configuration, collaborators: $collaborators, permissions: $permissions, status: $status, lastUpdated: $lastUpdated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CollaborativeFeature'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('configuration', configuration))
      ..add(DiagnosticsProperty('collaborators', collaborators))
      ..add(DiagnosticsProperty('permissions', permissions))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaborativeFeatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            const DeepCollectionEquality()
                .equals(other._collaborators, _collaborators) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      name,
      const DeepCollectionEquality().hash(_configuration),
      const DeepCollectionEquality().hash(_collaborators),
      const DeepCollectionEquality().hash(_permissions),
      const DeepCollectionEquality().hash(_status),
      lastUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaborativeFeatureImplCopyWith<_$CollaborativeFeatureImpl>
      get copyWith =>
          __$$CollaborativeFeatureImplCopyWithImpl<_$CollaborativeFeatureImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaborativeFeatureImplToJson(
      this,
    );
  }
}

abstract class _CollaborativeFeature implements CollaborativeFeature {
  const factory _CollaborativeFeature(
      {required final String id,
      required final String type,
      required final String name,
      required final Map<String, dynamic> configuration,
      required final List<String> collaborators,
      required final Map<String, dynamic> permissions,
      required final Map<String, dynamic> status,
      required final DateTime lastUpdated}) = _$CollaborativeFeatureImpl;

  factory _CollaborativeFeature.fromJson(Map<String, dynamic> json) =
      _$CollaborativeFeatureImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get name;
  @override
  Map<String, dynamic> get configuration;
  @override
  List<String> get collaborators;
  @override
  Map<String, dynamic> get permissions;
  @override
  Map<String, dynamic> get status;
  @override
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$CollaborativeFeatureImplCopyWith<_$CollaborativeFeatureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
