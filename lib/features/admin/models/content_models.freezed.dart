// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentItem _$ContentItemFromJson(Map<String, dynamic> json) {
  return _ContentItem.fromJson(json);
}

/// @nodoc
mixin _$ContentItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  ContentStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String>? get mediaUrls => throw _privateConstructorUsedError;
  DateTime? get lastModified => throw _privateConstructorUsedError;
  String? get modifiedBy => throw _privateConstructorUsedError;
  ContentVisibility? get visibility => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentItemCopyWith<ContentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentItemCopyWith<$Res> {
  factory $ContentItemCopyWith(
          ContentItem value, $Res Function(ContentItem) then) =
      _$ContentItemCopyWithImpl<$Res, ContentItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      String type,
      String creatorId,
      DateTime createdAt,
      ContentStatus status,
      Map<String, dynamic> metadata,
      String? description,
      List<String>? tags,
      List<String>? mediaUrls,
      DateTime? lastModified,
      String? modifiedBy,
      ContentVisibility? visibility});
}

/// @nodoc
class _$ContentItemCopyWithImpl<$Res, $Val extends ContentItem>
    implements $ContentItemCopyWith<$Res> {
  _$ContentItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? creatorId = null,
    Object? createdAt = null,
    Object? status = null,
    Object? metadata = null,
    Object? description = freezed,
    Object? tags = freezed,
    Object? mediaUrls = freezed,
    Object? lastModified = freezed,
    Object? modifiedBy = freezed,
    Object? visibility = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContentStatus,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mediaUrls: freezed == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ContentVisibility?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentItemImplCopyWith<$Res>
    implements $ContentItemCopyWith<$Res> {
  factory _$$ContentItemImplCopyWith(
          _$ContentItemImpl value, $Res Function(_$ContentItemImpl) then) =
      __$$ContentItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String type,
      String creatorId,
      DateTime createdAt,
      ContentStatus status,
      Map<String, dynamic> metadata,
      String? description,
      List<String>? tags,
      List<String>? mediaUrls,
      DateTime? lastModified,
      String? modifiedBy,
      ContentVisibility? visibility});
}

