// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
mixin _$ChatRoom {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'private', 'group', 'channel'
  List<String> get participants => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  String? get lastMessageText => throw _privateConstructorUsedError;
  String? get lastMessageSenderId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  Map<String, ChatRoomSettings> get participantSettings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res, ChatRoom>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      List<String> participants,
      DateTime createdAt,
      DateTime? lastMessageAt,
      String? lastMessageText,
      String? lastMessageSenderId,
      Map<String, dynamic>? metadata,
      Map<String, ChatRoomSettings> participantSettings});
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res, $Val extends ChatRoom>
    implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

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
    Object? participants = null,
    Object? createdAt = null,
    Object? lastMessageAt = freezed,
    Object? lastMessageText = freezed,
    Object? lastMessageSenderId = freezed,
    Object? metadata = freezed,
    Object? participantSettings = null,
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
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastMessageAt: freezed == lastMessageAt
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMessageText: freezed == lastMessageText
          ? _value.lastMessageText
          : lastMessageText // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageSenderId: freezed == lastMessageSenderId
          ? _value.lastMessageSenderId
          : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      participantSettings: null == participantSettings
          ? _value.participantSettings
          : participantSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, ChatRoomSettings>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatRoomImplCopyWith<$Res>
    implements $ChatRoomCopyWith<$Res> {
  factory _$$ChatRoomImplCopyWith(
          _$ChatRoomImpl value, $Res Function(_$ChatRoomImpl) then) =
      __$$ChatRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      List<String> participants,
      DateTime createdAt,
      DateTime? lastMessageAt,
      String? lastMessageText,
      String? lastMessageSenderId,
      Map<String, dynamic>? metadata,
      Map<String, ChatRoomSettings> participantSettings});
}

