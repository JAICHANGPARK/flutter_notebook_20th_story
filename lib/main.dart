import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1168_file_manager/file_manager_app.dart';
import 'package:flutter_notebook_20th_story/ep1171_layr_app/layr_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(ProviderScope(
    child: LayrApp(),
  ));
}