/// @nodoc
class __$$ContentItemImplCopyWithImpl<$Res>
    extends _$ContentItemCopyWithImpl<$Res, _$ContentItemImpl>
    implements _$$ContentItemImplCopyWith<$Res> {
  __$$ContentItemImplCopyWithImpl(
      _$ContentItemImpl _value, $Res Function(_$ContentItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? creatorId = null,
    Object? createdAt = null,
    Object? status = null,
    Object? metadata = null,
    Object? description = freezed,
    Object? tags = freezed,
    Object? mediaUrls = freezed,
    Object? lastModified = freezed,
    Object? modifiedBy = freezed,
    Object? visibility = freezed,
  }) {
    return _then(_$ContentItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContentStatus,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mediaUrls: freezed == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifiedBy: freezed == modifiedBy
          ? _value.modifiedBy
          : modifiedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ContentVisibility?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentItemImpl implements _ContentItem {
  const _$ContentItemImpl(
      {required this.id,
      required this.title,
      required this.type,
      required this.creatorId,
      required this.createdAt,
      required this.status,
      required final Map<String, dynamic> metadata,
      this.description,
      final List<String>? tags,
      final List<String>? mediaUrls,
      this.lastModified,
      this.modifiedBy,
      this.visibility})
      : _metadata = metadata,
        _tags = tags,
        _mediaUrls = mediaUrls;

  factory _$ContentItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentItemImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String type;
  @override
  final String creatorId;
  @override
  final DateTime createdAt;
  @override
  final ContentStatus status;
  final Map<String, dynamic> _metadata;
  @override
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  final String? description;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _mediaUrls;
  @override
  List<String>? get mediaUrls {
    final value = _mediaUrls;
    if (value == null) return null;
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? lastModified;
  @override
  final String? modifiedBy;
  @override
  final ContentVisibility? visibility;

  @override
  String toString() {
    return 'ContentItem(id: $id, title: $title, type: $type, creatorId: $creatorId, createdAt: $createdAt, status: $status, metadata: $metadata, description: $description, tags: $tags, mediaUrls: $mediaUrls, lastModified: $lastModified, modifiedBy: $modifiedBy, visibility: $visibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.modifiedBy, modifiedBy) ||
                other.modifiedBy == modifiedBy) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      type,
      creatorId,
      createdAt,
      status,
      const DeepCollectionEquality().hash(_metadata),
      description,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_mediaUrls),
      lastModified,
      modifiedBy,
      visibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentItemImplCopyWith<_$ContentItemImpl> get copyWith =>
      __$$ContentItemImplCopyWithImpl<_$ContentItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentItemImplToJson(
      this,
    );
  }
}

abstract class _ContentItem implements ContentItem {
  const factory _ContentItem(
      {required final String id,
      required final String title,
      required final String type,
      required final String creatorId,
      required final DateTime createdAt,
      required final ContentStatus status,
      required final Map<String, dynamic> metadata,
      final String? description,
      final List<String>? tags,
      final List<String>? mediaUrls,
      final DateTime? lastModified,
      final String? modifiedBy,
      final ContentVisibility? visibility}) = _$ContentItemImpl;

  factory _ContentItem.fromJson(Map<String, dynamic> json) =
      _$ContentItemImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get type;
  @override
  String get creatorId;
  @override
  DateTime get createdAt;
  @override
  ContentStatus get status;
  @override
  Map<String, dynamic> get metadata;
  @override
  String? get description;
  @override
  List<String>? get tags;
  @override
  List<String>? get mediaUrls;
  @override
  DateTime? get lastModified;
  @override
  String? get modifiedBy;
  @override
  ContentVisibility? get visibility;
  @override
  @JsonKey(ignore: true)
  _$$ContentItemImplCopyWith<_$ContentItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tournament _$TournamentFromJson(Map<String, dynamic> json) {
  return _Tournament.fromJson(json);
}

/// @nodoc
mixin _$Tournament {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  TournamentStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get rules => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  List<String> get moderators => throw _privateConstructorUsedError;
  String? get sponsorId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get prizes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get leaderboard => throw _privateConstructorUsedError;
  List<String>? get mediaUrls => throw _privateConstructorUsedError;
  Map<String, dynamic>? get settings => throw _privateConstructorUsedError;

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
      {String id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      TournamentStatus status,
      Map<String, dynamic> rules,
      List<String> participants,
      List<String> moderators,
      String? sponsorId,
      Map<String, dynamic>? prizes,
      Map<String, dynamic>? leaderboard,
      List<String>? mediaUrls,
      Map<String, dynamic>? settings});
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
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? rules = null,
    Object? participants = null,
    Object? moderators = null,
    Object? sponsorId = freezed,
    Object? prizes = freezed,
    Object? leaderboard = freezed,
    Object? mediaUrls = freezed,
    Object? settings = freezed,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TournamentStatus,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderators: null == moderators
          ? _value.moderators
          : moderators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sponsorId: freezed == sponsorId
          ? _value.sponsorId
          : sponsorId // ignore: cast_nullable_to_non_nullable
              as String?,
      prizes: freezed == prizes
          ? _value.prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      leaderboard: freezed == leaderboard
          ? _value.leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      mediaUrls: freezed == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
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
      {String id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      TournamentStatus status,
      Map<String, dynamic> rules,
      List<String> participants,
      List<String> moderators,
      String? sponsorId,
      Map<String, dynamic>? prizes,
      Map<String, dynamic>? leaderboard,
      List<String>? mediaUrls,
      Map<String, dynamic>? settings});
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
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? rules = null,
    Object? participants = null,
    Object? moderators = null,
    Object? sponsorId = freezed,
    Object? prizes = freezed,
    Object? leaderboard = freezed,
    Object? mediaUrls = freezed,
    Object? settings = freezed,
  }) {
    return _then(_$TournamentImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TournamentStatus,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moderators: null == moderators
          ? _value._moderators
          : moderators // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sponsorId: freezed == sponsorId
          ? _value.sponsorId
          : sponsorId // ignore: cast_nullable_to_non_nullable
              as String?,
      prizes: freezed == prizes
          ? _value._prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      leaderboard: freezed == leaderboard
          ? _value._leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      mediaUrls: freezed == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      settings: freezed == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TournamentImpl implements _Tournament {
  const _$TournamentImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.status,
      required final Map<String, dynamic> rules,
      required final List<String> participants,
      required final List<String> moderators,
      this.sponsorId,
      final Map<String, dynamic>? prizes,
      final Map<String, dynamic>? leaderboard,
      final List<String>? mediaUrls,
      final Map<String, dynamic>? settings})
      : _rules = rules,
        _participants = participants,
        _moderators = moderators,
        _prizes = prizes,
        _leaderboard = leaderboard,
        _mediaUrls = mediaUrls,
        _settings = settings;

  factory _$TournamentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TournamentImplFromJson(json);

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
  @override
  final TournamentStatus status;
  final Map<String, dynamic> _rules;
  @override
  Map<String, dynamic> get rules {
    if (_rules is EqualUnmodifiableMapView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rules);
  }

  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<String> _moderators;
  @override
  List<String> get moderators {
    if (_moderators is EqualUnmodifiableListView) return _moderators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderators);
  }

  @override
  final String? sponsorId;
  final Map<String, dynamic>? _prizes;
  @override
  Map<String, dynamic>? get prizes {
    final value = _prizes;
    if (value == null) return null;
    if (_prizes is EqualUnmodifiableMapView) return _prizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _leaderboard;
  @override
  Map<String, dynamic>? get leaderboard {
    final value = _leaderboard;
    if (value == null) return null;
    if (_leaderboard is EqualUnmodifiableMapView) return _leaderboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _mediaUrls;
  @override
  List<String>? get mediaUrls {
    final value = _mediaUrls;
    if (value == null) return null;
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _settings;
  @override
  Map<String, dynamic>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Tournament(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, status: $status, rules: $rules, participants: $participants, moderators: $moderators, sponsorId: $sponsorId, prizes: $prizes, leaderboard: $leaderboard, mediaUrls: $mediaUrls, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TournamentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._moderators, _moderators) &&
            (identical(other.sponsorId, sponsorId) ||
                other.sponsorId == sponsorId) &&
            const DeepCollectionEquality().equals(other._prizes, _prizes) &&
            const DeepCollectionEquality()
                .equals(other._leaderboard, _leaderboard) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
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
      status,
      const DeepCollectionEquality().hash(_rules),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_moderators),
      sponsorId,
      const DeepCollectionEquality().hash(_prizes),
      const DeepCollectionEquality().hash(_leaderboard),
      const DeepCollectionEquality().hash(_mediaUrls),
      const DeepCollectionEquality().hash(_settings));

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
      {required final String id,
      required final String name,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final TournamentStatus status,
      required final Map<String, dynamic> rules,
      required final List<String> participants,
      required final List<String> moderators,
      final String? sponsorId,
      final Map<String, dynamic>? prizes,
      final Map<String, dynamic>? leaderboard,
      final List<String>? mediaUrls,
      final Map<String, dynamic>? settings}) = _$TournamentImpl;

  factory _Tournament.fromJson(Map<String, dynamic> json) =
      _$TournamentImpl.fromJson;

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
  TournamentStatus get status;
  @override
  Map<String, dynamic> get rules;
  @override
  List<String> get participants;
  @override
  List<String> get moderators;
  @override
  String? get sponsorId;
  @override
  Map<String, dynamic>? get prizes;
  @override
  Map<String, dynamic>? get leaderboard;
  @override
  List<String>? get mediaUrls;
  @override
  Map<String, dynamic>? get settings;
  @override
  @JsonKey(ignore: true)
  _$$TournamentImplCopyWith<_$TournamentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentReport _$ContentReportFromJson(Map<String, dynamic> json) {
  return _ContentReport.fromJson(json);
}

