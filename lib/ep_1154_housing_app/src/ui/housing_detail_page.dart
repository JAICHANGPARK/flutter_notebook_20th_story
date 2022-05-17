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
            
          ],
        ),
      ),
    );
  }
}
