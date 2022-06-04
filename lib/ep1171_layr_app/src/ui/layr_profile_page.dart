import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1171_layr_app/src/model/collaboration.dart';

List<Collaboration> collabItems = [
  Collaboration(
    title: "Purposely Untitled",
    datatime: "4/17/2022",
    duration: "30 sec",
    profileImages: [
      "https://cdn.pixabay.com/photo/2015/09/18/00/24/robin-944887__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/22/21/42/woman-1850703__340.jpg",
      "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/29/06/08/woman-1867715__340.jpg",
      "https://cdn.pixabay.com/photo/2017/07/10/11/28/bulldog-2489829__340.jpg",
    ],
  ),
  Collaboration(
    title: "Early Morning Echo",
    datatime: "4/17/2022",
    duration: "12 sec",
    profileImages: [
      "https://cdn.pixabay.com/photo/2015/09/18/00/24/robin-944887__340.jpg",
    ],
  ),
  Collaboration(
    title: "Tuesday Jam Sesh",
    datatime: "4/17/2022",
    duration: "27 sec",
    profileImages: [
      "https://cdn.pixabay.com/photo/2015/09/18/00/24/robin-944887__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/22/21/42/woman-1850703__340.jpg",
      "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/29/06/08/woman-1867715__340.jpg",
    ],
  )
];

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
            height: 52,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                      child: Center(
                    child: Icon(
                      Icons.library_music_outlined,
                      color: Colors.pink,
                      size: 32,
                    ),
                  )),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.notifications_active_outlined,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.8,
            child: Stack(
              children: [
                Positioned(
                  right: 8,
                  top: 8,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                    color: Colors.pink,
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  bottom: 16,
                  right: 16,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/09/18/00/24/robin-944887__340.jpg",
                        ),
                      ),
                      Text(
                        "Dreamwalker",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Listens",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "4,321",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.pink),
                            ),
                            VerticalDivider(
                              color: Colors.grey,
                            ),
                            Text("Followers",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey)),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "346",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.pink),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
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
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.grey,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: collabItems.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 120,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${collabItems[index].title}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "${collabItems[index].duration} | ${collabItems[index].datatime}",
                                          style: TextStyle(color: Colors.grey, fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    (collabItems[index].profileImages?.length ?? 0) > 1
                                        ? Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 18,
                                                backgroundImage: NetworkImage(
                                                  collabItems?[index]?.profileImages?[0] ?? "",
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              CircleAvatar(
                                                radius: 18,
                                                backgroundImage: NetworkImage(
                                                  collabItems?[index]?.profileImages?[1] ?? "",
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              CircleAvatar(
                                                radius: 18,
                                                backgroundColor: Colors.pink,
                                                foregroundColor: Colors.white,
                                                child: Text(
                                                  "+${(collabItems[index].profileImages?.length ?? 2) - 2}",
                                                ),
                                              ),
                                            ],
                                          )
                                        : CircleAvatar(
                                            radius: 18,
                                            backgroundImage: NetworkImage(
                                              collabItems?[index]?.profileImages?[0] ?? "",
                                            ),
                                          ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_horiz),
                                      color: Colors.pink,
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.play_arrow),
                                      color: Colors.pink,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 32,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: List.generate(100, (index) => Padding(
                                            padding: const EdgeInsets.only(right: 1),
                                            child: Container(
                                              height: Random().nextInt(16) + 4,
                                              width: 2,
                                              decoration: BoxDecoration(
                                                color: Colors.grey
                                              ),
                                            ),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
