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
      body: Column(
        children: [
          Expanded(flex: 16, child: Placeholder()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Promo/Student Code or Vouchers"),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
              )
            ],
          ),
          Expanded(flex: 10, child: Placeholder())
        ],
      ),
    );
  }
}
