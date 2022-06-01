import 'package:flutter/material.dart';
import 'fm_link_page.dart';
import 'widgets/fm_top_bar_widget.dart';
class FileManagerHomePage extends StatefulWidget {
  const FileManagerHomePage({Key? key}) : super(key: key);

  @override
  State<FileManagerHomePage> createState() => _FileManagerHomePageState();
}

class _FileManagerHomePageState extends State<FileManagerHomePage> {
  int _btmIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(23, 24, 34, 1),
      body: Column(
        children: [
          FMTopBarWidget(),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: IndexedStack(
              index: _btmIndex,
              children: [
                
                FMLinkPage(),
                Center(
                  child: Text(
                    "Private",
                    style: TextStyle(
                      color: Colors.tealAccent,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Public",
                    style: TextStyle(
                      color: Colors.tealAccent,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Sites",
                    style: TextStyle(
                      color: Colors.tealAccent,
                    ),
                  ),
                )
              ],
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
        currentIndex: _btmIndex,
        onTap: (idx) {
          setState(() {
            _btmIndex = idx;
          });
        },
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
