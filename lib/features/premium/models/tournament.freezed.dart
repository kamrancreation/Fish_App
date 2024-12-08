// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tournament _$TournamentFromJson(Map<String, dynamic> json) {
  return _Tournament.fromJson(json);
}

/// @nodoc
mixin _$Tournament {
  String get name => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  List<String> get rules => throw _privateConstructorUsedError;
  Map<String, dynamic> get prizes => throw _privateConstructorUsedError;
  List<String> get sponsors => throw _privateConstructorUsedError;
  Map<String, dynamic> get verificationRules =>
      throw _privateConstructorUsedError;
  TournamentStatus get status => throw _privateConstructorUsedError;
  List<TournamentEntry> get entries => throw _privateConstructorUsedError;
  List<String> get streams => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get bannerImage => throw _privateConstructorUsedError;
  Map<String, dynamic>? get sponsorDetails =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get certificationData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TournamentCopyWith<Tournament> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentCopyWith<$Res> {
  factory $TournamentCopyWith(
          Tournament value, $Res Function(Tournament) then) =
      _$TournamentCopyWithImpl<$Res, Tournament>;
  @useResult
  $Res call(
      {String name,
      DateTime startDate,
      DateTime endDate,
      List<String> rules,
      Map<String, dynamic> prizes,
      List<String> sponsors,
      Map<String, dynamic> verificationRules,
      TournamentStatus status,
      List<TournamentEntry> entries,
      List<String> streams,
      String? description,
      String? bannerImage,
      Map<String, dynamic>? sponsorDetails,
      Map<String, dynamic>? certificationData});
}

/// @nodoc
class _$TournamentCopyWithImpl<$Res, $Val extends Tournament>
    implements $TournamentCopyWith<$Res> {
  _$TournamentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? rules = null,
    Object? prizes = null,
    Object? sponsors = null,
    Object? verificationRules = null,
    Object? status = null,
    Object? entries = null,
    Object? streams = null,
    Object? description = freezed,
    Object? bannerImage = freezed,
    Object? sponsorDetails = freezed,
    Object? certificationData = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
              as List<String>,
      prizes: null == prizes
          ? _value.prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      sponsors: null == sponsors
          ? _value.sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      verificationRules: null == verificationRules
          ? _value.verificationRules
          : verificationRules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TournamentStatus,
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<TournamentEntry>,
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImage: freezed == bannerImage
          ? _value.bannerImage
          : bannerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sponsorDetails: freezed == sponsorDetails
          ? _value.sponsorDetails
          : sponsorDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      certificationData: freezed == certificationData
          ? _value.certificationData
          : certificationData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TournamentImplCopyWith<$Res>
    implements $TournamentCopyWith<$Res> {
  factory _$$TournamentImplCopyWith(
          _$TournamentImpl value, $Res Function(_$TournamentImpl) then) =
      __$$TournamentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime startDate,
      DateTime endDate,
      List<String> rules,
      Map<String, dynamic> prizes,
      List<String> sponsors,
      Map<String, dynamic> verificationRules,
      TournamentStatus status,
      List<TournamentEntry> entries,
      List<String> streams,
      String? description,
      String? bannerImage,
      Map<String, dynamic>? sponsorDetails,
      Map<String, dynamic>? certificationData});
}

