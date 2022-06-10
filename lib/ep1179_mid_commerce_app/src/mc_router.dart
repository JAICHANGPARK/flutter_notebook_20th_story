import 'package:flutter_notebook_20th_story/ep1179_mid_commerce_app/src/ui/mid_commerce_home_page.dart';
import 'package:go_router/go_router.dart';

final mcRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const MidCommerceHomePage(),
    )
  ],
  debugLogDiagnostics: true
);
