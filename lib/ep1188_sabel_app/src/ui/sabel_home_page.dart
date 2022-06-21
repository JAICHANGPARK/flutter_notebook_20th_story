import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1188_sabel_app/src/provider/sabel_menu_index_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
              child: Consumer(builder: (context, ref, _) {
                final index = ref.watch(sabelMenuIndex);
                return IndexedStack(
                  index: index,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      "Sable.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Badge(
                                  child: Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 260,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "ACCOUNTS",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 8,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 240,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.1),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          padding: EdgeInsets.all(16),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "CREDIT CARD",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                "\$860.00",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "Balance",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                                child: LinearPercentIndicator(
                                                  backgroundColor: Colors.white.withOpacity(0.2),
                                                  // fillColor: Colors.cyanAccent,
                                                  percent: 0.45,
                                                  lineHeight: 10,

                                                  linearStrokeCap: LinearStrokeCap.roundAll,
                                                  progressColor: Colors.cyanAccent,
                                                  barRadius: Radius.circular(16),

                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                );
              }),
            ),
            Positioned(
              left: 64,
              right: 64,
              bottom: 24,
              child: Consumer(builder: (context, ref, _) {
                final index = ref.watch(sabelMenuIndex);
                return Container(
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          ref.read(sabelMenuIndex.notifier).state = 0;
                        },
                        icon: Icon(
                          Icons.home,
                        ),
                        color: index == 0 ? Colors.black : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          ref.read(sabelMenuIndex.notifier).state = 1;
                        },
                        icon: Icon(
                          Icons.sync_alt,
                        ),
                        color: index == 1 ? Colors.black : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          ref.read(sabelMenuIndex.notifier).state = 2;
                        },
                        icon: Icon(
                          Icons.credit_card,
                        ),
                        color: index == 2 ? Colors.black : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          ref.read(sabelMenuIndex.notifier).state = 3;
                        },
                        icon: Icon(
                          Icons.military_tech,
                        ),
                        color: index == 3 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
