import 'package:hive/hive.dart';

part 'message_model.g.dart';

@HiveType(typeId: 1)
class MessageModel {
  MessageModel({required this.message, required this.dateTime});

  @HiveField(0)
  String message;

  @HiveField(1)
  DateTime dateTime;
}
