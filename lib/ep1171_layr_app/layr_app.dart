import 'package:flutter/material.dart';
import './src/ui/layr_home_page.dart';

class LayrApp extends StatelessWidget {
  const LayrApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayrHomePage(),

    );
  }
}
