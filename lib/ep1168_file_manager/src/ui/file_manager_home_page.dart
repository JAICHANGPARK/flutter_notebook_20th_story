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
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  helperStyle: TextStyle(
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
              child: Placeholder(),
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
