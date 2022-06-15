import 'package:flutter/material.dart';

class TaskManagementHomePage extends StatefulWidget {
  const TaskManagementHomePage({Key? key}) : super(key: key);

  @override
  State<TaskManagementHomePage> createState() => _TaskManagementHomePageState();
}

class _TaskManagementHomePageState extends State<TaskManagementHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 52,
              decoration: BoxDecoration(color: Color.fromRGBO(44, 46, 47, 1)),
              padding: EdgeInsets.only(top: 16, right: 24, left: 24),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                      Container(
                        color: Colors.orange,
                        height: 4,
                        width: 16,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
