import 'package:flutter/material.dart';
import 'router/routes.dart';

void main() {
  runApp(Bit());
}

class Bit extends StatelessWidget {
  const Bit({super.key});

  @override
  Widget build(BuildContext context) {
    //material app is a root app
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Merriweather'),
      routerConfig: router,
    );
  }
}
