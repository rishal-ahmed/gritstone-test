import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/core/app/app.dart';
import 'package:gritstone_test/domain/models/message/message_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MessageModelAdapter());

  runApp(
    ProviderScope(
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          //* ==--==--==-- App ~ Root Widget --==--==--==
          return const App();
        },
      ),
    ),
  );
}
