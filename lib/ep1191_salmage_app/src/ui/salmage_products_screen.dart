import 'package:flutter/material.dart';

class SalmageProductScreen extends StatelessWidget {
  const SalmageProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back,
                ),
              ),
              Expanded(
                  child: Center(
                child: Text(
                  "Products",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              )),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.filter_alt_outlined,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
