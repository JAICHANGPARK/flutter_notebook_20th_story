import 'package:flutter/material.dart';

class TaskManagementHomePage extends StatefulWidget {
  const TaskManagementHomePage({Key? key}) : super(key: key);

  @override
  State<TaskManagementHomePage> createState() => _TaskManagementHomePageState();
}

class _TaskManagementHomePageState extends State<TaskManagementHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dreamwalker",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "@jaichangpark",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(.1),
                            child: Icon(Icons.notifications_none),
                            foregroundColor: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            iconColor: Colors.white,
                            hintText: "Search tasks...",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            "Latest project",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 12,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: Container(
                        padding: EdgeInsets.only(left: 16),
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Container(
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 8,
                                          backgroundColor: Colors.blue[200],
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Next up (2)",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Text(
                                        "Design System",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Design real estate system company responsive design website today.",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.yellow,
                                              width: 0.5,
                                            ),
                                            borderRadius: BorderRadius.circular(4)),
                                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                        child: Text(
                                          "14-06-2022, 23:59",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  bottom: 0,
                                                  top: 0,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 16,
                                                  bottom: 0,
                                                  top: 0,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                    backgroundColor: Colors.red,
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 32,
                                                  bottom: 0,
                                                  top: 0,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                    backgroundColor: Colors.green,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "Active task",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 12,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: List.generate(
                        10,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                          child: Container(
                            height: 84,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  height: 78,
                                  width: 78,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mobile App - Finance",
                                        style: TextStyle(color: Colors.white, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 8,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "Completed (4)",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_vert),
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 58,
                decoration: BoxDecoration(color: Color.fromRGBO(44, 46, 47, 1)),
                padding: EdgeInsets.only(top: 12, right: 24, left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                        ),
                        Container(
                          color: Colors.orange,
                          height: 4,
                          width: 16,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.grey,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 4,
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.chat_outlined,
                          color: Colors.grey,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 4,
                          width: 16,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.grey,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 4,
                          width: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Color.fromRGBO(61, 63, 65, 1),
                child: Icon(Icons.add),
              ),
              left: 0,
              right: 0,
              bottom: 24,
            )
          ],
        ),
      ),
    );
  }
}
