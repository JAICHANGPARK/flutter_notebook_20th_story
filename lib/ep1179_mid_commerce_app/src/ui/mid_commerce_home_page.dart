import 'package:flutter/material.dart';

class MidCommerceHomePage extends StatefulWidget {
  const MidCommerceHomePage({Key? key}) : super(key: key);

  @override
  State<MidCommerceHomePage> createState() => _MidCommerceHomePageState();
}

class _MidCommerceHomePageState extends State<MidCommerceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Mid-commerce"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            padding: EdgeInsets.only(
              left: 16
            ),
            child: Row(
              children: [
                Text("Complete your E-Kye & Start Trading"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
