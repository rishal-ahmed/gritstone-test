// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function() deleteAllMessages,
    required TResult Function(int index) deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? messages,
    TResult? Function(MessageModel message)? addMessage,
    TResult? Function()? deleteAllMessages,
    TResult? Function(int index)? deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function()? deleteAllMessages,
    TResult Function(int index)? deleteMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageEvent value) messages,
    required TResult Function(_MessageEventAdd value) addMessage,
    required TResult Function(_MessageEventDeleteAll value) deleteAllMessages,
    required TResult Function(_MessageEventDelete value) deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageEvent value)? messages,
    TResult? Function(_MessageEventAdd value)? addMessage,
    TResult? Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult? Function(_MessageEventDelete value)? deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageEvent value)? messages,
    TResult Function(_MessageEventAdd value)? addMessage,
    TResult Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult Function(_MessageEventDelete value)? deleteMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res, MessageEvent>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res, $Val extends MessageEvent>
    implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MessageEventImplCopyWith<$Res> {
  factory _$$MessageEventImplCopyWith(
          _$MessageEventImpl value, $Res Function(_$MessageEventImpl) then) =
      __$$MessageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageEventImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$MessageEventImpl>
    implements _$$MessageEventImplCopyWith<$Res> {
  __$$MessageEventImplCopyWithImpl(
      _$MessageEventImpl _value, $Res Function(_$MessageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MessageEventImpl implements _MessageEvent {
  const _$MessageEventImpl();

  @override
  String toString() {
    return 'MessageEvent.messages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function() deleteAllMessages,
    required TResult Function(int index) deleteMessage,
  }) {
    return messages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? messages,
    TResult? Function(MessageModel message)? addMessage,
    TResult? Function()? deleteAllMessages,
    TResult? Function(int index)? deleteMessage,
  }) {
    return messages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function()? deleteAllMessages,
    TResult Function(int index)? deleteMessage,
    required TResult orElse(),
  }) {
    if (messages != null) {
      return messages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageEvent value) messages,
    required TResult Function(_MessageEventAdd value) addMessage,
    required TResult Function(_MessageEventDeleteAll value) deleteAllMessages,
    required TResult Function(_MessageEventDelete value) deleteMessage,
  }) {
    return messages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageEvent value)? messages,
    TResult? Function(_MessageEventAdd value)? addMessage,
    TResult? Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult? Function(_MessageEventDelete value)? deleteMessage,
  }) {
    return messages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageEvent value)? messages,
    TResult Function(_MessageEventAdd value)? addMessage,
    TResult Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult Function(_MessageEventDelete value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (messages != null) {
      return messages(this);
    }
    return orElse();
  }
}

abstract class _MessageEvent implements MessageEvent {
  const factory _MessageEvent() = _$MessageEventImpl;
}

/// @nodoc
abstract class _$$MessageEventAddImplCopyWith<$Res> {
  factory _$$MessageEventAddImplCopyWith(_$MessageEventAddImpl value,
          $Res Function(_$MessageEventAddImpl) then) =
      __$$MessageEventAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageModel message});
}

/// @nodoc
class __$$MessageEventAddImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$MessageEventAddImpl>
    implements _$$MessageEventAddImplCopyWith<$Res> {
  __$$MessageEventAddImplCopyWithImpl(
      _$MessageEventAddImpl _value, $Res Function(_$MessageEventAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageEventAddImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ));
  }
}

/// @nodoc

class _$MessageEventAddImpl implements _MessageEventAdd {
  const _$MessageEventAddImpl({required this.message});

  @override
  final MessageModel message;

