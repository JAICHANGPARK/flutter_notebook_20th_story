import 'package:flutter/material.dart';

class CosmeticMenu {
  int? index;
  String? title;

  CosmeticMenu({this.index, this.title});
}

List<String> titles = ["Kids", "Woman", "Cream", "Face Wash"];
List<CosmeticMenu> cosmeticsMenuItems =
    List.generate(titles.length, (idx) => CosmeticMenu(index: idx, title: titles[idx]));

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
              itemCount: cosmeticsMenuItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Text(cosmeticsMenuItems[index].title ?? ""),
                  ),
                );
              },
            ),
          ),
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
