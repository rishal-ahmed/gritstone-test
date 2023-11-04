import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/application/message/message_event.dart';
import 'package:gritstone_test/application/message/message_state.dart';
import 'package:gritstone_test/domain/models/message/message_model.dart';
import 'package:gritstone_test/infrastructure/message/message_database.dart';

class MessageNotifier extends StateNotifier<MessageState> {
  MessageNotifier() : super(const MessageState());

  //* ==--==--==-- Initial State --==--==--==
  final MessageState initialState = const MessageState();

  Future emit(MessageEvent event) async {
    event.map(
      //? =-=-=-=-=-=-=-=- Get Messages ~ Event -=-=-=-=-=-=-=-=
      messages: (event) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Api Call
        final List<MessageModel> messages = await MessageDatabase().getMessages;

        // Notify UI
        state = initialState.copyWith(messages: messages, status: true);
      },

      //? =-=-=-=-=-=-=-=- Contact Us ~ Event -=-=-=-=-=-=-=-=
      addMessage: (event) async {
        // Loading
        // state = state.copyWith(isLoading: true);

        // Api Call
        final MessageModel message =
            await MessageDatabase().addMessage(messageModel: event.message);

        // Notify UI
        state = initialState
            .copyWith(status: true, messages: [...state.messages, message]);
      },
    );
  }
}
