import 'package:flutter/material.dart';
import 'package:new_project/screens/initial_screen.dart';
import 'package:new_project/shared/bottom_nav_bar.dart';

void main() {
  runApp(Bit());
}

class Bit extends StatelessWidget {
  const Bit({super.key});

  @override
  Widget build(BuildContext context) {
    //material app is a root app
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar());
  }
}
