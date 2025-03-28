import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class AddAnimePage extends StatelessWidget {
  const AddAnimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.grey.shade100,
        body: Container(
          width: double.infinity,
          color: Colors.red,
          child: Text("data"),
        ));
  }
}
