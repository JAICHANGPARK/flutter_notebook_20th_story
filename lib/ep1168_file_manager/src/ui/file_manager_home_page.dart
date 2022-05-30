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
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
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
