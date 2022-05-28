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
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