/// @nodoc
mixin _$ContentReport {
  String get id => throw _privateConstructorUsedError;
  String get contentId => throw _privateConstructorUsedError;
  String get reporterId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  DateTime get reportedAt => throw _privateConstructorUsedError;
  ReportStatus get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get evidenceUrls => throw _privateConstructorUsedError;
  String? get moderatorId => throw _privateConstructorUsedError;
  String? get resolution => throw _privateConstructorUsedError;
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  List<String>? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentReportCopyWith<ContentReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentReportCopyWith<$Res> {
  factory $ContentReportCopyWith(
          ContentReport value, $Res Function(ContentReport) then) =
      _$ContentReportCopyWithImpl<$Res, ContentReport>;
  @useResult
  $Res call(
      {String id,
      String contentId,
      String reporterId,
      String reason,
      DateTime reportedAt,
      ReportStatus status,
      String? description,
      List<String>? evidenceUrls,
      String? moderatorId,
      String? resolution,
      DateTime? resolvedAt,
      List<String>? notes});
}

/// @nodoc
class _$ContentReportCopyWithImpl<$Res, $Val extends ContentReport>
    implements $ContentReportCopyWith<$Res> {
  _$ContentReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentId = null,
    Object? reporterId = null,
    Object? reason = null,
    Object? reportedAt = null,
    Object? status = null,
    Object? description = freezed,
    Object? evidenceUrls = freezed,
    Object? moderatorId = freezed,
    Object? resolution = freezed,
    Object? resolvedAt = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      reportedAt: null == reportedAt
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReportStatus,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      evidenceUrls: freezed == evidenceUrls
          ? _value.evidenceUrls
          : evidenceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentReportImplCopyWith<$Res>
    implements $ContentReportCopyWith<$Res> {
  factory _$$ContentReportImplCopyWith(
          _$ContentReportImpl value, $Res Function(_$ContentReportImpl) then) =
      __$$ContentReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String contentId,
      String reporterId,
      String reason,
      DateTime reportedAt,
      ReportStatus status,
      String? description,
      List<String>? evidenceUrls,
      String? moderatorId,
      String? resolution,
      DateTime? resolvedAt,
      List<String>? notes});
}

