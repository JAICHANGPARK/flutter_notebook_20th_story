import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1174_cosmetics_app/src/model/cosmetic_item.dart';

class CosmeticsDetailPage extends StatefulWidget {
  CosmeticItem? cosmeticItem;

  CosmeticsDetailPage({
    Key? key,
    this.cosmeticItem,
  }) : super(key: key);

  @override
  State<CosmeticsDetailPage> createState() => _CosmeticsDetailPageState();
}

class _CosmeticsDetailPageState extends State<CosmeticsDetailPage> {
  PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("Details"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 380,
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: NetworkImage(
                        //     widget.cosmeticItem?.images?[_currentPageIndex] ?? "",
                        //   ),
                        //   fit: BoxFit.cover,
                        // ),
                        ),
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (idx) {
                        setState(() {
                          _currentPageIndex = idx;
                        });
                      },
                      children: widget?.cosmeticItem?.images
                              ?.map(
                                (e) => Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(e ?? ""),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                              .toList() ??
                          [],
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Center(
                      child: Text(
                        "${_currentPageIndex + 1}/${widget?.cosmeticItem?.images?.length ?? "?"}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
          Expanded(
              child: Container(
                margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color.fromRGBO(45, 58, 33, 1),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(
              child: Text("Shop Now", style: TextStyle(
                color: Colors.orange,
                fontSize: 16
              ),),
            ),
          )),
        ],
      ),
    );
  }
}
