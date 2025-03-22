import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

class MyAnimePage extends StatelessWidget {
  const MyAnimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Center(
      child: FButton(
        label: Text('to add anime page'),
        onPress: () {
          context.go("/addanime");
        },
      ),
    ));
  }
}
