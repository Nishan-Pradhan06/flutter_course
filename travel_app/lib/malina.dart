import 'package:flutter/material.dart';

class Malina extends StatelessWidget {
  const Malina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/img.png",
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Oleg Ivanov",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Product Designer",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.facebook, color: Colors.blue),
                Icon(Icons.camera, color: Colors.pink),
                Icon(Icons.table_view, color: Colors.lightBlue),
                Icon(Icons.link, color: Colors.blueAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
