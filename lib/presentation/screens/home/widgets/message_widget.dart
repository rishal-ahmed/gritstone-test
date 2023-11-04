import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/application/message/message_event.dart';
import 'package:gritstone_test/core/constant/colors.dart';
import 'package:gritstone_test/core/constant/sizes.dart';
import 'package:gritstone_test/domain/models/message/message_model.dart';
import 'package:gritstone_test/domain/provider/message/message_provider.dart';
import 'package:gritstone_test/domain/utils/converter/converter_utils.dart';
import 'package:gritstone_test/domain/utils/text/text_utils.dart';
import 'package:gritstone_test/domain/utils/tts/tts_utils.dart';
import 'package:gritstone_test/presentation/widgets/dialogs/alert_dialog_custom.dart';
import 'package:gritstone_test/presentation/widgets/snackbar/snackbar.dart';

class MessageWidget extends ConsumerWidget {
  const MessageWidget({
    super.key,
    required this.message,
    required this.index,
  });

  final MessageModel message;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: Key(index.toString()),
      direction: DismissDirection.endToStart,
      onDismissed: (DismissDirection direction) {
        if (direction == DismissDirection.endToStart) {}
      },
      confirmDismiss: (direction) async {
        kAlertDialog(
          content: 'Are you sure you want to delete this messages?',
          submitText: 'Confirm',
          submitColor: kColorStateCritical,
          submitAction: () {
            Navigator.pop(context);

            kSnackBar(
              content: 'message deleted successfully',
              success: true,
            );

            //! >><<>><< Delete message ~ Event >><<>><<
            ref
                .read(MessageProvider.messages.notifier)
                .emit(MessageEvent.deleteMessage(index: index));

            return true;
          },
        );

        return null;
      },
      background: Container(
        color: kRed,
        child: const Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.delete, color: kWhite),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: kGrey200, borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //* =-=-=- Message -=-=-=
                  Text(
                    message.message,
                    textAlign: TextAlign.start,
                    style: TextUtils.theme(context)
                        .bodyMedium
                        ?.copyWith(color: kBlack87),
                  ),
                  kHeight5,
                  //* =-=-=- DateTime -=-=-=
                  Text(
                    ConverterUtils().dateTimeShortAmPm.format(message.dateTime),
                    textAlign: TextAlign.end,
                    style: TextUtils.theme(context).bodySmall?.copyWith(
                          color: kBlack45,
                        ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () async {
              await TtsUtils().startSpeak(message.message);
            },
            color: kBlack45,
            icon: const Icon(Icons.volume_up),
          )
        ],
      ),
    );
  }
}
