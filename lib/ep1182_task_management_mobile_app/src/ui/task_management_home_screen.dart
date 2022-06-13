import 'package:flutter/material.dart';

class TaskManagementHomeScreen extends StatelessWidget {
  const TaskManagementHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.apps,
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Hey, Dream Walker",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Are you ready to get back to your workplace?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 42,
                  ),
                  Text(
                    "Workspace",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Techcare Design",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    "Are you ready to get back to your workplace?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
