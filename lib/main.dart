import 'package:anime/api/api.dart';
import 'package:anime/router/router.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

void main() async {
  await Api.initHive();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        builder: (context, child) => FTheme(
          data: FThemes.zinc.light,
          child: child!,
        ),
        // home: const AppRootPage()
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      );
}
