import 'package:flutter/material.dart';

class Arina extends StatelessWidget {
  const Arina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 280,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Profile Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                // 'lib/assets/img.jpg',
                'assets/img.png',
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            // Name
            const Text(
              'Oleg Ivanov',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 6),

            // Job Title
            const Text(
              'Product Designer',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            const SizedBox(height: 16),

            const Divider(),

            const SizedBox(height: 12),

            // Social Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SocialIcon(icon: Icons.facebook),
                SocialIcon(icon: Icons.camera_alt), // Instagram
                SocialIcon(icon: Icons.alternate_email), // Twitter
                SocialIcon(icon: Icons.business), // LinkedIn
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;

  const SocialIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, size: 20, color: Colors.black54),
    );
  }
}
