import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1191_salmage_app/src/ui/salmage_products_screen.dart';
import 'package:flutter_notebook_20th_story/ep1191_salmage_app/src/ui/widgets/salmage_bottom_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final salmageIndex = StateProvider((ref) => 0);

class SalmageHomePage extends ConsumerWidget {
  const SalmageHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(salmageIndex);
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: [
          Container(),
          Container(),
          Container(),
          SalmageProductScreen(),
          Container(),
        ],
      ),
      bottomNavigationBar: SalmageBottomWidget(),
    );
  }
}
