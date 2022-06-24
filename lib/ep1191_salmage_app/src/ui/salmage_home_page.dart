import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final salmageIndex = StateProvider((ref) => 0);

class SalmageHomePage extends StatefulWidget {
  const SalmageHomePage({Key? key}) : super(key: key);

  @override
  State<SalmageHomePage> createState() => _SalmageHomePageState();
}

class _SalmageHomePageState extends State<SalmageHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Consumer(builder: (context, ref, _) {
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
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: IconButton(
                      onPressed: () {
                        ref.read(salmageIndex.notifier).state = 4;
                      },
                      icon: Icon(
                        Icons.settings_outlined,
                      ),
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
