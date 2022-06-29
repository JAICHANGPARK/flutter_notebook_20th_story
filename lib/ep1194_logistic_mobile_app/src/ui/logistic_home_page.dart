import 'package:flutter/material.dart';
import 'package:flutter_notebook_20th_story/ep1194_logistic_mobile_app/src/ui/logistic_body_widget.dart';
import 'package:flutter_notebook_20th_story/ep1194_logistic_mobile_app/src/ui/logistic_bottom_bar_widget.dart';
import 'package:flutter_notebook_20th_story/ep1194_logistic_mobile_app/src/ui/logistic_filter_widget.dart';
import 'package:flutter_notebook_20th_story/ep1194_logistic_mobile_app/src/ui/logistic_top_bar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogisticHomePage extends StatelessWidget {
  const LogisticHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LogisticTopBarWidget(),
            LogisticFilterWidget(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: LogisticBodyWidget(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: LogisticBottomBarWidget(),
    );
  }
}
