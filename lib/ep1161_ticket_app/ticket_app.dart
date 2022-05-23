

import 'package:flutter/material.dart';
import './src/ui/ticket_page.dart';
class TicketApp extends StatelessWidget {
  const TicketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TicketPage(),

    );
  }
}
