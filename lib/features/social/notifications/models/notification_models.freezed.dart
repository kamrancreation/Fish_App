// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppNotification _$AppNotificationFromJson(Map<String, dynamic> json) {
  return _AppNotification.fromJson(json);
}

/// @nodoc
mixin _$AppNotification {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get actionUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
          AppNotification value, $Res Function(AppNotification) then) =
      _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String body,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isRead,
      String? imageUrl,
      String? actionUrl,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? body = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isRead = null,
    Object? imageUrl = freezed,
    Object? actionUrl = freezed,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppNotificationImplCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$AppNotificationImplCopyWith(_$AppNotificationImpl value,
          $Res Function(_$AppNotificationImpl) then) =
      __$$AppNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String body,
      Map<String, dynamic> data,
      DateTime timestamp,
      bool isRead,
      String? imageUrl,
      String? actionUrl,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$AppNotificationImplCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$AppNotificationImpl>
    implements _$$AppNotificationImplCopyWith<$Res> {
  __$$AppNotificationImplCopyWithImpl(
      _$AppNotificationImpl _value, $Res Function(_$AppNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? body = null,
    Object? data = null,
    Object? timestamp = null,
    Object? isRead = null,
    Object? imageUrl = freezed,
    Object? actionUrl = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$AppNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppNotificationImpl
    with DiagnosticableTreeMixin
    implements _AppNotification {
  const _$AppNotificationImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.body,
      required final Map<String, dynamic> data,
      required this.timestamp,
      this.isRead = false,
      this.imageUrl,
      this.actionUrl,
      final Map<String, dynamic>? metadata})
      : _data = data,
        _metadata = metadata;

  factory _$AppNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppNotificationImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String body;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime timestamp;
  @override
  @JsonKey()
  final bool isRead;
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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppNotification(id: $id, type: $type, title: $title, body: $body, data: $data, timestamp: $timestamp, isRead: $isRead, imageUrl: $imageUrl, actionUrl: $actionUrl, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppNotification'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('isRead', isRead))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('actionUrl', actionUrl))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.actionUrl, actionUrl) ||
                other.actionUrl == actionUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      body,
      const DeepCollectionEquality().hash(_data),
      timestamp,
      isRead,
      imageUrl,
      actionUrl,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      __$$AppNotificationImplCopyWithImpl<_$AppNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppNotificationImplToJson(
      this,
    );
  }
}

abstract class _AppNotification implements AppNotification {
  const factory _AppNotification(
      {required final String id,
      required final String type,
      required final String title,
      required final String body,
      required final Map<String, dynamic> data,
      required final DateTime timestamp,
      final bool isRead,
      final String? imageUrl,
      final String? actionUrl,
      final Map<String, dynamic>? metadata}) = _$AppNotificationImpl;

  factory _AppNotification.fromJson(Map<String, dynamic> json) =
      _$AppNotificationImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get body;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get timestamp;
  @override
  bool get isRead;
  @override
  String? get imageUrl;
  @override
  String? get actionUrl;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatNotification _$ChatNotificationFromJson(Map<String, dynamic> json) {
  return _ChatNotification.fromJson(json);
}

/// @nodoc
mixin _$ChatNotification {
  String get id => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  String get messageText => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get senderName => throw _privateConstructorUsedError;
  String? get senderAvatar => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatNotificationCopyWith<ChatNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatNotificationCopyWith<$Res> {
  factory $ChatNotificationCopyWith(
          ChatNotification value, $Res Function(ChatNotification) then) =
      _$ChatNotificationCopyWithImpl<$Res, ChatNotification>;
  @useResult
  $Res call(
      {String id,
      String roomId,
      String senderId,
      String messageId,
      String messageText,
      DateTime timestamp,
      String? senderName,
      String? senderAvatar,
      bool isRead});
}

/// @nodoc
class _$ChatNotificationCopyWithImpl<$Res, $Val extends ChatNotification>
    implements $ChatNotificationCopyWith<$Res> {
  _$ChatNotificationCopyWithImpl(this._value, this._then);

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
    Object? messageId = null,
    Object? messageText = null,
    Object? timestamp = null,
    Object? senderName = freezed,
    Object? senderAvatar = freezed,
    Object? isRead = null,
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
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      messageText: null == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderAvatar: freezed == senderAvatar
          ? _value.senderAvatar
          : senderAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatNotificationImplCopyWith<$Res>
    implements $ChatNotificationCopyWith<$Res> {
  factory _$$ChatNotificationImplCopyWith(_$ChatNotificationImpl value,
          $Res Function(_$ChatNotificationImpl) then) =
      __$$ChatNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String roomId,
      String senderId,
      String messageId,
      String messageText,
      DateTime timestamp,
      String? senderName,
      String? senderAvatar,
      bool isRead});
}

/// @nodoc
class __$$ChatNotificationImplCopyWithImpl<$Res>
    extends _$ChatNotificationCopyWithImpl<$Res, _$ChatNotificationImpl>
    implements _$$ChatNotificationImplCopyWith<$Res> {
  __$$ChatNotificationImplCopyWithImpl(_$ChatNotificationImpl _value,
      $Res Function(_$ChatNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roomId = null,
    Object? senderId = null,
    Object? messageId = null,
    Object? messageText = null,
    Object? timestamp = null,
    Object? senderName = freezed,
    Object? senderAvatar = freezed,
    Object? isRead = null,
  }) {
    return _then(_$ChatNotificationImpl(
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
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      messageText: null == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderAvatar: freezed == senderAvatar
          ? _value.senderAvatar
          : senderAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatNotificationImpl
    with DiagnosticableTreeMixin
    implements _ChatNotification {
  const _$ChatNotificationImpl(
      {required this.id,
      required this.roomId,
      required this.senderId,
      required this.messageId,
      required this.messageText,
      required this.timestamp,
      this.senderName,
      this.senderAvatar,
      this.isRead = false});

  factory _$ChatNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatNotificationImplFromJson(json);

  @override
  final String id;
  @override
  final String roomId;
  @override
  final String senderId;
  @override
  final String messageId;
  @override
  final String messageText;
  @override
  final DateTime timestamp;
  @override
  final String? senderName;
  @override
  final String? senderAvatar;
  @override
  @JsonKey()
  final bool isRead;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatNotification(id: $id, roomId: $roomId, senderId: $senderId, messageId: $messageId, messageText: $messageText, timestamp: $timestamp, senderName: $senderName, senderAvatar: $senderAvatar, isRead: $isRead)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatNotification'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('senderId', senderId))
      ..add(DiagnosticsProperty('messageId', messageId))
      ..add(DiagnosticsProperty('messageText', messageText))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('senderName', senderName))
      ..add(DiagnosticsProperty('senderAvatar', senderAvatar))
      ..add(DiagnosticsProperty('isRead', isRead));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderAvatar, senderAvatar) ||
                other.senderAvatar == senderAvatar) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, roomId, senderId, messageId,
      messageText, timestamp, senderName, senderAvatar, isRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatNotificationImplCopyWith<_$ChatNotificationImpl> get copyWith =>
      __$$ChatNotificationImplCopyWithImpl<_$ChatNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatNotificationImplToJson(
      this,
    );
  }
}

abstract class _ChatNotification implements ChatNotification {
  const factory _ChatNotification(
      {required final String id,
      required final String roomId,
      required final String senderId,
      required final String messageId,
      required final String messageText,
      required final DateTime timestamp,
      final String? senderName,
      final String? senderAvatar,
      final bool isRead}) = _$ChatNotificationImpl;

  factory _ChatNotification.fromJson(Map<String, dynamic> json) =
      _$ChatNotificationImpl.fromJson;

  @override
  String get id;
  @override
  String get roomId;
  @override
  String get senderId;
  @override
  String get messageId;
  @override
  String get messageText;
  @override
  DateTime get timestamp;
  @override
  String? get senderName;
  @override
  String? get senderAvatar;
  @override
  bool get isRead;
  @override
  @JsonKey(ignore: true)
  _$$ChatNotificationImplCopyWith<_$ChatNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialNotification _$SocialNotificationFromJson(Map<String, dynamic> json) {
  return _SocialNotification.fromJson(json);
}

/// @nodoc
mixin _$SocialNotification {
  String get id => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // like, comment, follow, mention
  String get actorId => throw _privateConstructorUsedError;
  String get targetId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get actorName => throw _privateConstructorUsedError;
  String? get actorAvatar => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialNotificationCopyWith<SocialNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialNotificationCopyWith<$Res> {
  factory $SocialNotificationCopyWith(
          SocialNotification value, $Res Function(SocialNotification) then) =
      _$SocialNotificationCopyWithImpl<$Res, SocialNotification>;
  @useResult
  $Res call(
      {String id,
      String type,
      String actorId,
      String targetId,
      DateTime timestamp,
      String? actorName,
      String? actorAvatar,
      String? content,
      bool isRead,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SocialNotificationCopyWithImpl<$Res, $Val extends SocialNotification>
    implements $SocialNotificationCopyWith<$Res> {
  _$SocialNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? actorId = null,
    Object? targetId = null,
    Object? timestamp = null,
    Object? actorName = freezed,
    Object? actorAvatar = freezed,
    Object? content = freezed,
    Object? isRead = null,
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
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actorName: freezed == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String?,
      actorAvatar: freezed == actorAvatar
          ? _value.actorAvatar
          : actorAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialNotificationImplCopyWith<$Res>
    implements $SocialNotificationCopyWith<$Res> {
  factory _$$SocialNotificationImplCopyWith(_$SocialNotificationImpl value,
          $Res Function(_$SocialNotificationImpl) then) =
      __$$SocialNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String actorId,
      String targetId,
      DateTime timestamp,
      String? actorName,
      String? actorAvatar,
      String? content,
      bool isRead,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$SocialNotificationImplCopyWithImpl<$Res>
    extends _$SocialNotificationCopyWithImpl<$Res, _$SocialNotificationImpl>
    implements _$$SocialNotificationImplCopyWith<$Res> {
  __$$SocialNotificationImplCopyWithImpl(_$SocialNotificationImpl _value,
      $Res Function(_$SocialNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? actorId = null,
    Object? targetId = null,
    Object? timestamp = null,
    Object? actorName = freezed,
    Object? actorAvatar = freezed,
    Object? content = freezed,
    Object? isRead = null,
    Object? metadata = freezed,
  }) {
    return _then(_$SocialNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actorName: freezed == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String?,
      actorAvatar: freezed == actorAvatar
          ? _value.actorAvatar
          : actorAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialNotificationImpl
    with DiagnosticableTreeMixin
    implements _SocialNotification {
  const _$SocialNotificationImpl(
      {required this.id,
      required this.type,
      required this.actorId,
      required this.targetId,
      required this.timestamp,
      this.actorName,
      this.actorAvatar,
      this.content,
      this.isRead = false,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$SocialNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialNotificationImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
// like, comment, follow, mention
  @override
  final String actorId;
  @override
  final String targetId;
  @override
  final DateTime timestamp;
  @override
  final String? actorName;
  @override
  final String? actorAvatar;
  @override
  final String? content;
  @override
  @JsonKey()
  final bool isRead;
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
    return 'SocialNotification(id: $id, type: $type, actorId: $actorId, targetId: $targetId, timestamp: $timestamp, actorName: $actorName, actorAvatar: $actorAvatar, content: $content, isRead: $isRead, metadata: $metadata)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SocialNotification'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('actorId', actorId))
      ..add(DiagnosticsProperty('targetId', targetId))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('actorName', actorName))
      ..add(DiagnosticsProperty('actorAvatar', actorAvatar))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('isRead', isRead))
      ..add(DiagnosticsProperty('metadata', metadata));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.actorName, actorName) ||
                other.actorName == actorName) &&
            (identical(other.actorAvatar, actorAvatar) ||
                other.actorAvatar == actorAvatar) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      actorId,
      targetId,
      timestamp,
      actorName,
      actorAvatar,
      content,
      isRead,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialNotificationImplCopyWith<_$SocialNotificationImpl> get copyWith =>
      __$$SocialNotificationImplCopyWithImpl<_$SocialNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialNotificationImplToJson(
      this,
    );
  }
}

abstract class _SocialNotification implements SocialNotification {
  const factory _SocialNotification(
      {required final String id,
      required final String type,
      required final String actorId,
      required final String targetId,
      required final DateTime timestamp,
      final String? actorName,
      final String? actorAvatar,
      final String? content,
      final bool isRead,
      final Map<String, dynamic>? metadata}) = _$SocialNotificationImpl;

  factory _SocialNotification.fromJson(Map<String, dynamic> json) =
      _$SocialNotificationImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override // like, comment, follow, mention
  String get actorId;
  @override
  String get targetId;
  @override
  DateTime get timestamp;
  @override
  String? get actorName;
  @override
  String? get actorAvatar;
  @override
  String? get content;
  @override
  bool get isRead;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SocialNotificationImplCopyWith<_$SocialNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationSettings _$NotificationSettingsFromJson(Map<String, dynamic> json) {
  return _NotificationSettings.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettings {
  String get userId => throw _privateConstructorUsedError;
  bool get pushEnabled => throw _privateConstructorUsedError;
  bool get emailEnabled => throw _privateConstructorUsedError;
  bool get chatNotifications => throw _privateConstructorUsedError;
  bool get socialNotifications => throw _privateConstructorUsedError;
  bool get systemNotifications => throw _privateConstructorUsedError;
  Map<String, bool> get specificSettings => throw _privateConstructorUsedError;
  DateTime? get quietHoursStart => throw _privateConstructorUsedError;
  DateTime? get quietHoursEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationSettingsCopyWith<NotificationSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsCopyWith<$Res> {
  factory $NotificationSettingsCopyWith(NotificationSettings value,
          $Res Function(NotificationSettings) then) =
      _$NotificationSettingsCopyWithImpl<$Res, NotificationSettings>;
  @useResult
  $Res call(
      {String userId,
      bool pushEnabled,
      bool emailEnabled,
      bool chatNotifications,
      bool socialNotifications,
      bool systemNotifications,
      Map<String, bool> specificSettings,
      DateTime? quietHoursStart,
      DateTime? quietHoursEnd});
}

/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res,
        $Val extends NotificationSettings>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? pushEnabled = null,
    Object? emailEnabled = null,
    Object? chatNotifications = null,
    Object? socialNotifications = null,
    Object? systemNotifications = null,
    Object? specificSettings = null,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      pushEnabled: null == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailEnabled: null == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      chatNotifications: null == chatNotifications
          ? _value.chatNotifications
          : chatNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      socialNotifications: null == socialNotifications
          ? _value.socialNotifications
          : socialNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      systemNotifications: null == systemNotifications
          ? _value.systemNotifications
          : systemNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      specificSettings: null == specificSettings
          ? _value.specificSettings
          : specificSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSettingsImplCopyWith<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  factory _$$NotificationSettingsImplCopyWith(_$NotificationSettingsImpl value,
          $Res Function(_$NotificationSettingsImpl) then) =
      __$$NotificationSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      bool pushEnabled,
      bool emailEnabled,
      bool chatNotifications,
      bool socialNotifications,
      bool systemNotifications,
      Map<String, bool> specificSettings,
      DateTime? quietHoursStart,
      DateTime? quietHoursEnd});
}

/// @nodoc
class __$$NotificationSettingsImplCopyWithImpl<$Res>
    extends _$NotificationSettingsCopyWithImpl<$Res, _$NotificationSettingsImpl>
    implements _$$NotificationSettingsImplCopyWith<$Res> {
  __$$NotificationSettingsImplCopyWithImpl(_$NotificationSettingsImpl _value,
      $Res Function(_$NotificationSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? pushEnabled = null,
    Object? emailEnabled = null,
    Object? chatNotifications = null,
    Object? socialNotifications = null,
    Object? systemNotifications = null,
    Object? specificSettings = null,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
  }) {
    return _then(_$NotificationSettingsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      pushEnabled: null == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailEnabled: null == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      chatNotifications: null == chatNotifications
          ? _value.chatNotifications
          : chatNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      socialNotifications: null == socialNotifications
          ? _value.socialNotifications
          : socialNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      systemNotifications: null == systemNotifications
          ? _value.systemNotifications
          : systemNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      specificSettings: null == specificSettings
          ? _value._specificSettings
          : specificSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingsImpl
    with DiagnosticableTreeMixin
    implements _NotificationSettings {
  const _$NotificationSettingsImpl(
      {required this.userId,
      this.pushEnabled = true,
      this.emailEnabled = true,
      this.chatNotifications = true,
      this.socialNotifications = true,
      this.systemNotifications = true,
      final Map<String, bool> specificSettings = const {},
      this.quietHoursStart,
      this.quietHoursEnd})
      : _specificSettings = specificSettings;

  factory _$NotificationSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingsImplFromJson(json);

  @override
  final String userId;
  @override
  @JsonKey()
  final bool pushEnabled;
  @override
  @JsonKey()
  final bool emailEnabled;
  @override
  @JsonKey()
  final bool chatNotifications;
  @override
  @JsonKey()
  final bool socialNotifications;
  @override
  @JsonKey()
  final bool systemNotifications;
  final Map<String, bool> _specificSettings;
  @override
  @JsonKey()
  Map<String, bool> get specificSettings {
    if (_specificSettings is EqualUnmodifiableMapView) return _specificSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_specificSettings);
  }

  @override
  final DateTime? quietHoursStart;
  @override
  final DateTime? quietHoursEnd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationSettings(userId: $userId, pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, chatNotifications: $chatNotifications, socialNotifications: $socialNotifications, systemNotifications: $systemNotifications, specificSettings: $specificSettings, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationSettings'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('pushEnabled', pushEnabled))
      ..add(DiagnosticsProperty('emailEnabled', emailEnabled))
      ..add(DiagnosticsProperty('chatNotifications', chatNotifications))
      ..add(DiagnosticsProperty('socialNotifications', socialNotifications))
      ..add(DiagnosticsProperty('systemNotifications', systemNotifications))
      ..add(DiagnosticsProperty('specificSettings', specificSettings))
      ..add(DiagnosticsProperty('quietHoursStart', quietHoursStart))
      ..add(DiagnosticsProperty('quietHoursEnd', quietHoursEnd));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.emailEnabled, emailEnabled) ||
                other.emailEnabled == emailEnabled) &&
            (identical(other.chatNotifications, chatNotifications) ||
                other.chatNotifications == chatNotifications) &&
            (identical(other.socialNotifications, socialNotifications) ||
                other.socialNotifications == socialNotifications) &&
            (identical(other.systemNotifications, systemNotifications) ||
                other.systemNotifications == systemNotifications) &&
            const DeepCollectionEquality()
                .equals(other._specificSettings, _specificSettings) &&
            (identical(other.quietHoursStart, quietHoursStart) ||
                other.quietHoursStart == quietHoursStart) &&
            (identical(other.quietHoursEnd, quietHoursEnd) ||
                other.quietHoursEnd == quietHoursEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      pushEnabled,
      emailEnabled,
      chatNotifications,
      socialNotifications,
      systemNotifications,
      const DeepCollectionEquality().hash(_specificSettings),
      quietHoursStart,
      quietHoursEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith =>
          __$$NotificationSettingsImplCopyWithImpl<_$NotificationSettingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingsImplToJson(
      this,
    );
  }
}

abstract class _NotificationSettings implements NotificationSettings {
  const factory _NotificationSettings(
      {required final String userId,
      final bool pushEnabled,
      final bool emailEnabled,
      final bool chatNotifications,
      final bool socialNotifications,
      final bool systemNotifications,
      final Map<String, bool> specificSettings,
      final DateTime? quietHoursStart,
      final DateTime? quietHoursEnd}) = _$NotificationSettingsImpl;

  factory _NotificationSettings.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingsImpl.fromJson;

  @override
  String get userId;
  @override
  bool get pushEnabled;
  @override
  bool get emailEnabled;
  @override
  bool get chatNotifications;
  @override
  bool get socialNotifications;
  @override
  bool get systemNotifications;
  @override
  Map<String, bool> get specificSettings;
  @override
  DateTime? get quietHoursStart;
  @override
  DateTime? get quietHoursEnd;
  @override
  @JsonKey(ignore: true)
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationToken _$NotificationTokenFromJson(Map<String, dynamic> json) {
  return _NotificationToken.fromJson(json);
}

/// @nodoc
mixin _$NotificationToken {
  String get userId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get deviceInfo => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationTokenCopyWith<NotificationToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationTokenCopyWith<$Res> {
  factory $NotificationTokenCopyWith(
          NotificationToken value, $Res Function(NotificationToken) then) =
      _$NotificationTokenCopyWithImpl<$Res, NotificationToken>;
  @useResult
  $Res call(
      {String userId,
      String token,
      String platform,
      DateTime lastUpdated,
      String? deviceId,
      String? deviceInfo,
      bool isActive});
}

/// @nodoc
class _$NotificationTokenCopyWithImpl<$Res, $Val extends NotificationToken>
    implements $NotificationTokenCopyWith<$Res> {
  _$NotificationTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? token = null,
    Object? platform = null,
    Object? lastUpdated = null,
    Object? deviceId = freezed,
    Object? deviceInfo = freezed,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationTokenImplCopyWith<$Res>
    implements $NotificationTokenCopyWith<$Res> {
  factory _$$NotificationTokenImplCopyWith(_$NotificationTokenImpl value,
          $Res Function(_$NotificationTokenImpl) then) =
      __$$NotificationTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String token,
      String platform,
      DateTime lastUpdated,
      String? deviceId,
      String? deviceInfo,
      bool isActive});
}

/// @nodoc
class __$$NotificationTokenImplCopyWithImpl<$Res>
    extends _$NotificationTokenCopyWithImpl<$Res, _$NotificationTokenImpl>
    implements _$$NotificationTokenImplCopyWith<$Res> {
  __$$NotificationTokenImplCopyWithImpl(_$NotificationTokenImpl _value,
      $Res Function(_$NotificationTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? token = null,
    Object? platform = null,
    Object? lastUpdated = null,
    Object? deviceId = freezed,
    Object? deviceInfo = freezed,
    Object? isActive = null,
  }) {
    return _then(_$NotificationTokenImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationTokenImpl
    with DiagnosticableTreeMixin
    implements _NotificationToken {
  const _$NotificationTokenImpl(
      {required this.userId,
      required this.token,
      required this.platform,
      required this.lastUpdated,
      this.deviceId,
      this.deviceInfo,
      this.isActive = true});

  factory _$NotificationTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationTokenImplFromJson(json);

  @override
  final String userId;
  @override
  final String token;
  @override
  final String platform;
  @override
  final DateTime lastUpdated;
  @override
  final String? deviceId;
  @override
  final String? deviceInfo;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationToken(userId: $userId, token: $token, platform: $platform, lastUpdated: $lastUpdated, deviceId: $deviceId, deviceInfo: $deviceInfo, isActive: $isActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationToken'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('platform', platform))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('deviceInfo', deviceInfo))
      ..add(DiagnosticsProperty('isActive', isActive));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationTokenImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, token, platform,
      lastUpdated, deviceId, deviceInfo, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationTokenImplCopyWith<_$NotificationTokenImpl> get copyWith =>
      __$$NotificationTokenImplCopyWithImpl<_$NotificationTokenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationTokenImplToJson(
      this,
    );
  }
}

abstract class _NotificationToken implements NotificationToken {
  const factory _NotificationToken(
      {required final String userId,
      required final String token,
      required final String platform,
      required final DateTime lastUpdated,
      final String? deviceId,
      final String? deviceInfo,
      final bool isActive}) = _$NotificationTokenImpl;

  factory _NotificationToken.fromJson(Map<String, dynamic> json) =
      _$NotificationTokenImpl.fromJson;

  @override
  String get userId;
  @override
  String get token;
  @override
  String get platform;
  @override
  DateTime get lastUpdated;
  @override
  String? get deviceId;
  @override
  String? get deviceInfo;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$NotificationTokenImplCopyWith<_$NotificationTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationBatch _$NotificationBatchFromJson(Map<String, dynamic> json) {
  return _NotificationBatch.fromJson(json);
}

/// @nodoc
mixin _$NotificationBatch {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String> get recipients => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  DateTime get scheduledFor => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationBatchCopyWith<NotificationBatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationBatchCopyWith<$Res> {
  factory $NotificationBatchCopyWith(
          NotificationBatch value, $Res Function(NotificationBatch) then) =
      _$NotificationBatchCopyWithImpl<$Res, NotificationBatch>;
  @useResult
  $Res call(
      {String id,
      String type,
      List<String> recipients,
      String title,
      String body,
      Map<String, dynamic> data,
      DateTime scheduledFor,
      String status,
      DateTime? sentAt,
      Map<String, dynamic>? results});
}

/// @nodoc
class _$NotificationBatchCopyWithImpl<$Res, $Val extends NotificationBatch>
    implements $NotificationBatchCopyWith<$Res> {
  _$NotificationBatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? recipients = null,
    Object? title = null,
    Object? body = null,
    Object? data = null,
    Object? scheduledFor = null,
    Object? status = null,
    Object? sentAt = freezed,
    Object? results = freezed,
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
      recipients: null == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      scheduledFor: null == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationBatchImplCopyWith<$Res>
    implements $NotificationBatchCopyWith<$Res> {
  factory _$$NotificationBatchImplCopyWith(_$NotificationBatchImpl value,
          $Res Function(_$NotificationBatchImpl) then) =
      __$$NotificationBatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      List<String> recipients,
      String title,
      String body,
      Map<String, dynamic> data,
      DateTime scheduledFor,
      String status,
      DateTime? sentAt,
      Map<String, dynamic>? results});
}

/// @nodoc
class __$$NotificationBatchImplCopyWithImpl<$Res>
    extends _$NotificationBatchCopyWithImpl<$Res, _$NotificationBatchImpl>
    implements _$$NotificationBatchImplCopyWith<$Res> {
  __$$NotificationBatchImplCopyWithImpl(_$NotificationBatchImpl _value,
      $Res Function(_$NotificationBatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? recipients = null,
    Object? title = null,
    Object? body = null,
    Object? data = null,
    Object? scheduledFor = null,
    Object? status = null,
    Object? sentAt = freezed,
    Object? results = freezed,
  }) {
    return _then(_$NotificationBatchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      recipients: null == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      scheduledFor: null == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationBatchImpl
    with DiagnosticableTreeMixin
    implements _NotificationBatch {
  const _$NotificationBatchImpl(
      {required this.id,
      required this.type,
      required final List<String> recipients,
      required this.title,
      required this.body,
      required final Map<String, dynamic> data,
      required this.scheduledFor,
      this.status = 'pending',
      this.sentAt,
      final Map<String, dynamic>? results})
      : _recipients = recipients,
        _data = data,
        _results = results;

  factory _$NotificationBatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationBatchImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  final List<String> _recipients;
  @override
  List<String> get recipients {
    if (_recipients is EqualUnmodifiableListView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipients);
  }

  @override
  final String title;
  @override
  final String body;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime scheduledFor;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime? sentAt;
  final Map<String, dynamic>? _results;
  @override
  Map<String, dynamic>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableMapView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationBatch(id: $id, type: $type, recipients: $recipients, title: $title, body: $body, data: $data, scheduledFor: $scheduledFor, status: $status, sentAt: $sentAt, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationBatch'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('recipients', recipients))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('scheduledFor', scheduledFor))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('sentAt', sentAt))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationBatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.scheduledFor, scheduledFor) ||
                other.scheduledFor == scheduledFor) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      const DeepCollectionEquality().hash(_recipients),
      title,
      body,
      const DeepCollectionEquality().hash(_data),
      scheduledFor,
      status,
      sentAt,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationBatchImplCopyWith<_$NotificationBatchImpl> get copyWith =>
      __$$NotificationBatchImplCopyWithImpl<_$NotificationBatchImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationBatchImplToJson(
      this,
    );
  }
}

abstract class _NotificationBatch implements NotificationBatch {
  const factory _NotificationBatch(
      {required final String id,
      required final String type,
      required final List<String> recipients,
      required final String title,
      required final String body,
      required final Map<String, dynamic> data,
      required final DateTime scheduledFor,
      final String status,
      final DateTime? sentAt,
      final Map<String, dynamic>? results}) = _$NotificationBatchImpl;

  factory _NotificationBatch.fromJson(Map<String, dynamic> json) =
      _$NotificationBatchImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  List<String> get recipients;
  @override
  String get title;
  @override
  String get body;
  @override
  Map<String, dynamic> get data;
  @override
  DateTime get scheduledFor;
  @override
  String get status;
  @override
  DateTime? get sentAt;
  @override
  Map<String, dynamic>? get results;
  @override
  @JsonKey(ignore: true)
  _$$NotificationBatchImplCopyWith<_$NotificationBatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationTemplate _$NotificationTemplateFromJson(Map<String, dynamic> json) {
  return _NotificationTemplate.fromJson(json);
}

/// @nodoc
mixin _$NotificationTemplate {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  Map<String, dynamic>? get defaultData => throw _privateConstructorUsedError;
  Map<String, String>? get translations => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationTemplateCopyWith<NotificationTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationTemplateCopyWith<$Res> {
  factory $NotificationTemplateCopyWith(NotificationTemplate value,
          $Res Function(NotificationTemplate) then) =
      _$NotificationTemplateCopyWithImpl<$Res, NotificationTemplate>;
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String body,
      Map<String, dynamic>? defaultData,
      Map<String, String>? translations,
      bool isActive});
}

/// @nodoc
class _$NotificationTemplateCopyWithImpl<$Res,
        $Val extends NotificationTemplate>
    implements $NotificationTemplateCopyWith<$Res> {
  _$NotificationTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? body = null,
    Object? defaultData = freezed,
    Object? translations = freezed,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      defaultData: freezed == defaultData
          ? _value.defaultData
          : defaultData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      translations: freezed == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationTemplateImplCopyWith<$Res>
    implements $NotificationTemplateCopyWith<$Res> {
  factory _$$NotificationTemplateImplCopyWith(_$NotificationTemplateImpl value,
          $Res Function(_$NotificationTemplateImpl) then) =
      __$$NotificationTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String title,
      String body,
      Map<String, dynamic>? defaultData,
      Map<String, String>? translations,
      bool isActive});
}

/// @nodoc
class __$$NotificationTemplateImplCopyWithImpl<$Res>
    extends _$NotificationTemplateCopyWithImpl<$Res, _$NotificationTemplateImpl>
    implements _$$NotificationTemplateImplCopyWith<$Res> {
  __$$NotificationTemplateImplCopyWithImpl(_$NotificationTemplateImpl _value,
      $Res Function(_$NotificationTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? body = null,
    Object? defaultData = freezed,
    Object? translations = freezed,
    Object? isActive = null,
  }) {
    return _then(_$NotificationTemplateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      defaultData: freezed == defaultData
          ? _value._defaultData
          : defaultData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      translations: freezed == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationTemplateImpl
    with DiagnosticableTreeMixin
    implements _NotificationTemplate {
  const _$NotificationTemplateImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.body,
      final Map<String, dynamic>? defaultData,
      final Map<String, String>? translations,
      this.isActive = true})
      : _defaultData = defaultData,
        _translations = translations;

  factory _$NotificationTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationTemplateImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String body;
  final Map<String, dynamic>? _defaultData;
  @override
  Map<String, dynamic>? get defaultData {
    final value = _defaultData;
    if (value == null) return null;
    if (_defaultData is EqualUnmodifiableMapView) return _defaultData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _translations;
  @override
  Map<String, String>? get translations {
    final value = _translations;
    if (value == null) return null;
    if (_translations is EqualUnmodifiableMapView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationTemplate(id: $id, type: $type, title: $title, body: $body, defaultData: $defaultData, translations: $translations, isActive: $isActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationTemplate'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('defaultData', defaultData))
      ..add(DiagnosticsProperty('translations', translations))
      ..add(DiagnosticsProperty('isActive', isActive));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationTemplateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality()
                .equals(other._defaultData, _defaultData) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      body,
      const DeepCollectionEquality().hash(_defaultData),
      const DeepCollectionEquality().hash(_translations),
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationTemplateImplCopyWith<_$NotificationTemplateImpl>
      get copyWith =>
          __$$NotificationTemplateImplCopyWithImpl<_$NotificationTemplateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationTemplateImplToJson(
      this,
    );
  }
}

abstract class _NotificationTemplate implements NotificationTemplate {
  const factory _NotificationTemplate(
      {required final String id,
      required final String type,
      required final String title,
      required final String body,
      final Map<String, dynamic>? defaultData,
      final Map<String, String>? translations,
      final bool isActive}) = _$NotificationTemplateImpl;

  factory _NotificationTemplate.fromJson(Map<String, dynamic> json) =
      _$NotificationTemplateImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get body;
  @override
  Map<String, dynamic>? get defaultData;
  @override
  Map<String, String>? get translations;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$NotificationTemplateImplCopyWith<_$NotificationTemplateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
