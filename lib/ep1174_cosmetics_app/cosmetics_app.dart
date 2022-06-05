import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1174_cosmetics_app/src/ui/cosmetics_home_page.dart';


class CosmeticsApp extends StatelessWidget {
  const CosmeticsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context)=>CosmeticsHomePage()
      },
    );
  }
}
