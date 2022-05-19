import 'package:flutter/material.dart';

class DeliveryFirstStepPage extends StatelessWidget {
  const DeliveryFirstStepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
              SizedBox(
                height: 160,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 8,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        color: Color.fromRGBO(251, 230, 202, 1),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 8,
                      bottom: 8,
                      child: Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(
                            width: 1.5
                          )
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
