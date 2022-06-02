import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../layr_home_page.dart';

class LayrAppHomeStack extends ConsumerWidget {
  const LayrAppHomeStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final idx = ref.watch(layrAppBottomIndex);
    return IndexedStack(
      index: idx,
      children: [


      ],
    );
  }
}
