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
                foregroundColor: Colors.black,
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
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                child: Icon(
                  Icons.filter_alt_outlined,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BALANCE(Overall Sale)"),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$615,245.00",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.visibility_off_outlined)
              ],
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 58,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text("Top Sales"),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Center(
                child: Text(
                  "Stocks",
                ),
              ))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container();
            },
          ),
        ),
      ],
    );
  }
}
