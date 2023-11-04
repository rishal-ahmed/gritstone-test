import 'dart:developer';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/application/message/message_event.dart';
import 'package:gritstone_test/application/message/message_state.dart';
import 'package:gritstone_test/core/constant/colors.dart';
import 'package:gritstone_test/core/constant/names.dart';
import 'package:gritstone_test/core/constant/sizes.dart';
import 'package:gritstone_test/domain/models/message/message_model.dart';
import 'package:gritstone_test/domain/provider/message/message_provider.dart';
import 'package:gritstone_test/domain/utils/accessibility/accessibility_utils.dart';
import 'package:gritstone_test/domain/utils/converter/converter_utils.dart';
import 'package:gritstone_test/domain/utils/text/text_utils.dart';
import 'package:gritstone_test/domain/utils/validator/validator_utils.dart';
import 'package:gritstone_test/presentation/screens/home/widgets/message_widget.dart';
import 'package:gritstone_test/presentation/widgets/appbar/appbar.dart';
import 'package:gritstone_test/presentation/widgets/dialogs/alert_dialog_custom.dart';
import 'package:gritstone_test/presentation/widgets/snackbar/snackbar.dart';
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
          Consumer(
            builder: (_, WidgetRef ref, __) {
              //* ~~~~~~ Messages ~ State ~~~~~~
              final MessageState state = ref.watch(MessageProvider.messages);
              return Semantics(
                button: true,
                label: 'Delete all notes',
                child: IconButton(
                  onPressed: () {
                    if (state.messages.isEmpty) return;

                    kAlertDialog(
                      content: 'Are you sure you want to delete all messages?',
                      submitText: 'Confirm',
                      submitColor: kColorStateCritical,
                      submitAction: () {
                        Navigator.pop(context);

                        kSnackBar(
                          content: 'All messages deleted successfully',
                          success: true,
                        );

                        //! >><<>><< Delete all messages ~ Event >><<>><<
                        ref
                            .read(MessageProvider.messages.notifier)
                            .emit(const MessageEvent.deleteAllMessages());
                      },
                    );
                  },
                  tooltip: 'Delete all notes',
                  icon: const Icon(
                    Icons.clear_all,
                    size: 25,
                    color: kWhite,
                  ),
                ),
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Consumer(
                builder: (context, ref, _) {
                  //* ~~~~~~ Listening ~ State ~~~~~~
                  final bool isListening =
                      ref.watch(MessageProvider.isListening);

                  if (!isListening) {
                    return Expanded(
                      child: Column(
                        children: [
                          //* ==--==--==--==-- Messages --==--==--==--==
                          Expanded(
                            child: Consumer(
                              builder: (_, WidgetRef ref, __) {
                                //* ~~~~~~ Messages ~ State ~~~~~~
                                final MessageState state =
                                    ref.watch(MessageProvider.messages);

                                //? Loading..
                                if (state.isLoading) {
                                  return const Center(
                                      child:
                                          CircularProgressIndicator.adaptive());
                                }

                                //? Empty
                                if (state.messages.isEmpty) {
                                  return Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'No recent messages',
                                        textAlign: TextAlign.center,
                                        style: TextUtils.theme(context)
                                            .bodyLarge
                                            ?.copyWith(
                                              color: kColorLight3,
                                            ),
                                      ),
                                    ),
                                  );
                                }

                                return ListView.separated(
                                  itemBuilder: (context, index) {
                                    final MessageModel message =
                                        state.messages[index];

                                    //* ==--==-- Message Widget --==--==
                                    return MessageWidget(
                                        message: message, index: index);
                                  },
                                  separatorBuilder: (context, index) {
                                    return kHeight10;
                                  },
                                  itemCount: state.messages.length,
                                );
                              },
                            ),
                          ),
                          kHeight15,
                        ],
                      ),
                    );
                  } else {
                    //* ==--==--==-- Voice Recognition ~ Text --==--==--==
                    return Consumer(
                      builder: (_, WidgetRef ref, __) {
                        //* ~~~~~~ Recogninzed Value ~ State ~~~~~~
                        final String value =
                            ref.watch(MessageProvider.recognizedValue);
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              value,
                              textAlign: TextAlign.center,
                              style: TextUtils.theme(context)
                                  .headlineMedium
                                  ?.copyWith(
                                    color: kBlack,
                                  ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),

              //* ==--==--==--==-- Type/Voice Fields --==--==--==--==
              Consumer(
                builder: (_, WidgetRef ref, __) {
                  //* ~~~~~~ Listening ~ State ~~~~~~
                  final bool isListening =
                      ref.watch(MessageProvider.isListening);
                  return Column(
                    children: [
                      Row(
                        children: [
                          //* ==--==--==-- Message ~ Field --==--==--==
                          if (!isListening)
                            Expanded(
                              child: Consumer(
                                builder: (_, WidgetRef ref, __) {
                                  return Form(
                                    key: ref.watch(MessageProvider.formKey),
                                    child: TextFeildWidget(
                                      controller: ref.watch(
                                          MessageProvider.messageController),
                                      hintText: 'Type a message',
                                      suffixIcon: InkWell(
                                        onTap: () {
                                          /// Clear message field
                                          ref
                                              .read(MessageProvider
                                                  .messageController)
                                              .clear();
                                        },
                                        splashColor: kTransparentColor,
                                        child: const Icon(
                                          CupertinoIcons.clear_circled_solid,
                                          color: kBlack45,
                                        ),
                                      ),
                                      validator: (value) =>
                                          ValidatorUtils.nullValidator(value),
                                      errorStyle: false,
                                    ),
                                  );
                                },
                              ),
                            ),
                          if (!isListening) kWidth10,
                          //* ==--==--==-- Send ~ Button --==--==--==
                          if (!isListening)
                            InkWell(
                              onTap: () {
                                //* -- Form State --
                                final FormState? formState = ref
                                    .read(MessageProvider.formKey)
                                    .currentState;

                                if (formState!.validate()) {
                                  final String message = ref
                                      .read(MessageProvider.messageController)
                                      .text;
                                  final DateTime dateTime = DateTime.now();

                                  final MessageModel messageModel =
                                      MessageModel(
                                          message: message, dateTime: dateTime);

                                  log('Message: $message');
                                  log('Date Time: ${ConverterUtils().dateTimeFormatAmPm.format(dateTime)}');

                                  //! >><<>><< Add message ~ Event >><<>><<
                                  ref
                                      .read(MessageProvider.messages.notifier)
                                      .emit(MessageEvent.addMessage(
                                          message: messageModel));

                                  /// Clear message after successfully send.
                                  ref
                                      .read(MessageProvider.messageController)
                                      .clear();
                                }
                              },
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundColor: kTeal400,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.0),
                                  child: Icon(Icons.send_outlined,
                                      size: 16, color: kWhite),
                                ),
                              ),
                            ),
                        ],
                      ),
                      kHeight20,
                      //* ==--==--==-- Voice ~ Button --==--==--==
                      Column(
                        children: [
                          AvatarGlow(
                            animate: isListening,
                            glowColor: kTeal,
                            endRadius: isListening ? 70 : 30,
                            child: InkWell(
                              splashFactory: NoSplash.splashFactory,
                              splashColor: kTransparentColor,
                              highlightColor: kTransparentColor,
                              onTap: () async {
                                if (isListening) {
                                  await AccessibilityUtils().stopListening(ref);
                                } else {
                                  await AccessibilityUtils().listen(ref);
                                }
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: kTeal,
                                child: Icon(
                                  isListening ? Icons.mic : Icons.mic_none,
                                  size: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      kHeight8,
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
