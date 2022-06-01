import 'package:flutter/material.dart';
import 'widgets/fm_card_normal_widget.dart';
import 'widgets/file_manager_card_style_max_widget.dart';

class FMLinkPage extends StatelessWidget {
  const FMLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            height: 42,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                iconColor: Colors.grey,
                suffixIcon: Icon(
                  Icons.sync_alt,
                  color: Colors.grey,
                ),
                suffixIconColor: Colors.grey,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                FMCardMaxWidget(),
                ...List.generate(100, (index) => FMCardNormalWidget()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
