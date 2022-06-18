import 'package:flutter/material.dart';

class TaskSchedulePage extends StatefulWidget {
  const TaskSchedulePage({Key? key}) : super(key: key);

  @override
  State<TaskSchedulePage> createState() => _TaskSchedulePageState();
}

class _TaskSchedulePageState extends State<TaskSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.2),
                child: Icon(Icons.arrow_back_ios_new),
                foregroundColor: Colors.white,
              ),
              Text(
                "All task schedule",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(),
        )
      ],
    );
  }
}
