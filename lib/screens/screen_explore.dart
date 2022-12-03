import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portokit/widgets/widget_bottom_nav.dart';
import 'package:portokit/widgets/widget_list_destination.dart';
import 'package:portokit/widgets/widget_header.dart';
import 'package:portokit/widgets/widget_list_explore.dart';
import 'package:portokit/widgets/widget_search.dart';
import 'package:portokit/widgets/widget_tab_filter.dart';

class ScreenExplore extends StatelessWidget {
  const ScreenExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: WidgetBottomNav(),
      body: SafeArea(
        bottom: false,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WidgetHeader(),
                SizedBox(
                  height: 10,
                ),
                WidgetSearch(),
                SizedBox(
                  height: 5,
                ),
                WidgetTabFilter(),
                SizedBox(
                  height: 10,
                ),
                WidgetListDestination(),
                SizedBox(
                  height: 20,
                ),
                WidgetListExplore(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
