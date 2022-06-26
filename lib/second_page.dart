import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String args;
  const SecondPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Second Page",
        ),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("CLICKA KRLL $args"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )),
    );
  }
}
