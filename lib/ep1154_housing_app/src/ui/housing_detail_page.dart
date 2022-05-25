import 'package:barcode/barcode.dart';
import 'package:flutter/material.dart';
import 'package:barcode/barcode.dart';



class HousingDetailPage extends StatefulWidget {
  String? img;

  HousingDetailPage({Key? key, this.img}) : super(key: key);

  @override
  State<HousingDetailPage> createState() => _HousingDetailPageState();
}

class _HousingDetailPageState extends State<HousingDetailPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
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
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                  ),
                ),
                height: MediaQuery.of(context).size.height / 2.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Current Price"),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "\$45,000",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.indigo,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Blue Lagoon Living",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Text("Tembalang. Semeyeng"),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Edi Pangabean"),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.chat_outlined,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 0,
              child: Hero(
                tag: "item_0",
                child: Material(
                  color: Colors.transparent,
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
                            foregroundColor: Colors.black,
                            child: Icon(
                              Icons.bookmark,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 42,
              bottom: MediaQuery.of(context).size.height / 2.6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    "More pic",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
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
