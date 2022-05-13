import 'package:flutter/material.dart';

import 'src/ui/booking_home_page.dart';

class HotelBookingApp extends StatelessWidget {
  const HotelBookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => BookingHomePage(),
      },
    );
  }
}
