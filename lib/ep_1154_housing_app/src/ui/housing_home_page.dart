import 'package:flutter/material.dart';

class HousingHomePage extends StatefulWidget {
  const HousingHomePage({Key? key}) : super(key: key);

  @override
  State<HousingHomePage> createState() => _HousingHomePageState();
}

class _HousingHomePageState extends State<HousingHomePage> {
  PageController? _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.5,
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Location"),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.indigo,
                                size: 16,
                              ),
                              Text("Semarang City")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.apps,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  bottom: 16,
                ),
                child: PageView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2017/03/28/12/13/chairs-2181968_960_720.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Row(
                                children: [],
                              ),
                            ),
                            Positioned(
                              left: 16,
                              right: 16,
                              bottom: 16,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Blue Lagoon Living",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Tembalang. Semeyeng",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    child: Icon(
                                      Icons.more_horiz,
                                      size: 14,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Center(),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 78,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(42, 42, 42, 1),
                  borderRadius: BorderRadius.circular(48),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.compass_calibration,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.map_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
