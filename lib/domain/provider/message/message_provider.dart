import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/application/message/message_event.dart';
import 'package:gritstone_test/application/message/message_notifier.dart';
import 'package:gritstone_test/application/message/message_state.dart';

class MessageProvider {
  MessageProvider._();

  //* ==--==--==--==-- Get Messages --==--==--==--==
  static final messages =
      StateNotifierProvider<MessageNotifier, MessageState>((ref) {
    return MessageNotifier()..emit(const MessageEvent.messages());
  });

  //* ==--==--==--==-- From Key --==--==--==--==
  static final formKey = Provider.autoDispose<GlobalKey<FormState>>((ref) {
    return GlobalKey<FormState>();
  });

  //? ==--==--==--==-- Form Controllers --==--==--==--==
  static final messageController =
      Provider.autoDispose<TextEditingController>((ref) {
    return TextEditingController();
  });
}
