import 'package:flutter/material.dart';

class LayrProfilePage extends StatefulWidget {
  const LayrProfilePage({Key? key}) : super(key: key);

  @override
  State<LayrProfilePage> createState() => _LayrProfilePageState();
}

class _LayrProfilePageState extends State<LayrProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.2,
          ),
          TabBar(tabs: []),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(child: TabBarView(
            children: [
              Container(),
              Container(),
            ],
          ))
        ],
      ),
    );
  }
}