/// @nodoc
class __$$ContentReportImplCopyWithImpl<$Res>
    extends _$ContentReportCopyWithImpl<$Res, _$ContentReportImpl>
    implements _$$ContentReportImplCopyWith<$Res> {
  __$$ContentReportImplCopyWithImpl(
      _$ContentReportImpl _value, $Res Function(_$ContentReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentId = null,
    Object? reporterId = null,
    Object? reason = null,
    Object? reportedAt = null,
    Object? status = null,
    Object? description = freezed,
    Object? evidenceUrls = freezed,
    Object? moderatorId = freezed,
    Object? resolution = freezed,
    Object? resolvedAt = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$ContentReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterId: null == reporterId
          ? _value.reporterId
          : reporterId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      reportedAt: null == reportedAt
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReportStatus,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      evidenceUrls: freezed == evidenceUrls
          ? _value._evidenceUrls
          : evidenceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentReportImpl implements _ContentReport {
  const _$ContentReportImpl(
      {required this.id,
      required this.contentId,
      required this.reporterId,
      required this.reason,
      required this.reportedAt,
      required this.status,
      this.description,
      final List<String>? evidenceUrls,
      this.moderatorId,
      this.resolution,
      this.resolvedAt,
      final List<String>? notes})
      : _evidenceUrls = evidenceUrls,
        _notes = notes;

  factory _$ContentReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentReportImplFromJson(json);

  @override
  final String id;
  @override
  final String contentId;
  @override
  final String reporterId;
  @override
  final String reason;
  @override
  final DateTime reportedAt;
  @override
  final ReportStatus status;
  @override
  final String? description;
  final List<String>? _evidenceUrls;
  @override
  List<String>? get evidenceUrls {
    final value = _evidenceUrls;
    if (value == null) return null;
    if (_evidenceUrls is EqualUnmodifiableListView) return _evidenceUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? moderatorId;
  @override
  final String? resolution;
  @override
  final DateTime? resolvedAt;
  final List<String>? _notes;
  @override
  List<String>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContentReport(id: $id, contentId: $contentId, reporterId: $reporterId, reason: $reason, reportedAt: $reportedAt, status: $status, description: $description, evidenceUrls: $evidenceUrls, moderatorId: $moderatorId, resolution: $resolution, resolvedAt: $resolvedAt, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.reporterId, reporterId) ||
                other.reporterId == reporterId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.reportedAt, reportedAt) ||
                other.reportedAt == reportedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._evidenceUrls, _evidenceUrls) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      contentId,
      reporterId,
      reason,
      reportedAt,
      status,
      description,
      const DeepCollectionEquality().hash(_evidenceUrls),
      moderatorId,
      resolution,
      resolvedAt,
      const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentReportImplCopyWith<_$ContentReportImpl> get copyWith =>
      __$$ContentReportImplCopyWithImpl<_$ContentReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentReportImplToJson(
      this,
    );
  }
}

abstract class _ContentReport implements ContentReport {
  const factory _ContentReport(
      {required final String id,
      required final String contentId,
      required final String reporterId,
      required final String reason,
      required final DateTime reportedAt,
      required final ReportStatus status,
      final String? description,
      final List<String>? evidenceUrls,
      final String? moderatorId,
      final String? resolution,
      final DateTime? resolvedAt,
      final List<String>? notes}) = _$ContentReportImpl;

  factory _ContentReport.fromJson(Map<String, dynamic> json) =
      _$ContentReportImpl.fromJson;

  @override
  String get id;
  @override
  String get contentId;
  @override
  String get reporterId;
  @override
  String get reason;
  @override
  DateTime get reportedAt;
  @override
  ReportStatus get status;
  @override
  String? get description;
  @override
  List<String>? get evidenceUrls;
  @override
  String? get moderatorId;
  @override
  String? get resolution;
  @override
  DateTime? get resolvedAt;
  @override
  List<String>? get notes;
  @override
  @JsonKey(ignore: true)
  _$$ContentReportImplCopyWith<_$ContentReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) {
  return _Announcement.fromJson(json);
}

/// @nodoc
mixin _$Announcement {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  AnnouncementType get type => throw _privateConstructorUsedError;
  List<String> get targetAudience => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get actionUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementCopyWith<Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(
          Announcement value, $Res Function(Announcement) then) =
      _$AnnouncementCopyWithImpl<$Res, Announcement>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String authorId,
      DateTime createdAt,
      DateTime expiresAt,
      AnnouncementType type,
      List<String> targetAudience,
      bool isActive,
      String? imageUrl,
      String? actionUrl,
      Map<String, dynamic>? metadata,
      List<String>? tags});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res, $Val extends Announcement>
    implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? authorId = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? type = null,
    Object? targetAudience = null,
    Object? isActive = null,
    Object? imageUrl = freezed,
    Object? actionUrl = freezed,
    Object? metadata = freezed,
    Object? tags = freezed,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnnouncementType,
      targetAudience: null == targetAudience
          ? _value.targetAudience
          : targetAudience // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      actionUrl: freezed == actionUrl
          ? _value.actionUrl
          : actionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementImplCopyWith<$Res>
    implements $AnnouncementCopyWith<$Res> {
  factory _$$AnnouncementImplCopyWith(
          _$AnnouncementImpl value, $Res Function(_$AnnouncementImpl) then) =
      __$$AnnouncementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String authorId,
      DateTime createdAt,
      DateTime expiresAt,
      AnnouncementType type,
      List<String> targetAudience,
      bool isActive,
      String? imageUrl,
      String? actionUrl,
      Map<String, dynamic>? metadata,
      List<String>? tags});
}

