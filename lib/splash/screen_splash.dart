import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Home')],
          ),
        ),
      ),
    );
  }

  Future<void> afterSplash(context) async {
    await Future.delayed(const Duration(seconds: 3));
  }
}
