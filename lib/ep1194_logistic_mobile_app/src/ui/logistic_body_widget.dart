import 'package:flutter/material.dart';

class LogisticBodyWidget extends StatelessWidget {
  const LogisticBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                borderRadius: BorderRadius.circular(4)),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.black,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Diesel Undeyed",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Details",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                            Text('5000g'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 58,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Container(
                        width: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("93 Premium Gas - 1,000g"),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.local_gas_station,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Motiva",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
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
          SizedBox(
            height: 16,
          ),
          Text(
            "Ship to",
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
              borderRadius: BorderRadius.circular(4),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                      padding: EdgeInsets.all(4),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Center(
                              child: Text("1"),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Ship to: Fedex Freight",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.route, size: 16,),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Ship to: Fedex Freight",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Start Ride",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.car_crash_outlined,
                  size: 12,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
