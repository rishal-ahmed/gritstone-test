import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/core/routes/navigator.dart';
import 'package:gritstone_test/core/routes/route_generator.dart';
import 'package:gritstone_test/core/routes/routes.dart';

class App extends ConsumerWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugInvertOversizedImages = true;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gritstone',
      themeMode: ThemeMode.light,
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      initialRoute: routeRoot,
      navigatorKey: navigatorKey,
    );
  }
}
