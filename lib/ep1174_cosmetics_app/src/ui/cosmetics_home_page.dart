import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CosmeticMenu {
  int? index;
  String? title;

  CosmeticMenu({this.index, this.title});
}

List<String> titles = ["Kids", "Woman", "Cream", "Face Wash", "Body Wash", "Hand Cream"];
List<CosmeticMenu> cosmeticsMenuItems =
    List.generate(titles.length, (idx) => CosmeticMenu(index: idx, title: titles[idx]));

final cosmeticMenuIndex = StateProvider<int>((ref) => 0);

class CosmeticsHomePage extends ConsumerStatefulWidget {
  const CosmeticsHomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<CosmeticsHomePage> createState() => _CosmeticsHomePageState();
}

class _CosmeticsHomePageState extends ConsumerState<CosmeticsHomePage> {
  @override
  Widget build(BuildContext context) {
    final sIndex = ref.watch(cosmeticMenuIndex);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Icon(Icons.search),
        centerTitle: true,
        // leading: Icon(
        //   Icons.menu,
        // ),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
            child: SizedBox(
              height: 42,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: cosmeticsMenuItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        ref.read(cosmeticMenuIndex.notifier).state = index;
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          color: sIndex == index ? Color.fromRGBO(45, 58, 33, 1) : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            cosmeticsMenuItems[index].title ?? "",
                            style: TextStyle(
                              color: sIndex == index ? Colors.orange : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
              child: IndexedStack(
            index: sIndex,
            children: [
              Container(
                child: Center(
                  child: Text("Page $sIndex"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Page $sIndex"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Page $sIndex"),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
