import 'package:flutter/material.dart';

class HousingHomePage extends StatefulWidget {
  const HousingHomePage({Key? key}) : super(key: key);

  @override
  State<HousingHomePage> createState() => _HousingHomePageState();
}

class _HousingHomePageState extends State<HousingHomePage> {
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
                  )
                ],
              ),
            ),
            Expanded(child: Placeholder()),
            Container(
              height: 72,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
