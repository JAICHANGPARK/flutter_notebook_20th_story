import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';

class DeliveryStatusPage extends StatefulWidget {
  const DeliveryStatusPage({Key? key}) : super(key: key);

  @override
  State<DeliveryStatusPage> createState() => _DeliveryStatusPageState();
}

class _DeliveryStatusPageState extends State<DeliveryStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
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
                "Status",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
