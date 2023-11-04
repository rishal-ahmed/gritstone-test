import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gritstone_test/domain/models/message/message_model.dart';

part 'message_event.freezed.dart';

@freezed
class MessageEvent with _$MessageEvent {
  //* =-=-=-=-=- Get Messages -=-=-=-=-=
  const factory MessageEvent.messages() = _MessageEvent;

  //* =-=-=-=-=- Add Message -=-=-=-=-=
  const factory MessageEvent.addMessage({required MessageModel message}) =
      _MessageEventAdd;

  //! =-=-=-=-=- Delete All Messages -=-=-=-=-=
  const factory MessageEvent.deleteAllMessages() = _MessageEventDeleteAll;

  //! =-=-=-=-=- Delete Messages -=-=-=-=-=
  const factory MessageEvent.deleteMessage({required int index}) =
      _MessageEventDelete;
}
