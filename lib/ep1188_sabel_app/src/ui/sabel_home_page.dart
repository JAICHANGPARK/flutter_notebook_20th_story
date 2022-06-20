import 'package:flutter/material.dart';

class SabelHomePage extends StatefulWidget {
  const SabelHomePage({Key? key}) : super(key: key);

  @override
  State<SabelHomePage> createState() => _SabelHomePageState();
}

class _SabelHomePageState extends State<SabelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              ),
            ),
            Positioned(
              left: 64,
              right: 64,
              bottom: 24,
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
