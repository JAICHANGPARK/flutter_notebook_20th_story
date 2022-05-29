import 'package:flutter/material.dart';

class RealEstateSearchPage extends StatefulWidget {
  const RealEstateSearchPage({Key? key}) : super(key: key);

  @override
  State<RealEstateSearchPage> createState() => _RealEstateSearchPageState();
}

class _RealEstateSearchPageState extends State<RealEstateSearchPage> {
  TextEditingController _textEditingController = TextEditingController(text: "Surabaya City, Jawa Timur");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Container(
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    child: TextField(
                                      controller: _textEditingController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.tune,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 0, bottom: 16),
                          child: SizedBox(
                            height: 32,
                            child: Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(color: Colors.grey[400]!),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 12),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.filter_list,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("Sort")
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        border: Border.all(color: Colors.grey[400]!),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      child: Row(
                                        children: [
                                          Text("Price"),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        border: Border.all(color: Colors.grey[400]!),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      child: Row(
                                        children: [
                                          Text("Range Area"),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        border: Border.all(color: Colors.grey[400]!),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      child: Row(
                                        children: [
                                          Text("Bedroom"),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Row(
                              children: [
                                Container(
                                  height: 130,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/12/30/07/59/kitchen-1940174_960_720.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Industrial House",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text("\$302.000"),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Baratajaya, Surabaya City, Jawa Timur",
                                                style: TextStyle(fontSize: 12, color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 4),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.room_preferences_sharp,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "345 Sq. M.",
                                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.account_circle_outlined,
                                              size: 16,),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "Mahmud MD",
                                              style: TextStyle(fontSize: 12, color: Colors.grey),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            CircleAvatar(
                                              radius: 8,
                                              backgroundColor: Colors.green,

                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 24,
                right: 16,
                left: 16,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(
                        24,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(1, 2),
                        )
                      ],
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Map",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.map_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
