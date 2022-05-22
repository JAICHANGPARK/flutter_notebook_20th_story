import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_notebook_20th_story/ep_1157_delivery_app/src/ui/delivery_status_page.dart';

class DeliveryFirstStepPage extends StatelessWidget {
  const DeliveryFirstStepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(4),
                  color: Color.fromRGBO(192, 191, 248, 1),
                ),
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.arrow_back_outlined,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Destinations",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: SizedBox(
                  height: 170,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 6,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 230, 202, 1),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(width: 1.5),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        right: 6,
                        bottom: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(
                              width: 1.5,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                right: 64,
                                bottom: 0,
                                left: 0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 8),
                                            child: Text(
                                              "From",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Text("Jakarta, Gandaria"),
                                        ],
                                      ),
                                    ),
                                    DottedLine(),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.send,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8),
                                            child: Text(
                                              "To",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Text("Aceh, Parmanina"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 24,
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(),
                                    color: Color.fromRGBO(126, 231, 214, 1),
                                  ),
                                  child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Icon(Icons.sync_alt),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Service",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: SizedBox(
                  height: 110,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 6,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 230, 202, 1),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(width: 1.5),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        right: 6,
                        bottom: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(width: 1.5),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 48,
                                width: 48,
                                child: DottedBorder(
                                  radius: Radius.circular(8),
                                  borderType: BorderType.RRect,
                                  child: Center(
                                    child: Icon(Icons.local_shipping),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Read Fieight",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Usage for Domestic Cargo"),
                                  ],
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_right,
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
              Text(
                "Package",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: SizedBox(
                        height: 60,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 6,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(251, 230, 202, 1),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(width: 1.5),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              right: 4,
                              bottom: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(width: 1.5),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: DropdownButton<String>(
                                  onChanged: (d) {},
                                  value: "3",
                                  items: [
                                    "3",
                                    "4",
                                  ]
                                      .map((e) => DropdownMenuItem<String>(
                                            child: Text(
                                              "${e} pieces",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                            value: e,
                                          ))
                                      .toList(),
                                  isExpanded: true,
                                  underline: Container(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 6,
                      child: SizedBox(
                        height: 60,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 6,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(251, 230, 202, 1),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(width: 1.5),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              right: 4,
                              bottom: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(
                                    width: 1.5,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: DropdownButton<String>(
                                  onChanged: (d) {},
                                  value: "16 Kg",
                                  items: [
                                    "16 Kg",
                                    "24 Kg",
                                  ]
                                      .map((e) => DropdownMenuItem<String>(
                                            child: Text(e),
                                            value: e,
                                          ))
                                      .toList(),
                                  isExpanded: true,
                                  underline: Container(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Text(
                "Estimate shipping cost baces on order value or total weight of item",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: SizedBox(
                  height: 58,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 6,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 230, 202, 1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        right: 4,
                        bottom: 4,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DeliveryStatusPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(214, 242, 255, 1),
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: Text("Next"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
