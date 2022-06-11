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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            padding: const EdgeInsets.only(left: 16, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Welcome, Dream",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
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
                                  labelPadding: EdgeInsets.symmetric(horizontal: 0),
                                  indicatorColor: Colors.grey[100],
                                  padding: EdgeInsets.zero,
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
                                width: 64,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward),
                                color: Colors.black,
                              ),
                            ],
                          ),
                          Expanded(
                              child: TabBarView(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16, bottom: 8),
                                child: ListView.builder(
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.only(right: 8),
                                      width: 240,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("IRCTC"),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "2655.23",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "48.25 (2.16%)",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
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
                                                      "Quantity",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Text("100"),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Overall G/L",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Text("2,800"),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 120,
                                            padding: EdgeInsets.symmetric(vertical: 8),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(4),
                                              color: Color.fromRGBO(80, 80, 80, 1),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "intraday - Buy",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                color: Colors.blueGrey,
                              )
                            ],
                          )),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Available Margin",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '\$589000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.wallet,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Add Fund",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "1 Open Order",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ...List.generate(
                    10,
                    (index) => Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Buy",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(4),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Intraday",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(4),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Completed",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(4),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("ADAMENT"), Text("\$ 5.920.00")],
                            ),
                          ],
                        ),

                        Divider(
                          color: Colors.grey,
                        ),
                      ],
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
