import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class AddAnimePage extends StatelessWidget {
  const AddAnimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: double.infinity,
          color: Colors.red,
          child: Text(
            "data",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
