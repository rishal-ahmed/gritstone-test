import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/application/message/message_event.dart';
import 'package:gritstone_test/application/message/message_notifier.dart';
import 'package:gritstone_test/application/message/message_state.dart';

class MessageProvider {
  MessageProvider._();

  //* ==--==--==--==-- Get Messages --==--==--==--==
  static final messages =
      StateNotifierProvider.autoDispose<MessageNotifier, MessageState>((ref) {
    return MessageNotifier()..emit(const MessageEvent.messages());
  });

  //* ==--==--==--==-- Is Listening --==--==--==--==
  static final isListening = StateProvider.autoDispose<bool>((ref) {
    return false;
  });

  //* ==--==--==--==-- Recognized Value --==--==--==--==
  static final recognizedValue = StateProvider.autoDispose<String>((ref) {
    return '';
  });

  //* ==--==--==--==-- From Key --==--==--==--==
  static final formKey = Provider.autoDispose<GlobalKey<FormState>>((ref) {
    return GlobalKey<FormState>();
  });

  //? ==--==--==--==-- Form Controllers --==--==--==--==
  static final messageController =
      StateProvider<TextEditingController>((ref) {
    return TextEditingController();
  });
}
