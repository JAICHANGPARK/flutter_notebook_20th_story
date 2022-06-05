import 'package:flutter/material.dart';

class CosmeticsHomePage extends StatefulWidget {
  const CosmeticsHomePage({Key? key}) : super(key: key);

  @override
  State<CosmeticsHomePage> createState() => _CosmeticsHomePageState();
}

class _CosmeticsHomePageState extends State<CosmeticsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Icon(Icons.search),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 64,
            child: ListView.builder(
              itemBuilder: (context, index) {},
            ),
          ),
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
