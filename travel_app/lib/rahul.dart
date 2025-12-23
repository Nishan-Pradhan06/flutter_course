import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//    stl --> stateless widget
//    stf --> statefull widget

class Rahul extends StatelessWidget {
  const Rahul({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //refernce web
      // header --> appbar
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu, color: Colors.white),
        centerTitle: true,
        title: Text(
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
      // body: SingleChildScrollView(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Column(
      //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     spacing: 10,
      //     children: [
      //       Container(height: 100, width: 100, color: Colors.red),
      //       // SizedBox(height: 10),
      //       Container(height: 100, width: 100, color: Colors.green),
      //       // SizedBox(height: 100),
      //       Container(height: 100, width: 100, color: Colors.yellow),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.all(Radius.circular(10)),
      //           color: Colors.blue,
      //         ),
      //       ),

      //       Image.asset("assets/Dining.png", height: 200),

      //       //for text
      //       Text("fsdf"),
      //       Icon(Icons.add),
      //       ElevatedButton(onPressed: () {}, child: Text("login")),
      //       OutlinedButton(onPressed: () {}, child: Text("Outline")),
      //       TextButton(onPressed: () {}, child: Text("Text button")),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/img.png", height: 200, width: 200),
            ),
          ),
          Text(
            "Oleg Inanov",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("Product Designer"),
          Row(
            mainAxisAlignment:.center,
            children: [
              FaIcon(FontAwesomeIcons.facebook),
              SizedBox(width: 12),
              FaIcon(FontAwesomeIcons.instagram),
              SizedBox(width: 12),
              FaIcon(FontAwesomeIcons.twitter),
            ],
          ),
        ],
      ),
      // Row(
      //   spacing: 10,
      //   children: [
      //     Text('Popular'),
      //     //for Spacing one is   ##sizebox and another is spacing provided in row widget
      //     Text('Featured'),
      //     // SizedBox(width: 10),
      //     Text('Most Visited'),
      //     Text('Europe'),
      //     Text('Asia'),
      //     Text('Popular'),
      //   ],
      // ),

      //Container, Column /Row, Basic UI Widgets: Text, Image, Icon, SizedBox, Padding, Button (Elevated,Text, Outline)
      // Column(
      //   spacing: 10,
      //   children: [

      //   ],
      // ),
      //     ],
      //   ),
      // ),
    );
  }
}
