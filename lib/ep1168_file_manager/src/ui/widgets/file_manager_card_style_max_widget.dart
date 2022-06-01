import 'package:flutter/material.dart';

class FMCardMaxWidget extends StatelessWidget {
  const FMCardMaxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(38, 44, 73, 1),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.only(bottom: 16),
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(23, 24, 34, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Center(
                  child: Text(
                    "personal",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(23, 24, 34, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Center(
                  child: Text(
                    "newyear2021",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(23, 24, 34, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Center(
                  child: Text(
                    "photo",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Center(
                  child: Text(
                    "+3",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
