import 'package:flutter/material.dart';

class CheckoutAddressScreen extends StatefulWidget {
  const CheckoutAddressScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutAddressScreen> createState() => _CheckoutAddressScreenState();
}

class _CheckoutAddressScreenState extends State<CheckoutAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                height: 16,
              ),
              Text(
                "Address",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 76,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            child: Icon(
                              Icons.check,
                              size: 14,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 4,
                              color: Colors.black,
                            ),
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            child: Text(
                              "2",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Expanded(
                              flex: 5,
                              child: Container(
                                height: 4,
                                color: Colors.grey,
                              )),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text("BAG"),
                          Expanded(
                            child: Container(
                              height: 4,
                            ),
                          ),
                          Text("ADDRESS"),
                          Expanded(
                              child: Container(
                            height: 4,
                          )),
                          Text("PAYMENT")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Contact Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                "CONTUNUE",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
