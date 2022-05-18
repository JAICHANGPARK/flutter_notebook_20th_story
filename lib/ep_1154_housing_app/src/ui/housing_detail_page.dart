import 'package:flutter/material.dart';

class HousingDetailPage extends StatefulWidget {
  String? img;

  HousingDetailPage({Key? key, this.img}) : super(key: key);

  @override
  State<HousingDetailPage> createState() => _HousingDetailPageState();
}

class _HousingDetailPageState extends State<HousingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bedroom",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "6 bedroom",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bathroom",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "3 bathroom",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kitchen",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "2 kitchen",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: 16,
              bottom: 0,
              right: 0,
              child: Container(
                color: Colors.grey,
                height: MediaQuery.of(context).size.height / 2,
              ),
            ),
            Positioned(
              top: 16,
              right: 0,
              child: Hero(
                tag: "item_0",
                child: Material(
                  child: Container(
                    width: 180,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.img ?? "",
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 16,
                          top: 16,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 32,
              bottom: MediaQuery.of(context).size.height / 2.5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.white,
                height: 48,
                child: Center(
                  child: Text(
                    "More pic",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
