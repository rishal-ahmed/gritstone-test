import 'package:flutter/material.dart';
import 'package:gritstone_test/core/constant/colors.dart';
import 'package:gritstone_test/core/routes/navigator.dart';
import 'package:gritstone_test/domain/utils/text/text_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void kAlertDialog({
  final dynamic title,
  content,
  final String? submitText,
  final List<Widget>? actions,
  final Function()? submitAction,
  final Color submitColor = kBlack54,
}) {
  final BuildContext context = navigatorKey.currentContext!;
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: title is Widget
            ? title
            : title is String
                ? Text(
                    title,
                    style: TextUtils.theme(context).titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: kBlack80,
                        ),
                  )
                : null,
        content: content is Widget
            ? content
            : Text(
                content ?? 'This is just placeholder content.',
                style: TextUtils.theme(context).bodyLarge?.copyWith(
                      color: kBlack70,
                      fontWeight: FontWeight.normal,
                    ),
              ),
        actionsPadding: const EdgeInsets.all(5),
        actions: actions ??
            [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextUtils.theme(context).titleMedium?.copyWith(
                        color: kBlack60,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              TextButton(
                onPressed: submitAction,
                child: Text(
                  submitText ?? 'Yes',
                  style: TextUtils.theme(context).titleMedium?.copyWith(
                        color: submitColor,
                        fontSize: 13,
                      ),
                ),
              ),
            ],
      );
    },
  );
}

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    this.title,
    this.content,
    this.actions,
    this.submitText,
    this.submitAction,
    this.submitColor = kBlack60,
    Key? key,
  }) : super(key: key);

  final dynamic title, content;
  final String? submitText;
  final List<Widget>? actions;
  final Function()? submitAction;
  final Color submitColor;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title is Widget
          ? title
          : title is String
              ? Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: primaryTextColor,
                  ),
                )
              : null,
      content: content is Widget
          ? content
          : Text(
              content,
              style: TextStyle(
                fontSize: 15.sp,
                color: primaryTextColor,
              ),
            ),
      actions: actions ??
          [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: kBlack45,
                ),
              ),
            ),
            TextButton(
              onPressed: submitAction,
              child: Text(
                submitText ?? 'Yes',
                style: TextStyle(
                  color: submitColor,
                ),
              ),
            ),
          ],
    );
  }
}
