import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/application/message/message_event.dart';
import 'package:gritstone_test/application/message/message_state.dart';
import 'package:gritstone_test/core/constant/colors.dart';
import 'package:gritstone_test/core/constant/names.dart';
import 'package:gritstone_test/core/constant/sizes.dart';
import 'package:gritstone_test/domain/models/message/message_model.dart';
import 'package:gritstone_test/domain/provider/message/message_provider.dart';
import 'package:gritstone_test/domain/utils/converter/converter_utils.dart';
import 'package:gritstone_test/domain/utils/validator/validator_utils.dart';
import 'package:gritstone_test/presentation/screens/home/widgets/message_widget.dart';
import 'package:gritstone_test/presentation/widgets/appbar/appbar.dart';
import 'package:gritstone_test/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenHome extends ConsumerWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppbarWidget(
        logo: true,
        title: appName,
        actions: [
          //* ==--==--==-- Clear All ~ Button --==--==--==
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.clear_all),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //* ==--==--==--==-- Messages --==--==--==--==
              Consumer(
                builder: (_, WidgetRef ref, __) {
                  //* ~~~~~~ Messages ~ State ~~~~~~
                  final MessageState state =
                      ref.watch(MessageProvider.messages);

                  // Loading..
                  if (state.isLoading) {
                    return const Center(
                        child: CircularProgressIndicator.adaptive());
                  }

                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        final MessageModel message = state.messages[index];

                        //* ==--==-- Message Widget --==--==
                        return MessageWidget(message: message);
                      },
                      separatorBuilder: (context, index) {
                        return kHeight10;
                      },
                      itemCount: state.messages.length,
                    ),
                  );
                },
              ),
              kHeight15,

              //* ==--==--==--==-- Type/Voice Fields --==--==--==--==
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Consumer(
                          builder: (_, WidgetRef ref, __) {
                            return Form(
                              key: ref.watch(MessageProvider.formKey),
                              child: TextFeildWidget(
                                controller: ref
                                    .watch(MessageProvider.messageController),
                                hintText: 'Type a message',
                                validator: (value) =>
                                    ValidatorUtils.nullValidator(value),
                                errorStyle: false,
                              ),
                            );
                          },
                        ),
                      ),
                      kWidth10,
                      //* ==--==--==-- Message ~ Field --==--==--==
                      InkWell(
                        onTap: () {
                          //* -- Form State --
                          final FormState? formState =
                              ref.read(MessageProvider.formKey).currentState;

                          if (formState!.validate()) {
                            final String message = ref
                                .read(MessageProvider.messageController)
                                .text;
                            final DateTime dateTime = DateTime.now();

                            final MessageModel messageModel = MessageModel(
                                message: message, dateTime: dateTime);

                            log('Message: $message');
                            log('Date Time: ${ConverterUtils().dateTimeFormatAmPm.format(dateTime)}');

                            //! >><<>><< Delete Cart Local ~ Event >><<>><<
                            ref.read(MessageProvider.messages.notifier).emit(
                                MessageEvent.addMessage(message: messageModel));
                          }
                        },
                        //* ==--==--==-- Send ~ Button --==--==--==
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: kBlack45,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.0),
                            child: Icon(Icons.send, size: 16, color: kWhite),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kHeight20,
                  //* ==--==--==-- Voice ~ Button --==--==--==
                  InkWell(
                    onLongPress: () {},
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundColor: kTeal,
                      child: Icon(Icons.mic, size: 22),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
