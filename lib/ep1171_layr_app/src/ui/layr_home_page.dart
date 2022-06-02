import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1171_layr_app/src/ui/widgets/layr_app_home_stack.dart';
import 'package:flutter_notebook_20th_story/ep1171_layr_app/src/ui/widgets/layr_bottom_nav_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final layrAppBottomIndex = StateProvider((ref) => 0);

class LayrHomePage extends ConsumerWidget {
  const LayrHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(layrAppBottomIndex);
    return Scaffold(
      body: LayrAppHomeStack(),
      bottomNavigationBar: LayrBottomNavBar(),
    );
  }
}
