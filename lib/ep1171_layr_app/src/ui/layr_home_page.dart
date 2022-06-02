import 'package:flutter/material.dart';

class LayrHomePage extends StatefulWidget {
  const LayrHomePage({Key? key}) : super(key: key);

  @override
  State<LayrHomePage> createState() => _LayrHomePageState();
}

class _LayrHomePageState extends State<LayrHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Home",
          ),

        ],
      ),
    );
  }
}
