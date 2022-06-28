import 'package:flutter/material.dart';

class LogisticHomePage extends StatelessWidget {
  const LogisticHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 8, bottom: 16, top: 16),
              child: Row(
                children: [
                  Text(
                    "Filter",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.black,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pickups",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[200]!,
                          ),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [Text("Diesel Undeyed"), Text('5000g')],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home_outlined,
                      ),
                      iconSize: 32,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.inventory_2_outlined,
                      ),
                      iconSize: 32,
                    ),
                    Text(
                      "Orders",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on_outlined,
                      ),
                      iconSize: 32,
                    ),
                    Text(
                      "Locations",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings_outlined,
                      ),
                      iconSize: 32,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
