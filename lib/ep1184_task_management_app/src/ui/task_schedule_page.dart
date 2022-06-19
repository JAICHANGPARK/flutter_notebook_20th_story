import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:date_picker_timeline/extra/style.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "24 Sept 2022",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "15 Active task",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                // height: 84,
                selectedTextColor: Colors.orangeAccent,
                deactivatedColor: Colors.white,
                selectionColor: Colors.white.withOpacity(0.2),
                dateTextStyle: defaultDateTextStyle.copyWith(color: Colors.white,),
                dayTextStyle: defaultDayTextStyle.copyWith(color: Colors.white)
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, _) {
              return Container();
            },
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
