import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1199_e_commerce_checkout/src/ui/checkout_address_widget.dart';

class CheckoutAddressScreen extends StatefulWidget {
  const CheckoutAddressScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutAddressScreen> createState() => _CheckoutAddressScreenState();
}

class _CheckoutAddressScreenState extends State<CheckoutAddressScreen> {
  PageController pageController = PageController();
  int stepIndex = 0;

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
                            child: stepIndex == 2
                                ? Icon(
                                    Icons.check,
                                    size: 14,
                                  )
                                : Text(
                                    "2",
                                    style: TextStyle(fontSize: 12),
                                  ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: 4,
                              color: stepIndex == 2 ? Colors.black : Colors.grey,
                            ),
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            child: stepIndex == 2
                                ? Text(
                                    "3",
                                    style: TextStyle(fontSize: 12),
                                  )
                                : Container(),
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
                            ),
                          ),
                          Text("PAYMENT")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: [
                    Container(),
                    CheckoutAddressWidget(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("5% Unlimited Cashback on Citi Bank Credit Card"),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text("Show More"),
                              Icon(Icons.keyboard_arrow_down_outlined),
                            ],
                          ),
                          Divider(
                            color: Colors.grey[400],
                            thickness: 1.5,
                            height: 48,
                          ),
                          Text("Saved Payment Options"),
                          RadioListTile<int>(
                              value: 1,
                              groupValue: 1,
                              onChanged: (i) {},
                              title: Text("CITI Credit Card"),
                              subtitle: Text("**** 7890"),
                              secondary: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('VISA'),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("abcdefg")
                                ],
                              ),
                              contentPadding: EdgeInsets.zero),
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
      bottomNavigationBar: BottomAppBar(
        child: stepIndex == 2
            ? Container(
                height: 72,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: Row(
                  children: [
                    Text(
                      "\$27.0",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 14),
                      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      width: 160,
                      child: Center(
                        child: Text(
                          "PAY NOW",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ))
            : GestureDetector(
                onTap: () {
                  stepIndex++;
                  if (stepIndex > 2) {
                    stepIndex = 2;
                  }
                  print(stepIndex);
                  pageController.jumpToPage(stepIndex);
                },
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
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
