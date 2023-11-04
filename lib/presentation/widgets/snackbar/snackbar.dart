import 'package:flutter/material.dart';
import 'package:gritstone_test/core/constant/colors.dart';
import 'package:gritstone_test/core/constant/sizes.dart';
import 'package:gritstone_test/core/routes/navigator.dart';
import 'package:gritstone_test/domain/utils/text/text_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

//* ==---==---==--- Show SnackBar ---==---==---==
void kSnackBar({
  required String content,
  double? height,
  Color color = kWhite30,
  IconData? icon,
  int duration = 3000,
  bool error = false,
  bool success = false,
  bool warning = false,
  bool delete = false,
  bool update = false,
  bool floating = false,
  bool infinite = false,
  SnackBarAction? action,
}) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).hideCurrentSnackBar();

  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
    SnackBar(
      content: SizedBox(
        height: height,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: kSnackBarIconColor,
                size: 18.sp,
              )
            else
              error == true
                  ? Icon(
                      Icons.error_outline,
                      color: kSnackBarIconColor,
                      size: 18.sp,
                    )
                  : success == true
                      ? Icon(
                          Icons.done,
                          color: kSnackBarIconColor,
                          size: 18.sp,
                        )
                      : delete == true
                          ? Icon(
                              Icons.delete,
                              color: kSnackBarIconColor,
                              size: 18.sp,
                            )
                          : update == true
                              ? Icon(
                                  Icons.update,
                                  color: kSnackBarIconColor,
                                  size: 18.sp,
                                )
                              : kNone,
            kWidth5,
            Flexible(
              child: Text(
                content,
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextUtils.theme(navigatorKey.currentContext!)
                    .labelLarge
                    ?.copyWith(color: kWhite),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: error
          ? kColorStateCritical
          : success
              ? kColorStateSuccess
              : warning
                  ? kColorStateWarning
                  : delete
                      ? kColorStateCritical
                      : update
                          ? kColorStateInfo
                          : color,
      duration:
          infinite ? const Duration(days: 1) : Duration(milliseconds: duration),
      behavior: floating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      action: action,
    ),
  );
}

//? ==--==-- Get SnackBar --==--==
SnackBar kGetSnackBar({
  required BuildContext context,
  required String content,
  double? height,
  Color color = kWhite30,
  IconData? icon,
  int duration = 3500,
  bool error = false,
  bool success = false,
  bool delete = false,
  bool update = false,
  bool floating = false,
  SnackBarAction? action,
}) {
  return SnackBar(
    content: SizedBox(
      height: height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: kSnackBarIconColor,
              size: 18.sp,
            )
          else
            error == true
                ? Icon(
                    Icons.error_outline,
                    color: kSnackBarIconColor,
                    size: 18.sp,
                  )
                : success == true
                    ? Icon(
                        Icons.done,
                        color: kSnackBarIconColor,
                        size: 18.sp,
                      )
                    : delete == true
                        ? Icon(
                            Icons.delete,
                            color: kSnackBarIconColor,
                            size: 18.sp,
                          )
                        : update == true
                            ? Icon(
                                Icons.update,
                                color: kSnackBarIconColor,
                                size: 18.sp,
                              )
                            : kNone,
          kWidth5,
          Flexible(
            child: Text(
              content,
              softWrap: false,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  TextUtils.theme(context).labelLarge?.copyWith(color: kWhite),
            ),
          ),
        ],
      ),
    ),
    backgroundColor: error == true
        ? kColorStateCritical
        : success == true
            ? kColorStateSuccess
            : delete == true
                ? kColorStateCritical
                : update == true
                    ? kColorStateInfo
                    : color,
    duration: Duration(milliseconds: duration),
    behavior: floating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
    action: action,
  );
}
