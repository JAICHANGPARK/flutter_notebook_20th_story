import 'package:flutter/material.dart';

class RealEstateMainPage extends StatefulWidget {
  const RealEstateMainPage({Key? key}) : super(key: key);

  @override
  State<RealEstateMainPage> createState() => _RealEstateMainPageState();
}

class _RealEstateMainPageState extends State<RealEstateMainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: 300,
                top: 0,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/"
                          "2017/03/30/04/14/house-2187170_960_720.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                        colors: [
                          Colors.blueGrey,
                          Colors.blue,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter
                    ),
                  ),
                  child: Center(),
                ),
              )

            ],
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        currentIndex: _index,
        onTap: (idx) {
          setState(() => _index = idx);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.language), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmarks), label: "Save"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "My Trip"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile"),
        ],
      ),
    );
  }
}
