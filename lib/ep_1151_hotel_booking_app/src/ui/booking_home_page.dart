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
              bottom: 48,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Dreamwalker",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text(
                    "Let's find the best",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("hotel for you",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: SizedBox(
                      height: 320,
                      child: Card(
                        child: Center(),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Top Searches Hotel"),
                      Spacer(),
                      Text("See All"),
                      Icon(
                        Icons.keyboard_arrow_right,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(child: Placeholder()),
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
