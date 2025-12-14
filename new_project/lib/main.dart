import 'package:flutter/material.dart';

void main() {
  runApp(Bit());
}

class Bit extends StatelessWidget {
  const Bit({super.key});

  @override
  Widget build(BuildContext context) {
    //material app is a root app
    return MaterialApp(
      home: Scaffold(
        //refernce web
        // header --> appbar
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("BIT", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}



//    stl --> stateless widget
//    stf --> statefull widget