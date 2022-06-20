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
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
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
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.sync_alt,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.credit_card,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.military_tech,
                      ),
                    )
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
