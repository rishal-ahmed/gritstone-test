import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/core/constant/images.dart';
import 'package:gritstone_test/core/constant/sizes.dart';
import 'package:gritstone_test/domain/utils/text/text_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScreenSplash extends ConsumerWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      afterSplash(context);
    });

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(kLogo),
              kHeight25,
              Text(
                'Gritstone Technologies',
                style: TextUtils.theme(context)
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> afterSplash(context) async {
    await Future.delayed(const Duration(seconds: 3));

    // Navigator.pushNamedAndRemoveUntil(
    //     context, routeHome, ModalRoute.withName(routeRoot));
  }
}
