import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final layrAppBottomIndex = StateProvider((ref) => 0);

class LayrHomePage extends ConsumerWidget {
  const LayrHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(layrAppBottomIndex);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (idx) => ref.read(layrAppBottomIndex.notifier).state = idx,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
