import 'package:flutter/material.dart';

class CosmeticWomanPage extends StatefulWidget {
  const CosmeticWomanPage({Key? key}) : super(key: key);

  @override
  State<CosmeticWomanPage> createState() => _CosmeticWomanPageState();
}

class _CosmeticWomanPageState extends State<CosmeticWomanPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(45, 58, 33, 1),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See all"),
                  style: TextButton.styleFrom(
                    primary: Color.fromRGBO(45, 58, 33, 1),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Container(
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: SizedBox(
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2020/04/20/10/57/dispenser-5067855__340.jpg',
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            )),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Promio body lotion",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$29.99",
                                  style: TextStyle(color: Colors.yellow),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "\$44.99",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Recent Products",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(45, 58, 33, 1),
              ),
            ),
          ),
          Container(
            height: 140,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 8,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.teal[50], borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                Positioned(
                    right: 16,
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(45, 58, 33, 1),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: Center(
                        child: Text(
                          "25% off",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
