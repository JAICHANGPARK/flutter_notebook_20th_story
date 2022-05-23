import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    color: Color.fromRGBO(42, 106, 238, 1),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 64,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "My Ticket",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      "Find My Seat",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
