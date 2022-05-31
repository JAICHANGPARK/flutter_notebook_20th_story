import 'package:flutter/material.dart';

class FileManagerHomePage extends StatefulWidget {
  const FileManagerHomePage({Key? key}) : super(key: key);

  @override
  State<FileManagerHomePage> createState() => _FileManagerHomePageState();
}

class _FileManagerHomePageState extends State<FileManagerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(23, 24, 34, 1),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: Container(
              color: Color.fromRGBO(38, 44, 73, 1),
              child: Column(
                children: [
                  SizedBox(
                    height: 64,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Row(
                      children: [
                        // CircleAvatar(
                        //   backgroundColor: Colors.orange,
                        // ),
                        Icon(
                          Icons.pentagon_outlined,
                          color: Colors.orange,
                          size: 38,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Links",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  iconColor: Colors.grey,
                  suffixIcon: Icon(
                    Icons.sync_alt,
                    color: Colors.grey,
                  ),
                  suffixIconColor: Colors.grey,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(38, 44, 73, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 8),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "My New Year Photos",
                                    style: TextStyle(
                                      color: Colors.tealAccent,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Jan 3, 2021, 10:53 PM",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                ),
                                color: Colors.orange,
                                iconSize: 18,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(23, 24, 34, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.link,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "https://google.com",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.copy,
                                  color: Colors.tealAccent,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Icon(
                                  Icons.share,
                                  color: Colors.tealAccent,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16,
                          vertical: 8),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Color.fromRGBO(23, 24, 34, 1),
                                child: Icon(
                                  Icons.visibility,
                                  size: 16,
                                  color: Colors.tealAccent,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "543",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Color.fromRGBO(23, 24, 34, 1),
                                child: Icon(
                                  Icons.add_to_drive,
                                  size: 16,
                                  color: Colors.tealAccent,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "7.4MB",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Color.fromRGBO(23, 24, 34, 1),
                                child: Icon(
                                  Icons.file_copy_outlined,
                                  size: 16,
                                  color: Colors.tealAccent,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "1000",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          children: [
                            Container(
                              child:
                              Center(
                                child: Text("personal"),
                              ),
                            ),
                            Container(
                              child:
                              Center(
                                child: Text("newyear2021"),
                              ),
                            ),
                            Container(
                              child:
                              Center(
                                child: Text("photo"),
                              ),
                            ),
                            Container(
                              child:
                              Center(
                                child: Text("+3"),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.tealAccent,
        onTap: (idx) {},
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(38, 44, 73, 1),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.link_rounded),
            label: "Links",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: "Private",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Public",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: "Sites",
          ),
        ],
      ),
    );
  }
}
