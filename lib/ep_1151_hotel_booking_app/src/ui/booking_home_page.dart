import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
                  const Text(
                    "Hello, Dreamwalker",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Let's find the best",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "hotel for you",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: SizedBox(
                      height: 320,
                      child: Card(
                        child: Column(
                          children: [
                            Container(
                              child: TextField(),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  child: TextField(),
                                )),
                                SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                    child: Container(
                                  child: TextField(),
                                ))
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              child: TextField(),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  "search hotel".toUpperCase(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Text("Top Searches Hotel"),
                      const Spacer(),
                      const Text("See All"),
                      const Icon(
                        Icons.keyboard_arrow_right,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Expanded(child: Placeholder()),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 72,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 16,
              top: 16,
              child: Row(
                children: [
                  Badge(
                    child: Icon(Ionicons.notifications_outline),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CircleAvatar()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
