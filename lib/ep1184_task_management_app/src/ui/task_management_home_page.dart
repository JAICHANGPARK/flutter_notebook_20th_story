import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1184_task_management_app/src/ui/task_home_page.dart';
import 'package:flutter_notebook_20th_story/ep1184_task_management_app/src/ui/task_schedule_page.dart';

class TaskManagementHomePage extends StatefulWidget {
  const TaskManagementHomePage({Key? key}) : super(key: key);

  @override
  State<TaskManagementHomePage> createState() => _TaskManagementHomePageState();
}

class _TaskManagementHomePageState extends State<TaskManagementHomePage> {
  ValueNotifier<int> tabIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: ValueListenableBuilder<int>(
          valueListenable: tabIndex,
          builder: (context, value, _) {
            return SafeArea(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: IndexedStack(
                      index: value,
                      children: [
                        TaskHomePage(),
                        TaskSchedulePage(),
                      ],
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
                          GestureDetector(
                            onTap: () {
                              tabIndex.value = 0;
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.home_outlined,
                                  color:  value == 0 ? Colors.white : Colors.grey,
                                ),
                                Container(
                                  color: value == 0 ? Colors.orange : Colors.transparent,
                                  height: 4,
                                  width: 16,
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              tabIndex.value = 1;
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color:  value == 1 ? Colors.white : Colors.grey,
                                ),
                                Container(
                                  color: value == 1 ? Colors.orange : Colors.transparent,
                                  height: 4,
                                  width: 16,
                                ),
                              ],
                            ),
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
                    child: Center(
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Color.fromRGBO(61, 63, 65, 1),
                        child: Icon(Icons.add),
                      ),
                    ),
                    left: 0,
                    right: 0,
                    bottom: 24,
                  )
                ],
              ),
            );
          }),
    );
  }
}
