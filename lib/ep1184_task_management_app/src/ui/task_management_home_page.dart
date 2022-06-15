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
