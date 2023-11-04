import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/presentation/widgets/appbar/appbar.dart';

class ScreenHome extends ConsumerWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: AppbarWidget(
        logo: true,
        title: 'Title',
      ),
      body: Center(child: Text('Home')),
    );
  }
}
