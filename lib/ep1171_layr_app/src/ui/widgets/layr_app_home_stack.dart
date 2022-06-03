import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1171_layr_app/src/ui/layr_profile_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../layr_home_page.dart';

class LayrAppHomeStack extends ConsumerWidget {
  const LayrAppHomeStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final idx = ref.watch(layrAppBottomIndex);
    return SafeArea(
      child: IndexedStack(
        index: idx,
        children: [
          Center(
            child: Text("Page1"),
          ),
          Center(
            child: Text("Page2"),
          ),
          Center(
            child: Text("Page3"),
          ),
          LayrProfilePage(),
        ],
      ),
    );
  }
}
