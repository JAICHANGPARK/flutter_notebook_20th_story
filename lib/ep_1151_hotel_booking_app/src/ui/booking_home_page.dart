import 'package:flutter/material.dart';

class BookingHomePage extends StatefulWidget {
  const BookingHomePage({Key? key}) : super(key: key);

  @override
  State<BookingHomePage> createState() => _BookingHomePageState();
}

class _BookingHomePageState extends State<BookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 0,
              bottom: 0,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello"),
                  Text("Let's find the best"),
                  Text("hotel for you"),

                  SizedBox(
                    height: 320,
                    child: Card(
                      child: Center(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 72,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
