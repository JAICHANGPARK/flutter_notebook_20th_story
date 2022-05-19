import 'package:flutter/material.dart';

class DeliveryFirstStepPage extends StatelessWidget {
  const DeliveryFirstStepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Icon(
                Icons.arrow_back_outlined,
              ),
            )
          ],
        ),
      ),
    );
  }
}
