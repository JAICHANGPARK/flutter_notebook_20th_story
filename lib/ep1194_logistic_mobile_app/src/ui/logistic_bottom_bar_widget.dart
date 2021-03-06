import 'package:flutter/material.dart';

class LogisticBottomBarWidget extends StatelessWidget {
  const LogisticBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 72,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 4),
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
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )),
              Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        color: Colors.transparent,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.inventory_2_outlined,
                        ),
                        iconSize: 32,
                      ),
                      Text(
                        "Orders",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  )),
              Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        color: Colors.transparent,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_outlined,
                        ),
                        iconSize: 32,
                      ),
                      Text(
                        "Locations",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )),
              Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        color: Colors.transparent,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings_outlined,
                        ),
                        iconSize: 32,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
