import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portokit/configs/themes.dart';

class WidgetHeader extends StatelessWidget {
  const WidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: PortoKitTheme.of(context).blueDark,
            child: Icon(
              Icons.supervised_user_circle_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Jihan Tabina',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 5,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: PortoKitTheme.of(context).blueSoft,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.notifications,
              color: PortoKitTheme.of(context).blueDark,
            ),
          ),
        ],
      ),
    );
  }
}
