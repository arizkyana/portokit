import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portokit/configs/themes.dart';

class WidgetTabFilter extends StatefulWidget {
  const WidgetTabFilter({super.key});

  @override
  State<WidgetTabFilter> createState() => _WidgetTabFilterState();
}

class _WidgetTabFilterState extends State<WidgetTabFilter> {
  int _selectedFilter = 0;

  List<String> tabs = [
    "All",
    "Nearby",
    "Popular",
    "Most Viewed",
  ];

  void _handleSelectedFilter(int index) {
    _selectedFilter = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        height: 30,
        child: ListView.builder(
          primary: false,
          scrollDirection: Axis.horizontal,
          itemCount: tabs.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () => _handleSelectedFilter(index),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                margin: EdgeInsets.only(
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: _selectedFilter == index
                      ? PortoKitTheme.of(context).blueSoft
                      : null,
                ),
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: _selectedFilter == index
                        ? PortoKitTheme.of(context).blueDark
                        : PortoKitTheme.of(context).generalMid,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
