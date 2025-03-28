import 'package:anime/widgets/select.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';

class MyAnimePage extends StatelessWidget {
  const MyAnimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("追番列表"),
        actions: [
          IconButton(
            onPressed: () async {
              context.go("/add_anime");
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: CitySelectorDemo(),
      ),
    );
  }
}
