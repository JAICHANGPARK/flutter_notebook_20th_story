import 'package:flutter/material.dart';


class TaskHomePage extends StatelessWidget {
  const TaskHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  border: InputBorder.none,
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
                                  flex: 4,
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
                                        left: 20,
                                        bottom: 0,
                                        top: 0,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Colors.red,
                                        ),
                                      ),
                                      Positioned(
                                        left: 40,
                                        bottom: 0,
                                        top: 0,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                      Positioned(
                                        left: 60,
                                        bottom: 0,
                                        top: 0,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Colors.orange,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.check_circle_outline,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "0/8",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "12",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
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
    );
  }
}
