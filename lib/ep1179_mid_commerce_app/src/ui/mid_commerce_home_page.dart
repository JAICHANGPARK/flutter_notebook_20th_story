import 'package:flutter/material.dart';

class MidCommerceHomePage extends StatefulWidget {
  const MidCommerceHomePage({Key? key}) : super(key: key);

  @override
  State<MidCommerceHomePage> createState() => _MidCommerceHomePageState();
}

class _MidCommerceHomePageState extends State<MidCommerceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Mid-commerce"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(111, 111, 111, 1),
            ),
            padding: EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Complete your E-Kye & Start Trading",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DefaultTabController(
                    length: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        // borderRadius: BorderRadius.only()
                      ),
                      height: MediaQuery.of(context).size.height / 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Welcome, Dream",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.notifications_none,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TabBar(
                                  indicatorColor: Colors.grey[100],
                                  labelColor: Colors.black,
                                  tabs: [
                                    Tab(
                                      text: "POSITIONS",
                                    ),
                                    Tab(
                                      text: "HOLDINGS",
                                    ),
                                  ],
                                  unselectedLabelColor: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward),
                                color: Colors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
