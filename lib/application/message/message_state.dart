import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gritstone_test/domain/models/message/message_model.dart';

part 'message_state.freezed.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool status,
    @Default('') String message,
    @Default([]) List<MessageModel> messages,
  }) = _MessageState;
}
