import 'package:flutter/material.dart';

class Nishant extends StatelessWidget {
  const Nishant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 180, 99, 93),
        leading: const Icon(Icons.menu, color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Discover',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-Ne7oVV6Lx9uAnmJDUZrrLcGy8yzo1sXdpQ&s",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 20,
            children: [
              Image.asset(
                'assets/img.png',
                height: 100,
                errorBuilder: (context, error, stackTrace) =>
                    const Text("Image not found (assets/img.png)"),
              ),

              const ProfileCard(),

              const Text("fsdf"),
              const Icon(Icons.add),
              ElevatedButton(onPressed: () {}, child: const Text("login")),
              OutlinedButton(onPressed: () {}, child: const Text("Outline")),
              TextButton(onPressed: () {}, child: const Text("Text button")),

              Column(
                spacing: 10,
                children: [
                  Container(height: 100, width: 100, color: Colors.red),
                  Container(height: 100, width: 100, color: Colors.green),
                  Container(height: 100, width: 100, color: Colors.yellow),

                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 171, 3, 54),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, // Width of the card
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            spreadRadius: 2,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    height: 250,
                    color: Colors.grey[200],
                    child: const Center(child: CircularProgressIndicator()),
                  );
                },
              ),
            ),
          ),

          // B. Name and Title
          const SizedBox(height: 10),
          const Text(
            'Oleg Ivanov',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              color: Color(0xFF2C2C2C),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Product Designer',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: Divider(color: Color(0xFFEEEEEE), thickness: 1.5),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialButton(Icons.facebook, const Color(0xFF1877F2)),
                const SizedBox(width: 15),
                _buildSocialButton(Icons.camera_alt, const Color(0xFFE1306C)),
                const SizedBox(width: 15),
                _buildSocialButton(
                  Icons.alternate_email,
                  const Color(0xFF1DA1F2),
                ),
                const SizedBox(width: 15),
                _buildSocialButton(
                  Icons.business_center,
                  const Color(0xFF0077B5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.15),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Icon(icon, color: color, size: 26),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
