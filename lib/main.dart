import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1184_task_management_app/task_management_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    ProviderScope(
      child: TaskManagementApp(),
    ),
  );
}