/// @nodoc
class __$$TournamentImplCopyWithImpl<$Res>
    extends _$TournamentCopyWithImpl<$Res, _$TournamentImpl>
    implements _$$TournamentImplCopyWith<$Res> {
  __$$TournamentImplCopyWithImpl(
      _$TournamentImpl _value, $Res Function(_$TournamentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? rules = null,
    Object? prizes = null,
    Object? sponsors = null,
    Object? verificationRules = null,
    Object? status = null,
    Object? entries = null,
    Object? streams = null,
    Object? description = freezed,
    Object? bannerImage = freezed,
    Object? sponsorDetails = freezed,
    Object? certificationData = freezed,
  }) {
    return _then(_$TournamentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
              as List<String>,
      prizes: null == prizes
          ? _value._prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      sponsors: null == sponsors
          ? _value._sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      verificationRules: null == verificationRules
          ? _value._verificationRules
          : verificationRules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TournamentStatus,
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<TournamentEntry>,
      streams: null == streams
          ? _value._streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImage: freezed == bannerImage
          ? _value.bannerImage
          : bannerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sponsorDetails: freezed == sponsorDetails
          ? _value._sponsorDetails
          : sponsorDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      certificationData: freezed == certificationData
          ? _value._certificationData
          : certificationData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TournamentImpl implements _Tournament {
  const _$TournamentImpl(
      {required this.name,
      required this.startDate,
      required this.endDate,
      required final List<String> rules,
      required final Map<String, dynamic> prizes,
      required final List<String> sponsors,
      required final Map<String, dynamic> verificationRules,
      required this.status,
      required final List<TournamentEntry> entries,
      required final List<String> streams,
      this.description,
      this.bannerImage,
      final Map<String, dynamic>? sponsorDetails,
      final Map<String, dynamic>? certificationData})
      : _rules = rules,
        _prizes = prizes,
        _sponsors = sponsors,
        _verificationRules = verificationRules,
        _entries = entries,
        _streams = streams,
        _sponsorDetails = sponsorDetails,
        _certificationData = certificationData;

  factory _$TournamentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TournamentImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final List<String> _rules;
  @override
  List<String> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  final Map<String, dynamic> _prizes;
  @override
  Map<String, dynamic> get prizes {
    if (_prizes is EqualUnmodifiableMapView) return _prizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prizes);
  }

  final List<String> _sponsors;
  @override
  List<String> get sponsors {
    if (_sponsors is EqualUnmodifiableListView) return _sponsors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sponsors);
  }

  final Map<String, dynamic> _verificationRules;
  @override
  Map<String, dynamic> get verificationRules {
    if (_verificationRules is EqualUnmodifiableMapView)
      return _verificationRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_verificationRules);
  }

  @override
  final TournamentStatus status;
  final List<TournamentEntry> _entries;
  @override
  List<TournamentEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  final List<String> _streams;
  @override
  List<String> get streams {
    if (_streams is EqualUnmodifiableListView) return _streams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streams);
  }

  @override
  final String? description;
  @override
  final String? bannerImage;
  final Map<String, dynamic>? _sponsorDetails;
  @override
  Map<String, dynamic>? get sponsorDetails {
    final value = _sponsorDetails;
    if (value == null) return null;
    if (_sponsorDetails is EqualUnmodifiableMapView) return _sponsorDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _certificationData;
  @override
  Map<String, dynamic>? get certificationData {
    final value = _certificationData;
    if (value == null) return null;
    if (_certificationData is EqualUnmodifiableMapView)
      return _certificationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Tournament(name: $name, startDate: $startDate, endDate: $endDate, rules: $rules, prizes: $prizes, sponsors: $sponsors, verificationRules: $verificationRules, status: $status, entries: $entries, streams: $streams, description: $description, bannerImage: $bannerImage, sponsorDetails: $sponsorDetails, certificationData: $certificationData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TournamentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality().equals(other._prizes, _prizes) &&
            const DeepCollectionEquality().equals(other._sponsors, _sponsors) &&
            const DeepCollectionEquality()
                .equals(other._verificationRules, _verificationRules) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            const DeepCollectionEquality().equals(other._streams, _streams) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bannerImage, bannerImage) ||
                other.bannerImage == bannerImage) &&
            const DeepCollectionEquality()
                .equals(other._sponsorDetails, _sponsorDetails) &&
            const DeepCollectionEquality()
                .equals(other._certificationData, _certificationData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_rules),
      const DeepCollectionEquality().hash(_prizes),
      const DeepCollectionEquality().hash(_sponsors),
      const DeepCollectionEquality().hash(_verificationRules),
      status,
      const DeepCollectionEquality().hash(_entries),
      const DeepCollectionEquality().hash(_streams),
      description,
      bannerImage,
      const DeepCollectionEquality().hash(_sponsorDetails),
      const DeepCollectionEquality().hash(_certificationData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TournamentImplCopyWith<_$TournamentImpl> get copyWith =>
      __$$TournamentImplCopyWithImpl<_$TournamentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TournamentImplToJson(
      this,
    );
  }
}

abstract class _Tournament implements Tournament {
  const factory _Tournament(
      {required final String name,
      required final DateTime startDate,
      required final DateTime endDate,
      required final List<String> rules,
      required final Map<String, dynamic> prizes,
      required final List<String> sponsors,
      required final Map<String, dynamic> verificationRules,
      required final TournamentStatus status,
      required final List<TournamentEntry> entries,
      required final List<String> streams,
      final String? description,
      final String? bannerImage,
      final Map<String, dynamic>? sponsorDetails,
      final Map<String, dynamic>? certificationData}) = _$TournamentImpl;

  factory _Tournament.fromJson(Map<String, dynamic> json) =
      _$TournamentImpl.fromJson;

  @override
  String get name;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  List<String> get rules;
  @override
  Map<String, dynamic> get prizes;
  @override
  List<String> get sponsors;
  @override
  Map<String, dynamic> get verificationRules;
  @override
  TournamentStatus get status;
  @override
  List<TournamentEntry> get entries;
  @override
  List<String> get streams;
  @override
  String? get description;
  @override
  String? get bannerImage;
  @override
  Map<String, dynamic>? get sponsorDetails;
  @override
  Map<String, dynamic>? get certificationData;
  @override
  @JsonKey(ignore: true)
  _$$TournamentImplCopyWith<_$TournamentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
