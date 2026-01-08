import 'package:flutter/material.dart';
import 'package:new_project/widgets/custom_button.dart';

class ProductDesScreen extends StatelessWidget {
  final String title;
  final String img;
  final String rating;
  final String desc;
  const ProductDesScreen({
    required this.rating,
    super.key,
    required this.title,
    required this.img,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Red top section
            Container(
              height: screenHeight * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // White section slightly overlapping
            Container(
              width: double.infinity,
              transform: Matrix4.translationValues(
                0.0,
                -50.0,
                0.0,
              ), // overlap effect
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      Icon(Icons.location_pin, size: 16),
                      Text(
                        "Honshu, Japan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      for (int i = 1; i <= 5; i++)
                        Icon(
                          i <= double.parse(rating)
                              ? Icons.star
                              : Icons.star_border,
                          color: Color(0xFFF4D150),
                          size: 16,
                        ),

                      const SizedBox(width: 8),
                      Text(
                        rating,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      // Minus button
                      Container(
                        height: 40,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFF7C6FFF),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          onPressed: () {
                            // Decrement logic
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 24,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                      ),

                      SizedBox(width: 6),

                      // Counter display
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text(
                          '5',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      SizedBox(width: 6),

                      // Plus button
                      Container(
                        height: 40,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFF7C6FFF),
                        ),
                        child: IconButton(
                          onPressed: () {
                            // Increment logic
                          },
                          icon: Icon(Icons.add, color: Colors.white, size: 24),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      SizedBox(width: 30),
                      Icon(Icons.timer),
                      SizedBox(width: 6),
                      Text(
                        '5 Days',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(desc, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$400",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Color(0xFF7C6FFF),
                            ),
                          ),
                          Text(
                            '/Package',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFF7C6FFF),
                            ),
                          ),
                        ],
                      ),

                      CustomButton(
                        text: 'Book Now',
                        onPressed: () {},
                        backgroundColor: Color(0xFF7C6FFF),
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