/// @nodoc
class __$$ChatRoomImplCopyWithImpl<$Res>
    extends _$ChatRoomCopyWithImpl<$Res, _$ChatRoomImpl>
    implements _$$ChatRoomImplCopyWith<$Res> {
  __$$ChatRoomImplCopyWithImpl(
      _$ChatRoomImpl _value, $Res Function(_$ChatRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? participants = null,
    Object? createdAt = null,
    Object? lastMessageAt = freezed,
    Object? lastMessageText = freezed,
    Object? lastMessageSenderId = freezed,
    Object? metadata = freezed,
    Object? participantSettings = null,
  }) {
    return _then(_$ChatRoomImpl(
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
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastMessageAt: freezed == lastMessageAt
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMessageText: freezed == lastMessageText
          ? _value.lastMessageText
          : lastMessageText // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageSenderId: freezed == lastMessageSenderId
          ? _value.lastMessageSenderId
          : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      participantSettings: null == participantSettings
          ? _value._participantSettings
          : participantSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, ChatRoomSettings>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomImpl with DiagnosticableTreeMixin implements _ChatRoom {
  const _$ChatRoomImpl(
      {required this.id,
      required this.name,
      required this.type,
      required final List<String> participants,
      required this.createdAt,
      this.lastMessageAt,
      this.lastMessageText,
      this.lastMessageSenderId,
      final Map<String, dynamic>? metadata,
      final Map<String, ChatRoomSettings> participantSettings = const {}})
      : _participants = participants,
        _metadata = metadata,
        _participantSettings = participantSettings;

  factory _$ChatRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
// 'private', 'group', 'channel'
  final List<String> _participants;
// 'private', 'group', 'channel'
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? lastMessageAt;
  @override
  final String? lastMessageText;
  @override
  final String? lastMessageSenderId;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, ChatRoomSettings> _participantSettings;
  @override
  @JsonKey()
  Map<String, ChatRoomSettings> get participantSettings {
    if (_participantSettings is EqualUnmodifiableMapView)
      return _participantSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_participantSettings);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatRoom(id: $id, name: $name, type: $type, participants: $participants, createdAt: $createdAt, lastMessageAt: $lastMessageAt, lastMessageText: $lastMessageText, lastMessageSenderId: $lastMessageSenderId, metadata: $metadata, participantSettings: $participantSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatRoom'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('participants', participants))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('lastMessageAt', lastMessageAt))
      ..add(DiagnosticsProperty('lastMessageText', lastMessageText))
      ..add(DiagnosticsProperty('lastMessageSenderId', lastMessageSenderId))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('participantSettings', participantSettings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt) &&
            (identical(other.lastMessageText, lastMessageText) ||
                other.lastMessageText == lastMessageText) &&
            (identical(other.lastMessageSenderId, lastMessageSenderId) ||
                other.lastMessageSenderId == lastMessageSenderId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._participantSettings, _participantSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      const DeepCollectionEquality().hash(_participants),
      createdAt,
      lastMessageAt,
      lastMessageText,
      lastMessageSenderId,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_participantSettings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      __$$ChatRoomImplCopyWithImpl<_$ChatRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomImplToJson(
      this,
    );
  }
}

abstract class _ChatRoom implements ChatRoom {
  const factory _ChatRoom(
          {required final String id,
          required final String name,
          required final String type,
          required final List<String> participants,
          required final DateTime createdAt,
          final DateTime? lastMessageAt,
          final String? lastMessageText,
          final String? lastMessageSenderId,
          final Map<String, dynamic>? metadata,
          final Map<String, ChatRoomSettings> participantSettings}) =
      _$ChatRoomImpl;

  factory _ChatRoom.fromJson(Map<String, dynamic> json) =
      _$ChatRoomImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override // 'private', 'group', 'channel'
  List<String> get participants;
  @override
  DateTime get createdAt;
  @override
  DateTime? get lastMessageAt;
  @override
  String? get lastMessageText;
  @override
  String? get lastMessageSenderId;
  @override
  Map<String, dynamic>? get metadata;
  @override
  Map<String, ChatRoomSettings> get participantSettings;
  @override
  @JsonKey(ignore: true)
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  String get id => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'text', 'image', 'video', 'location', etc.
  DateTime get timestamp => throw _privateConstructorUsedError;
  List<String> get readBy => throw _privateConstructorUsedError;
  List<String> get deliveredTo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  List<ChatAttachment>? get attachments => throw _privateConstructorUsedError;
  ChatMessage? get replyTo => throw _privateConstructorUsedError;
  bool get isEdited => throw _privateConstructorUsedError;
  DateTime? get editedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {String id,
      String roomId,
      String senderId,
      String content,
      String type,
      DateTime timestamp,
      List<String> readBy,
      List<String> deliveredTo,
      Map<String, dynamic>? metadata,
      List<ChatAttachment>? attachments,
      ChatMessage? replyTo,
      bool isEdited,
      DateTime? editedAt});

  $ChatMessageCopyWith<$Res>? get replyTo;
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? senderId = null,
    Object? content = null,
    Object? type = null,
    Object? timestamp = null,
    Object? readBy = null,
    Object? deliveredTo = null,
    Object? metadata = freezed,
    Object? attachments = freezed,
    Object? replyTo = freezed,
    Object? isEdited = null,
    Object? editedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readBy: null == readBy
          ? _value.readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deliveredTo: null == deliveredTo
          ? _value.deliveredTo
          : deliveredTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<ChatAttachment>?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as ChatMessage?,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      editedAt: freezed == editedAt
          ? _value.editedAt
          : editedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res>? get replyTo {
    if (_value.replyTo == null) {
      return null;
    }

    return $ChatMessageCopyWith<$Res>(_value.replyTo!, (value) {
      return _then(_value.copyWith(replyTo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String roomId,
      String senderId,
      String content,
      String type,
      DateTime timestamp,
      List<String> readBy,
      List<String> deliveredTo,
      Map<String, dynamic>? metadata,
      List<ChatAttachment>? attachments,
      ChatMessage? replyTo,
      bool isEdited,
      DateTime? editedAt});

  @override
  $ChatMessageCopyWith<$Res>? get replyTo;
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? senderId = null,
    Object? content = null,
    Object? type = null,
    Object? timestamp = null,
    Object? readBy = null,
    Object? deliveredTo = null,
    Object? metadata = freezed,
    Object? attachments = freezed,
    Object? replyTo = freezed,
    Object? isEdited = null,
    Object? editedAt = freezed,
  }) {
    return _then(_$ChatMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readBy: null == readBy
          ? _value._readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deliveredTo: null == deliveredTo
          ? _value._deliveredTo
          : deliveredTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<ChatAttachment>?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as ChatMessage?,
      isEdited: null == isEdited
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      editedAt: freezed == editedAt
          ? _value.editedAt
          : editedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl with DiagnosticableTreeMixin implements _ChatMessage {
  const _$ChatMessageImpl(
      {required this.id,
      required this.roomId,
      required this.senderId,
      required this.content,
      required this.type,
      required this.timestamp,
      final List<String> readBy = const [],
      final List<String> deliveredTo = const [],
      final Map<String, dynamic>? metadata,
      final List<ChatAttachment>? attachments,
      this.replyTo,
      this.isEdited = false,
      this.editedAt})
      : _readBy = readBy,
        _deliveredTo = deliveredTo,
        _metadata = metadata,
        _attachments = attachments;

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  final String id;
  @override
  final String roomId;
  @override
  final String senderId;
  @override
  final String content;
  @override
  final String type;
// 'text', 'image', 'video', 'location', etc.
  @override
  final DateTime timestamp;
  final List<String> _readBy;
  @override
  @JsonKey()
  List<String> get readBy {
    if (_readBy is EqualUnmodifiableListView) return _readBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readBy);
  }

  final List<String> _deliveredTo;
  @override
  @JsonKey()
  List<String> get deliveredTo {
    if (_deliveredTo is EqualUnmodifiableListView) return _deliveredTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveredTo);
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

  final List<ChatAttachment>? _attachments;
  @override
  List<ChatAttachment>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ChatMessage? replyTo;
  @override
  @JsonKey()
  final bool isEdited;
  @override
  final DateTime? editedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessage(id: $id, roomId: $roomId, senderId: $senderId, content: $content, type: $type, timestamp: $timestamp, readBy: $readBy, deliveredTo: $deliveredTo, metadata: $metadata, attachments: $attachments, replyTo: $replyTo, isEdited: $isEdited, editedAt: $editedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('senderId', senderId))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('readBy', readBy))
      ..add(DiagnosticsProperty('deliveredTo', deliveredTo))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('attachments', attachments))
      ..add(DiagnosticsProperty('replyTo', replyTo))
      ..add(DiagnosticsProperty('isEdited', isEdited))
      ..add(DiagnosticsProperty('editedAt', editedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._readBy, _readBy) &&
            const DeepCollectionEquality()
                .equals(other._deliveredTo, _deliveredTo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.replyTo, replyTo) || other.replyTo == replyTo) &&
            (identical(other.isEdited, isEdited) ||
                other.isEdited == isEdited) &&
            (identical(other.editedAt, editedAt) ||
                other.editedAt == editedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomId,
      senderId,
      content,
      type,
      timestamp,
      const DeepCollectionEquality().hash(_readBy),
      const DeepCollectionEquality().hash(_deliveredTo),
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_attachments),
      replyTo,
      isEdited,
      editedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
      {required final String id,
      required final String roomId,
      required final String senderId,
      required final String content,
      required final String type,
      required final DateTime timestamp,
      final List<String> readBy,
      final List<String> deliveredTo,
      final Map<String, dynamic>? metadata,
      final List<ChatAttachment>? attachments,
      final ChatMessage? replyTo,
      final bool isEdited,
      final DateTime? editedAt}) = _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  String get id;
  @override
  String get roomId;
  @override
  String get senderId;
  @override
  String get content;
  @override
  String get type;
  @override // 'text', 'image', 'video', 'location', etc.
  DateTime get timestamp;
  @override
  List<String> get readBy;
  @override
  List<String> get deliveredTo;
  @override
  Map<String, dynamic>? get metadata;
  @override
  List<ChatAttachment>? get attachments;
  @override
  ChatMessage? get replyTo;
  @override
  bool get isEdited;
  @override
  DateTime? get editedAt;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatAttachment _$ChatAttachmentFromJson(Map<String, dynamic> json) {
  return _ChatAttachment.fromJson(json);
}

/// @nodoc
mixin _$ChatAttachment {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatAttachmentCopyWith<ChatAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatAttachmentCopyWith<$Res> {
  factory $ChatAttachmentCopyWith(
          ChatAttachment value, $Res Function(ChatAttachment) then) =
      _$ChatAttachmentCopyWithImpl<$Res, ChatAttachment>;
  @useResult
  $Res call(
      {String id,
      String type,
      String url,
      String? thumbnailUrl,
      String? name,
      int? size,
      String? mimeType,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ChatAttachmentCopyWithImpl<$Res, $Val extends ChatAttachment>
    implements $ChatAttachmentCopyWith<$Res> {
  _$ChatAttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
    Object? name = freezed,
    Object? size = freezed,
    Object? mimeType = freezed,
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatAttachmentImplCopyWith<$Res>
    implements $ChatAttachmentCopyWith<$Res> {
  factory _$$ChatAttachmentImplCopyWith(_$ChatAttachmentImpl value,
          $Res Function(_$ChatAttachmentImpl) then) =
      __$$ChatAttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String url,
      String? thumbnailUrl,
      String? name,
      int? size,
      String? mimeType,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ChatAttachmentImplCopyWithImpl<$Res>
    extends _$ChatAttachmentCopyWithImpl<$Res, _$ChatAttachmentImpl>
    implements _$$ChatAttachmentImplCopyWith<$Res> {
  __$$ChatAttachmentImplCopyWithImpl(
      _$ChatAttachmentImpl _value, $Res Function(_$ChatAttachmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
    Object? name = freezed,
    Object? size = freezed,
    Object? mimeType = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ChatAttachmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
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
class _$ChatAttachmentImpl
    with DiagnosticableTreeMixin
    implements _ChatAttachment {
  const _$ChatAttachmentImpl(
      {required this.id,
      required this.type,
      required this.url,
      this.thumbnailUrl,
      this.name,
      this.size,
      this.mimeType,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ChatAttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatAttachmentImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String url;
  @override
  final String? thumbnailUrl;
  @override
  final String? name;
  @override
  final int? size;
  @override
  final String? mimeType;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatAttachment(id: $id, type: $type, url: $url, thumbnailUrl: $thumbnailUrl, name: $name, size: $size, mimeType: $mimeType, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatAttachment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('mimeType', mimeType))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatAttachmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, url, thumbnailUrl,
      name, size, mimeType, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatAttachmentImplCopyWith<_$ChatAttachmentImpl> get copyWith =>
      __$$ChatAttachmentImplCopyWithImpl<_$ChatAttachmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatAttachmentImplToJson(
      this,
    );
  }
}

abstract class _ChatAttachment implements ChatAttachment {
  const factory _ChatAttachment(
      {required final String id,
      required final String type,
      required final String url,
      final String? thumbnailUrl,
      final String? name,
      final int? size,
      final String? mimeType,
      final Map<String, dynamic>? metadata}) = _$ChatAttachmentImpl;

  factory _ChatAttachment.fromJson(Map<String, dynamic> json) =
      _$ChatAttachmentImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get url;
  @override
  String? get thumbnailUrl;
  @override
  String? get name;
  @override
  int? get size;
  @override
  String? get mimeType;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ChatAttachmentImplCopyWith<_$ChatAttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRoomSettings _$ChatRoomSettingsFromJson(Map<String, dynamic> json) {
  return _ChatRoomSettings.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomSettings {
  String get userId => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  bool get notifications => throw _privateConstructorUsedError;
  String get messageVisibility => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  Map<String, dynamic> get customSettings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomSettingsCopyWith<ChatRoomSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomSettingsCopyWith<$Res> {
  factory $ChatRoomSettingsCopyWith(
          ChatRoomSettings value, $Res Function(ChatRoomSettings) then) =
      _$ChatRoomSettingsCopyWithImpl<$Res, ChatRoomSettings>;
  @useResult
  $Res call(
      {String userId,
      String roomId,
      bool notifications,
      String messageVisibility,
      String? nickname,
      Map<String, dynamic> customSettings});
}

/// @nodoc
class _$ChatRoomSettingsCopyWithImpl<$Res, $Val extends ChatRoomSettings>
    implements $ChatRoomSettingsCopyWith<$Res> {
  _$ChatRoomSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roomId = null,
    Object? notifications = null,
    Object? messageVisibility = null,
    Object? nickname = freezed,
    Object? customSettings = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      messageVisibility: null == messageVisibility
          ? _value.messageVisibility
          : messageVisibility // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      customSettings: null == customSettings
          ? _value.customSettings
          : customSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatRoomSettingsImplCopyWith<$Res>
    implements $ChatRoomSettingsCopyWith<$Res> {
  factory _$$ChatRoomSettingsImplCopyWith(_$ChatRoomSettingsImpl value,
          $Res Function(_$ChatRoomSettingsImpl) then) =
      __$$ChatRoomSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String roomId,
      bool notifications,
      String messageVisibility,
      String? nickname,
      Map<String, dynamic> customSettings});
}

/// @nodoc
class __$$ChatRoomSettingsImplCopyWithImpl<$Res>
    extends _$ChatRoomSettingsCopyWithImpl<$Res, _$ChatRoomSettingsImpl>
    implements _$$ChatRoomSettingsImplCopyWith<$Res> {
  __$$ChatRoomSettingsImplCopyWithImpl(_$ChatRoomSettingsImpl _value,
      $Res Function(_$ChatRoomSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roomId = null,
    Object? notifications = null,
    Object? messageVisibility = null,
    Object? nickname = freezed,
    Object? customSettings = null,
  }) {
    return _then(_$ChatRoomSettingsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      messageVisibility: null == messageVisibility
          ? _value.messageVisibility
          : messageVisibility // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      customSettings: null == customSettings
          ? _value._customSettings
          : customSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomSettingsImpl
    with DiagnosticableTreeMixin
    implements _ChatRoomSettings {
  const _$ChatRoomSettingsImpl(
      {required this.userId,
      required this.roomId,
      this.notifications = true,
      this.messageVisibility = 'all',
      this.nickname,
      final Map<String, dynamic> customSettings = const {}})
      : _customSettings = customSettings;

  factory _$ChatRoomSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomSettingsImplFromJson(json);

  @override
  final String userId;
  @override
  final String roomId;
  @override
  @JsonKey()
  final bool notifications;
  @override
  @JsonKey()
  final String messageVisibility;
  @override
  final String? nickname;
  final Map<String, dynamic> _customSettings;
  @override
  @JsonKey()
  Map<String, dynamic> get customSettings {
    if (_customSettings is EqualUnmodifiableMapView) return _customSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customSettings);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatRoomSettings(userId: $userId, roomId: $roomId, notifications: $notifications, messageVisibility: $messageVisibility, nickname: $nickname, customSettings: $customSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatRoomSettings'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('notifications', notifications))
      ..add(DiagnosticsProperty('messageVisibility', messageVisibility))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('customSettings', customSettings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomSettingsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.messageVisibility, messageVisibility) ||
                other.messageVisibility == messageVisibility) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            const DeepCollectionEquality()
                .equals(other._customSettings, _customSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      roomId,
      notifications,
      messageVisibility,
      nickname,
      const DeepCollectionEquality().hash(_customSettings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomSettingsImplCopyWith<_$ChatRoomSettingsImpl> get copyWith =>
      __$$ChatRoomSettingsImplCopyWithImpl<_$ChatRoomSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomSettingsImplToJson(
      this,
    );
  }
}

abstract class _ChatRoomSettings implements ChatRoomSettings {
  const factory _ChatRoomSettings(
      {required final String userId,
      required final String roomId,
      final bool notifications,
      final String messageVisibility,
      final String? nickname,
      final Map<String, dynamic> customSettings}) = _$ChatRoomSettingsImpl;

  factory _ChatRoomSettings.fromJson(Map<String, dynamic> json) =
      _$ChatRoomSettingsImpl.fromJson;

  @override
  String get userId;
  @override
  String get roomId;
  @override
  bool get notifications;
  @override
  String get messageVisibility;
  @override
  String? get nickname;
  @override
  Map<String, dynamic> get customSettings;
  @override
  @JsonKey(ignore: true)
  _$$ChatRoomSettingsImplCopyWith<_$ChatRoomSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatParticipant _$ChatParticipantFromJson(Map<String, dynamic> json) {
  return _ChatParticipant.fromJson(json);
}

/// @nodoc
mixin _$ChatParticipant {
  String get userId => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  String get role =>
      throw _privateConstructorUsedError; // 'admin', 'moderator', 'member'
  DateTime get joinedAt => throw _privateConstructorUsedError;
  DateTime? get lastSeen => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  Map<String, dynamic>? get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatParticipantCopyWith<ChatParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatParticipantCopyWith<$Res> {
  factory $ChatParticipantCopyWith(
          ChatParticipant value, $Res Function(ChatParticipant) then) =
      _$ChatParticipantCopyWithImpl<$Res, ChatParticipant>;
  @useResult
  $Res call(
      {String userId,
      String roomId,
      String role,
      DateTime joinedAt,
      DateTime? lastSeen,
      bool isActive,
      Map<String, dynamic>? permissions});
}

/// @nodoc
class _$ChatParticipantCopyWithImpl<$Res, $Val extends ChatParticipant>
    implements $ChatParticipantCopyWith<$Res> {
  _$ChatParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roomId = null,
    Object? role = null,
    Object? joinedAt = null,
    Object? lastSeen = freezed,
    Object? isActive = null,
    Object? permissions = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatParticipantImplCopyWith<$Res>
    implements $ChatParticipantCopyWith<$Res> {
  factory _$$ChatParticipantImplCopyWith(_$ChatParticipantImpl value,
          $Res Function(_$ChatParticipantImpl) then) =
      __$$ChatParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String roomId,
      String role,
      DateTime joinedAt,
      DateTime? lastSeen,
      bool isActive,
      Map<String, dynamic>? permissions});
}

/// @nodoc
class __$$ChatParticipantImplCopyWithImpl<$Res>
    extends _$ChatParticipantCopyWithImpl<$Res, _$ChatParticipantImpl>
    implements _$$ChatParticipantImplCopyWith<$Res> {
  __$$ChatParticipantImplCopyWithImpl(
      _$ChatParticipantImpl _value, $Res Function(_$ChatParticipantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roomId = null,
    Object? role = null,
    Object? joinedAt = null,
    Object? lastSeen = freezed,
    Object? isActive = null,
    Object? permissions = freezed,
  }) {
    return _then(_$ChatParticipantImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatParticipantImpl
    with DiagnosticableTreeMixin
    implements _ChatParticipant {
  const _$ChatParticipantImpl(
      {required this.userId,
      required this.roomId,
      required this.role,
      required this.joinedAt,
      this.lastSeen,
      this.isActive = true,
      final Map<String, dynamic>? permissions})
      : _permissions = permissions;

  factory _$ChatParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatParticipantImplFromJson(json);

  @override
  final String userId;
  @override
  final String roomId;
  @override
  final String role;
// 'admin', 'moderator', 'member'
  @override
  final DateTime joinedAt;
  @override
  final DateTime? lastSeen;
  @override
  @JsonKey()
  final bool isActive;
  final Map<String, dynamic>? _permissions;
  @override
  Map<String, dynamic>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatParticipant(userId: $userId, roomId: $roomId, role: $role, joinedAt: $joinedAt, lastSeen: $lastSeen, isActive: $isActive, permissions: $permissions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatParticipant'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('joinedAt', joinedAt))
      ..add(DiagnosticsProperty('lastSeen', lastSeen))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('permissions', permissions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatParticipantImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, roomId, role, joinedAt,
      lastSeen, isActive, const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatParticipantImplCopyWith<_$ChatParticipantImpl> get copyWith =>
      __$$ChatParticipantImplCopyWithImpl<_$ChatParticipantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatParticipantImplToJson(
      this,
    );
  }
}

abstract class _ChatParticipant implements ChatParticipant {
  const factory _ChatParticipant(
      {required final String userId,
      required final String roomId,
      required final String role,
      required final DateTime joinedAt,
      final DateTime? lastSeen,
      final bool isActive,
      final Map<String, dynamic>? permissions}) = _$ChatParticipantImpl;

  factory _ChatParticipant.fromJson(Map<String, dynamic> json) =
      _$ChatParticipantImpl.fromJson;

  @override
  String get userId;
  @override
  String get roomId;
  @override
  String get role;
  @override // 'admin', 'moderator', 'member'
  DateTime get joinedAt;
  @override
  DateTime? get lastSeen;
  @override
  bool get isActive;
  @override
  Map<String, dynamic>? get permissions;
  @override
  @JsonKey(ignore: true)
  _$$ChatParticipantImplCopyWith<_$ChatParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatReaction _$ChatReactionFromJson(Map<String, dynamic> json) {
  return _ChatReaction.fromJson(json);
}

/// @nodoc
mixin _$ChatReaction {
  String get id => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get reaction => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatReactionCopyWith<ChatReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatReactionCopyWith<$Res> {
  factory $ChatReactionCopyWith(
          ChatReaction value, $Res Function(ChatReaction) then) =
      _$ChatReactionCopyWithImpl<$Res, ChatReaction>;
  @useResult
  $Res call(
      {String id,
      String messageId,
      String userId,
      String reaction,
      DateTime timestamp});
}

/// @nodoc
class _$ChatReactionCopyWithImpl<$Res, $Val extends ChatReaction>
    implements $ChatReactionCopyWith<$Res> {
  _$ChatReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messageId = null,
    Object? userId = null,
    Object? reaction = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatReactionImplCopyWith<$Res>
    implements $ChatReactionCopyWith<$Res> {
  factory _$$ChatReactionImplCopyWith(
          _$ChatReactionImpl value, $Res Function(_$ChatReactionImpl) then) =
      __$$ChatReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String messageId,
      String userId,
      String reaction,
      DateTime timestamp});
}

/// @nodoc
class __$$ChatReactionImplCopyWithImpl<$Res>
    extends _$ChatReactionCopyWithImpl<$Res, _$ChatReactionImpl>
    implements _$$ChatReactionImplCopyWith<$Res> {
  __$$ChatReactionImplCopyWithImpl(
      _$ChatReactionImpl _value, $Res Function(_$ChatReactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messageId = null,
    Object? userId = null,
    Object? reaction = null,
    Object? timestamp = null,
  }) {
    return _then(_$ChatReactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reaction: null == reaction
          ? _value.reaction
          : reaction // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatReactionImpl with DiagnosticableTreeMixin implements _ChatReaction {
  const _$ChatReactionImpl(
      {required this.id,
      required this.messageId,
      required this.userId,
      required this.reaction,
      required this.timestamp});

  factory _$ChatReactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatReactionImplFromJson(json);

  @override
  final String id;
  @override
  final String messageId;
  @override
  final String userId;
  @override
  final String reaction;
  @override
  final DateTime timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatReaction(id: $id, messageId: $messageId, userId: $userId, reaction: $reaction, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatReaction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('messageId', messageId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('reaction', reaction))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatReactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reaction, reaction) ||
                other.reaction == reaction) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, messageId, userId, reaction, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatReactionImplCopyWith<_$ChatReactionImpl> get copyWith =>
      __$$ChatReactionImplCopyWithImpl<_$ChatReactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatReactionImplToJson(
      this,
    );
  }
}

abstract class _ChatReaction implements ChatReaction {
  const factory _ChatReaction(
      {required final String id,
      required final String messageId,
      required final String userId,
      required final String reaction,
      required final DateTime timestamp}) = _$ChatReactionImpl;

  factory _ChatReaction.fromJson(Map<String, dynamic> json) =
      _$ChatReactionImpl.fromJson;

  @override
  String get id;
  @override
  String get messageId;
  @override
  String get userId;
  @override
  String get reaction;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$ChatReactionImplCopyWith<_$ChatReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatTypingIndicator _$ChatTypingIndicatorFromJson(Map<String, dynamic> json) {
  return _ChatTypingIndicator.fromJson(json);
}

/// @nodoc
mixin _$ChatTypingIndicator {
  String get roomId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatTypingIndicatorCopyWith<ChatTypingIndicator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatTypingIndicatorCopyWith<$Res> {
  factory $ChatTypingIndicatorCopyWith(
          ChatTypingIndicator value, $Res Function(ChatTypingIndicator) then) =
      _$ChatTypingIndicatorCopyWithImpl<$Res, ChatTypingIndicator>;
  @useResult
  $Res call({String roomId, String userId, DateTime timestamp});
}

/// @nodoc
class _$ChatTypingIndicatorCopyWithImpl<$Res, $Val extends ChatTypingIndicator>
    implements $ChatTypingIndicatorCopyWith<$Res> {
  _$ChatTypingIndicatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? userId = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatTypingIndicatorImplCopyWith<$Res>
    implements $ChatTypingIndicatorCopyWith<$Res> {
  factory _$$ChatTypingIndicatorImplCopyWith(_$ChatTypingIndicatorImpl value,
          $Res Function(_$ChatTypingIndicatorImpl) then) =
      __$$ChatTypingIndicatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String roomId, String userId, DateTime timestamp});
}

/// @nodoc
class __$$ChatTypingIndicatorImplCopyWithImpl<$Res>
    extends _$ChatTypingIndicatorCopyWithImpl<$Res, _$ChatTypingIndicatorImpl>
    implements _$$ChatTypingIndicatorImplCopyWith<$Res> {
  __$$ChatTypingIndicatorImplCopyWithImpl(_$ChatTypingIndicatorImpl _value,
      $Res Function(_$ChatTypingIndicatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? userId = null,
    Object? timestamp = null,
  }) {
    return _then(_$ChatTypingIndicatorImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatTypingIndicatorImpl
    with DiagnosticableTreeMixin
    implements _ChatTypingIndicator {
  const _$ChatTypingIndicatorImpl(
      {required this.roomId, required this.userId, required this.timestamp});

  factory _$ChatTypingIndicatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatTypingIndicatorImplFromJson(json);

  @override
  final String roomId;
  @override
  final String userId;
  @override
  final DateTime timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatTypingIndicator(roomId: $roomId, userId: $userId, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatTypingIndicator'))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatTypingIndicatorImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomId, userId, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatTypingIndicatorImplCopyWith<_$ChatTypingIndicatorImpl> get copyWith =>
      __$$ChatTypingIndicatorImplCopyWithImpl<_$ChatTypingIndicatorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatTypingIndicatorImplToJson(
      this,
    );
  }
}

abstract class _ChatTypingIndicator implements ChatTypingIndicator {
  const factory _ChatTypingIndicator(
      {required final String roomId,
      required final String userId,
      required final DateTime timestamp}) = _$ChatTypingIndicatorImpl;

  factory _ChatTypingIndicator.fromJson(Map<String, dynamic> json) =
      _$ChatTypingIndicatorImpl.fromJson;

  @override
  String get roomId;
  @override
  String get userId;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$ChatTypingIndicatorImplCopyWith<_$ChatTypingIndicatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatPresence _$ChatPresenceFromJson(Map<String, dynamic> json) {
  return _ChatPresence.fromJson(json);
}

/// @nodoc
mixin _$ChatPresence {
  String get userId => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'online', 'offline', 'away'
  DateTime get lastSeen => throw _privateConstructorUsedError;
  String? get deviceInfo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatPresenceCopyWith<ChatPresence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPresenceCopyWith<$Res> {
  factory $ChatPresenceCopyWith(
          ChatPresence value, $Res Function(ChatPresence) then) =
      _$ChatPresenceCopyWithImpl<$Res, ChatPresence>;
  @useResult
  $Res call(
      {String userId,
      String status,
      DateTime lastSeen,
      String? deviceInfo,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ChatPresenceCopyWithImpl<$Res, $Val extends ChatPresence>
    implements $ChatPresenceCopyWith<$Res> {
  _$ChatPresenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = null,
    Object? lastSeen = null,
    Object? deviceInfo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatPresenceImplCopyWith<$Res>
    implements $ChatPresenceCopyWith<$Res> {
  factory _$$ChatPresenceImplCopyWith(
          _$ChatPresenceImpl value, $Res Function(_$ChatPresenceImpl) then) =
      __$$ChatPresenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String status,
      DateTime lastSeen,
      String? deviceInfo,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ChatPresenceImplCopyWithImpl<$Res>
    extends _$ChatPresenceCopyWithImpl<$Res, _$ChatPresenceImpl>
    implements _$$ChatPresenceImplCopyWith<$Res> {
  __$$ChatPresenceImplCopyWithImpl(
      _$ChatPresenceImpl _value, $Res Function(_$ChatPresenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = null,
    Object? lastSeen = null,
    Object? deviceInfo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ChatPresenceImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
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
class _$ChatPresenceImpl with DiagnosticableTreeMixin implements _ChatPresence {
  const _$ChatPresenceImpl(
      {required this.userId,
      required this.status,
      required this.lastSeen,
      this.deviceInfo,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ChatPresenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatPresenceImplFromJson(json);

  @override
  final String userId;
  @override
  final String status;
// 'online', 'offline', 'away'
  @override
  final DateTime lastSeen;
  @override
  final String? deviceInfo;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatPresence(userId: $userId, status: $status, lastSeen: $lastSeen, deviceInfo: $deviceInfo, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatPresence'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('lastSeen', lastSeen))
      ..add(DiagnosticsProperty('deviceInfo', deviceInfo))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatPresenceImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, status, lastSeen,
      deviceInfo, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatPresenceImplCopyWith<_$ChatPresenceImpl> get copyWith =>
      __$$ChatPresenceImplCopyWithImpl<_$ChatPresenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatPresenceImplToJson(
      this,
    );
  }
}

abstract class _ChatPresence implements ChatPresence {
  const factory _ChatPresence(
      {required final String userId,
      required final String status,
      required final DateTime lastSeen,
      final String? deviceInfo,
      final Map<String, dynamic>? metadata}) = _$ChatPresenceImpl;

  factory _ChatPresence.fromJson(Map<String, dynamic> json) =
      _$ChatPresenceImpl.fromJson;

  @override
  String get userId;
  @override
  String get status;
  @override // 'online', 'offline', 'away'
  DateTime get lastSeen;
  @override
  String? get deviceInfo;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ChatPresenceImplCopyWith<_$ChatPresenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
