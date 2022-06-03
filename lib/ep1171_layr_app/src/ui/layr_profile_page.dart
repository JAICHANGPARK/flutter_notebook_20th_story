import 'package:flutter/material.dart';


class LayrProfilePage extends StatefulWidget {
  const LayrProfilePage({Key? key}) : super(key: key);

  @override
  State<LayrProfilePage> createState() => _LayrProfilePageState();
}

class _LayrProfilePageState extends State<LayrProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height: MediaQuery.of(context).size.height / 2,),
        Expanded(child: Placeholder())

      ],
    );
  }
}
