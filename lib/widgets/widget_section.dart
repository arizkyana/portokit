import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portokit/configs/themes.dart';

class WidgetSection extends StatelessWidget {
  final String title;
  final Function? onSeeMore;

  WidgetSection({super.key, required this.title, this.onSeeMore});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          if (onSeeMore != null)
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Text(
                  'See More',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: PortoKitTheme.of(context).blueDark,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
