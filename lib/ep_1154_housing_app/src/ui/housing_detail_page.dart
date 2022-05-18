import 'package:flutter/material.dart';

class HousingDetailPage extends StatefulWidget {
  const HousingDetailPage({Key? key}) : super(key: key);

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
                      CircleAvatar(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bedroom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
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
                  )
                ],
              ),
            ),
            Positioned(
              child: Container(
                color: Colors.grey,
                height: MediaQuery.of(context).size.height / 2,
              ),
              left: 16,
              bottom: 0,
              right: 0,
            ),
            Positioned(
              child: Container(
                color: Colors.blue,
                width: 180,
                height: MediaQuery.of(context).size.height / 2,
              ),
              top: 0,
              right: 0,
            ),
            Positioned(
              child: Container(
                color: Colors.red,
                width: 180,
                height: 48,
              ),
              bottom: MediaQuery.of(context).size.height / 2.5,
              right: 0,
            )
          ],
        ),
      ),
    );
  }
}