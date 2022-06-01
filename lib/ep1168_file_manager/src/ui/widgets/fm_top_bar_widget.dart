import 'package:flutter/material.dart';

class FMTopBarWidget extends StatelessWidget {
  const FMTopBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Container(
        color: Color.fromRGBO(38, 44, 73, 1),
        child: Column(
          children: [
            SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                children: [
                  // CircleAvatar(
                  //   backgroundColor: Colors.orange,
                  // ),
                  Icon(
                    Icons.pentagon_outlined,
                    color: Colors.orange,
                    size: 38,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Links",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
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
