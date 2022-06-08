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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
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
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ListTile(),
                        ListTile(),
                        Divider(color: Colors.grey,),
                        ListTile(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Container(
                      height: 52,
                      // margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(45, 58, 33, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Checkout",
                          style: TextStyle(color: Colors.orange, fontSize: 16),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
