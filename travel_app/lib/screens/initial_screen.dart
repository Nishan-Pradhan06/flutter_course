import 'package:flutter/material.dart';
import 'package:new_project/shared/bottom_nav_bar.dart';
import 'package:new_project/widgets/custom_button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1500835556837-99ac94a94552?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dHJhdmVsfGVufDB8fDB8fHww',
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  'Winter \nVacation Trips',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                ),

                Text(
                  'Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!',
                ),

                CustomButton(
                  text: 'Let\'s Go!',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xFF6A62B7),
                  suffix: Image.asset('assets/arrow.png', width: 30),
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BottomNavBar()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
