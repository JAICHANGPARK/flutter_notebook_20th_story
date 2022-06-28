import 'package:flutter/material.dart';

class LogisticHomePage extends StatelessWidget {
  const LogisticHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 76,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home_outlined,
                      ),
                      iconSize: 32,
                    ),
                    Text(
                      "Home",
                    )
                  ],
                )),
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
