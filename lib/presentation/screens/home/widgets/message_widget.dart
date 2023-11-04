import 'package:flutter/material.dart';
import 'package:gritstone_test/core/constant/colors.dart';
import 'package:gritstone_test/core/constant/sizes.dart';
import 'package:gritstone_test/domain/models/message/message_model.dart';
import 'package:gritstone_test/domain/utils/converter/converter_utils.dart';
import 'package:gritstone_test/domain/utils/text/text_utils.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.message,
  });

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            style:
                TextUtils.theme(context).bodyMedium?.copyWith(color: kBlack87),
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
    );
  }
}
