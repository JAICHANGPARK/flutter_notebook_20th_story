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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey[100]),
            padding: EdgeInsets.fromLTRB(16, 64, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[500],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mid-Commerce",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "John",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Center(
                          child: Text(
                            "Join",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pocketful Rating",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "4.5",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: "/5",
                                  style: TextStyle(
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Over 90%",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Subscription",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Rs. 500/month",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: 24,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    width: 84,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Sat. 17/10",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("But don't warry couse we are all learning here"),
                      Text("14:44")

                    ],
                  ),
                )],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
