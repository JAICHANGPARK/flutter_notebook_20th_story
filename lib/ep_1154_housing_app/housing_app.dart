import 'package:flutter/material.dart';
import './src/ui/housing_home_page.dart';
class HousingApp extends StatelessWidget {
  const HousingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HousingHomePage(),
    );
  }
}
