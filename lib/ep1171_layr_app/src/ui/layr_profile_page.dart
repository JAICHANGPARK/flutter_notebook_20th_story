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
          SizedBox(height: 42,
            child: Row(
              children: [
                Expanded(child: Container()),
                Expanded(
                    child: Center(
                  child: Icon(
                    Icons.playlist_add,
                  ),
                )),
                Expanded(child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.notifications_active_outlined))),
              ],
            ),
          ),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.2,
            child: Stack(
              children: [
                Positioned(
                    child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                  color: Colors.pink,
                ))
              ],
            ),
          ),
          TabBar(
            tabs: [
              Tab(
                text: "Layrs",
              ),
              Tab(
                text: "Collaborations",
              ),
            ],
            indicatorColor: Colors.pink,
            indicatorWeight: 4,
          ),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(
              child: TabBarView(
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
