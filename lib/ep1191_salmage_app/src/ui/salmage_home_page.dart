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
              SizedBox(
                width: 48,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.blue[200]!,
                              Colors.blue[50]!,
                              Colors.white,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.apps),
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
