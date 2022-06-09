import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1174_cosmetics_app/src/riverpod/cosmetic_cart_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            Expanded(
              flex: 20,
              child: Consumer(builder: (context, ref, child) {
                final items = ref.watch(cosmeticCartProvider);
                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16,
                      ),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Row(
                          children: [
                            Expanded(flex: 5, child: Placeholder()),
                            Expanded(
                                flex: 6,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("${items[index].category ?? ""}"),
                                        Text("${items[index]?.title ?? ""}"),
                                        Text("${items[index]?.ml ?? ""}ml"),
                                        Text("\$${items[index]?.price ?? ""}"),
                                        Row(
                                          children: [],
                                        )
                                      ],
                                    ))),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
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
              flex: 14,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Sub Total",
                          ),
                          trailing: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: "\$"),
                                TextSpan(text: "286.97"),
                              ],
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text("Shipping"),
                          trailing: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: "\$"),
                                TextSpan(text: "10.0"),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 8,
                        ),
                        ListTile(
                          title: Text("Total"),
                          trailing: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: "\$"),
                                TextSpan(text: "196.97"),
                              ],
                            ),
                          ),
                        ),
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
