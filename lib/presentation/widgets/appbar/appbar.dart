import 'package:flutter/material.dart';
import 'package:gritstone_test/core/constant/colors.dart';
import 'package:gritstone_test/core/constant/images.dart';
import 'package:gritstone_test/core/constant/sizes.dart';
import 'package:gritstone_test/domain/utils/text/text_utils.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
    this.title,
    this.logo = false,
    this.centerTitle = false,
    this.actions = const [],
    this.color,
    this.iconColor,
    this.actionTitle,
    this.shadow = false,
    this.hideLeading = false,
  });

  final String? title, actionTitle;
  final bool logo, shadow, centerTitle;
  final List<Widget> actions;
  final Color? color, iconColor;
  final bool hideLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: iconColor ?? kColorLight3,
        size: 20,
      ),
      backgroundColor: color ?? primaryColor,
      elevation: shadow ? null : 0,
      shape: Border(
          bottom: BorderSide(
              color: shadow ? kBlack26 : kTransparentColor, width: 0.25)),
      leading: hideLeading
          ? kNone
          : logo
              ? Transform.scale(
                  scale: .65,
                  child: Image.asset(kLogo),
                )
              : Navigator.canPop(context)
                  ? IconButton(
                      onPressed: () {
                        Navigator.maybePop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    )
                  : null,
      title: title != null
          ? Text(
              title!,
              style: TextUtils.theme(context).titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: kBlack,
                  ),
            )
          : null,
      centerTitle: centerTitle,
      actions: actionTitle != null
          ? [
              Center(
                child: Text(
                  actionTitle!,
                  style: TextUtils.theme(context)
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w600, color: kBlack65),
                ),
              ),
              dWidth3,
            ]
          : actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
