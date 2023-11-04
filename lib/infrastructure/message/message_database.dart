import 'package:gritstone_test/domain/models/message/message_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MessageDatabase {
  //? ==--==--==--==-- Get Messages --==--==--==--==
  Future<List<MessageModel>> get getMessages async {
    Box<MessageModel> messagesBox =
        await Hive.openBox<MessageModel>('messageBox');
    final List<MessageModel> messages = messagesBox.values.toList();

    return messages;
  }

  //? ==--==--==--==-- Add Message --==--==--==--==
  Future<MessageModel> addMessage({required MessageModel messageModel}) async {
    Box<MessageModel> messagesBox =
        await Hive.openBox<MessageModel>('messageBox');
    final int id = await messagesBox.add(messageModel);

    final MessageModel? message = messagesBox.get(id);

    return message!;
  }

  //! ==--==--==--==-- Delete Message --==--==--==--==
  Future<void> deleteMessage({required int index}) async {
    Box<MessageModel> messagesBox =
        await Hive.openBox<MessageModel>('messageBox');
    await messagesBox.deleteAt(index);
  }

  //! ==--==--==--==-- Delete All Messages --==--==--==--==
  Future<void> get deleteAllMessages async {
    Box<MessageModel> messagesBox =
        await Hive.openBox<MessageModel>('messageBox');

    await messagesBox.deleteFromDisk();
  }
}
