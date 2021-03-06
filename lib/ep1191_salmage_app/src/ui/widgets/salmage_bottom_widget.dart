import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1191_salmage_app/src/ui/salmage_home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SalmageBottomWidget extends ConsumerWidget {
  const SalmageBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(salmageIndex);
    return BottomAppBar(
      child: Container(
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 48,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: index == 0
                        ? Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.blue[100]!,
                                  Colors.blue[50]!,
                                  Colors.blue[50]!,
                                  Colors.white,
                                  Colors.white,
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: index == 0
                        ? Container(
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 16,
                    child: IconButton(
                      onPressed: () {
                        ref.read(salmageIndex.notifier).state = 0;
                      },
                      icon: Icon(Icons.apps),
                      color: index == 0 ? Colors.blue : Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 48,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: index == 1
                        ? Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.blue[100]!,
                                  Colors.blue[50]!,
                                  Colors.blue[50]!,
                                  Colors.white,
                                  Colors.white,
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: index == 1
                        ? Container(
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 16,
                    child: IconButton(
                      onPressed: () {
                        ref.read(salmageIndex.notifier).state = 1;
                      },
                      icon: Icon(Icons.bar_chart_outlined),
                      color: index == 1 ? Colors.blue : Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 48,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: index == 2
                        ? Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.blue[100]!,
                                  Colors.blue[50]!,
                                  Colors.blue[50]!,
                                  Colors.white,
                                  Colors.white,
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: index == 2
                        ? Container(
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 16,
                    child: IconButton(
                      onPressed: () {
                        ref.read(salmageIndex.notifier).state = 2;
                      },
                      icon: Icon(Icons.chat_outlined),
                      color: index == 2 ? Colors.blue : Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 48,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: index == 3
                        ? Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.blue[100]!,
                                  Colors.blue[50]!,
                                  Colors.blue[50]!,
                                  Colors.white,
                                  Colors.white,
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: index == 3
                        ? Container(
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 16,
                    child: IconButton(
                      onPressed: () {
                        ref.read(salmageIndex.notifier).state = 3;
                      },
                      icon: Icon(Icons.view_in_ar),
                      color: index == 3 ? Colors.blue : Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 48,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: index == 4
                        ? Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.blue[100]!,
                                  Colors.blue[50]!,
                                  Colors.blue[50]!,
                                  Colors.white,
                                  Colors.white,
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: index == 4
                        ? Container(
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        : Container(),
                  ),
                  Positioned(
                    bottom: 16,
                    child: IconButton(
                      onPressed: () {
                        ref.read(salmageIndex.notifier).state = 4;
                      },
                      icon: Icon(Icons.settings_outlined),
                      color: index == 4 ? Colors.blue : Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
