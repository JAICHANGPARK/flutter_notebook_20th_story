import 'package:flutter/material.dart';

class RealEstateSearchPage extends StatefulWidget {
  const RealEstateSearchPage({Key? key}) : super(key: key);

  @override
  State<RealEstateSearchPage> createState() => _RealEstateSearchPageState();
}

class _RealEstateSearchPageState extends State<RealEstateSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(24)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
