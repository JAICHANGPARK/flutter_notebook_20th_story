import 'package:flutter/material.dart';
import './src/ui/real_estate_main_page.dart';


class RealEstateMobileApp extends StatelessWidget {
  const RealEstateMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RealEstateMainPage(),
    );
  }
}
