import 'package:flutter/material.dart';

class CosmeticsCartPage extends StatefulWidget {
  const CosmeticsCartPage({Key? key}) : super(key: key);

  @override
  State<CosmeticsCartPage> createState() => _CosmeticsCartPageState();
}

class _CosmeticsCartPageState extends State<CosmeticsCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("My Cart"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