  @override
  String toString() {
    return 'MessageEvent.addMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageEventAddImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageEventAddImplCopyWith<_$MessageEventAddImpl> get copyWith =>
      __$$MessageEventAddImplCopyWithImpl<_$MessageEventAddImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function() deleteAllMessages,
    required TResult Function(int index) deleteMessage,
  }) {
    return addMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? messages,
    TResult? Function(MessageModel message)? addMessage,
    TResult? Function()? deleteAllMessages,
    TResult? Function(int index)? deleteMessage,
  }) {
    return addMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function()? deleteAllMessages,
    TResult Function(int index)? deleteMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageEvent value) messages,
    required TResult Function(_MessageEventAdd value) addMessage,
    required TResult Function(_MessageEventDeleteAll value) deleteAllMessages,
    required TResult Function(_MessageEventDelete value) deleteMessage,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageEvent value)? messages,
    TResult? Function(_MessageEventAdd value)? addMessage,
    TResult? Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult? Function(_MessageEventDelete value)? deleteMessage,
  }) {
    return addMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageEvent value)? messages,
    TResult Function(_MessageEventAdd value)? addMessage,
    TResult Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult Function(_MessageEventDelete value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class _MessageEventAdd implements MessageEvent {
  const factory _MessageEventAdd({required final MessageModel message}) =
      _$MessageEventAddImpl;

  MessageModel get message;
  @JsonKey(ignore: true)
  _$$MessageEventAddImplCopyWith<_$MessageEventAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageEventDeleteAllImplCopyWith<$Res> {
  factory _$$MessageEventDeleteAllImplCopyWith(
          _$MessageEventDeleteAllImpl value,
          $Res Function(_$MessageEventDeleteAllImpl) then) =
      __$$MessageEventDeleteAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageEventDeleteAllImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$MessageEventDeleteAllImpl>
    implements _$$MessageEventDeleteAllImplCopyWith<$Res> {
  __$$MessageEventDeleteAllImplCopyWithImpl(_$MessageEventDeleteAllImpl _value,
      $Res Function(_$MessageEventDeleteAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MessageEventDeleteAllImpl implements _MessageEventDeleteAll {
  const _$MessageEventDeleteAllImpl();

  @override
  String toString() {
    return 'MessageEvent.deleteAllMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageEventDeleteAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function() deleteAllMessages,
    required TResult Function(int index) deleteMessage,
  }) {
    return deleteAllMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? messages,
    TResult? Function(MessageModel message)? addMessage,
    TResult? Function()? deleteAllMessages,
    TResult? Function(int index)? deleteMessage,
  }) {
    return deleteAllMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function()? deleteAllMessages,
    TResult Function(int index)? deleteMessage,
    required TResult orElse(),
  }) {
    if (deleteAllMessages != null) {
      return deleteAllMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageEvent value) messages,
    required TResult Function(_MessageEventAdd value) addMessage,
    required TResult Function(_MessageEventDeleteAll value) deleteAllMessages,
    required TResult Function(_MessageEventDelete value) deleteMessage,
  }) {
    return deleteAllMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageEvent value)? messages,
    TResult? Function(_MessageEventAdd value)? addMessage,
    TResult? Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult? Function(_MessageEventDelete value)? deleteMessage,
  }) {
    return deleteAllMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageEvent value)? messages,
    TResult Function(_MessageEventAdd value)? addMessage,
    TResult Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult Function(_MessageEventDelete value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (deleteAllMessages != null) {
      return deleteAllMessages(this);
    }
    return orElse();
  }
}

abstract class _MessageEventDeleteAll implements MessageEvent {
  const factory _MessageEventDeleteAll() = _$MessageEventDeleteAllImpl;
}

/// @nodoc
abstract class _$$MessageEventDeleteImplCopyWith<$Res> {
  factory _$$MessageEventDeleteImplCopyWith(_$MessageEventDeleteImpl value,
          $Res Function(_$MessageEventDeleteImpl) then) =
      __$$MessageEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$MessageEventDeleteImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$MessageEventDeleteImpl>
    implements _$$MessageEventDeleteImplCopyWith<$Res> {
  __$$MessageEventDeleteImplCopyWithImpl(_$MessageEventDeleteImpl _value,
      $Res Function(_$MessageEventDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$MessageEventDeleteImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MessageEventDeleteImpl implements _MessageEventDelete {
  const _$MessageEventDeleteImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'MessageEvent.deleteMessage(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageEventDeleteImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageEventDeleteImplCopyWith<_$MessageEventDeleteImpl> get copyWith =>
      __$$MessageEventDeleteImplCopyWithImpl<_$MessageEventDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function() deleteAllMessages,
    required TResult Function(int index) deleteMessage,
  }) {
    return deleteMessage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? messages,
    TResult? Function(MessageModel message)? addMessage,
    TResult? Function()? deleteAllMessages,
    TResult? Function(int index)? deleteMessage,
  }) {
    return deleteMessage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function()? deleteAllMessages,
    TResult Function(int index)? deleteMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageEvent value) messages,
    required TResult Function(_MessageEventAdd value) addMessage,
    required TResult Function(_MessageEventDeleteAll value) deleteAllMessages,
    required TResult Function(_MessageEventDelete value) deleteMessage,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageEvent value)? messages,
    TResult? Function(_MessageEventAdd value)? addMessage,
    TResult? Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult? Function(_MessageEventDelete value)? deleteMessage,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageEvent value)? messages,
    TResult Function(_MessageEventAdd value)? addMessage,
    TResult Function(_MessageEventDeleteAll value)? deleteAllMessages,
    TResult Function(_MessageEventDelete value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _MessageEventDelete implements MessageEvent {
  const factory _MessageEventDelete({required final int index}) =
      _$MessageEventDeleteImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$MessageEventDeleteImplCopyWith<_$MessageEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
