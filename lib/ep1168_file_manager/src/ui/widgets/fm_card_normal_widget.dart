import 'package:flutter/material.dart';

class FMCardNormalWidget extends StatelessWidget {
  const FMCardNormalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Color.fromRGBO(38, 44, 73, 1),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Birthday",
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
                  Icons.favorite_outline,
                ),
                color: Colors.orange,
                iconSize: 18,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
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
          SizedBox(
            height: 12,
          ),
          Row(
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
        ],
      ),
    );
  }
}
