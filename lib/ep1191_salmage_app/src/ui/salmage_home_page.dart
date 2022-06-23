import 'package:flutter/material.dart';

class SalmageHomePage extends StatefulWidget {
  const SalmageHomePage({Key? key}) : super(key: key);

  @override
  State<SalmageHomePage> createState() => _SalmageHomePageState();
}

class _SalmageHomePageState extends State<SalmageHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Row(
            children: [
            
            ],
          ),
        ),
      ),
    );
  }
}
