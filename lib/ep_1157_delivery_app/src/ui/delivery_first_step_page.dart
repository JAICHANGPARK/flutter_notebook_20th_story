import 'package:flutter/material.dart';

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
                  height: 180,
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
                              border: Border.all(width: 1.5)),
                        ),
                      )
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
                  height: 120,
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
                              border: Border.all(width: 1.5)),
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
                                    border: Border.all(width: 1.5)),
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
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(214, 242, 255, 1),
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(
                              width: 1.5,
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
