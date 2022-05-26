import 'package:flutter/material.dart';

class RealEstateMainPage extends StatefulWidget {
  const RealEstateMainPage({Key? key}) : super(key: key);

  @override
  State<RealEstateMainPage> createState() => _RealEstateMainPageState();
}

class _RealEstateMainPageState extends State<RealEstateMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home"
          ),
        ],
      ),
    );
  }
}