/// @nodoc
class __$$AnnouncementImplCopyWithImpl<$Res>
    extends _$AnnouncementCopyWithImpl<$Res, _$AnnouncementImpl>
    implements _$$AnnouncementImplCopyWith<$Res> {
  __$$AnnouncementImplCopyWithImpl(
      _$AnnouncementImpl _value, $Res Function(_$AnnouncementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? authorId = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? type = null,
    Object? targetAudience = null,
    Object? isActive = null,
    Object? imageUrl = freezed,
    Object? actionUrl = freezed,
    Object? metadata = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$AnnouncementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnnouncementType,
      targetAudience: null == targetAudience
          ? _value._targetAudience
          : targetAudience // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      actionUrl: freezed == actionUrl
          ? _value.actionUrl
          : actionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementImpl implements _Announcement {
  const _$AnnouncementImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.authorId,
      required this.createdAt,
      required this.expiresAt,
      required this.type,
      required final List<String> targetAudience,
      required this.isActive,
      this.imageUrl,
      this.actionUrl,
      final Map<String, dynamic>? metadata,
      final List<String>? tags})
      : _targetAudience = targetAudience,
        _metadata = metadata,
        _tags = tags;

  factory _$AnnouncementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String authorId;
  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final AnnouncementType type;
  final List<String> _targetAudience;
  @override
  List<String> get targetAudience {
    if (_targetAudience is EqualUnmodifiableListView) return _targetAudience;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targetAudience);
  }

  @override
  final bool isActive;
  @override
  final String? imageUrl;
  @override
  final String? actionUrl;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Announcement(id: $id, title: $title, content: $content, authorId: $authorId, createdAt: $createdAt, expiresAt: $expiresAt, type: $type, targetAudience: $targetAudience, isActive: $isActive, imageUrl: $imageUrl, actionUrl: $actionUrl, metadata: $metadata, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._targetAudience, _targetAudience) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.actionUrl, actionUrl) ||
                other.actionUrl == actionUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      authorId,
      createdAt,
      expiresAt,
      type,
      const DeepCollectionEquality().hash(_targetAudience),
      isActive,
      imageUrl,
      actionUrl,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      __$$AnnouncementImplCopyWithImpl<_$AnnouncementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementImplToJson(
      this,
    );
  }
}

