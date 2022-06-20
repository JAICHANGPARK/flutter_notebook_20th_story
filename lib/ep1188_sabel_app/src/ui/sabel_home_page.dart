import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1188_sabel_app/src/provider/sabel_menu_index_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SabelHomePage extends StatefulWidget {
  const SabelHomePage({Key? key}) : super(key: key);

  @override
  State<SabelHomePage> createState() => _SabelHomePageState();
}

class _SabelHomePageState extends State<SabelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Consumer(builder: (context, ref, _) {
                final index = ref.watch(sabelMenuIndex);
                return IndexedStack(
                  index: index,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [],
                      ),
                    ),
                  ],
                );
              }),
            ),
            Positioned(
              left: 64,
              right: 64,
              bottom: 24,
              child: Consumer(builder: (context, ref, _) {
                final index = ref.watch(sabelMenuIndex);
                return Container(
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          ref.read(sabelMenuIndex.notifier).state = 0;
                        },
                        icon: Icon(
                          Icons.home,
                        ),
                        color: index == 0 ? Colors.black : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          ref.read(sabelMenuIndex.notifier).state = 1;
                        },
                        icon: Icon(
                          Icons.sync_alt,
                        ),
                        color: index == 1 ? Colors.black : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          ref.read(sabelMenuIndex.notifier).state = 2;
                        },
                        icon: Icon(
                          Icons.credit_card,
                        ),
                        color: index == 2 ? Colors.black : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          ref.read(sabelMenuIndex.notifier).state = 3;
                        },
                        icon: Icon(
                          Icons.military_tech,
                        ),
                        color: index == 3 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
