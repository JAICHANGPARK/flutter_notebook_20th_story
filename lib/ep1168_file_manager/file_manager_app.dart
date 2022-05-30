import 'package:flutter/material.dart';
import './src/ui/file_manager_home_page.dart';

class FileManagerApp extends StatelessWidget {
  const FileManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FileManagerHomePage(),
    );
  }
}
