import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1179_mid_commerce_app/src/mc_router.dart';


class MidCommerceApp extends StatelessWidget {
  const MidCommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: mcRouter.routeInformationParser,
      routerDelegate: mcRouter.routerDelegate,
    );
  }
}
