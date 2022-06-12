import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MidCommerceInfoPage extends StatefulWidget {
  const MidCommerceInfoPage({Key? key}) : super(key: key);

  @override
  State<MidCommerceInfoPage> createState() => _MidCommerceInfoPageState();
}

class _MidCommerceInfoPageState extends State<MidCommerceInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey[100]),
            padding: EdgeInsets.fromLTRB(16, 48, 16, 16),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Row(
                  children: [
                    CircleAvatar(),
                    Column(
                      children: [
                        Text("Mid-Commerce"),
                        Text("John"),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "Join",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
