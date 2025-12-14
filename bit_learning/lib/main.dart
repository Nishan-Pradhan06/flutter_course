import 'package:flutter/material.dart';

void main() {
  runApp(Bit());
}

class Bit extends StatelessWidget {
  const Bit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber, title: Text("Youtube")),
      ),
    );
  }
}
