import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1182_task_management_mobile_app/src/ui/task_management_home_screen.dart';

class TaskManagementMobileApp extends StatelessWidget {
  const TaskManagementMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => TaskManagementHomeScreen(),
      },
    );
  }
}
