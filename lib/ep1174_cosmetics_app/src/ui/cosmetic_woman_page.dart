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
          Row(
            children: [
              Text(
                "Popular",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("See all"),
              )
            ],
          )
        ],
      ),
    );
  }
}
