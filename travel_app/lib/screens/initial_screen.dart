import 'package:flutter/material.dart';
import 'package:new_project/screens/home_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 500, width: double.maxFinite, color: Colors.red),
          ElevatedButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('data'),
          ),
        ],
      ),
    );
  }
}
