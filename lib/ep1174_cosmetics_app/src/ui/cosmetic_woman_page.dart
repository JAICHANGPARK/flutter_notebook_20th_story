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
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            child: Container(
              color: Colors.red,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Placeholder()),
                        Text("Promio body lotion"),
                        Row(
                          children: [
                            Text("\$29.99"),
                            Text(
                              "\$44.99",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