abstract class _Announcement implements Announcement {
  const factory _Announcement(
      {required final String id,
      required final String title,
      required final String content,
      required final String authorId,
      required final DateTime createdAt,
      required final DateTime expiresAt,
      required final AnnouncementType type,
      required final List<String> targetAudience,
      required final bool isActive,
      final String? imageUrl,
      final String? actionUrl,
      final Map<String, dynamic>? metadata,
      final List<String>? tags}) = _$AnnouncementImpl;

  factory _Announcement.fromJson(Map<String, dynamic> json) =
      _$AnnouncementImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get authorId;
  @override
  DateTime get createdAt;
  @override
  DateTime get expiresAt;
  @override
  AnnouncementType get type;
  @override
  List<String> get targetAudience;
  @override
  bool get isActive;
  @override
  String? get imageUrl;
  @override
  String? get actionUrl;
  @override
  Map<String, dynamic>? get metadata;
  @override
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return _Resource.fromJson(json);
}

/// @nodoc
mixin _$Resource {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  ResourceStatus get status => throw _privateConstructorUsedError;
  Map<String, int> get usage => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res, Resource>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      String url,
      DateTime createdAt,
      ResourceStatus status,
      Map<String, int> usage,
      String? description,
      Map<String, dynamic>? metadata,
      List<String>? tags,
      DateTime? expiresAt});
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res, $Val extends Resource>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

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
    Object? url = null,
    Object? createdAt = null,
    Object? status = null,
    Object? usage = null,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? tags = freezed,
    Object? expiresAt = freezed,
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResourceStatus,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceImplCopyWith<$Res>
    implements $ResourceCopyWith<$Res> {
  factory _$$ResourceImplCopyWith(
          _$ResourceImpl value, $Res Function(_$ResourceImpl) then) =
      __$$ResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      String url,
      DateTime createdAt,
      ResourceStatus status,
      Map<String, int> usage,
      String? description,
      Map<String, dynamic>? metadata,
      List<String>? tags,
      DateTime? expiresAt});
}

/// @nodoc
class __$$ResourceImplCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$ResourceImpl>
    implements _$$ResourceImplCopyWith<$Res> {
  __$$ResourceImplCopyWithImpl(
      _$ResourceImpl _value, $Res Function(_$ResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? url = null,
    Object? createdAt = null,
    Object? status = null,
    Object? usage = null,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? tags = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$ResourceImpl(
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResourceStatus,
      usage: null == usage
          ? _value._usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceImpl implements _Resource {
  const _$ResourceImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.url,
      required this.createdAt,
      required this.status,
      required final Map<String, int> usage,
      this.description,
      final Map<String, dynamic>? metadata,
      final List<String>? tags,
      this.expiresAt})
      : _usage = usage,
        _metadata = metadata,
        _tags = tags;

  factory _$ResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String url;
  @override
  final DateTime createdAt;
  @override
  final ResourceStatus status;
  final Map<String, int> _usage;
  @override
  Map<String, int> get usage {
    if (_usage is EqualUnmodifiableMapView) return _usage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_usage);
  }

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

  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? expiresAt;

  @override
  String toString() {
    return 'Resource(id: $id, name: $name, type: $type, url: $url, createdAt: $createdAt, status: $status, usage: $usage, description: $description, metadata: $metadata, tags: $tags, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._usage, _usage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      url,
      createdAt,
      status,
      const DeepCollectionEquality().hash(_usage),
      description,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_tags),
      expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      __$$ResourceImplCopyWithImpl<_$ResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceImplToJson(
      this,
    );
  }
}

abstract class _Resource implements Resource {
  const factory _Resource(
      {required final String id,
      required final String name,
      required final String type,
      required final String url,
      required final DateTime createdAt,
      required final ResourceStatus status,
      required final Map<String, int> usage,
      final String? description,
      final Map<String, dynamic>? metadata,
      final List<String>? tags,
      final DateTime? expiresAt}) = _$ResourceImpl;

  factory _Resource.fromJson(Map<String, dynamic> json) =
      _$ResourceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get url;
  @override
  DateTime get createdAt;
  @override
  ResourceStatus get status;
  @override
  Map<String, int> get usage;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get metadata;
  @override
  List<String>? get tags;
  @override
  DateTime? get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
