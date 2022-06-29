import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1194_logistic_mobile_app/src/ui/logistic_filter_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogisticTopBarWidget extends StatelessWidget {
  const LogisticTopBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 8,
        bottom: 16,
        top: 16,
      ),
      child: Row(
        children: [
          Text(
            "Filter",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8),
          CircleAvatar(
            radius: 6,
            backgroundColor: Colors.black,
          ),
          Spacer(),
          Consumer(builder: (context, ref, _) {
            final open = ref.watch(isFilterOpen);
            return Container(
              decoration: BoxDecoration(
                color: open ? Colors.white : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  ref.read(isFilterOpen.notifier).state = !open;
                },
                icon: Icon(
                  Icons.filter_list,
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
